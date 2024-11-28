% ------------------
% eye3 -- Jos De Roo
% ------------------
%
% See https://github.com/eyereasoner/eye3
%

:- use_module(library(iso_ext)).
:- use_module(library(lists)).
:- use_module(library(terms)).
:- use_module(library(uuid)).

:- op(1150,xfx,=>).
:- op(1200,xfx,<=).

:- dynamic((=>)/2).
:- dynamic(answer/1).
:- dynamic(brake/0).
:- dynamic(proof/3).
:- dynamic(var_nr/1).

term_expansion((Head <= Body),(Head :- Body)).

version_info('eye3 v1.2.8 (2024-11-28)').

% main goal
main :-
    bb_put(closure,0),
    bb_put(limit,-1),
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
        write(user_error,'\n'),
        flush_output(user_error)
    ),
    bb_get(mf,Mf),
    (   Mf = 0
    ->  true
    ;   write(user_error,'*** mf='),
        write(user_error,Mf),
        write(user_error,'\n'),
        flush_output(user_error)
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
        labelvars(Rule,all),
        Prem,               % 2/
        (   Conc = true     % 3/
        ->  labelvars(Prem,all),
            (   \+answer(Prem)
            ->  assertz(answer(Prem))
            ;   true
            )
        ;   (   Conc = false
            ->  write('% inference fuse, return code 2\n'),
                writeq(Prem),
                write(' => false.\n'),
                halt(2)
            ;   \+Conc,
                labelvars(Conc,some),
                astep(Conc),
                assertz(proof(Rule,Prem,Conc)),
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
                writeq(Prem),
                write(' => true.\n'),
                fail
            ;   (   proof(_,_,_)
                ->  write('\n%\n% Explain the reasoning\n%\n\n'),
                    proof(Rule,Prem,Conc),
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

% create witnesses
labelvars(Term,Mode) :-
    (   retract(var_nr(Current))
    ->  true
    ;   Current = 0
    ),
    labelvars(Term,Current,Next,Mode),
    assertz(var_nr(Next)).

labelvars(Term,N0,N,Mode) :-
    term_variables(Term,Vars),
    labellist(Vars,N0,N,Mode).

labellist([],N,N,_).
labellist([A|Vars],N0,N,Mode) :-
    (   Mode = all
    ->  A = '$VAR'(N0)
    ;   number_codes(N0,J),
        atom_codes(I,J),
        atom_concat('_:sk_',I,A)
    ),
    N1 is N0+1,
    labellist(Vars,N1,N,Mode).

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
        flush_output(user_error),
        cnt(fm)
    ).

mf(A) :-
    forall(
        catch(A,_,fail),
        (   write(user_error,'*** '),
            writeq(user_error,A),
            write(user_error,'.\n'),
            flush_output(user_error),
            cnt(mf)
        )
    ).

cnt(A) :-
    bb_get(A,B),
    C is B+1,
    bb_put(A,C).
