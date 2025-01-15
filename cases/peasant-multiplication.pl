% Peasant multiplication
% See https://en.wikipedia.org/wiki/Ancient_Egyptian_multiplication

:- use_module(library(format)).

'urn:example:prod'(0, _, 0).
'urn:example:prod'(X, Y, Z) :-
    X =\= 0,
    0 =:= X rem 2,
    S is X//2,
    T is Y+Y,
    'urn:example:prod'(S, T, Z).
'urn:example:prod'(X, Y, Z) :-
    X =\= 0,
    1 =:= X rem 2,
    S is X//2,
    T is Y+Y,
    'urn:example:prod'(S, T, R),
    Z is R+Y.

% queries
query('urn:example:prod'(3, 0, _)).
query('urn:example:prod'(5, 6, _)).
query('urn:example:prod'(238, 13, _)).
query('urn:example:prod'(8367238, 27133, _)).
query('urn:example:prod'(62713345408367238, 40836723862713345, _)).
query('urn:example:prod'(4083672386271334562713345408367238, 4083672386271334562713345408367238, _)).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
