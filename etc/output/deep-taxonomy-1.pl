:- op(1200, xfx, :+).

answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:z', 'urn:example:N1')).

% proof steps
step((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_, 'urn:example:N1')), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:z', 'urn:example:N1'), true).
