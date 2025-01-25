:- op(1200, xfx, :+).

answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man')).
answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(sk_0,'urn:example:Man')).
answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Mortal')).
answer('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(sk_0,'urn:example:Mortal')).

% proof steps
step(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man'),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_,'urn:example:Man'):+true), true, ('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man'),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(sk_0,'urn:example:Man'))).
step(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man'),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_,'urn:example:Man'):+true), true, ('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man'),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(sk_0,'urn:example:Man'))).
step(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Mortal'):+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Man')), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man'), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Mortal')).
step(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Mortal'):+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Man')), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(sk_0,'urn:example:Man'), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(sk_0,'urn:example:Mortal')).
step((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_,_)), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Man'), true).
step((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_,_)), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(sk_0,'urn:example:Man'), true).
step((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_,_)), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('Socrates','urn:example:Mortal'), true).
step((true:+'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_,_)), 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(sk_0,'urn:example:Mortal'), true).
