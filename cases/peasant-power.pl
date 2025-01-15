% Peasant power
% See https://en.wikipedia.org/wiki/Ancient_Egyptian_multiplication

:- use_module(library(format)).

'urn:example:pow'(_, 0, 1).
'urn:example:pow'(X, Y, Z) :-
    Y =\= 0,
    0 =:= Y rem 2,
    S is X*X,
    T is Y//2,
    'urn:example:pow'(S, T, Z).
'urn:example:pow'(X, Y, Z) :-
    Y =\= 0,
    1 =:= Y rem 2,
    S is X*X,
    T is Y//2,
    'urn:example:pow'(S, T, R),
    Z is R*X.

% queries
query('urn:example:pow'(3, 0, _)).
query('urn:example:pow'(5, 6, _)).
query('urn:example:pow'(238, 13, _)).
query('urn:example:pow'(8367238, 27133, _)).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
