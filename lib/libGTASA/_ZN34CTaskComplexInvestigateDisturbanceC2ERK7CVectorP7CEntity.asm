; =========================================================
; Game Engine Function: _ZN34CTaskComplexInvestigateDisturbanceC2ERK7CVectorP7CEntity
; Address            : 0x5263C0 - 0x526404
; =========================================================

5263C0:  PUSH            {R4-R7,LR}
5263C2:  ADD             R7, SP, #0xC
5263C4:  PUSH.W          {R11}
5263C8:  MOV             R5, R2
5263CA:  MOV             R6, R1
5263CC:  MOV             R4, R0
5263CE:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5263D2:  LDR             R0, =(_ZTV34CTaskComplexInvestigateDisturbance_ptr - 0x5263DC)
5263D4:  MOV             R1, R4
5263D6:  CMP             R5, #0
5263D8:  ADD             R0, PC; _ZTV34CTaskComplexInvestigateDisturbance_ptr
5263DA:  LDR             R0, [R0]; `vtable for'CTaskComplexInvestigateDisturbance ...
5263DC:  ADD.W           R0, R0, #8
5263E0:  STR             R0, [R4]
5263E2:  VLDR            D16, [R6]
5263E6:  LDR             R0, [R6,#8]
5263E8:  STR.W           R5, [R1,#0x18]!; CEntity **
5263EC:  STR.W           R0, [R1,#-4]
5263F0:  VSTR            D16, [R1,#-0xC]
5263F4:  ITT NE
5263F6:  MOVNE           R0, R5; this
5263F8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5263FC:  MOV             R0, R4
5263FE:  POP.W           {R11}
526402:  POP             {R4-R7,PC}
