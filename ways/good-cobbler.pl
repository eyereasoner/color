% Good Cobbler
% Example from https://shs.hal.science/halshs-04148373/document
% Using functional logic http://intrologic.stanford.edu/chapters/chapter_11.html

:- use_module(library(format)).

% some x is a good cobbler
'urn:example:is'(x, 'urn:example:good'('urn:example:Cobbler')).

% is there some x which is good at some y
query('urn:example:is'(_, 'urn:example:good'(_))).

run :-
    query(Q),
    Q,
    portray_clause(Q),
    fail;
    halt.
