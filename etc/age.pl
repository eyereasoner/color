% age checker

:- use_module(library(time)).
:- use_module(library(lists)).

% person data
'urn:example:birthDay'('urn:example:patH', [1944, 8, 21]).

% is the age of a person above some years?
'urn:example:ageAbove'(S, A) :-
    'urn:example:birthDay'(S, [Yb, Mb, Db]),
    local_time(Yl, Ml, Dl, _, _, _),
    Yl-Yb+(Ml-Mb)/12+(Dl-Db)/365 > A.

local_time(A, B, C, D, E, F) :-
    catch(date_time(A, B, C, D, E, F), _, get_time(A, B, C, D, E, F)).

get_time(A, B, C, D, E, F) :-
    current_time(L),
    maplist(time_get_num, [L, L, L, L, L, L], ['Y', 'm', 'd', 'H', 'M', 'S'], [A, B, C, D, E, F]).

time_get_num(A, B, C) :-
    memberchk(B=D, A),
    number_chars(C, D).

% query
true :+
    'urn:example:ageAbove'(_, 80).
