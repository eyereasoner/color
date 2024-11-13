% See https://en.wikipedia.org/wiki/Four_color_theorem

:- use_module(library(lists)).

'urn:example:colors'(_Map,Places) <=
    findall([Place,_],'urn:example:neighbours'(Place,_),Places),
    places(Places).

places([]).
places([[Place,Color]|Tail]) :-
    places(Tail),
    'urn:example:neighbours'(Place,Neighbours),
    member(Color,['urn:example:red','urn:example:green','urn:example:blue','urn:example:yellow']),
    \+ (member([Neighbour,Color],Tail),member(Neighbour,Neighbours)).

% test data
'urn:example:neighbours'(
    'urn:example:place1',
    [   'urn:example:place2',
        'urn:example:place5',
        'urn:example:place4',
        'urn:example:place3'
    ]
).
'urn:example:neighbours'(
    'urn:example:place2',
    [   'urn:example:place1',
        'urn:example:place4',
        'urn:example:place3'
    ]
).
'urn:example:neighbours'(
    'urn:example:place3',
    [   'urn:example:place5',
        'urn:example:place1',
        'urn:example:place4',
        'urn:example:place2'
    ]
).
'urn:example:neighbours'(
    'urn:example:place4',
    [   'urn:example:place1',
        'urn:example:place2',
        'urn:example:place3'
    ]
).
'urn:example:neighbours'(
    'urn:example:place5',
    [   'urn:example:place1',
        'urn:example:place3'
    ]
).

% query
'urn:example:colors'('urn:example:map1',_X) => true.
