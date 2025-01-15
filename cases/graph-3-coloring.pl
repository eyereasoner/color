% Zero-Knowledge Proof for Graph 3-Coloring
% Alice wants to prove to Bob that she knows a valid 3-coloring of a graph without revealing the actual colors.
% A 3-coloring means assigning one of three colors to each vertex so that no two adjacent vertices share the same color.
% Bob can verify that the proof is correct without learning the actual coloring.

:- use_module(library(format)).
:- use_module(library(lists)).

% graph definition
edge(a, b).
edge(b, c).
edge(c, d).
edge(d, e).
edge(e, a).
edge(a, c).
edge(b, d).

% list of allowed colors
color(red).
color(blue).
color(green).

% check if a coloring is valid for the entire graph (no two connected nodes have the same color)
valid_coloring([]).
valid_coloring([Node-Color|Rest]) :-
    \+conflict(Node, Color, Rest),
    valid_coloring(Rest).

% conflict check: verifies if neighbors have the same color
conflict(Node, Color, [Neighbor-Color|_]) :-
    edge(Node, Neighbor).
conflict(Node, Color, [_|Rest]) :-
    conflict(Node, Color, Rest).

% Alice's secret valid coloring
alice_knows_coloring([a-red, b-blue, c-green, d-red, e-blue]).

% Prover generates a permuted version of the coloring (hides actual colors)
'urn:example:permuted_coloring'(PermutedColoring) :-
    alice_knows_coloring(SecretColoring),
    permutation(SecretColoring, PermutedColoring).

% verifier issues a random edge as a challenge
'urn:example:challenge_edge'(X-Y) :-
    edge(X, Y).

% prover reveals colors for the challenged edge only
'urn:example:prover_response'(X-Y, PermutedColoring, [X-ColorX, Y-ColorY]) :-
    member(X-ColorX, PermutedColoring),
    member(Y-ColorY, PermutedColoring).

% verifier checks if revealed colors are different for the challenged edge
'urn:example:verify_response'(_-ColorX, _-ColorY, Result) :-
    (ColorX \= ColorY -> Result = valid ; Result = invalid).

% query
query((
    'urn:example:permuted_coloring'(PermutedColoring),
    'urn:example:challenge_edge'(Edge),
    'urn:example:prover_response'(Edge, PermutedColoring, [X-ColorX, Y-ColorY]),
    'urn:example:verify_response'(X-ColorX, Y-ColorY, _)
)).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
