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
    catch(
        (   current_time(L),
            memberchk('Y'=As,L),number_chars(A,As),
            memberchk('m'=Bs,L),number_chars(B,Bs),
            memberchk('d'=Cs,L),number_chars(C,Cs),
            memberchk('H'=Ds,L),number_chars(D,Ds),
            memberchk('M'=Es,L),number_chars(E,Es),
            memberchk('S'=Fs,L),number_chars(F,Fs)
        ),
        _E,
        catch(date_time(A,B,C,D,E,F),_E,false)
    ).

% query
'urn:example:ageAbove'(_S,80) => true.
