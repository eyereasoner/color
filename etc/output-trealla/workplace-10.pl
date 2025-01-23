:- op(1200, xfx, :+).

answer('urn:example:prepare'(9,10)).
answer('urn:example:complies'('urn:example:bob9',true)).
answer('urn:example:complies'('urn:example:bob10',true)).
answer('urn:example:complies'('urn:example:alice9',true)).
answer('urn:example:complies'('urn:example:alice10',true)).
answer('urn:example:complies'('urn:example:carol9',false)).
answer('urn:example:complies'('urn:example:carol10',false)).

% proof steps
step((true:+'urn:example:prepare'(9,10)),'urn:example:prepare'(9,10),true).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:work_related_task'),'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),('urn:example:does'('urn:example:bob9','urn:example:work_related_task'),'urn:example:does'('urn:example:bob9','urn:example:log_off_at_end_of_shift')),'urn:example:complies'('urn:example:bob9',true)).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:work_related_task'),'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),('urn:example:does'('urn:example:bob10','urn:example:work_related_task'),'urn:example:does'('urn:example:bob10','urn:example:log_off_at_end_of_shift')),'urn:example:complies'('urn:example:bob10',true)).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),'urn:example:does'('urn:example:alice9','urn:example:log_off_at_end_of_shift'),'urn:example:complies'('urn:example:alice9',true)).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),'urn:example:does'('urn:example:alice10','urn:example:log_off_at_end_of_shift'),'urn:example:complies'('urn:example:alice10',true)).
step(('urn:example:complies'(A,false):+'urn:example:does'(A,'urn:example:access_social_media')),'urn:example:does'('urn:example:carol9','urn:example:access_social_media'),'urn:example:complies'('urn:example:carol9',false)).
step(('urn:example:complies'(A,false):+'urn:example:does'(A,'urn:example:access_social_media')),'urn:example:does'('urn:example:carol10','urn:example:access_social_media'),'urn:example:complies'('urn:example:carol10',false)).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:bob9',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:bob10',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:alice9',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:alice10',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:carol9',false),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:carol10',false),true).
