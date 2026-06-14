; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerChatD2Ev
; Address            : 0x53536C - 0x5353BA
; =========================================================

53536C:  PUSH            {R4,R6,R7,LR}
53536E:  ADD             R7, SP, #8
535370:  MOV             R4, R0
535372:  LDR             R0, =(_ZTV23CTaskComplexPartnerChat_ptr - 0x53537C)
535374:  LDRB.W          R1, [R4,#0x72]
535378:  ADD             R0, PC; _ZTV23CTaskComplexPartnerChat_ptr
53537A:  CMP             R1, #0
53537C:  LDR             R0, [R0]; `vtable for'CTaskComplexPartnerChat ...
53537E:  ADD.W           R0, R0, #8
535382:  STR             R0, [R4]
535384:  BEQ             loc_535392
535386:  LDRB.W          R0, [R4,#0x74]; this
53538A:  CMP             R0, #0
53538C:  IT NE
53538E:  BLXNE           j__ZN23CAEPedSpeechAudioEntity22ReleasePedConversationEv; CAEPedSpeechAudioEntity::ReleasePedConversation(void)
535392:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x53539A)
535394:  MOV             R1, R4
535396:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
535398:  LDR             R2, [R0]; `vtable for'CTaskComplexPartner ...
53539A:  LDR.W           R0, [R1,#0x38]!; CEntity **
53539E:  ADDS            R2, #8
5353A0:  STR             R2, [R4]
5353A2:  CBZ             R0, loc_5353AA
5353A4:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5353A8:  LDR             R2, [R4]
5353AA:  LDR             R1, [R2,#0x38]; CTaskComplexPartner::RemoveStreamedAnims(void) ...
5353AC:  MOV             R0, R4
5353AE:  BLX             R1
5353B0:  MOV             R0, R4; this
5353B2:  POP.W           {R4,R6,R7,LR}
5353B6:  B.W             sub_18EDE8
