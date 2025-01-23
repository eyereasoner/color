:- op(1200, xfx, :+).

answer('urn:example:prepare'(90, 100)).
answer('urn:example:complies'('urn:example:bob90', true)).
answer('urn:example:complies'('urn:example:bob91', true)).
answer('urn:example:complies'('urn:example:bob92', true)).
answer('urn:example:complies'('urn:example:bob93', true)).
answer('urn:example:complies'('urn:example:bob94', true)).
answer('urn:example:complies'('urn:example:bob95', true)).
answer('urn:example:complies'('urn:example:bob96', true)).
answer('urn:example:complies'('urn:example:bob97', true)).
answer('urn:example:complies'('urn:example:bob98', true)).
answer('urn:example:complies'('urn:example:bob99', true)).
answer('urn:example:complies'('urn:example:bob100', true)).
answer('urn:example:complies'('urn:example:alice90', true)).
answer('urn:example:complies'('urn:example:alice91', true)).
answer('urn:example:complies'('urn:example:alice92', true)).
answer('urn:example:complies'('urn:example:alice93', true)).
answer('urn:example:complies'('urn:example:alice94', true)).
answer('urn:example:complies'('urn:example:alice95', true)).
answer('urn:example:complies'('urn:example:alice96', true)).
answer('urn:example:complies'('urn:example:alice97', true)).
answer('urn:example:complies'('urn:example:alice98', true)).
answer('urn:example:complies'('urn:example:alice99', true)).
answer('urn:example:complies'('urn:example:alice100', true)).
answer('urn:example:complies'('urn:example:carol90', false)).
answer('urn:example:complies'('urn:example:carol91', false)).
answer('urn:example:complies'('urn:example:carol92', false)).
answer('urn:example:complies'('urn:example:carol93', false)).
answer('urn:example:complies'('urn:example:carol94', false)).
answer('urn:example:complies'('urn:example:carol95', false)).
answer('urn:example:complies'('urn:example:carol96', false)).
answer('urn:example:complies'('urn:example:carol97', false)).
answer('urn:example:complies'('urn:example:carol98', false)).
answer('urn:example:complies'('urn:example:carol99', false)).
answer('urn:example:complies'('urn:example:carol100', false)).

% proof steps
step((true:+'urn:example:prepare'(90, 100)), 'urn:example:prepare'(90, 100), true).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob90', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob90', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob90', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob91', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob91', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob91', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob92', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob92', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob92', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob93', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob93', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob93', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob94', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob94', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob94', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob95', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob95', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob95', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob96', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob96', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob96', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob97', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob97', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob97', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob98', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob98', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob98', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob99', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob99', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob99', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:work_related_task'), 'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), ('urn:example:does'('urn:example:bob100', 'urn:example:work_related_task'), 'urn:example:does'('urn:example:bob100', 'urn:example:log_off_at_end_of_shift')), 'urn:example:complies'('urn:example:bob100', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice90', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice90', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice91', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice91', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice92', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice92', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice93', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice93', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice94', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice94', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice95', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice95', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice96', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice96', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice97', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice97', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice98', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice98', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice99', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice99', true)).
step(('urn:example:complies'(A, true):+'urn:example:does'(A, 'urn:example:log_off_at_end_of_shift')), 'urn:example:does'('urn:example:alice100', 'urn:example:log_off_at_end_of_shift'), 'urn:example:complies'('urn:example:alice100', true)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol90', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol90', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol91', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol91', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol92', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol92', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol93', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol93', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol94', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol94', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol95', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol95', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol96', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol96', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol97', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol97', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol98', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol98', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol99', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol99', false)).
step(('urn:example:complies'(A, false):+'urn:example:does'(A, 'urn:example:access_social_media')), 'urn:example:does'('urn:example:carol100', 'urn:example:access_social_media'), 'urn:example:complies'('urn:example:carol100', false)).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob90', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob91', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob92', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob93', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob94', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob95', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob96', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob97', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob98', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob99', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:bob100', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice90', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice91', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice92', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice93', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice94', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice95', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice96', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice97', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice98', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice99', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:alice100', true), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol90', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol91', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol92', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol93', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol94', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol95', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol96', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol97', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol98', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol99', false), true).
step((true:+'urn:example:complies'(_, _)), 'urn:example:complies'('urn:example:carol100', false), true).
