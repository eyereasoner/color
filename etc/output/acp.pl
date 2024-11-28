:- op(1150,xfx,=>).

'urn:example:Policy'('urn:example:PolicyX'),'urn:example:pass'('urn:example:PolicyX','urn:example:allOfTest'),'urn:example:pass'('urn:example:PolicyX','urn:example:anyOfTest'),'urn:example:pass'('urn:example:PolicyX','urn:example:noneOfTest')=>true.
