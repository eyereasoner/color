% Deep taxonomy
% See http://ruleml.org/WellnessRules/files/WellnessRulesN3-2009-11-10.pdf

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'('urn:example:z', 'urn:example:N0').

'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X, 'urn:example:N1') :- 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X, 'urn:example:N0').
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X, 'urn:example:I1') :- 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X, 'urn:example:N0').
'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X, 'urn:example:J1') :- 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(X, 'urn:example:N0').

% query
true :+ 'http://www.w3.org/1999/02/22-rdf-syntax-ns#type'(_, 'urn:example:N1').
