% Basic Monadic Benchmark
% See http://eulersharp.sourceforge.net/2014/11bmb/

'urn:example:i0'('urn:example:i10', 'urn:example:i96').
'urn:example:i0'('urn:example:i12', 'urn:example:i66').
'urn:example:i0'('urn:example:i12', 'urn:example:i9').
'urn:example:i0'('urn:example:i13', 'urn:example:i24').
'urn:example:i0'('urn:example:i18', 'urn:example:i81').
'urn:example:i0'('urn:example:i19', 'urn:example:i0').
'urn:example:i0'('urn:example:i19', 'urn:example:i63').
'urn:example:i0'('urn:example:i21', 'urn:example:i87').
'urn:example:i0'('urn:example:i22', 'urn:example:i30').
'urn:example:i0'('urn:example:i23', 'urn:example:i6').

'urn:example:cycle'(A, [B, C, D, E, F, G, H, I, J, K, B]) :-
    current_predicate(A/2),
    atom_concat('urn:example:', _, A),
    A \= 'urn:example:cycle',
    call(A, B, C),
    call(A, C, D),
    call(A, D, E),
    call(A, E, F),
    call(A, F, G),
    call(A, G, H),
    call(A, H, I),
    call(A, I, J),
    call(A, J, K),
    call(A, K, B).

% query
true :+ 'urn:example:cycle'(_, _).
true :+ \+'urn:example:cycle'(_, _).
