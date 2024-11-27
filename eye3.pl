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

version_info('eye3 v1.2.7 (2024-11-28)').

% main goal
main :-
    uuidv4_string(Genid),
    bb_put(genid,Genid),
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

% log built-ins
'http://www.w3.org/2000/10/swap/log#becomes'(A,B) :-
    catch(A,_,fail),
    conj_list(A,C),
    forall(member(D,C),retract(D)),
    conj_list(B,E),
    forall(member(F,E),assertz(F)).

'http://www.w3.org/2000/10/swap/log#collectAllIn'([A,B,C],D) :-
    stable(D),
    nonvar(B),
    catch(findall(A,B,E),_,E = []),
    E = C.

'http://www.w3.org/2000/10/swap/log#conjunction'(A,B) :-
    nonvar(A),
    conjoin(A,B).

'http://www.w3.org/2000/10/swap/log#equalTo'(X,Y) :-
    X = Y.

'http://www.w3.org/2000/10/swap/log#forAllIn'([A,B],C) :-
    stable(C),
    nonvar(A),
    nonvar(B),
    forall(A,B).

'http://www.w3.org/2000/10/swap/log#includes'(X,Y) :-
    stable(X),
    !,
    nonvar(Y),
    call(Y).
'http://www.w3.org/2000/10/swap/log#includes'(X,Y) :-
    nonvar(X),
    nonvar(Y),
    X \= [_,_],
    conj_list(X,A),
    conj_list(Y,B),
    includes(A,B).

'http://www.w3.org/2000/10/swap/log#notEqualTo'(X,Y) :-
    X \== Y.

'http://www.w3.org/2000/10/swap/log#notIncludes'(X,Y) :-
    stable(X),
    !,
    nonvar(Y),
    \+call(Y).
'http://www.w3.org/2000/10/swap/log#notIncludes'(X,Y) :-
    nonvar(X),
    nonvar(Y),
    X \= [_,_],
    conj_list(X,A),
    conj_list(Y,B),
    \+includes(A,B).

'http://www.w3.org/2000/10/swap/log#skolem'(A,B) :-
    (   skolem(A,B)
    ->  true
    ;   var(B),
        bb_get(genid,C),
        genlabel('#t',D),
        atom_chars(D,E),
        append(["http://knowledgeonwebscale.github.io/.well-known/genid/",C,E],F),
        atom_chars(B,F),
        assertz(skolem(A,B))
    ).

'http://www.w3.org/2000/10/swap/log#uri'(X,Y) :-
    (   nonvar(X),
        atom_concat('',U,X),
        atom_concat(V,'',U),
        atom_chars(V,Y),
        !
    ;   nonvar(Y),
        atom_chars(U,Y),
        atom_concat('',U,V),
        atom_concat(V,'',X)
    ).

'http://www.w3.org/2000/10/swap/log#uuid'(X,Y) :-
    ground(X),
    'http://www.w3.org/2000/10/swap/log#uri'(X,U),
    (   uuid(U,Y)
    ->  true
    ;   uuidv4_string(Y),
        assertz(uuid(U,Y))
    ).

% conj_list(?Conj,?List)
conj_list(true,[]).
conj_list(A,[A]) :-
    A \= (_,_),
    A \= false,
    !.
conj_list((A,B),[A|C]) :-
    conj_list(B,C).

% conj_append(+Conj,+Conj,?Conj)
conj_append(A,true,A) :-
    !.
conj_append((A,B),C,(A,D)) :-
    conj_append(B,C,D),
    !.
conj_append(A,B,(A,B)).

% conjoin(+List,-Conj)
conjoin([X],X) :-
    !.
conjoin([true|Y],Z) :-
    conjoin(Y,Z),
    !.
conjoin([X|Y],Z) :-
    conjoin(Y,U),
    conj_append(X,U,V),
    (   ground(V)
    ->  conj_list(V,A),
        list_to_set(A,B),
        conj_list(Z,B)
    ;   Z = V
    ).

% includes(?ListA,?ListB)
includes(_,[]) :-
    !.
includes(X,[Y|Z]) :-
    member(Y,X),
    includes(X,Z).

% genlabel(+OldAtom,-NewAtom)
%   For each invocation of this built-in a new label will
%   be created for OldAtom by appending it with an ever
%   increasing '_<Number>'
%   Example: genlabel('A','A_1'),genlabel('A','A_2'),...
genlabel(A,B) :-
    (   bb_get(A,C)
    ->  D is C+1,
        bb_put(A,D),
        taglabel(A,D,B)
    ;   bb_put(A,1),
        taglabel(A,1,B)
    ).

% taglabel(+Atom,+Number,-Tag)
%   Tag is the result of appending '_<Number>' to '<Atom>'
%   Example: taglabel('A',1,'A_1')
taglabel(A,B,C) :-
    atom_chars(A,D),
    number_chars(B,E),
    append([D,"_",E],F),
    atom_chars(C,F).

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
