% Traversing graph paths

:- dynamic('urn:example:oneway'/2).
:- dynamic('urn:example:path'/2).

'urn:example:oneway'('urn:example:paris','urn:example:orleans').
'urn:example:oneway'('urn:example:paris','urn:example:chartres').
'urn:example:oneway'('urn:example:paris','urn:example:amiens').
'urn:example:oneway'('urn:example:orleans','urn:example:blois').
'urn:example:oneway'('urn:example:orleans','urn:example:bourges').
'urn:example:oneway'('urn:example:blois','urn:example:tours').
'urn:example:oneway'('urn:example:chartres','urn:example:lemans').
'urn:example:oneway'('urn:example:lemans','urn:example:angers').
'urn:example:oneway'('urn:example:lemans','urn:example:tours').
'urn:example:oneway'('urn:example:angers','urn:example:nantes').

'urn:example:oneway'(A,B) =>
    'urn:example:path'(A,B).
'urn:example:path'(A,B),'urn:example:path'(B,C) =>
    'urn:example:path'(A,C).

% query
'urn:example:path'(_CITY,'urn:example:nantes') => true.
