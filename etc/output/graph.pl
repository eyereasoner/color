:- op(1150, xfx, <=).

answer('urn:example:path'('urn:example:angers','urn:example:nantes')).
answer('urn:example:path'('urn:example:lemans','urn:example:nantes')).
answer('urn:example:path'('urn:example:chartres','urn:example:nantes')).
answer('urn:example:path'('urn:example:paris','urn:example:nantes')).

%
% Explain the reasoning
%

ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:paris','urn:example:orleans')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:paris','urn:example:chartres')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:amiens'),'urn:example:path'('urn:example:paris','urn:example:amiens')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:orleans','urn:example:blois'),'urn:example:path'('urn:example:orleans','urn:example:blois')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:orleans','urn:example:bourges'),'urn:example:path'('urn:example:orleans','urn:example:bourges')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:blois','urn:example:tours'),'urn:example:path'('urn:example:blois','urn:example:tours')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:chartres','urn:example:lemans')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:lemans','urn:example:angers'),'urn:example:path'('urn:example:lemans','urn:example:angers')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:lemans','urn:example:tours'),'urn:example:path'('urn:example:lemans','urn:example:tours')).
ether(('urn:example:path'(A,B)<='urn:example:oneway'(A,B)),'urn:example:oneway'('urn:example:angers','urn:example:nantes'),'urn:example:path'('urn:example:angers','urn:example:nantes')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:blois')),'urn:example:path'('urn:example:paris','urn:example:blois')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:bourges')),'urn:example:path'('urn:example:paris','urn:example:bourges')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:lemans')),'urn:example:path'('urn:example:paris','urn:example:lemans')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:orleans','urn:example:blois'),'urn:example:path'('urn:example:blois','urn:example:tours')),'urn:example:path'('urn:example:orleans','urn:example:tours')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:angers')),'urn:example:path'('urn:example:chartres','urn:example:angers')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:tours')),'urn:example:path'('urn:example:chartres','urn:example:tours')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:lemans','urn:example:angers'),'urn:example:path'('urn:example:angers','urn:example:nantes')),'urn:example:path'('urn:example:lemans','urn:example:nantes')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:tours')),'urn:example:path'('urn:example:paris','urn:example:tours')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:angers')),'urn:example:path'('urn:example:paris','urn:example:angers')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:nantes')),'urn:example:path'('urn:example:chartres','urn:example:nantes')).
ether(('urn:example:path'(A,B)<='urn:example:path'(A,C),'urn:example:path'(C,B)),('urn:example:path'('urn:example:paris','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:nantes')),'urn:example:path'('urn:example:paris','urn:example:nantes')).
