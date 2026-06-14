; =========================================================
; Game Engine Function: _ZN23CTaskComplexPartnerChatD0Ev
; Address            : 0x5353C4 - 0x535416
; =========================================================

5353C4:  PUSH            {R4,R6,R7,LR}
5353C6:  ADD             R7, SP, #8
5353C8:  MOV             R4, R0
5353CA:  LDR             R0, =(_ZTV23CTaskComplexPartnerChat_ptr - 0x5353D4)
5353CC:  LDRB.W          R1, [R4,#0x72]
5353D0:  ADD             R0, PC; _ZTV23CTaskComplexPartnerChat_ptr
5353D2:  CMP             R1, #0
5353D4:  LDR             R0, [R0]; `vtable for'CTaskComplexPartnerChat ...
5353D6:  ADD.W           R0, R0, #8
5353DA:  STR             R0, [R4]
5353DC:  BEQ             loc_5353EA
5353DE:  LDRB.W          R0, [R4,#0x74]; this
5353E2:  CMP             R0, #0
5353E4:  IT NE
5353E6:  BLXNE           j__ZN23CAEPedSpeechAudioEntity22ReleasePedConversationEv; CAEPedSpeechAudioEntity::ReleasePedConversation(void)
5353EA:  LDR             R0, =(_ZTV19CTaskComplexPartner_ptr - 0x5353F2)
5353EC:  MOV             R1, R4
5353EE:  ADD             R0, PC; _ZTV19CTaskComplexPartner_ptr
5353F0:  LDR             R2, [R0]; `vtable for'CTaskComplexPartner ...
5353F2:  LDR.W           R0, [R1,#0x38]!; CEntity **
5353F6:  ADDS            R2, #8
5353F8:  STR             R2, [R4]
5353FA:  CBZ             R0, loc_535402
5353FC:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
535400:  LDR             R2, [R4]
535402:  LDR             R1, [R2,#0x38]; CTaskComplexPartner::RemoveStreamedAnims(void) ...
535404:  MOV             R0, R4
535406:  BLX             R1
535408:  MOV             R0, R4; this
53540A:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
53540E:  POP.W           {R4,R6,R7,LR}
535412:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
