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

% verifier checking the proof using the hash
'urn:example:challengeProof'(Simulation, [Name, Result, Hash]) :-
    'urn:example:personAge'(Simulation, [Name, PersonAge]),
    'urn:example:age'(Simulation, SimulationAge),
    write_term_to_chars(PersonAge > SimulationAge, [], Chars),
    crypto_data_hash(Chars, ProofHash, [algorithm(sha3_512)]),
    (   Hash = ProofHash
    ->  Result = "challenge successful: the proof is valid"
    ;   Result = "challenge failed: the proof is invalid"
    ).

% queries
query('urn:example:zeroKnowledgeProof'('urn:example:simulation1', ['urn:example:Mary', _, _])).
query('urn:example:zeroKnowledgeProof'('urn:example:simulation1', ['urn:example:Pat', _, _])).
query('urn:example:challengeProof'('urn:example:simulation1', ['urn:example:Mary', _, "6151e3412bc493063a9be0aadd3ecaaae9ebdca0f5d65441192fd14660f1ef91918cd29181414d8b48ade139d11d33156618878df03cdaab9e9296370b00e821"])).
query('urn:example:challengeProof'('urn:example:simulation1', ['urn:example:Pat', _, "4ac8666fbe3e7a9206d453134ca6c38d8fa740b1e589a73c2a767c3679ac682c6e5919434a931e8b37ef62ed0ad942dab41c61e7960061dc1715bc10c0e525a8"])).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
