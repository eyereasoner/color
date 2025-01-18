:- op(1200, xfx, :+).

answer(('urn:example:is'(_, 'urn:example:good'('urn:example:Cobbler')):+true)).

% proof steps
step(('urn:example:is'(_, 'urn:example:good'('urn:example:Cobbler')):+true), true, 'urn:example:is'(A, 'urn:example:good'('urn:example:Cobbler'))).
