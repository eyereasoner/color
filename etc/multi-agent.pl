% Define agents and roles
'urn:example:agent'('urn:example:agent1').
'urn:example:agent'('urn:example:agent2').
'urn:example:role'('urn:example:agent1', 'urn:example:manager').
'urn:example:role'('urn:example:agent2', 'urn:example:employee').

% Define tasks and deadlines
'urn:example:task'('urn:example:task1').
'urn:example:deadline'('urn:example:task1', 10).  % Deadline at time 10

% Current time
'urn:example:current_time'(5).

% Task assignment
'urn:example:assigned'('urn:example:task1', 'urn:example:agent2').

% Task reporting
'urn:example:reported'('urn:example:task1', 'urn:example:agent2').

% Obligations
'urn:example:obligatory'('urn:example:assign:task'(Manager, Employee, Task)) :-
    'urn:example:role'(Manager, 'urn:example:manager'),
    'urn:example:role'(Employee, 'urn:example:employee'),
    'urn:example:task'(Task),
    \+'urn:example:assigned'(Task, Employee).

'urn:example:obligatory'('urn:example:report:progress'(Employee, Task)) :-
    'urn:example:assigned'(Task, Employee),
    \+'urn:example:reported'(Task, Employee).

'urn:example:obligatory'('urn:example:complete:task'(Employee, Task)) :-
    'urn:example:assigned'(Task, Employee),
    'urn:example:deadline'(Task, Time),
    'urn:example:current_time'(T),
    T < Time.

'urn:example:obligatory'('urn:example:escalate:task'(Manager, Task)) :-
    'urn:example:role'(Manager, 'urn:example:manager'),
    'urn:example:assigned'(Task, _Employee),
    'urn:example:deadline'(Task, Time),
    'urn:example:current_time'(T),
    T >= Time,
    \+'urn:example:completed'(Task).

% Permissions
'urn:example:permitted'('urn:example:execute:task'(Employee, Task)) :-
    'urn:example:role'(Employee, 'urn:example:employee'),
    'urn:example:assigned'(Task, Employee).

% Prohibitions
'urn:example:forbidden'('urn:example:modify:task'(Agent, Task)) :-
    \+'urn:example:assigned'(Agent, Task).

% Conflict detection
'urn:example:conflict'(Action) :-
    'urn:example:obligatory'(Action),
    'urn:example:forbidden'(Action).

% Violations
'urn:example:violation'(Task) :-
    'urn:example:obligatory'('urn:example:complete:task'(_Employee, Task)),
    'urn:example:current_time'(T),
    'urn:example:deadline'(Task, Time),
    T > Time,
    \+'urn:example:completed'(Task).

% Sanctions
sanction(Employee) :-
    'urn:example:violation'(Task),
    'urn:example:assigned'(Task, Employee).

% queries
true ?-
    'urn:example:obligatory'(_).

true ?-
    'urn:example:permitted'(_).

true ?-
    'urn:example:forbidden'(_).
