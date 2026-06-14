; =========================================================
; Game Engine Function: _ZN13CEventHandler28ComputeScriptCommandResponseEP6CEventP5CTaskS3_
; Address            : 0x3818C0 - 0x38199A
; =========================================================

3818C0:  PUSH            {R4-R7,LR}
3818C2:  ADD             R7, SP, #0xC
3818C4:  PUSH.W          {R11}
3818C8:  MOV             R5, R0
3818CA:  MOV             R4, R1
3818CC:  LDR             R1, [R5]
3818CE:  LDR             R2, [R4,#0xC]
3818D0:  LDR.W           R0, [R1,#0x440]
3818D4:  CMP             R2, #3
3818D6:  BNE             loc_38190A
3818D8:  LDR             R6, [R0,#0x10]
3818DA:  CBZ             R6, loc_3818EC
3818DC:  LDR             R0, [R6]
3818DE:  MOVS            R2, #1
3818E0:  MOV             R3, R4
3818E2:  LDR.W           R12, [R0,#0x1C]
3818E6:  MOV             R0, R6
3818E8:  BLX             R12
3818EA:  CBZ             R0, loc_38195C
3818EC:  LDR             R0, [R4]
3818EE:  LDR             R1, [R0,#0x44]
3818F0:  MOV             R0, R4
3818F2:  BLX             R1
3818F4:  MOV             R6, R0
3818F6:  LDR             R0, [R5]
3818F8:  LDR.W           R0, [R0,#0x440]
3818FC:  ADDS            R0, #4; this
3818FE:  BLX             j__ZN12CTaskManager22ClearTaskEventResponseEv; CTaskManager::ClearTaskEventResponse(void)
381902:  LDR             R0, [R5]
381904:  MOV             R1, R6
381906:  MOVS            R2, #3
381908:  B               loc_38193A
38190A:  LDR             R6, [R0,#0x14]
38190C:  CBZ             R6, loc_38191E
38190E:  LDR             R0, [R6]
381910:  MOVS            R2, #1
381912:  MOV             R3, R4
381914:  LDR.W           R12, [R0,#0x1C]
381918:  MOV             R0, R6
38191A:  BLX             R12
38191C:  CBZ             R0, loc_38195C
38191E:  LDR             R0, [R4]
381920:  LDR             R1, [R0,#0x44]
381922:  MOV             R0, R4
381924:  BLX             R1
381926:  MOV             R6, R0
381928:  LDR             R0, [R5]
38192A:  LDR.W           R0, [R0,#0x440]
38192E:  ADDS            R0, #4; this
381930:  BLX             j__ZN12CTaskManager22ClearTaskEventResponseEv; CTaskManager::ClearTaskEventResponse(void)
381934:  LDR             R0, [R5]
381936:  MOV             R1, R6; CTask *
381938:  MOVS            R2, #4; int
38193A:  LDR.W           R0, [R0,#0x440]
38193E:  ADDS            R0, #4; this
381940:  MOVS            R3, #1; bool
381942:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
381946:  MOV             R0, R4; this
381948:  BLX             j__ZN22CPedScriptedTaskRecord28GetRecordAssociatedWithEventEP19CEventScriptCommand; CPedScriptedTaskRecord::GetRecordAssociatedWithEvent(CEventScriptCommand *)
38194C:  CBZ             R0, loc_381994
38194E:  MOV             R1, R6
381950:  POP.W           {R11}
381954:  POP.W           {R4-R7,LR}
381958:  B.W             sub_18F9B4
38195C:  LDR             R0, [R6]
38195E:  MOVS            R2, #0
381960:  LDR             R1, [R5]
381962:  MOV             R3, R4
381964:  LDR.W           R12, [R0,#0x1C]
381968:  MOV             R0, R6
38196A:  BLX             R12
38196C:  LDR             R0, [R5]
38196E:  MOV             R1, R4; CEvent *
381970:  MOVS            R2, #0; bool
381972:  LDR.W           R0, [R0,#0x440]
381976:  ADDS            R0, #0x68 ; 'h'; this
381978:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
38197C:  MOV             R5, R0
38197E:  MOV             R0, R4; this
381980:  BLX             j__ZN22CPedScriptedTaskRecord28GetRecordAssociatedWithEventEP19CEventScriptCommand; CPedScriptedTaskRecord::GetRecordAssociatedWithEvent(CEventScriptCommand *)
381984:  CBZ             R0, loc_381994
381986:  MOV             R1, R5
381988:  POP.W           {R11}
38198C:  POP.W           {R4-R7,LR}
381990:  B.W             j_j__ZN26CPedScriptedTaskRecordData18AssociateWithEventEP19CEventScriptCommand; j_CPedScriptedTaskRecordData::AssociateWithEvent(CEventScriptCommand *)
381994:  POP.W           {R11}
381998:  POP             {R4-R7,PC}
