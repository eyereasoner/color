% Combinatorics
% See https://en.wikipedia.org/wiki/Combinatorics

:- use_module(library(format)).
:- use_module(library(lists)).

:- dynamic(answer/1).

% combination
'urn:example:combination'([0, _], []).
'urn:example:combination'([I, As], Bs) :-
    I > 0,
    select(B, As, Cs),
    J is I-1,
    'urn:example:combination'([J, Cs], Ds),
    sort([B|Ds], Bs).

% permutation
'urn:example:permutation'(A, B) :-
    permutation(A, B).

% queries
query('urn:example:combination'([0, [1, 2, 3, 4, 5]], _)).
query('urn:example:combination'([1, [1, 2, 3, 4, 5]], _)).
query('urn:example:combination'([2, [1, 2, 3, 4, 5]], _)).
query('urn:example:combination'([3, [1, 2, 3, 4, 5]], _)).
query('urn:example:combination'([4, [1, 2, 3, 4, 5]], _)).
query('urn:example:combination'([5, [1, 2, 3, 4, 5]], _)).
query('urn:example:permutation'([1, 2, 3, 4, 5], _)).

run :-
    query(Q),
    Q,
    \+answer(Q),
    assertz(answer(Q)),
    portray_clause(Q),
    fail;
    halt.
