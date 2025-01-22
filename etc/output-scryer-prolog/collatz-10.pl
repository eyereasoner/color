:- op(1200, xfx, :+).

answer('urn:example:collatz'(1,[1])).
answer('urn:example:collatz'(2,[2,1])).
answer('urn:example:collatz'(3,[3,10,5,16,8,4,2,1])).
answer('urn:example:collatz'(4,[4,2,1])).
answer('urn:example:collatz'(5,[5,16,8,4,2,1])).
answer('urn:example:collatz'(6,[6,3,10,5,16,8,4,2,1])).
answer('urn:example:collatz'(7,[7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1])).
answer('urn:example:collatz'(8,[8,4,2,1])).
answer('urn:example:collatz'(9,[9,28,14,7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1])).
answer('urn:example:collatz'(10,[10,5,16,8,4,2,1])).

% proof steps
step((true:+'urn:example:collatz'(1,A)),'urn:example:collatz'(1,[1]),true).
step((true:+'urn:example:collatz'(2,A)),'urn:example:collatz'(2,[2,1]),true).
step((true:+'urn:example:collatz'(3,A)),'urn:example:collatz'(3,[3,10,5,16,8,4,2,1]),true).
step((true:+'urn:example:collatz'(4,A)),'urn:example:collatz'(4,[4,2,1]),true).
step((true:+'urn:example:collatz'(5,A)),'urn:example:collatz'(5,[5,16,8,4,2,1]),true).
step((true:+'urn:example:collatz'(6,A)),'urn:example:collatz'(6,[6,3,10,5,16,8,4,2,1]),true).
step((true:+'urn:example:collatz'(7,A)),'urn:example:collatz'(7,[7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]),true).
step((true:+'urn:example:collatz'(8,A)),'urn:example:collatz'(8,[8,4,2,1]),true).
step((true:+'urn:example:collatz'(9,A)),'urn:example:collatz'(9,[9,28,14,7,22,11,34,17,52,26,13,40,20,10,5,16,8,4,2,1]),true).
step((true:+'urn:example:collatz'(10,A)),'urn:example:collatz'(10,[10,5,16,8,4,2,1]),true).
