% multi-agent example
% obligations, permissions, and prohibitions depend on the roles, goals and interactions between agents

:- use_module(library(format)).

:- dynamic('urn:example:completed'/1).

% define agents
'urn:example:agent'('urn:example:agent1').
'urn:example:agent'('urn:example:agent2').

% define roles
'urn:example:role'('urn:example:agent1', 'urn:example:manager').
'urn:example:role'('urn:example:agent2', 'urn:example:employee').

% define tasks and deadlines
'urn:example:task'('urn:example:task1').
'urn:example:deadline'('urn:example:task1', 10).  % Deadline at time 10

% current time
'urn:example:time:current'(15).

% task assignment
'urn:example:assigned'('urn:example:task1', 'urn:example:agent2').

% task reporting
'urn:example:reported'('urn:example:task1', 'urn:example:agent2').

% obligations
'urn:example:obligatory'('urn:example:assign_task'(Manager, Employee, Task)) :-
    'urn:example:role'(Manager, 'urn:example:manager'),
    'urn:example:role'(Employee, 'urn:example:employee'),
    'urn:example:task'(Task),
    \+'urn:example:assigned'(Task, Employee).

'urn:example:obligatory'('urn:example:report_progress'(Employee, Task)) :-
    'urn:example:assigned'(Task, Employee),
    \+'urn:example:reported'(Task, Employee).

'urn:example:obligatory'('urn:example:complete_task'(Employee, Task)) :-
    'urn:example:assigned'(Task, Employee).

'urn:example:obligatory'('urn:example:escalate_task'(Manager, Task)) :-
    'urn:example:role'(Manager, 'urn:example:manager'),
    'urn:example:assigned'(Task, _),
    'urn:example:deadline'(Task, Time),
    'urn:example:time:current'(T),
    T >= Time,
    \+'urn:example:completed'(Task).

% permissions
'urn:example:permitted'('urn:example:execute_task'(Employee, Task)) :-
    'urn:example:role'(Employee, 'urn:example:employee'),
    'urn:example:assigned'(Task, Employee).

% prohibitions
'urn:example:forbidden'('urn:example:modify_task'(Agent, Task)) :-
    \+'urn:example:assigned'(Agent, Task).

% conflict detection
'urn:example:conflict'(Action) :-
    'urn:example:obligatory'(Action),
    'urn:example:forbidden'(Action).

% resolve conflicts with priority
'urn:example:resolve:conflict'(Action) :-
    'urn:example:role'(_, 'urn:example:manager'),
    'urn:example:conflict'(Action),
    'urn:example:obligatory'(Action).

% violations
'urn:example:violation'(Task) :-
    'urn:example:obligatory'('urn:example:complete_task'(_, Task)),
    'urn:example:time:current'(T),
    'urn:example:deadline'(Task, Time),
    T > Time,
    \+'urn:example:completed'(Task).

% sanctions
'urn:example:sanction'(Employee) :-
    'urn:example:violation'(Task),
    'urn:example:assigned'(Task, Employee).

% queries
query('urn:example:obligatory'(_)).
query('urn:example:permitted'(_)).
query('urn:example:forbidden'(_)).
query('urn:example:violation'(_)).
query('urn:example:sanction'(_)).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
