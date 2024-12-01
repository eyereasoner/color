% ------------------
% eye3 -- Jos De Roo
% ------------------
%
% See https://github.com/eyereasoner/eye3
%

:- use_module(library(format)).
:- use_module(library(iso_ext)).
:- use_module(library(lists)).
:- use_module(library(terms)).

:- op(1200, xfx, <=).

:- dynamic((<=)/2).
:- dynamic(answer/1).
:- dynamic(brake/0).
:- dynamic(ether/3).

version_info('eye3 v1.3.1 (2024-12-01)').

% main goal
main :-
    bb_put(closure, 0),
    bb_put(limit, -1),
    bb_put(fm, 0),
    bb_put(mf, 0),
    (   (_ <= _)
    ->  format(":- op(1150, xfx, <=).~n~n", [])
    ;   version_info(Version),
        format("~w~n", [Version])
    ),
    run,
    bb_get(fm, Fm),
    (   Fm = 0
    ->  true
    ;   format(user_error, "*** fm=~w~n", [Fm])
    ),
    bb_get(mf, Mf),
    (   Mf = 0
    ->  true
    ;   format(user_error, "*** mf=~w~n", [Mf])
    ),
    halt(0).

% run eye3 abstract machine
%
% 1/ select rule Conc <= Prem
% 2/ prove Prem and if it fails backtrack to 1/
% 3/ if Conc = true assert answer(Prem)
%    else if Conc = false stop with return code 2
%    else if ~Conc assert Conc and retract brake
% 4/ backtrack to 2/ and if it fails go to 5/
% 5/ if brake
%       if not stable start again at 1/
%       else output answers, output ethers and stop
%    else assert brake and start again at 1/
%
run :-
    (   (Conc <= Prem),     % 1/
        copy_term((Conc <= Prem), Rule),
        Prem,               % 2/
        (   Conc = true     % 3/
        ->  (   \+answer(Prem)
            ->  assertz(answer(Prem))
            ;   true
            )
        ;   (   Conc = false
            ->  format("% inference fuse, return code 2~n", []),
                portray_clause((false <= Prem)),
                halt(2)
            ;   (   term_variables(Conc, [])
                ->  Concl = Conc
                ;   Concl = (Conc <= true)
                ),
                \+Concl,
                astep(Concl),
                assertz(ether(Rule, Prem, Concl)),
                retract(brake)
            )
        ),
        fail                % 4/
    ;   (   brake           % 5/
        ->  (   bb_get(closure, Closure),
                bb_get(limit, Limit),
                Closure < Limit,
                NewClosure is Closure+1,
                bb_put(closure, NewClosure),
                run
            ;   answer(Prem),
                portray_clause(answer(Prem)),
                fail
            ;   (   ether(_, _, _)
                ->  format("~n%~n% Explain the reasoning~n%~n~n", []),
                    ether(Rule, Prem, Conc),
                    portray_clause(ether(Rule, Prem, Conc)),
                    fail
                ;   true
                )
            ;   true
            )
        ;   assertz(brake),
            run
        )
    ).

% assert new step
astep((B, C)) :-
    astep(B),
    astep(C).
astep(A) :-
    (   \+A
    ->  assertz(A)
    ;   true
    ).

% stable(+Level)
%   fail if the deductive closure at Level is not yet stable
stable(Level) :-
    bb_get(limit, Limit),
    (   Limit < Level
    ->  bb_put(limit, Level)
    ;   true
    ),
    bb_get(closure, Closure),
    Level =< Closure.

% debugging tools
fm(A) :-
    write(user_error, '*** '),
    portray_clause(user_error, A),
    bb_get(fm, B),
    C is B+1,
    bb_put(fm, C).

mf(A) :-
    forall(
        catch(A, _, fail),
        (   write(user_error, '*** '),
            portray_clause(user_error, A),
            bb_get(mf, B),
            C is B+1,
            bb_put(mf, C)
        )
    ).
