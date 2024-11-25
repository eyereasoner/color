:- op(1150,xfx,=>).

'urn:example:path'('urn:example:angers','urn:example:nantes') => true.
'urn:example:path'('urn:example:lemans','urn:example:nantes') => true.
'urn:example:path'('urn:example:chartres','urn:example:nantes') => true.
'urn:example:path'('urn:example:paris','urn:example:nantes') => true.

%
% Proof Explanation
%

'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:orleans')),'urn:example:path'('urn:example:paris','urn:example:orleans')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:chartres')),'urn:example:path'('urn:example:paris','urn:example:chartres')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:amiens')),'urn:example:path'('urn:example:paris','urn:example:amiens')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:orleans','urn:example:blois')),'urn:example:path'('urn:example:orleans','urn:example:blois')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:orleans','urn:example:bourges')),'urn:example:path'('urn:example:orleans','urn:example:bourges')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:blois','urn:example:tours')),'urn:example:path'('urn:example:blois','urn:example:tours')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:chartres','urn:example:lemans')),'urn:example:path'('urn:example:chartres','urn:example:lemans')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:lemans','urn:example:angers')),'urn:example:path'('urn:example:lemans','urn:example:angers')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:lemans','urn:example:tours')),'urn:example:path'('urn:example:lemans','urn:example:tours')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:angers','urn:example:nantes')),'urn:example:path'('urn:example:angers','urn:example:nantes')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),'urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:blois')),'urn:example:path'('urn:example:paris','urn:example:blois')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),'urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:bourges')),'urn:example:path'('urn:example:paris','urn:example:bourges')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),'urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:lemans')),'urn:example:path'('urn:example:paris','urn:example:lemans')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),'urn:example:path'('urn:example:orleans','urn:example:blois'),'urn:example:path'('urn:example:blois','urn:example:tours')),'urn:example:path'('urn:example:orleans','urn:example:tours')).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),'urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:angers')),'urn:exam