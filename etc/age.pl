% age checker

:- use_module(library(time)).
:- use_module(library(lists)).

% person data
'urn:example:birthDay'('urn:example:patH',[1944,8,21]).

% is the age of a person above some years?
'urn:example:ageAbove'(S,A) <=
    'urn:example:birthDay'(S,[Yb,Mb,Db]),
    local_time(Yl,Ml,Dl,_,_,_),
    Yl >= Yb+A,
    Ml >= Mb,
    Dl >= Db.

local_time(A,B,C,D,E,F) :-
    catch(get_time(A,B,C,D,E,F),_E,catch(date_time(A,B,C,D,E,F),_E,false)).

get_time(A,B,C,D,E,F) :-
    maplist(time_get_num,['Y','m','d','H','M','S'],[A,B,C,D,E,F]).

time_get_num(A,B) :-
    current_time(L),
    memberchk(A=C,L),
    number_chars(B,C).

% query
'urn:example:ageAbove'(_S,80) => true.
