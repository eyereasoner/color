:- op(1150,xfx,=>).

'urn:example:complies'('urn:example:alice',true) => true.
'urn:example:complies'('urn:example:carol',false) => true.
'urn:example:complies'('urn:example:bob',false) => true.

% proof
proof(('urn:example:does'(C,'urn:example:log_off_at_end_of_shift')=>'urn:example:complies'(C,true)),'urn:example:does'('urn:example:alice','urn:example:log_off_at_end_of_shift'),'urn:example:complies'('urn:example:alice',true))
proof(('urn:example:does'(D,'urn:example:access_social_media')=>'urn:example:complies'(D,false)),'urn:example:does'('urn:example:carol','urn:example:access_social_media'),'urn:example:complies'('urn:example:carol',false))
proof(('urn:example:does'(N,'urn:example:work_related_task'),stable(1), \+'urn:example:does'(N,'urn:example:log_off_at_end_of_shift')=>'urn:example:complies'(N,false)),('urn:example:does'('urn:example:bob','urn:example:work_related_task'),stable(1), \+'urn:example:does'('urn:example:bob','urn:example:log_off_at_end_of_shift')),'urn:example:complies'('urn:example:bob',false))
