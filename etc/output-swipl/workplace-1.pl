:- op(1200, xfx, :+).

answer('urn:example:prepare'(1, 1)).

% proof steps
step((true:+'urn:example:prepare'(1, 1)), 'urn:example:prepare'(1, 1), true).
