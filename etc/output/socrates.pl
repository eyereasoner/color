:- op(1150,xfx,<=).

true<='http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man').
true<='http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Mortal').

%
% Explain the reasoning
%

ether(('http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Mortal')<='http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(A,'urn:example:Man')),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Man'),'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:Socrates','urn:example:Mortal')).
