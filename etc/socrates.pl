% Socrates is a mortal

'<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'('Socrates', '<urn:example:Man>'),
'<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'(_, '<urn:example:Man>') :+
    true.

'<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'(X, '<urn:example:Mortal>') :+
    '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'(X, '<urn:example:Man>').

% query
true :+ '<http://www.w3.org/1999/02/22-rdf-syntax-ns#type>'(_, _).
