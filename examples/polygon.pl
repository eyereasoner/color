% Calculating the area of a polygon

'https://eyereasoner.github.io/color#area'([_],0).
'https://eyereasoner.github.io/color#area'([[A,B],[C,D]|E],F) :-
    'https://eyereasoner.github.io/color#area'([[C,D]|E],G),
    F is (A*D-B*C)/2+G.

% query
'https://eyereasoner.github.io/color#area'([[3,2],[6,2],[7,6],[4,6],[5,5],[5,3],[3,2]],_ANSWER) => true.
