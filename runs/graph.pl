% Traversing graph paths

:- use_module(library(format)).

'urn:example:oneway'('urn:example:paris', 'urn:example:orleans').
'urn:example:oneway'('urn:example:paris', 'urn:example:chartres').
'urn:example:oneway'('urn:example:paris', 'urn:example:amiens').
'urn:example:oneway'('urn:example:orleans', 'urn:example:blois').
'urn:example:oneway'('urn:example:orleans', 'urn:example:bourges').
'urn:example:oneway'('urn:example:blois', 'urn:example:tours').
'urn:example:oneway'('urn:example:chartres', 'urn:example:lemans').
'urn:example:oneway'('urn:example:lemans', 'urn:example:angers').
'urn:example:oneway'('urn:example:lemans', 'urn:example:tours').
'urn:example:oneway'('urn:example:angers', 'urn:example:nantes').

'urn:example:path'(A, B) :-
    'urn:example:oneway'(A, B).
'urn:example:path'(A, C) :-
    'urn:example:oneway'(A, B),
    'urn:example:path'(B, C).

% query
query('urn:example:path'(_, 'urn:example:nantes')).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
