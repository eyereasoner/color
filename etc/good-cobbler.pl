% Good Cobbler
% Example from https://shs.hal.science/halshs-04148373/document
% Using functional logic http://intrologic.stanford.edu/chapters/chapter_11.html

% some x is a good cobbler
'urn:example:is'('_:x','urn:example:good'('urn:example:Cobbler')).

% is there some x which is good at some y
'urn:example:is'(_X,'urn:example:good'(_Y)) => true.
