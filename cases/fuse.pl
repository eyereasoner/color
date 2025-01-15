% inference fuse

:- use_module(library(format)).

'urn:example:color'('urn:example:stone', 'urn:example:black').
'urn:example:color'('urn:example:stone', 'urn:example:white').

fuse((
    'urn:example:color'(X, 'urn:example:black'),
    'urn:example:color'(X, 'urn:example:white')
)).

run :-
    fuse(F),
    F,
    portray_clause(fuse(F)),
    fail;
    halt(2).
