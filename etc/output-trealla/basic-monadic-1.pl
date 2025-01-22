:- op(1200, xfx, :+).

answer(\+'urn:example:cycle'(A,B)).

% proof steps
step((true:+ \+'urn:example:cycle'(A,B)),\+'urn:example:cycle'(A,B),true).
