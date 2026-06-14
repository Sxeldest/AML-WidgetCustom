; =========================================================
; Game Engine Function: _ZN17CEventChatPartnerD2Ev
; Address            : 0x374730 - 0x374752
; =========================================================

374730:  PUSH            {R4,R6,R7,LR}
374732:  ADD             R7, SP, #8
374734:  MOV             R4, R0
374736:  LDR             R0, =(_ZTV17CEventChatPartner_ptr - 0x37473E)
374738:  MOV             R1, R4
37473A:  ADD             R0, PC; _ZTV17CEventChatPartner_ptr
37473C:  LDR             R2, [R0]; `vtable for'CEventChatPartner ...
37473E:  LDR.W           R0, [R1,#0xC]!; CEntity **
374742:  ADDS            R2, #8
374744:  STR             R2, [R4]
374746:  CMP             R0, #0
374748:  IT NE
37474A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37474E:  MOV             R0, R4
374750:  POP             {R4,R6,R7,PC}
