% age checker

:- use_module(library(time)).
:- use_module(library(lists)).

% person data
'urn:example:birthDay'('urn:example:patH', [1944, 8, 21]).

% is the age of a person above some years?
'urn:example:ageAbove'(S, A) :-
    'urn:example:birthDay'(S, [Yb, Mb, Db]),
    date_time(Yl, Ml, Dl, _, _, _),
    Yl-Yb+(Ml-Mb)/12+(Dl-Db)/365 > A.

% query
true :+
    'urn:example:ageAbove'(_, 80).
