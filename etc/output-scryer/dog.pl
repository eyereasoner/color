:- op(1200, xfx, :+).

answer('urn:example:mustHave'('urn:example:alice','urn:example:dogLicense')).

% proof steps
step((true:+'urn:example:mustHave'(A,B)),'urn:example:mustHave'('urn:example:alice','urn:example:dogLicense'),true).