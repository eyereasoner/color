% running examples/complex.pl
'urn:example:exp'([[-1,0],[0.5,0]],[6.123233995736766e-17,1.0]) => true.
'urn:example:exp'([[e,0],[0,pi]],[-1.0,1.2246467991473532e-16]) => true.
'urn:example:log'([[e,0],[-1,0]],[0.0,3.141592653589793]) => true.
'urn:example:log'([[0,1],[0,1]],[1.0,0.0]) => true.
'urn:example:sin'([1.5707963267949,1.316957896924817],[2.0,-6.6312755068093511e-16]) => true.
'urn:example:cos'([0,-1.316957896924817],[2.0,0.0]) => true.
'urn:example:tan'([1.338972522294493,0.402359478108525],[1.0,2.0]) => true.
'urn:example:asin'([2,0],[1.5707963267949,1.31695789692482]) => true.
'urn:example:acos'([2,0],[0.0,-1.31695789692482]) => true.
'urn:example:atan'([1,2],[1.33897252229449,0.402359478108525]) => true.

% running examples/dt.pl
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:z','urn:example:N10000') => true.

% running examples/easter.pl
'urn:example:easter'(2021,[4,4]) => true.
'urn:example:easter'(2022,[4,17]) => true.
'urn:example:easter'(2023,[4,9]) => true.
'urn:example:easter'(2024,[3,31]) => true.
'urn:example:easter'(2025,[4,20]) => true.
'urn:example:easter'(2026,[4,5]) => true.
'urn:example:easter'(2027,[3,28]) => true.
'urn:example:easter'(2028,[4,16]) => true.
'urn:example:easter'(2029,[4,1]) => true.
'urn:example:easter'(2030,[4,21]) => true.
'urn:example:easter'(2031,[4,13]) => true.
'urn:example:easter'(2032,[3,28]) => true.
'urn:example:easter'(2033,[4,17]) => true.
'urn:example:easter'(2034,[4,9]) => true.
'urn:example:easter'(2035,[3,25]) => true.
'urn:example:easter'(2036,[4,13]) => true.
'urn:example:easter'(2037,[4,5]) => true.
'urn:example:easter'(2038,[4,25]) => true.
'urn:example:easter'(2039,[4,10]) => true.
'urn:example:easter'(2040,[4,1]) => true.
'urn:example:easter'(2041,[4,21]) => true.
'urn:example:easter'(2042,[4,6]) => true.
'urn:example:easter'(2043,[3,29]) => true.
'urn:example:easter'(2044,[4,17]) => true.
'urn:example:easter'(2045,[4,9]) => true.
'urn:example:easter'(2046,[3,25]) => true.
'urn:example:easter'(2047,[4,14]) => true.
'urn:example:easter'(2048,[4,5]) => true.
'urn:example:easter'(2049,[4,18]) => true.
'urn:example:easter'(2050,[4,10]) => true.

% running examples/fourcolor.pl
B => true.
C => true.
D => true.
E => true.
F => true.
G => true.
H => true.
I => true.
J => true.
K => true.
L => true.
M => true.
N => true.
O => true.
P => true.
Q => true.
R => true.
S => true.
T => true.
U => true.
V => true.
W => true.
X => true.
Y => true.
Z => true.
A1 => true.
B1 => true.
C1 => true.
D1 => true.
E1 => true.
F1 => true.
G1 => true.
H1 => true.
I1 => true.
J1 => true.
K1 => true.
L1 => true.
M1 => true.
N1 => true.
O1 => true.
P1 => true.
Q1 => true.
R1 => true.
S1 => true.
T1 => true.
U1 => true.
V1 => true.
W1 => true.
Y1 => true.
Z1 => true.
A2 => true.
B2 => true.
C2 => true.
D2 => true.
E2 => true.
F2 => true.
G2 => true.
H2 => true.
I2 => true.
J2 => true.
K2 => true.
L2 => true.
M2 => true.
N2 => true.
O2 => true.
P2 => true.
Q2 => true.
R2 => true.
S2 => true.
T2 => true.
U2 => true.
V2 => true.
W2 => true.
X2 => true.
Y2 => true.
Z2 => true.
A3 => true.
B3 => true.
C3 => true.
D3 => true.
E3 => true.
F3 => true.
G3 => true.
H3 => true.
I3 => true.
J3 => true.
K3 => true.
L3 => true.
M3 => true.
N3 => true.
O3 => true.
P3 => true.
Q3 => true.
R3 => true.
S3 => true.
T3 => true.

% running examples/gps.pl
'https://eyereasoner.github.io/color#proof_step'((true=>'urn:example:location'('urn:example:i1','urn:example:gent')),(true=>'urn:example:location'('urn:example:i1','urn:example:gent'))).
'urn:example:findpath'('urn:example:map_be',['urn:example:location'('urn:example:i1','urn:example:oostende'),['urn:example:drive_gent_brugge','urn:example:drive_brugge_oostende'],2400.0,0.01,0.9408,0.99,[5000.0,5.0,0.2,0.4,1]]) => true.
'urn:example:findpath'('urn:example:map_be',['urn:example:location'('urn:example:i1','urn:example:oostende'),['urn:example:drive_gent_kortrijk','urn:example:drive_kortrijk_brugge','urn:example:drive_brugge_oostende'],4100.0,0.018,0.903168,0.9801,[5000.0,5.0,0.2,0.4,1]]) => true.

% running examples/graph.pl
'https://eyereasoner.github.io/color#proof_step'((true=>'urn:example:oneway'('urn:example:paris','urn:example:orleans'),'urn:example:oneway'('urn:example:paris','urn:example:chartres'),'urn:example:oneway'('urn:example:paris','urn:example:amiens'),'urn:example:oneway'('urn:example:orleans','urn:example:blois'),'urn:example:oneway'('urn:example:orleans','urn:example:bourges'),'urn:example:oneway'('urn:example:blois','urn:example:tours'),'urn:example:oneway'('urn:example:chartres','urn:example:lemans'),'urn:example:oneway'('urn:example:lemans','urn:example:angers'),'urn:example:oneway'('urn:example:lemans','urn:example:tours'),'urn:example:oneway'('urn:example:angers','urn:example:nantes')),(true=>'urn:example:oneway'('urn:example:paris','urn:example:orleans'),'urn:example:oneway'('urn:example:paris','urn:example:chartres'),'urn:example:oneway'('urn:example:paris','urn:example:amiens'),'urn:example:oneway'('urn:example:orleans','urn:example:blois'),'urn:example:oneway'('urn:example:orleans','urn:example:bourges'),'urn:example:oneway'('urn:example:blois','urn:example:tours'),'urn:example:oneway'('urn:example:chartres','urn:example:lemans'),'urn:example:oneway'('urn:example:lemans','urn:example:angers'),'urn:example:oneway'('urn:example:lemans','urn:example:tours'),'urn:example:oneway'('urn:example:angers','urn:example:nantes'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:angers','urn:example:nantes')=>'urn:example:path'('urn:example:angers','urn:example:nantes'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:lemans','urn:example:tours')=>'urn:example:path'('urn:example:lemans','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:lemans','urn:example:angers')=>'urn:example:path'('urn:example:lemans','urn:example:angers'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:chartres','urn:example:lemans')=>'urn:example:path'('urn:example:chartres','urn:example:lemans'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:blois','urn:example:tours')=>'urn:example:path'('urn:example:blois','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:orleans','urn:example:bourges')=>'urn:example:path'('urn:example:orleans','urn:example:bourges'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:orleans','urn:example:blois')=>'urn:example:path'('urn:example:orleans','urn:example:blois'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:paris','urn:example:amiens')=>'urn:example:path'('urn:example:paris','urn:example:amiens'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:paris','urn:example:chartres')=>'urn:example:path'('urn:example:paris','urn:example:chartres'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:paris','urn:example:orleans')=>'urn:example:path'('urn:example:paris','urn:example:orleans'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:blois')=>'urn:example:path'('urn:example:paris','urn:example:blois'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:bourges')=>'urn:example:path'('urn:example:paris','urn:example:bourges'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:lemans')=>'urn:example:path'('urn:example:paris','urn:example:lemans'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:orleans','urn:example:blois'),'urn:example:path'('urn:example:blois','urn:example:tours')=>'urn:example:path'('urn:example:orleans','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:angers')=>'urn:example:path'('urn:example:chartres','urn:example:angers'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:tours')=>'urn:example:path'('urn:example:chartres','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:lemans','urn:example:angers'),'urn:example:path'('urn:example:angers','urn:example:nantes')=>'urn:example:path'('urn:example:lemans','urn:example:nantes'))).
'urn:example:path'('urn:example:lemans','urn:example:nantes') => true.
'urn:example:path'('urn:example:angers','urn:example:nantes') => true.
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(I,J),'urn:example:path'(J,K)=>'urn:example:path'(I,K)),('urn:example:path'('urn:example:chartres','urn:example:angers'),'urn:example:path'('urn:example:angers','urn:example:nantes')=>'urn:example:path'('urn:example:chartres','urn:example:nantes'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(I,J),'urn:example:path'(J,K)=>'urn:example:path'(I,K)),('urn:example:path'('urn:example:paris','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:nantes')=>'urn:example:path'('urn:example:paris','urn:example:nantes'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(I,J),'urn:example:path'(J,K)=>'urn:example:path'(I,K)),('urn:example:path'('urn:example:paris','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:angers')=>'urn:example:path'('urn:example:paris','urn:example:angers'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(I,J),'urn:example:path'(J,K)=>'urn:example:path'(I,K)),('urn:example:path'('urn:example:paris','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:tours')=>'urn:example:path'('urn:example:paris','urn:example:tours'))).
'urn:example:path'('urn:example:paris','urn:example:nantes') => true.
'urn:example:path'('urn:example:chartres','urn:example:nantes') => true.

% running examples/lee.pl
'urn:example:route'([[1,1],[9,8],[[[2,3],[4,5]],[[6,6],[8,8]]]],[[9,8],[9,7],[9,6],[9,5],[8,5],[7,5],[6,5],[5,5],[5,4],[5,3],[5,2],[4,2],[3,2],[2,2],[1,2],[1,1]]) => true.

% running examples/mi.pl
'urn:example:mi'(['urn:example:mi'(['urn:example:factorial'(s(s(s(s(s(0))))),s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(s(...))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))],[])],[]) => true.

% running examples/polygon.pl
'urn:example:area'([[3,2],[6,2],[7,6],[4,6],[5,5],[5,3],[3,2]],7.5) => true.

% running examples/sdcoding.pl
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(0,1)=>'urn:example:sdconot'(0,1))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(0,3)=>'urn:example:sdconot'(0,3))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(1,0)=>'urn:example:sdconot'(1,0))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(1,1)=>'urn:example:sdconot'(1,1))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(1,2)=>'urn:example:sdconot'(1,2))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(2,1)=>'urn:example:sdconot'(2,1))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(2,3)=>'urn:example:sdconot'(2,3))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(3,1)=>'urn:example:sdconot'(3,1))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(3,3)=>'urn:example:sdconot'(3,3))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(3,0)=>'urn:example:sdconot'(3,0))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(3,2)=>'urn:example:sdconot'(3,2))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(0,0)=>'urn:example:sdconot'(0,0))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(2,0)=>'urn:example:sdconot'(2,0))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:sdc'(A,B)=>'urn:example:sdconot'(A,B)),('urn:example:sdc'(2,2)=>'urn:example:sdconot'(2,2))).
'urn:example:sdcoding'(1,1) => true.
'urn:example:sdcoding'(3,3) => true.
'urn:example:sdcoding'(0,0) => true.
'urn:example:sdcoding'(2,2) => true.

% running examples/socrates.pl
'https://eyereasoner.github.io/color#proof_step'((true=>'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man')),(true=>'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man'))).
'https://eyereasoner.github.io/color#proof_step'(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Man')=>'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Mortal')),('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man')=>'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Mortal'))).
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Mortal') => true.
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man') => true.

% running examples/turing.pl
'urn:example:compute'([1,0,1,0,0,1],[1,0,1,0,1,0,[#]]) => true.
'urn:example:compute'([1,0,1,1,1,1],[1,1,0,0,0,0,[#]]) => true.
'urn:example:compute'([1,1,1,1,1,1],[1,0,0,0,0,0,0,[#]]) => true.
'urn:example:compute'([],[1,[#]]) => true.

% running examples/workplace.pl
'https://eyereasoner.github.io/color#proof_step'((true=>'urn:example:obliged'('urn:example:workplace_policy','urn:example:log_off_at_end_of_shift'),'urn:example:permitted'('urn:example:workplace_policy','urn:example:work_related_task'),'urn:example:forbidden'('urn:example:workplace_policy','urn:example:access_social_media')),(true=>'urn:example:obliged'('urn:example:workplace_policy','urn:example:log_off_at_end_of_shift'),'urn:example:permitted'('urn:example:workplace_policy','urn:example:work_related_task'),'urn:example:forbidden'('urn:example:workplace_policy','urn:example:access_social_media'))).
'https://eyereasoner.github.io/color#proof_step'((true=>'urn:example:does'('urn:example:alice','urn:example:log_off_at_end_of_shift'),'urn:example:does'('urn:example:bob','urn:example:work_related_task'),'urn:example:does'('urn:example:carol','urn:example:access_social_media')),(true=>'urn:example:does'('urn:example:alice','urn:example:log_off_at_end_of_shift'),'urn:example:does'('urn:example:bob','urn:example:work_related_task'),'urn:example:does'('urn:example:carol','urn:example:access_social_media'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:does'(A,B),'urn:example:obliged'('urn:example:workplace_policy',B)=>'urn:example:complies'(A,['urn:example:is_fulfilling_an_obligation',B])),('urn:example:does'('urn:example:alice','urn:example:log_off_at_end_of_shift'),'urn:example:obliged'('urn:example:workplace_policy','urn:example:log_off_at_end_of_shift')=>'urn:example:complies'('urn:example:alice',['urn:example:is_fulfilling_an_obligation','urn:example:log_off_at_end_of_shift']))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:does'(C,D),'urn:example:permitted'('urn:example:workplace_policy',D)=>'urn:example:complies'(C,['urn:example:is_doing_a_permitted_action',D])),('urn:example:does'('urn:example:bob','urn:example:work_related_task'),'urn:example:permitted'('urn:example:workplace_policy','urn:example:work_related_task')=>'urn:example:complies'('urn:example:bob',['urn:example:is_doing_a_permitted_action','urn:example:work_related_task']))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:does'(E,F),'urn:example:forbidden'('urn:example:workplace_policy',F)=>'urn:example:complies'(E,['urn:example:is_violating_a_prohibition',F])),('urn:example:does'('urn:example:carol','urn:example:access_social_media'),'urn:example:forbidden'('urn:example:workplace_policy','urn:example:access_social_media')=>'urn:example:complies'('urn:example:carol',['urn:example:is_violating_a_prohibition','urn:example:access_social_media']))).
'urn:example:complies'('urn:example:carol',['urn:example:is_violating_a_prohibition','urn:example:access_social_media']) => true.
'urn:example:complies'('urn:example:bob',['urn:example:is_doing_a_permitted_action','urn:example:work_related_task']) => true.
'urn:example:complies'('urn:example:alice',['urn:example:is_fulfilling_an_obligation','urn:example:log_off_at_end_of_shift']) => true.

