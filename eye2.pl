% ------------------
% eye2 -- Jos De Roo
% ------------------
%
% See https://github.com/eyereasoner/eye2
%

:- use_module(library(lists)).
:- use_module(library(terms)).

:- op(1200, xfx, :+).

:- dynamic((:+)/2).
:- dynamic(answer/1).
:- dynamic(brake/0).
:- dynamic(closure/1).
:- dynamic(count/2).
:- dynamic(limit/1).
:- dynamic(step/3).

version_info('eye2 v1.7.9 (2025-01-20)').

% main goal
main :-
    catch(use_module(library(format)), _, true),
    assertz(closure(0)),
    assertz(limit(-1)),
    assertz(count(fm, 0)),
    assertz(count(mf, 0)),
    (   (_ :+ _)
    ->  write(':- op(1200, xfx, :+).'),
        nl,
        nl
    ;   version_info(Version),
        write(Version),
        nl
    ),
    forall(
        (Conc :+ Prem),
        dynify((Conc :+ Prem))
    ),
    run,
    count(fm, Fm),
    (   Fm = 0
    ->  true
    ;   write(user_error, '*** fm='),
        write(user_error, Fm),
        nl
    ),
    count(mf, Mf),
    (   Mf = 0
    ->  true
    ;   write(user_error, '*** mf='),
        write(user_error, Mf),
        nl
    ),
    halt(0).

% run eye2 abstract machine
%
% 1/ select rule Conc :+ Prem
% 2/ prove Prem and if it fails backtrack to 1/
% 3/ if Conc = true assert answer(Prem)
%    else if Conc = false stop with return code 2
%    else if ~Conc assert Conc and retract brake
% 4/ backtrack to 2/ and if it fails go to 5/
% 5/ if brake
%       if not stable start again at 1/
%       else output answers + proof steps and stop
%    else assert brake and start again at 1/
%
run :-
    (   (Conc :+ Prem),     % 1/
        copy_term((Conc :+ Prem), Rule),
        Prem,               % 2/
        (   Conc = true     % 3/
        ->  (   \+answer(Prem)
            ->  assertz(answer(Prem)),
                assertz(step(Rule, Prem, true))
            ;   true
            )
        ;   (   Conc = false
            ->  write('% inference fuse, return code 2'),
                nl,
                portray_clause(fuse(Prem)),
                halt(2)
            ;   (   Conc \= (_ :+ _)
                ->  numbervars(Conc, 0, _, [functor_name(skolem)])
                ;   true
                ),
                \+Conc,
                astep(Conc),
                assertz(step(Rule, Prem, Conc)),
                retract(brake)
            )
        ),
        fail                % 4/
    ;   (   brake           % 5/
        ->  (   closure(Closure),
                limit(Limit),
                Closure < Limit,
                NewClosure is Closure+1,
                becomes(closure(Closure), closure(NewClosure)),
                run
            ;   answer(Prem),
                portray_clause(answer(Prem)),
                fail
            ;   (   step(_, _, _)
                ->  nl,
                    write('% proof steps'),
                    nl,
                    step(Rule, Prem, Conc),
                    portray_clause(step(Rule, Prem, Conc)),
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
    limit(Limit),
    (   Limit < Level
    ->  becomes(limit(Limit), limit(Level))
    ;   true
    ),
    closure(Closure),
    Level =< Closure.

% linear implication
becomes(A, B) :-
    catch(A, _, fail),
    conj_list(A, C),
    forall(member(D, C), retract(D)),
    conj_list(B, E),
    forall(member(F, E), assertz(F)).

conj_list(true, []).
conj_list(A, [A]) :-
    A \= (_, _),
    A \= false,
    !.
conj_list((A, B), [A|C]) :-
    conj_list(B, C).

% make dynamic predicates
dynify(A) :-
    var(A),
    !.
dynify(A) :-
    atomic(A),
    !.
dynify([]) :-
    !.
dynify([A|B]) :-
    !,
    dynify(A),
    dynify(B).
dynify(A) :-
    A =.. [B|C],
    length(C, N),
    (   (   current_predicate(B/N)
        ;   B = /
        )
    ->  true
    ;   dynamic(B/N)
    ),
    dynify(C).

% debugging tools
fm(A) :-
    write(user_error, '*** '),
    writeq(user_error, A),
    nl,
    count(fm, B),
    C is B+1,
    becomes(count(fm, B), count(fm, C)).

mf(A) :-
    forall(
        catch(A, _, fail),
        (   write(user_error, '*** '),
            writeq(user_error, A),
            nl,
            count(mf, B),
            C is B+1,
            becomes(count(mf, B), count(mf, C))
        )
    ).
