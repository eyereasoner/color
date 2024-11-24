% ------------------
% eye3 -- Jos De Roo
% ------------------
%
% See https://github.com/eyereasoner/eye3
%

:- use_module(library(lists)).
:- use_module(library(terms)).

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

:- dynamic((=>)/2).
:- dynamic(answer/1).
:- dynamic(brake/0).
:- dynamic(closure/1).
:- dynamic(decl_op/0).
:- dynamic(limit/1).
:- dynamic(need_nl/0).
:- dynamic(var_nr/1).

term_expansion((Head <= Body),(Head :- Body)).

version_info('eye3 v1.0.5 (2024-11-24)').

closure(0).
limit(-1).

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
    (   (   (_ => _)
        ->  (   \+decl_op
            ->  write(':- op(1150,xfx,=>).'),
                nl,
                nl,
                assertz(decl_op)
            ;   true
            )
        ;   version_info(Version),
            write(Version),
            nl,
            halt
        ),
        (Prem => Conc),     % 1/
        copy_term((Prem => Conc),Rule),
        labelvars(Rule),
        Prem,               % 2/
        (   Conc = true     % 3/
        ->  labelvars(Prem),
            (   \+answer(Prem)
            ->  assertz(answer(Prem))
            ;   true
            )
        ;   (   Conc = false
            ->  write('% inference fuse, return code 2'),
                nl,
                writeq(Prem),
                write(' => false.'),
                nl,
                halt(2)
            ;   \+Conc,
                labelvars(Conc),
                astep(Conc),
                writeq('https://eyereasoner.github.io/log#proof_step'((Rule,Prem),Conc)),
                write('.'),
                nl,
                (   \+need_nl
                ->  assertz(need_nl)
                ;   true
                ),
                retract(brake)
            )
        ),
        fail                % 4/
    ;   (   brake           % 5/
        ->  (   closure(Closure),
                limit(Limit),
                Closure < Limit,
                retractall(closure(_)),
                NewClosure is Closure+1,
                assertz(closure(NewClosure)),
                run
            ;   (   need_nl
                ->  nl
                ;   true
                ),
                answer(Prem),
                writeq(Prem),
                write(' => true.'),
                nl,
                fail
            ;   halt
            )
        ;   assertz(brake),
            run
        )
    ).

% create witnesses
labelvars(Term) :-
    (   retract(var_nr(Current))
    ->  true
    ;   Current = 0
    ),
    numbervars(Term,Current,Next),
    assertz(var_nr(Next)).

% assert new step
astep((B,C)) :-
    astep(B),
    astep(C).
astep(A) :-
    (   \+A
    ->  assertz(A)
    ;   true
    ).

% fail if the deductive closure at Level is not yet stable
stable(Level) :-
    limit(Limit),
    (   Limit < Level
    ->  retractall(limit(_)),
        assertz(limit(Level))
    ;   true
    ),
    closure(Closure),
    Level =< Closure.
