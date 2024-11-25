:- op(1150,xfx,=>).

'urn:example:compute'([1,0,1,0,0,1],[1,0,1,0,1,0,"#"]) => true.
'urn:example:compute'([1,0,1,1,1,1],[1,1,0,0,0,0,"#"]) => true.
'urn:example:compute'([1,1,1,1,1,1],[1,0,0,0,0,0,0,"#"]) => true.
'urn:example:compute'([],[1,"#"]) => true.
