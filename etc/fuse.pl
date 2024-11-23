% inference fuse

:- op(1150,xfx,=>).

'urn:example:color'('urn:example:stone','urn:example:black').
'urn:example:color'('urn:example:stone','urn:example:white').

'urn:example:color'(X,'urn:example:black'),'urn:example:color'(X,'urn:example:white') => false.
