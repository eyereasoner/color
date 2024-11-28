% ------------------
% eye3 -- Jos De Roo
% ------------------
%
% See https://github.com/eyereasoner/eye3
%

:- use_module(library(iso_ext)).
:- use_module(library(lists)).
:- use_module(library(terms)).

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

:- dynamic((=>)/2).
:- dynamic(answer/1).
:- dynamic(brake/0).
:- dynamic(proof/3).

term_expansion((Head <= Body),(Head :- Body)).

version_info('eye3 v1.2.9 (2024-11-28)').

% main goal
main :-
    bb_put(closure,0),
    bb_put(limit,-1),
    bb_put(label,0),
    bb_put(fm,0),
    bb_put(mf,0),
    (   (_ => _)
    ->  write(':- op(1150,xfx,=>).\n\n')
    ;   version_info(Version),
        write(Version),
        write('\n')
    ),
    run,
    bb_get(fm,Fm),
    (   Fm = 0
    ->  true
    ;   write(user_error,'*** fm='),
        write(user_error,Fm),
        write(user_error,'\n')
    ),
    bb_get(mf,Mf),
    (   Mf = 0
    ->  true
    ;   write(user_error,'*** mf='),
        write(user_error,Mf),
        write(user_error,'\n')
    ),
    halt(0).

% run eye3 abstract machine
%
% 1/ select rule P => C
% 2/ prove P and if it fails backtrack to 1/
% 3/ if C = true assert answer(P)
%    else if C = false stop with return code 2
%    else if ~C assert C, retract brake
% 4/ backtrack to 2/ and if it fails go to 5/
% 5/ if brake
%       if not stable start again at 1/
%       else write all answers as P => true and stop
%    else assert brake and start again at 1/
%
run :-
    (   (Prem => Conc),     % 1/
        copy_term((Prem => Conc),Rule),
        labelvars(Rule),
        Prem,               % 2/
        (   Conc = true     % 3/
        ->  (   \+answer(Prem)
            ->  assertz(answer(Prem))
            ;   true
            )
        ;   (   Conc = false
            ->  write('% inference fuse, return code 2\n'),
                labelvars(Prem),
                writeq((Prem => false)),
                write('.\n'),
                halt(2)
            ;   (   term_variables(Conc,[])
                ->  Concl = Conc
                ;   Concl = (true => Conc)
                ),
                \+Concl,
                astep(Concl),
                assertz(proof(Rule,Prem,Concl)),
                retract(brake)
            )
        ),
        fail                % 4/
    ;   (   brake           % 5/
        ->  (   bb_get(closure,Closure),
                bb_get(limit,Limit),
                Closure < Limit,
                NewClosure is Closure+1,
                bb_put(closure,NewClosure),
                run
            ;   answer(Prem),
                labelvars(Prem),
                writeq((Prem => true)),
                write('.\n'),
                fail
            ;   (   proof(_,_,_)
                ->  write('\n%\n% Explain the reasoning\n%\n\n'),
                    proof(Rule,Prem,Conc),
                    labelvars(Conc),
                    writeq('http://www.w3.org/2000/10/swap/log#proves'((Rule,Prem),Conc)),
                    write('.\n'),
                    fail
                ;   true
                )
            ;   true
            )
        ;   assertz(brake),
            run
        )
    ).

% label variables
labelvars(Term) :-
    bb_get(label,Current),
    numbervars(Term,Current,Next),
    bb_put(label,Next).

% assert new step
astep((B,C)) :-
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
    bb_get(limit,Limit),
    (   Limit < Level
    ->  bb_put(limit,Level)
    ;   true
    ),
    bb_get(closure,Closure),
    Level =< Closure.

% debugging tools
fm(A) :-
    (   nonvar(A),
        A = !
    ->  true
    ;   write(user_error,'*** '),
        writeq(user_error,A),
        write(user_error,'.\n'),
        bb_get(fm,B),
        C is B+1,
        bb_put(fm,C)
    ).

mf(A) :-
    forall(
        catch(A,_,fail),
        (   write(user_error,'*** '),
            writeq(user_error,A),
            write(user_error,'.\n'),
            bb_get(mf,B),
            C is B+1,
            bb_put(mf,C)
        )
    ).
