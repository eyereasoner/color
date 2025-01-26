:- op(1200, xfx, :+).

answer(\+'<urn:example:cycle>'(_, _)).

% proof steps
step((true:+ \+'<urn:example:cycle>'(_, _)), \+'<urn:example:cycle>'(_, _), true).
