% Deontic Logic example

:- dynamic('urn:example:obliged'/2).
:- dynamic('urn:example:permitted'/2).
:- dynamic('urn:example:forbidden'/2).
:- dynamic('urn:example:does'/2).
:- dynamic('urn:example:complies'/2).

% Define basic deontic predicates
'urn:example:obliged'('urn:example:workplace_policy', 'urn:example:log_off_at_end_of_shift').
'urn:example:permitted'('urn:example:workplace_policy', 'urn:example:work_related_task').
'urn:example:forbidden'('urn:example:workplace_policy', 'urn:example:access_social_media').

% Facts about what an employee is doing
'urn:example:does'('urn:example:alice', 'urn:example:log_off_at_end_of_shift').
'urn:example:does'('urn:example:bob', 'urn:example:work_related_task').
'urn:example:does'('urn:example:carol', 'urn:example:access_social_media').

% Rules to check if an action complies with deontic logic
'urn:example:does'(Person, Action),
'urn:example:obliged'('urn:example:workplace_policy', Action)
=> 'urn:example:complies'(Person, [true, 'urn:example:is_fulfilling_an_obligation', Action]).

'urn:example:does'(Person, Action),
'urn:example:permitted'('urn:example:workplace_policy', Action)
=> 'urn:example:complies'(Person, [true, 'urn:example:is_doing_a_permitted_action', Action]).

'urn:example:does'(Person, Action),
'urn:example:forbidden'('urn:example:workplace_policy', Action)
=> 'urn:example:complies'(Person, [false, 'urn:example:is_violating_a_prohibition', Action]).

% Query to test if everyone complies with deontic logic
'urn:example:complies'(_Person, _Check) => true.
