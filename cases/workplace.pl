% Deontic Logic example

:- use_module(library(format)).

% Facts about what an employee is doing
'urn:example:does'('urn:example:alice', 'urn:example:log_off_at_end_of_shift').
'urn:example:does'('urn:example:bob', 'urn:example:work_related_task').
%'urn:example:does'('urn:example:bob', 'urn:example:log_off_at_end_of_shift').
'urn:example:does'('urn:example:carol', 'urn:example:access_social_media').

% Rules to check if an action complies with deontic logic
'urn:example:complies'(Person, true) :-
    'urn:example:does'(Person, 'urn:example:work_related_task'),
    'urn:example:does'(Person, 'urn:example:log_off_at_end_of_shift').

'urn:example:complies'(Person, false) :-
    'urn:example:does'(Person, 'urn:example:work_related_task'),
    \+'urn:example:does'(Person, 'urn:example:log_off_at_end_of_shift').

'urn:example:complies'(Person, true) :-
    'urn:example:does'(Person, 'urn:example:log_off_at_end_of_shift').

'urn:example:complies'(Person, false) :-
    'urn:example:does'(Person, 'urn:example:access_social_media').

% Query to test if everyone complies with deontic logic
query('urn:example:complies'(_, _)).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.