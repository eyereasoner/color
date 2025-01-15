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
'urn:example:date'([2025, 1, 11]).

% person age
'urn:example:personAge'(Name, Age) :-
    'urn:example:birthDay'(Name, [Yb, Mb, Db]),
    'urn:example:date'([Yl, Ml, Dl]),
    Age is Yl-Yb+(Ml-Mb)/12+(Dl-Db)/365.

% proving that someone is above 50 years old using a hash
'urn:example:zeroKnowledgeProof'(Name, Hash) :-
    'urn:example:personAge'(Name, PersonAge),
    (   PersonAge > 50
    ->  crypto_data_hash("age >= 50", Hash, [algorithm(sha256)])
    ;   crypto_data_hash("age < 50", Hash, [algorithm(sha256)])
    ).

% checking the proof using the hash
'urn:example:proofCheck'(_, Hash, Result) :-
    crypto_data_hash("age >= 50", HashCheck, [algorithm(sha256)]),
    (   Hash = HashCheck
    ->  Result = "age above 50 years"
    ;   Result = "age not above 50 years"
    ).

% queries
query('urn:example:zeroKnowledgeProof'('urn:example:Mary', _)).
query('urn:example:zeroKnowledgeProof'('urn:example:Pat', _)).
query('urn:example:proofCheck'('urn:example:Mary', "5c3a68c5cfb9f8d267d2f5543e0d1e4c848c84cad2bf6c08a4c6a256a4566fa8", _)).
query('urn:example:proofCheck'('urn:example:Pat', "37c0dd6f9d52b616d2951564d8b3cfcfcef100c25a88401dc902c2d84de86e59", _)).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
