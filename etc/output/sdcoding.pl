:- op(1200, xfx, ?-).

answer('urn:example:sdcoding'(1,1)).
answer('urn:example:sdcoding'(3,3)).
answer('urn:example:sdcoding'(0,0)).
answer('urn:example:sdcoding'(2,2)).

%
% Explain the reasoning
%

explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(0,1),'urn:example:sdconot'(0,1)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(0,3),'urn:example:sdconot'(0,3)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(1,0),'urn:example:sdconot'(1,0)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(1,1),'urn:example:sdconot'(1,1)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(1,2),'urn:example:sdconot'(1,2)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(2,1),'urn:example:sdconot'(2,1)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(2,3),'urn:example:sdconot'(2,3)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(3,1),'urn:example:sdconot'(3,1)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(3,3),'urn:example:sdconot'(3,3)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(3,0),'urn:example:sdconot'(3,0)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(3,2),'urn:example:sdconot'(3,2)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(0,0),'urn:example:sdconot'(0,0)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(2,0),'urn:example:sdconot'(2,0)).
explains(('urn:example:sdconot'(A,B)?-'urn:example:sdc'(A,B)),'urn:example:sdc'(2,2),'urn:example:sdconot'(2,2)).
