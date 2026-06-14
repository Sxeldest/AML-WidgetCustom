; =========================================================
; Game Engine Function: _ZN34CTaskComplexInvestigateDisturbanceD2Ev
; Address            : 0x526408 - 0x526430
; =========================================================

526408:  PUSH            {R4,R6,R7,LR}
52640A:  ADD             R7, SP, #8
52640C:  MOV             R4, R0
52640E:  LDR             R0, =(_ZTV34CTaskComplexInvestigateDisturbance_ptr - 0x526416)
526410:  MOV             R1, R4
526412:  ADD             R0, PC; _ZTV34CTaskComplexInvestigateDisturbance_ptr
526414:  LDR             R2, [R0]; `vtable for'CTaskComplexInvestigateDisturbance ...
526416:  LDR.W           R0, [R1,#0x18]!; CEntity **
52641A:  ADDS            R2, #8
52641C:  STR             R2, [R4]
52641E:  CMP             R0, #0
526420:  IT NE
526422:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
526426:  MOV             R0, R4; this
526428:  POP.W           {R4,R6,R7,LR}
52642C:  B.W             sub_18EDE8
