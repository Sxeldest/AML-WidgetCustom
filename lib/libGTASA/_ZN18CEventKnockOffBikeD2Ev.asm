; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBikeD2Ev
; Address            : 0x375658 - 0x375688
; =========================================================

375658:  PUSH            {R4,R6,R7,LR}
37565A:  ADD             R7, SP, #8
37565C:  MOV             R4, R0
37565E:  LDR             R0, =(_ZTV18CEventKnockOffBike_ptr - 0x375666)
375660:  MOV             R1, R4
375662:  ADD             R0, PC; _ZTV18CEventKnockOffBike_ptr
375664:  LDR             R2, [R0]; `vtable for'CEventKnockOffBike ...
375666:  LDR.W           R0, [R1,#0x38]!; CEntity **
37566A:  ADDS            R2, #8
37566C:  STR             R2, [R4]
37566E:  CMP             R0, #0
375670:  IT NE
375672:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
375676:  MOV             R1, R4
375678:  LDR.W           R0, [R1,#0x30]!; CEntity **
37567C:  CMP             R0, #0
37567E:  IT NE
375680:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
375684:  MOV             R0, R4
375686:  POP             {R4,R6,R7,PC}
