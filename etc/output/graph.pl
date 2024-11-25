:- op(1150,xfx,=>).

'urn:example:path'('urn:example:angers','urn:example:nantes') => true.
'urn:example:path'('urn:example:lemans','urn:example:nantes') => true.
'urn:example:path'('urn:example:chartres','urn:example:nantes') => true.
'urn:example:path'('urn:example:paris','urn:example:nantes') => true.

% proof
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:paris','urn:example:orleans'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:paris','urn:example:chartres'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:paris','urn:example:amiens'),'urn:example:path'('urn:example:paris','urn:example:amiens'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:orleans','urn:example:blois'),'urn:example:path'('urn:example:orleans','urn:example:blois'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:orleans','urn:example:bourges'),'urn:example:path'('urn:example:orleans','urn:example:bourges'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:blois','urn:example:tours'),'urn:example:path'('urn:example:blois','urn:example:tours'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:chartres','urn:example:lemans'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:lemans','urn:example:angers'),'urn:example:path'('urn:example:lemans','urn:example:angers'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:lemans','urn:example:tours'),'urn:example:path'('urn:example:lemans','urn:example:tours'))
proof(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),'urn:example:oneway'('urn:example:angers','urn:example:nantes'),'urn:example:path'('urn:example:angers','urn:example:nantes'))
proof(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:blois')),'urn:example:path'('urn:example:paris','urn:example:blois'))
proof(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:bourges')),'urn:example:path'('urn:example:paris','urn:example:bourges'))
proof(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:lemans')),'urn:example:path'('urn:example:paris','urn:example:lemans'))
proof(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:orleans','urn:example:blois'),'urn:example:path'('urn:example:blois','urn:example:tours')),'urn:example:path'('urn:example:orleans','urn:example:tours'))
proof(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:angers')),'urn:example:path'('urn:example:chartres','urn:example:angers'))
proof(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:tours')),'urn:example:path'('urn:example:chartres','urn:example:tours'))
proof(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:lemans','urn:example:angers'),'urn:example:path'('urn:example:angers','urn:example:nantes')),'urn:example:path'('urn:example:lemans','urn:example:nantes'))
proof(('urn:example:path'(I,J),'urn:example:path'(J,K)=>'urn:example:path'(I,K)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:tours')),'urn:example:path'('urn:example:paris','urn:example:tours'))
proof(('urn:example:path'(I,J),'urn:example:path'(J,K)=>'urn:example:path'(I,K)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:angers')),'urn:example:path'('urn:example:paris','urn:example:angers'))
proof(('urn:example:path'(I,J),'urn:example:path'(J,K)=>'urn:example:path'(I,K)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:nantes')),'urn:example:path'('urn:example:chartres','urn:example:nantes'))
proof(('urn:example:path'(I,J),'urn:example:path'(J,K)=>'urn:example:path'(I,K)),('urn:example:path'('urn:example:paris','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:nantes')),'urn:example:path'('urn:example:paris','urn:example:nantes'))
