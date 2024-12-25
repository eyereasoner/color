% Define agents and roles
'urn:example:agent'(agent1).
'urn:example:agent'(agent2).
'urn:example:role'(agent1, manager).
'urn:example:role'(agent2, employee).

% Define tasks and deadlines
'urn:example:task'(task1).
'urn:example:deadline'(task1, 10).  % Deadline at time 10

% Current time
'urn:example:current_time'(5).

% Task assignment
'urn:example:assigned'(task1, agent2).

% Task reporting
'urn:example:reported'(task1, agent2).

% Obligations
'urn:example:obligatory'(assign_task(Manager, Employee, Task)) :-
    'urn:example:role'(Manager, manager),
    'urn:example:role'(Employee, employee),
    'urn:example:task'(Task),
    \+'urn:example:assigned'(Task, Employee).

'urn:example:obligatory'(report_progress(Employee, Task)) :-
    'urn:example:assigned'(Task, Employee),
    \+'urn:example:reported'(Task, Employee).

'urn:example:obligatory'(complete_task(Employee, Task)) :-
    'urn:example:assigned'(Task, Employee),
    'urn:example:deadline'(Task, Time),
    'urn:example:current_time'(T),
    T < Time.

'urn:example:obligatory'(escalate_task(Manager, Task)) :-
    'urn:example:role'(Manager, manager),
    'urn:example:assigned'(Task, _Employee),
    'urn:example:deadline'(Task, Time),
    'urn:example:current_time'(T),
    T >= Time,
    \+'urn:example:completed'(Task).

% Permissions
'urn:example:permitted'(execute_task(Employee, Task)) :-
    'urn:example:role'(Employee, employee),
    'urn:example:assigned'(Task, Employee).

% Prohibitions
'urn:example:forbidden'(modify_task(Agent, Task)) :-
    \+'urn:example:responsible'(Agent, Task).

% Conflict detection
'urn:example:conflict'(Action) :-
    'urn:example:obligatory'(Action),
    'urn:example:forbidden'(Action).

% Violations
'urn:example:violation'(Task) :-
    'urn:example:obligatory'(complete_task(_Employee, Task)),
    'urn:example:current_time'(T),
    'urn:example:deadline'(Task, Time),
    T > Time,
    \+'urn:example:completed'(Task).

% Sanctions
sanction(Employee) :-
    'urn:example:violation'(Task),
    'urn:example:assigned'(Task, Employee).

% query
true ?-
    'urn:example:obligatory'(_).
