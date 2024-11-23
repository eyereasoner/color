:- op(1150,xfx,=>).

% inference fuse, return code 2
'urn:example:color'('urn:example:stone','urn:example:black'),'urn:example:color'('urn:example:stone','urn:example:white') => false.
