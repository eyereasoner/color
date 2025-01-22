:- op(1200, xfx, :+).

answer('urn:example:prepare'(1,10)).
answer('urn:example:complies'('urn:example:bob1',true)).
answer('urn:example:complies'('urn:example:bob2',true)).
answer('urn:example:complies'('urn:example:bob3',true)).
answer('urn:example:complies'('urn:example:alice1',true)).
answer('urn:example:complies'('urn:example:alice2',true)).
answer('urn:example:complies'('urn:example:alice3',true)).
answer('urn:example:complies'('urn:example:carol1',false)).
answer('urn:example:complies'('urn:example:carol2',false)).
answer('urn:example:complies'('urn:example:carol3',false)).

% proof steps
step((true:+'urn:example:prepare'(1,10)),'urn:example:prepare'(1,10),true).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:work_related_task'),'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),('urn:example:does'('urn:example:bob1','urn:example:work_related_task'),'urn:example:does'('urn:example:bob1','urn:example:log_off_at_end_of_shift')),'urn:example:complies'('urn:example:bob1',true)).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:work_related_task'),'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),('urn:example:does'('urn:example:bob2','urn:example:work_related_task'),'urn:example:does'('urn:example:bob2','urn:example:log_off_at_end_of_shift')),'urn:example:complies'('urn:example:bob2',true)).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:work_related_task'),'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),('urn:example:does'('urn:example:bob3','urn:example:work_related_task'),'urn:example:does'('urn:example:bob3','urn:example:log_off_at_end_of_shift')),'urn:example:complies'('urn:example:bob3',true)).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),'urn:example:does'('urn:example:alice1','urn:example:log_off_at_end_of_shift'),'urn:example:complies'('urn:example:alice1',true)).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),'urn:example:does'('urn:example:alice2','urn:example:log_off_at_end_of_shift'),'urn:example:complies'('urn:example:alice2',true)).
step(('urn:example:complies'(A,true):+'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')),'urn:example:does'('urn:example:alice3','urn:example:log_off_at_end_of_shift'),'urn:example:complies'('urn:example:alice3',true)).
step(('urn:example:complies'(A,false):+'urn:example:does'(A,'urn:example:access_social_media')),'urn:example:does'('urn:example:carol1','urn:example:access_social_media'),'urn:example:complies'('urn:example:carol1',false)).
step(('urn:example:complies'(A,false):+'urn:example:does'(A,'urn:example:access_social_media')),'urn:example:does'('urn:example:carol2','urn:example:access_social_media'),'urn:example:complies'('urn:example:carol2',false)).
step(('urn:example:complies'(A,false):+'urn:example:does'(A,'urn:example:access_social_media')),'urn:example:does'('urn:example:carol3','urn:example:access_social_media'),'urn:example:complies'('urn:example:carol3',false)).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:bob1',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:bob2',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:bob3',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:alice1',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:alice2',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:alice3',true),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:carol1',false),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:carol2',false),true).
step((true:+'urn:example:complies'(A,B)),'urn:example:complies'('urn:example:carol3',false),true).
