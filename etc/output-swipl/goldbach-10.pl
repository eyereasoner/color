:- op(1200, xfx, :+).

answer('urn:example:goldbach'(10, [3, 7])).
answer('urn:example:goldbach'(12, [5, 7])).
answer('urn:example:goldbach'(14, [3, 11])).
answer('urn:example:goldbach'(16, [3, 13])).
answer('urn:example:goldbach'(18, [5, 13])).
answer('urn:example:goldbach'(20, [3, 17])).
answer('urn:example:goldbach'(22, [3, 19])).
answer('urn:example:goldbach'(24, [5, 19])).
answer('urn:example:goldbach'(26, [3, 23])).
answer('urn:example:goldbach'(28, [5, 23])).
answer('urn:example:goldbach'(30, [7, 23])).
answer('urn:example:goldbach'(32, [3, 29])).
answer('urn:example:goldbach'(34, [3, 31])).
answer('urn:example:goldbach'(36, [5, 31])).
answer('urn:example:goldbach'(38, [7, 31])).
answer('urn:example:goldbach'(40, [3, 37])).
answer('urn:example:goldbach'(42, [5, 37])).
answer('urn:example:goldbach'(44, [3, 41])).
answer('urn:example:goldbach'(46, [3, 43])).
answer('urn:example:goldbach'(48, [5, 43])).
answer('urn:example:goldbach'(50, [3, 47])).
answer('urn:example:goldbach'(52, [5, 47])).
answer('urn:example:goldbach'(54, [7, 47])).
answer('urn:example:goldbach'(56, [3, 53])).
answer('urn:example:goldbach'(58, [5, 53])).
answer('urn:example:goldbach'(60, [7, 53])).
answer('urn:example:goldbach'(62, [3, 59])).
answer('urn:example:goldbach'(64, [3, 61])).
answer('urn:example:goldbach'(66, [5, 61])).
answer('urn:example:goldbach'(68, [7, 61])).
answer('urn:example:goldbach'(70, [3, 67])).
answer('urn:example:goldbach'(72, [5, 67])).
answer('urn:example:goldbach'(74, [3, 71])).
answer('urn:example:goldbach'(76, [3, 73])).
answer('urn:example:goldbach'(78, [5, 73])).
answer('urn:example:goldbach'(80, [7, 73])).
answer('urn:example:goldbach'(82, [3, 79])).
answer('urn:example:goldbach'(84, [5, 79])).
answer('urn:example:goldbach'(86, [3, 83])).
answer('urn:example:goldbach'(88, [5, 83])).
answer('urn:example:goldbach'(90, [7, 83])).
answer('urn:example:goldbach'(92, [3, 89])).
answer('urn:example:goldbach'(94, [5, 89])).
answer('urn:example:goldbach'(96, [7, 89])).
answer('urn:example:goldbach'(98, [19, 79])).

% proof steps
step((true:+'urn:example:goldbach'(10, [_, _])), 'urn:example:goldbach'(10, [3, 7]), true).
step((true:+'urn:example:goldbach'(12, [_, _])), 'urn:example:goldbach'(12, [5, 7]), true).
step((true:+'urn:example:goldbach'(14, [_, _])), 'urn:example:goldbach'(14, [3, 11]), true).
step((true:+'urn:example:goldbach'(16, [_, _])), 'urn:example:goldbach'(16, [3, 13]), true).
step((true:+'urn:example:goldbach'(18, [_, _])), 'urn:example:goldbach'(18, [5, 13]), true).
step((true:+'urn:example:goldbach'(20, [_, _])), 'urn:example:goldbach'(20, [3, 17]), true).
step((true:+'urn:example:goldbach'(22, [_, _])), 'urn:example:goldbach'(22, [3, 19]), true).
step((true:+'urn:example:goldbach'(24, [_, _])), 'urn:example:goldbach'(24, [5, 19]), true).
step((true:+'urn:example:goldbach'(26, [_, _])), 'urn:example:goldbach'(26, [3, 23]), true).
step((true:+'urn:example:goldbach'(28, [_, _])), 'urn:example:goldbach'(28, [5, 23]), true).
step((true:+'urn:example:goldbach'(30, [_, _])), 'urn:example:goldbach'(30, [7, 23]), true).
step((true:+'urn:example:goldbach'(32, [_, _])), 'urn:example:goldbach'(32, [3, 29]), true).
step((true:+'urn:example:goldbach'(34, [_, _])), 'urn:example:goldbach'(34, [3, 31]), true).
step((true:+'urn:example:goldbach'(36, [_, _])), 'urn:example:goldbach'(36, [5, 31]), true).
step((true:+'urn:example:goldbach'(38, [_, _])), 'urn:example:goldbach'(38, [7, 31]), true).
step((true:+'urn:example:goldbach'(40, [_, _])), 'urn:example:goldbach'(40, [3, 37]), true).
step((true:+'urn:example:goldbach'(42, [_, _])), 'urn:example:goldbach'(42, [5, 37]), true).
step((true:+'urn:example:goldbach'(44, [_, _])), 'urn:example:goldbach'(44, [3, 41]), true).
step((true:+'urn:example:goldbach'(46, [_, _])), 'urn:example:goldbach'(46, [3, 43]), true).
step((true:+'urn:example:goldbach'(48, [_, _])), 'urn:example:goldbach'(48, [5, 43]), true).
step((true:+'urn:example:goldbach'(50, [_, _])), 'urn:example:goldbach'(50, [3, 47]), true).
step((true:+'urn:example:goldbach'(52, [_, _])), 'urn:example:goldbach'(52, [5, 47]), true).
step((true:+'urn:example:goldbach'(54, [_, _])), 'urn:example:goldbach'(54, [7, 47]), true).
step((true:+'urn:example:goldbach'(56, [_, _])), 'urn:example:goldbach'(56, [3, 53]), true).
step((true:+'urn:example:goldbach'(58, [_, _])), 'urn:example:goldbach'(58, [5, 53]), true).
step((true:+'urn:example:goldbach'(60, [_, _])), 'urn:example:goldbach'(60, [7, 53]), true).
step((true:+'urn:example:goldbach'(62, [_, _])), 'urn:example:goldbach'(62, [3, 59]), true).
step((true:+'urn:example:goldbach'(64, [_, _])), 'urn:example:goldbach'(64, [3, 61]), true).
step((true:+'urn:example:goldbach'(66, [_, _])), 'urn:example:goldbach'(66, [5, 61]), true).
step((true:+'urn:example:goldbach'(68, [_, _])), 'urn:example:goldbach'(68, [7, 61]), true).
step((true:+'urn:example:goldbach'(70, [_, _])), 'urn:example:goldbach'(70, [3, 67]), true).
step((true:+'urn:example:goldbach'(72, [_, _])), 'urn:example:goldbach'(72, [5, 67]), true).
step((true:+'urn:example:goldbach'(74, [_, _])), 'urn:example:goldbach'(74, [3, 71]), true).
step((true:+'urn:example:goldbach'(76, [_, _])), 'urn:example:goldbach'(76, [3, 73]), true).
step((true:+'urn:example:goldbach'(78, [_, _])), 'urn:example:goldbach'(78, [5, 73]), true).
step((true:+'urn:example:goldbach'(80, [_, _])), 'urn:example:goldbach'(80, [7, 73]), true).
step((true:+'urn:example:goldbach'(82, [_, _])), 'urn:example:goldbach'(82, [3, 79]), true).
step((true:+'urn:example:goldbach'(84, [_, _])), 'urn:example:goldbach'(84, [5, 79]), true).
step((true:+'urn:example:goldbach'(86, [_, _])), 'urn:example:goldbach'(86, [3, 83]), true).
step((true:+'urn:example:goldbach'(88, [_, _])), 'urn:example:goldbach'(88, [5, 83]), true).
step((true:+'urn:example:goldbach'(90, [_, _])), 'urn:example:goldbach'(90, [7, 83]), true).
step((true:+'urn:example:goldbach'(92, [_, _])), 'urn:example:goldbach'(92, [3, 89]), true).
step((true:+'urn:example:goldbach'(94, [_, _])), 'urn:example:goldbach'(94, [5, 89]), true).
step((true:+'urn:example:goldbach'(96, [_, _])), 'urn:example:goldbach'(96, [7, 89]), true).
step((true:+'urn:example:goldbach'(98, [_, _])), 'urn:example:goldbach'(98, [19, 79]), true).
