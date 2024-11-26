:- op(1150,xfx,=>).

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man') => true.
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Mortal') => true.

% Explain the reasoning
'http://www.w3.org/2000/10/swap/log#proves'((('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Man')=>'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Mortal')),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man')),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Mortal')).
