:- op(1200, xfx, :+).

answer('urn:example:goldbach'(4,[2,2])).
answer('urn:example:goldbach'(6,[3,3])).
answer('urn:example:goldbach'(8,[3,5])).

% proof steps
step((true:+'urn:example:goldbach'(4,[A,B])),'urn:example:goldbach'(4,[2,2]),true).
step((true:+'urn:example:goldbach'(6,[A,B])),'urn:example:goldbach'(6,[3,3]),true).
step((true:+'urn:example:goldbach'(8,[A,B])),'urn:example:goldbach'(8,[3,5]),true).
