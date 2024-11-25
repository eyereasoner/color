:- op(1150,xfx,=>).

'urn:example:sdcoding'(1,1) => true.
'urn:example:sdcoding'(3,3) => true.
'urn:example:sdcoding'(0,0) => true.
'urn:example:sdcoding'(2,2) => true.

% proof
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(0,1),'urn:example:sdconot'(0,1))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(0,3),'urn:example:sdconot'(0,3))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(1,0),'urn:example:sdconot'(1,0))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(1,1),'urn:example:sdconot'(1,1))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(1,2),'urn:example:sdconot'(1,2))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(2,1),'urn:example:sdconot'(2,1))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(2,3),'urn:example:sdconot'(2,3))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(3,1),'urn:example:sdconot'(3,1))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(3,3),'urn:example:sdconot'(3,3))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(3,0),'urn:example:sdconot'(3,0))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(3,2),'urn:example:sdconot'(3,2))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(0,0),'urn:example:sdconot'(0,0))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(2,0),'urn:example:sdconot'(2,0))
proof(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(2,2),'urn:example:sdconot'(2,2))
