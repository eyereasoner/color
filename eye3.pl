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
:- dynamic(decl_op/0).
:- dynamic(need_nl/0).
:- dynamic(pred/1).
:- dynamic(proof_step/1).
:- dynamic(var_nr/1).

term_expansion((Head <= Body),(Head :- Body)).

version_info('eye3 v1.0.2 (2024-11-23)').

% run eye3 abstract machine with a list of options:
%   - single_answer: output only one answer
%   - proof_step: output proof steps
%   - linear_select: use the rules only once
%
% 1/ select rule P => C
% 2/ prove P and if it fails backtrack to 1/
% 3/ if C = true answer with P => true and if single_answer stop, else backtrack to 2/
%    else if ~C assert C, retract brake and backtrack to 2/
%    else backtrack to 2/
% 4/ if brake or linear_select stop, else assert brake and start again at 1/
%
run :-
    run([]).

run(Options) :-
    (   (_ => _)
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
    (Prem => Conc),
    copy_term((Prem => Conc),Rule),
    labelvars(Rule),
    Prem,
    (   Conc = true
    ->  labelvars(Prem),
        (   \+answer((Prem => true))
        ->  assertz(answer((Prem => true))),
            (   retract(need_nl)
            ->  nl
            ;   true
            ),
            writeq(Prem),
            write(' => true.\n')
        ;   true
        ),
        member(single_answer,Options)
    ;   \+Conc,
        labelvars(Conc),
        astep(Prem,Conc),
        (   member(proof_step,Options),
            \+proof_step((Prem => Conc))
        ->  assertz(proof_step((Prem => Conc))),
            writeq('https://eyereasoner.github.io/log#proof_step'((Rule,Prem),Conc)),
            write('.\n'),
            (   \+need_nl
            ->  assertz(need_nl)
            ;   true
            )
        ;   true
        ),
        retract(brake),
        fail
    ).
run(Options) :-
    (   (   brake
        ;   member(linear_select,Options)
        )
    ->  true
    ;   asserta(brake),
        run(Options)
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
astep(A,(B,C)) :-
    astep(A,B),
    astep(A,C).
astep(A,false) :-
    write('% inference fuse, return code 2\n'),
    writeq(A),
    write(' => false.\n'),
    halt(2).
astep(_,A) :-
    (   \+A
    ->  asserta(A),
        (   functor(A,B,2),
            \+pred(B)
        ->  assertz(pred(B))
        ;   true
        )
    ;   true
    ).
