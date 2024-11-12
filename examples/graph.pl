% Traversing graph paths

:- dynamic('https://eyereasoner.github.io/color#oneway'/2).
:- dynamic('https://eyereasoner.github.io/color#path'/2).

true =>
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#paris','http://example.org/ns#orleans'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#paris','http://example.org/ns#chartres'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#paris','http://example.org/ns#amiens'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#orleans','http://example.org/ns#blois'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#orleans','http://example.org/ns#bourges'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#blois','http://example.org/ns#tours'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#chartres','http://example.org/ns#lemans'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#lemans','http://example.org/ns#angers'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#lemans','http://example.org/ns#tours'),
    'https://eyereasoner.github.io/color#oneway'('http://example.org/ns#angers','http://example.org/ns#nantes').

'https://eyereasoner.github.io/color#oneway'(A,B) => 'https://eyereasoner.github.io/color#path'(A,B).
'https://eyereasoner.github.io/color#path'(A,B),'https://eyereasoner.github.io/color#path'(B,C) => 'https://eyereasoner.github.io/color#path'(A,C).

% query
'https://eyereasoner.github.io/color#path'(_CITY,'http://example.org/ns#nantes') => true.
