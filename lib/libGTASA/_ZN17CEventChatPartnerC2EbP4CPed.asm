; =========================================================
; Game Engine Function: _ZN17CEventChatPartnerC2EbP4CPed
; Address            : 0x3746FC - 0x37472A
; =========================================================

3746FC:  PUSH            {R4,R6,R7,LR}
3746FE:  ADD             R7, SP, #8
374700:  MOV             R4, R0
374702:  LDR             R0, =(_ZTV17CEventChatPartner_ptr - 0x37470C)
374704:  MOVS            R3, #0
374706:  CMP             R2, #0
374708:  ADD             R0, PC; _ZTV17CEventChatPartner_ptr
37470A:  STRB            R3, [R4,#8]
37470C:  STR             R3, [R4,#4]
37470E:  LDR             R0, [R0]; `vtable for'CEventChatPartner ...
374710:  STRB            R1, [R4,#9]
374712:  MOV             R1, R4
374714:  ADD.W           R0, R0, #8
374718:  STR             R0, [R4]
37471A:  STR.W           R2, [R1,#0xC]!; CEntity **
37471E:  ITT NE
374720:  MOVNE           R0, R2; this
374722:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
374726:  MOV             R0, R4
374728:  POP             {R4,R6,R7,PC}
