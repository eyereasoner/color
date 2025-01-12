% age checker

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
'urn:example:personAge'(Simulation, Name, Age) :-
    'urn:example:birthDay'(Name, [Yb, Mb, Db]),
    'urn:example:date'(Simulation, [Yl, Ml, Dl]),
    Age is Yl-Yb+(Ml-Mb)/12+(Dl-Db)/365.

% prover demonstrates that persons are above some duration using a hash
'urn:example:zeroKnowledgeProof'(Simulation, Name, Result, Hash) :-
    'urn:example:personAge'(Simulation, Name, PersonAge),
    'urn:example:age'(Simulation, SimulationAge),
    write_term_to_chars(PersonAge > SimulationAge, [], Chars),
    crypto_data_hash(Chars, Hash, [algorithm(sha256)]),
    (   PersonAge > SimulationAge
    ->  Result = "proof verified: more than 50 years old and entitled to work 80% per week"
    ;   Result = "proof failed: less than 50 years and not entitled to work 80% per week"
    ).

% Challenger checking the proof using the hash
'urn:example:challengeProof'(Simulation, Name, Result, Hash) :-
    'urn:example:personAge'(Simulation, Name, PersonAge),
    'urn:example:age'(Simulation, SimulationAge),
    write_term_to_chars(PersonAge > SimulationAge, [], Chars),
    crypto_data_hash(Chars, ProofHash, [algorithm(sha256)]),
    (   Hash = ProofHash
    ->  Result = "challenge successful: the proof is valid"
    ;   Result = "challenge failed: the proof is invalid"
    ).

% queries
true :+
    'urn:example:zeroKnowledgeProof'('urn:example:simulation1', 'urn:example:Mary', _, _).

true :+
    'urn:example:zeroKnowledgeProof'('urn:example:simulation1', 'urn:example:Pat', _, _).

true :+
    'urn:example:challengeProof'('urn:example:simulation1', 'urn:example:Mary', _, "94c9923c71b5dac8e5a8f409e3d5d285f7b0ca7d08fe7529a112103188726c75").

true :+
    'urn:example:challengeProof'('urn:example:simulation1', 'urn:example:Pat', _, "66b486e614df3fcdb4ea91faa853fad3a50f170271254894bab22a234f430bee").
