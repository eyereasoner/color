% If you have more than 4 dogs you need a license.

:- use_module(library(format)).
:- use_module(library(lists)).

:- dynamic(answer/1).

'urn:example:hasDog'('urn:example:alice', 'urn:example:dog1').
'urn:example:hasDog'('urn:example:alice', 'urn:example:dog2').
'urn:example:hasDog'('urn:example:alice', 'urn:example:dog3').
'urn:example:hasDog'('urn:example:alice', 'urn:example:dog4').
'urn:example:hasDog'('urn:example:alice', 'urn:example:dog5').
'urn:example:hasDog'('urn:example:bob', 'urn:example:dog6').
'urn:example:hasDog'('urn:example:bob', 'urn:example:dog7').

'urn:example:mustHave'(Subject, 'urn:example:dogLicense') :-
    'urn:example:hasDog'(Subject, _),
    findall(Dog, 'urn:example:hasDog'(Subject, Dog), List),
    length(List, Count),
    Count > 4.

% query
query('urn:example:mustHave'(_, _)).

run :-
    query(Q),
    Q,
    \+answer(Q),
    assertz(answer(Q)),
    portray_clause(Q),
    fail;
    halt.
