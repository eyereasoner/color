% running examples/cobbler.pl
'urn:example:is'('urn:example:bob','urn:example:good'('urn:example:Cobbler')) => true.

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

% running examples/control.pl
'https://eyereasoner.github.io/color#proof_step'(('urn:example:measurement10'('urn:example:input1',A),'urn:example:measurement2'('urn:example:input2',true),'urn:example:measurement3'('urn:example:disturbance1',B),C is A*19.6,D is log10(B),E is C-D=>'urn:example:control1'('urn:example:actuator1',E)),('urn:example:measurement10'('urn:example:input1',2.23606797749979),'urn:example:measurement2'('urn:example:input2',true),'urn:example:measurement3'('urn:example:disturbance1',35766),43.8269323589959 is 2.23606797749979*19.6,4.55347037221312 is log10(35766),39.2734619867828 is 43.8269323589959-4.55347037221312=>'urn:example:control1'('urn:example:actuator1',39.2734619867828))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:observation3'('urn:example:state3',F),'urn:example:measurement4'('urn:example:output2',G),'urn:example:target2'('urn:example:output2',H),I is H-G,J is F-G,K is 5.8*I,L is 7.3/I,M is L*J,N is K+M=>'urn:example:control1'('urn:example:actuator2',N)),('urn:example:observation3'('urn:example:state3',22),'urn:example:measurement4'('urn:example:output2',24),'urn:example:target2'('urn:example:output2',29),5 is 29-24, -2 is 22-24,29.0 is 5.8*5,1.46 is 7.3/5, -2.92 is 1.46* -2,26.08 is 29.0+ -2.92=>'urn:example:control1'('urn:example:actuator2',26.08))).

'urn:example:control1'('urn:example:actuator2',26.08) => true.
'urn:example:control1'('urn:example:actuator1',39.2734619867828) => true.

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

% running examples/fibonacci.pl
'urn:example:fibonacci'(1,1) => true.
'urn:example:fibonacci'(2,1) => true.
'urn:example:fibonacci'(3,2) => true.
'urn:example:fibonacci'(4,3) => true.
'urn:example:fibonacci'(5,5) => true.
'urn:example:fibonacci'(91,4660046610375530309) => true.
'urn:example:fibonacci'(283,62232491515607091882574410635924603070626544377175485625797) => true.
'urn:example:fibonacci'(3674,295872959797101479478634366815157108100573212705250690577871041398423606408217262643449728342664061812585639168722421830407677671667740585806703531229882783069925750619720511808616484846128237251921414441458265138672827487722512845223115526738192067144721087756159352711138340620702266509343657403678256247195010013499661223527119909308682062873140767135468966093474944529418214755911968500799987099146489838560114063096775586903976827512299123202488315139397181279903459556726060805948910609527571241968534269554079076649680403030083743420820438603816095671532163428933363322524736324029745871445486444623006627119156710782085648303485296149604974010598940800770684835758031137479033374229914629583184427269638360355586190323578625395157899987377625662075558684705457) => true.
'urn:example:golden_ratio'(1,1.0) => true.
'urn:example:golden_ratio'(10,1.61818181818182) => true.
'urn:example:golden_ratio'(100,1.61803398874989) => true.
'urn:example:golden_ratio'(1000,1.61803398874989) => true.

% running examples/fourcolor.pl
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:red']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:green']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:yellow'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:yellow'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:blue']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:red'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:green'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:yellow'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:blue'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:red'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:blue'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:blue'],['urn:example:place3','urn:example:green'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:green'],['urn:example:place2','urn:example:red'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:yellow']]) => true.
'urn:example:colors'('urn:example:map1',[['urn:example:place1','urn:example:red'],['urn:example:place2','urn:example:green'],['urn:example:place3','urn:example:blue'],['urn:example:place4','urn:example:yellow'],['urn:example:place5','urn:example:yellow']]) => true.

% running examples/gps.pl
'urn:example:findpath'('urn:example:map_be',['urn:example:location'('urn:example:i1','urn:example:oostende'),['urn:example:drive_gent_brugge','urn:example:drive_brugge_oostende'],2400.0,0.01,0.9408,0.99,[5000.0,5.0,0.2,0.4,1]]) => true.
'urn:example:findpath'('urn:example:map_be',['urn:example:location'('urn:example:i1','urn:example:oostende'),['urn:example:drive_gent_kortrijk','urn:example:drive_kortrijk_brugge','urn:example:drive_brugge_oostende'],4100.0,0.018,0.903168,0.9801,[5000.0,5.0,0.2,0.4,1]]) => true.

% running examples/graph.pl
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:paris','urn:example:orleans')=>'urn:example:path'('urn:example:paris','urn:example:orleans'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:paris','urn:example:chartres')=>'urn:example:path'('urn:example:paris','urn:example:chartres'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:paris','urn:example:amiens')=>'urn:example:path'('urn:example:paris','urn:example:amiens'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:orleans','urn:example:blois')=>'urn:example:path'('urn:example:orleans','urn:example:blois'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:orleans','urn:example:bourges')=>'urn:example:path'('urn:example:orleans','urn:example:bourges'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:blois','urn:example:tours')=>'urn:example:path'('urn:example:blois','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:chartres','urn:example:lemans')=>'urn:example:path'('urn:example:chartres','urn:example:lemans'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:lemans','urn:example:angers')=>'urn:example:path'('urn:example:lemans','urn:example:angers'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:lemans','urn:example:tours')=>'urn:example:path'('urn:example:lemans','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:oneway'(A,B)=>'urn:example:path'(A,B)),('urn:example:oneway'('urn:example:angers','urn:example:nantes')=>'urn:example:path'('urn:example:angers','urn:example:nantes'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:lemans','urn:example:angers'),'urn:example:path'('urn:example:angers','urn:example:nantes')=>'urn:example:path'('urn:example:lemans','urn:example:nantes'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:nantes')=>'urn:example:path'('urn:example:chartres','urn:example:nantes'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:tours')=>'urn:example:path'('urn:example:chartres','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:chartres','urn:example:lemans'),'urn:example:path'('urn:example:lemans','urn:example:angers')=>'urn:example:path'('urn:example:chartres','urn:example:angers'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:orleans','urn:example:blois'),'urn:example:path'('urn:example:blois','urn:example:tours')=>'urn:example:path'('urn:example:orleans','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:angers')=>'urn:example:path'('urn:example:paris','urn:example:angers'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:tours')=>'urn:example:path'('urn:example:paris','urn:example:tours'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:nantes')=>'urn:example:path'('urn:example:paris','urn:example:nantes'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:chartres'),'urn:example:path'('urn:example:chartres','urn:example:lemans')=>'urn:example:path'('urn:example:paris','urn:example:lemans'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:bourges')=>'urn:example:path'('urn:example:paris','urn:example:bourges'))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:path'(C,D),'urn:example:path'(D,E)=>'urn:example:path'(C,E)),('urn:example:path'('urn:example:paris','urn:example:orleans'),'urn:example:path'('urn:example:orleans','urn:example:blois')=>'urn:example:path'('urn:example:paris','urn:example:blois'))).

'urn:example:path'('urn:example:paris','urn:example:nantes') => true.
'urn:example:path'('urn:example:chartres','urn:example:nantes') => true.
'urn:example:path'('urn:example:lemans','urn:example:nantes') => true.
'urn:example:path'('urn:example:angers','urn:example:nantes') => true.

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
'https://eyereasoner.github.io/color#proof_step'(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Man')=>'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Mortal')),('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man')=>'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Mortal'))).

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Mortal') => true.
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man') => true.

% running examples/turing.pl
'urn:example:compute'([1,0,1,0,0,1],[1,0,1,0,1,0,[#]]) => true.
'urn:example:compute'([1,0,1,1,1,1],[1,1,0,0,0,0,[#]]) => true.
'urn:example:compute'([1,1,1,1,1,1],[1,0,0,0,0,0,0,[#]]) => true.
'urn:example:compute'([],[1,[#]]) => true.

% running examples/workplace.pl
'https://eyereasoner.github.io/color#proof_step'(('urn:example:does'(B,'urn:example:work_related_task'), \+'urn:example:does'(B,'urn:example:log_off_at_end_of_shift')=>'urn:example:complies'(B,false)),('urn:example:does'('urn:example:bob','urn:example:work_related_task'), \+'urn:example:does'('urn:example:bob','urn:example:log_off_at_end_of_shift')=>'urn:example:complies'('urn:example:bob',false))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:does'(C,'urn:example:log_off_at_end_of_shift')=>'urn:example:complies'(C,true)),('urn:example:does'('urn:example:alice','urn:example:log_off_at_end_of_shift')=>'urn:example:complies'('urn:example:alice',true))).
'https://eyereasoner.github.io/color#proof_step'(('urn:example:does'(D,'urn:example:access_social_media')=>'urn:example:complies'(D,false)),('urn:example:does'('urn:example:carol','urn:example:access_social_media')=>'urn:example:complies'('urn:example:carol',false))).

'urn:example:complies'('urn:example:carol',false) => true.
'urn:example:complies'('urn:example:alice',true) => true.
'urn:example:complies'('urn:example:bob',false) => true.

