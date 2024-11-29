:- op(1150,xfx,=>).

'urn:example:complies'('urn:example:alice',true)=>true.
'urn:example:complies'('urn:example:carol',false)=>true.
'urn:example:complies'('urn:example:bob',false)=>true.

%
% Explain the reasoning
%

ether(('urn:example:does'(A,'urn:example:log_off_at_end_of_shift')=>'urn:example:complies'(A,true)),'urn:example:does'('urn:example:alice','urn:example:log_off_at_end_of_shift'),'urn:example:complies'('urn:example:alice',true)).
ether(('urn:example:does'(A,'urn:example:access_social_media')=>'urn:example:complies'(A,false)),'urn:example:does'('urn:example:carol','urn:example:access_social_media'),'urn:example:complies'('urn:example:carol',false)).
ether(('urn:example:does'(A,'urn:example:work_related_task'),stable(1), \+'urn:example:does'(A,'urn:example:log_off_at_end_of_shift')=>'urn:example:complies'(A,false)),('urn:example:does'('urn:example:bob','urn:example:work_related_task'),stable(1), \+'urn:example:does'('urn:example:bob','urn:example:log_off_at_end_of_shift')),'urn:example:complies'('urn:example:bob',false)).
