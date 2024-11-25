:- op(1150,xfx,=>).

'urn:example:sdcoding'(1,1) => true.
'urn:example:sdcoding'(3,3) => true.
'urn:example:sdcoding'(0,0) => true.
'urn:example:sdcoding'(2,2) => true.

%
% Proof Explanation
%

'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(0,1)),'urn:example:sdconot'(0,1)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(0,3)),'urn:example:sdconot'(0,3)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(1,0)),'urn:example:sdconot'(1,0)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(1,1)),'urn:example:sdconot'(1,1)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(1,2)),'urn:example:sdconot'(1,2)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(2,1)),'urn:example:sdconot'(2,1)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(2,3)),'urn:example:sdconot'(2,3)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(3,1)),'urn:example:sdconot'(3,1)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(3,3)),'urn:example:sdconot'(3,3)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(3,0)),'urn:example:sdconot'(3,0)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(3,2)),'urn:example:sdconot'(3,2)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(0,0)),'urn:example:sdconot'(0,0)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(2,0)),'urn:example:sdconot'(2,0)).
'http://www.w3.org/2000/10/swap/log#proves'((('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),'urn:example:sdc'(2,2)),'urn:example:sdconot'(2,2)).
