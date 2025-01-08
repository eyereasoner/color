% Good Cobbler
% Example from https://shs.hal.science/halshs-04148373/document
% Using functional logic http://intrologic.stanford.edu/chapters/chapter_11.html

:- dynamic('urn:example:is'/2).

% some x is a good cobbler
'urn:example:is'(_, 'urn:example:good'('urn:example:Cobbler')) :+ true.

% is there some x which is good at some y
true :+
    ('urn:example:is'(_, 'urn:example:good'(_)) :+ true).
