% Euler's identity
% See https://en.wikipedia.org/wiki/Euler%27s_identity

:- use_module(library(format)).

'urn:example:sum'([[A, B], [C, D]], [E, F]) :-
    E is A+C,
    F is B+D.

'urn:example:exponentiation'([[A, B], [C, D]], [E, F]) :-
    polar([A, B], [G, H]),
    E is G^C*exp(-D*H)*cos(D*log(G)+C*H),
    F is G^C*exp(-D*H)*sin(D*log(G)+C*H).

polar([A, B], [C, D]) :-
    C is sqrt(A^2+B^2),
    E is acos(abs(A)/C),
    angular(A, B, E, D).

angular(A, B, C, D) :-
    A >= 0,
    B >= 0,
    D = C.
angular(A, B, C, D) :-
    A < 0,
    B >= 0,
    D is pi-C.
angular(A, B, C, D) :-
    A < 0,
    B < 0,
    D is C+pi.
angular(A, B, C, D) :-
    A >= 0,
    B < 0,
    D is 2*pi-C.

% query
query((
    'urn:example:exponentiation'([[0+e, 0], [0, pi]], Y),
    'urn:example:sum'([Y, [1, 0]], _)
)).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
