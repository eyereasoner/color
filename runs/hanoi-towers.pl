% Towers of Hanoi
% See https://en.wikipedia.org/wiki/Tower_of_Hanoi

:- use_module(library(format)).

'urn:example:move'(0, [_, _, _]) :-
    !.
'urn:example:move'(N, [A, B, C]) :-
    M is N-1,
    'urn:example:move'(M, [A, C, B]),
    'urn:example:move'(M, [C, B, A]).

% query
query('urn:example:move'(14, [left, centre, right])).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
