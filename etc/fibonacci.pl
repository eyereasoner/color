% See https://en.wikipedia.org/wiki/Fibonacci_number

'urn:example:fibonacci'(A,B) <=
    fibonacci(A,0,1,B).

fibonacci(0,A,_,A).
fibonacci(1,_,A,A).
fibonacci(A,B,C,D) :-
    A > 1,
    E is A-1,
    F is B+C,
    fibonacci(E,C,F,D).

'urn:example:golden_ratio'(A,B) <=
    'urn:example:fibonacci'(A,C),
    D is A+1,
    'urn:example:fibonacci'(D,E),
    B is E/C.

% query
'urn:example:fibonacci'(1,_ANSWER) => true.
'urn:example:fibonacci'(2,_ANSWER) => true.
'urn:example:fibonacci'(3,_ANSWER) => true.
'urn:example:fibonacci'(4,_ANSWER) => true.
'urn:example:fibonacci'(5,_ANSWER) => true.
'urn:example:fibonacci'(91,_ANSWER) => true.
'urn:example:fibonacci'(283,_ANSWER) => true.
'urn:example:fibonacci'(3674,_ANSWER) => true.
'urn:example:golden_ratio'(1,_ANSWER) => true.
'urn:example:golden_ratio'(10,_ANSWER) => true.
'urn:example:golden_ratio'(100,_ANSWER) => true.
'urn:example:golden_ratio'(1000,_ANSWER) => true.
