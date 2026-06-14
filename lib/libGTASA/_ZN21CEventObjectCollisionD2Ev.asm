; =========================================================
; Game Engine Function: _ZN21CEventObjectCollisionD2Ev
; Address            : 0x371580 - 0x3715A2
; =========================================================

371580:  PUSH            {R4,R6,R7,LR}
371582:  ADD             R7, SP, #8
371584:  MOV             R4, R0
371586:  LDR             R0, =(_ZTV21CEventObjectCollision_ptr - 0x37158E)
371588:  MOV             R1, R4
37158A:  ADD             R0, PC; _ZTV21CEventObjectCollision_ptr
37158C:  LDR             R2, [R0]; `vtable for'CEventObjectCollision ...
37158E:  LDR.W           R0, [R1,#0x14]!; CEntity **
371592:  ADDS            R2, #8
371594:  STR             R2, [R4]
371596:  CMP             R0, #0
371598:  IT NE
37159A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
37159E:  MOV             R0, R4
3715A0:  POP             {R4,R6,R7,PC}
