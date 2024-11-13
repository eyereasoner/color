% See https://en.wikipedia.org/wiki/Four_color_theorem

:- use_module(library(lists)).

'urn:example:colors'(_Map,Places) :-
    findall([Place,_],'urn:example:neighbours'(Place,_),Places),
    places(Places).

places([]).
places([[Place,Color]|Tail]) :-
    places(Tail),
    'urn:example:neighbours'(Place,Neighbours),
    member(Color,['urn:example:c1','urn:example:c2','urn:example:c3','urn:example:c4']),
    \+ (member([Neighbour,Color],Tail),member(Neighbour,Neighbours)).

% test data
'urn:example:neighbours'(
    'urn:example:p1',
    [   'urn:example:p2',
        'urn:example:p5',
        'urn:example:p4',
        'urn:example:p3'
    ]
).
'urn:example:neighbours'(
    'urn:example:p2',
    [   'urn:example:p1',
        'urn:example:p4',
        'urn:example:p3'
    ]
).
'urn:example:neighbours'(
    'urn:example:p3',
    [   'urn:example:p5',
        'urn:example:p1',
        'urn:example:p4',
        'urn:example:p2'
    ]
).
'urn:example:neighbours'(
    'urn:example:p4',
    [   'urn:example:p1',
        'urn:example:p2',
        'urn:example:p3'
    ]
).
'urn:example:neighbours'(
    'urn:example:p5',
    [   'urn:example:p1',
        'urn:example:p3'
    ]
).

% query
'urn:example:colors'('urn:example:map1',_X) => true.
