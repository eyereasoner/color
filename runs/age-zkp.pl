% Zero Knowledge Proof age checker
% Proving that someone is more than 50 years old without revealing their age.

:- use_module(library(charsio)).
:- use_module(library(crypto)).
:- use_module(library(format)).

% private person data
'urn:example:birthDay'('urn:example:Mary', [2000, 1, 1]).
'urn:example:birthDay'('urn:example:Pat', [1970, 1, 1]).
'urn:example:birthDay'('urn:example:John', [1960, 1, 1]).

% simulation date
'urn:example:date'('urn:example:simulation1', [2025, 1, 11]).

% simulation age
'urn:example:age'('urn:example:simulation1', 50).

% person age
'urn:example:personAge'(Simulation, [Name, Age]) :-
    'urn:example:birthDay'(Name, [Yb, Mb, Db]),
    'urn:example:date'(Simulation, [Yl, Ml, Dl]),
    Age is Yl-Yb+(Ml-Mb)/12+(Dl-Db)/365.

% prover demonstrates that persons are above some duration using a hash
'urn:example:zeroKnowledgeProof'(Simulation, [Name, Result, Hash]) :-
    'urn:example:personAge'(Simulation, [Name, PersonAge]),
    'urn:example:age'(Simulation, SimulationAge),
    write_term_to_chars(PersonAge > SimulationAge, [], Chars),
    crypto_data_hash(Chars, Hash, [algorithm(sha3_512)]),
    (   PersonAge > SimulationAge
    ->  Result = "proof verified: more than 50 years old and entitled to work 80% per week"
    ;   Result = "proof failed: less than 50 years and not entitled to work 80% per week"
    ).

% queries
query('urn:example:zeroKnowledgeProof'('urn:example:simulation1', ['urn:example:Mary', _, _])).
query('urn:example:zeroKnowledgeProof'('urn:example:simulation1', ['urn:example:Pat', _, _])).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
