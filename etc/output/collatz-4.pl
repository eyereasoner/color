:- op(1200, xfx, :+).

answer('urn:example:collatz'(1, [1])).
answer('urn:example:collatz'(2, [2, 1])).
answer('urn:example:collatz'(3, [3, 10, 5, 16, 8, 4, 2, 1])).
answer('urn:example:collatz'(4, [4, 2, 1])).

% proof steps
step((true:+'urn:example:collatz'(1, _)), 'urn:example:collatz'(1, [1]), true).
step((true:+'urn:example:collatz'(2, _)), 'urn:example:collatz'(2, [2, 1]), true).
step((true:+'urn:example:collatz'(3, _)), 'urn:example:collatz'(3, [3, 10, 5, 16, 8, 4, 2, 1]), true).
step((true:+'urn:example:collatz'(4, _)), 'urn:example:collatz'(4, [4, 2, 1]), true).
