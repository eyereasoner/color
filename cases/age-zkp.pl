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
    (   PersonAge >= 50
    ->  crypto_data_hash("PersonAge >= 50", Hash, [algorithm(sha256)])
    ;   crypto_data_hash("PersonAge < 50", Hash, [algorithm(sha256)])
    ).

% checking the proof using the hash
'urn:example:proofCheck'(_, Hash, "age above 50 years") :-
    crypto_data_hash("PersonAge >= 50", H, [algorithm(sha256)]),
    H = Hash.
'urn:example:proofCheck'(_, Hash, "age below 50 years") :-
    crypto_data_hash("PersonAge < 50", H, [algorithm(sha256)]),
    H = Hash.

% queries
query('urn:example:zeroKnowledgeProof'('urn:example:Mary', _)).
query('urn:example:zeroKnowledgeProof'('urn:example:Pat', _)).
query('urn:example:zeroKnowledgeProof'('urn:example:John', _)).
query('urn:example:proofCheck'('urn:example:Mary', "4097d0da4fd49d47e945f7e7890b63b925cb31562212ab07533cd8efc5ef31d0", _)).
query('urn:example:proofCheck'('urn:example:Pat', "c1f2499239e0af7aff962488fc48be06acbd4f8314d3b91174b00a2cdc453c29", _)).
query('urn:example:proofCheck'('urn:example:John', "c1f2499239e0af7aff962488fc48be06acbd4f8314d3b91174b00a2cdc453c29", _)).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
