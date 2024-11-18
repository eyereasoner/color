'https://eyereasoner.github.io/eye3#proof_step'(('urn:example:does'(B,'urn:example:work_related_task'),\+'urn:example:does'(B,'urn:example:log_off_at_end_of_shift')=>'urn:example:complies'(B,false)),('urn:example:does'('urn:example:bob','urn:example:work_related_task'),\+'urn:example:does'('urn:example:bob','urn:example:log_off_at_end_of_shift')=>'urn:example:complies'('urn:example:bob',false))).
'https://eyereasoner.github.io/eye3#proof_step'(('urn:example:does'(C,'urn:example:log_off_at_end_of_shift')=>'urn:example:complies'(C,true)),('urn:example:does'('urn:example:alice','urn:example:log_off_at_end_of_shift')=>'urn:example:complies'('urn:example:alice',true))).
'https://eyereasoner.github.io/eye3#proof_step'(('urn:example:does'(D,'urn:example:access_social_media')=>'urn:example:complies'(D,false)),('urn:example:does'('urn:example:carol','urn:example:access_social_media')=>'urn:example:complies'('urn:example:carol',false))).

'urn:example:complies'('urn:example:carol',false) => true.
'urn:example:complies'('urn:example:alice',true) => true.
'urn:example:complies'('urn:example:bob',false) => true.
