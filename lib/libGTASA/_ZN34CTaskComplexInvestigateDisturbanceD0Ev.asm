; =========================================================
; Game Engine Function: _ZN34CTaskComplexInvestigateDisturbanceD0Ev
; Address            : 0x526434 - 0x526460
; =========================================================

526434:  PUSH            {R4,R6,R7,LR}
526436:  ADD             R7, SP, #8
526438:  MOV             R4, R0
52643A:  LDR             R0, =(_ZTV34CTaskComplexInvestigateDisturbance_ptr - 0x526442)
52643C:  MOV             R1, R4
52643E:  ADD             R0, PC; _ZTV34CTaskComplexInvestigateDisturbance_ptr
526440:  LDR             R2, [R0]; `vtable for'CTaskComplexInvestigateDisturbance ...
526442:  LDR.W           R0, [R1,#0x18]!; CEntity **
526446:  ADDS            R2, #8
526448:  STR             R2, [R4]
52644A:  CMP             R0, #0
52644C:  IT NE
52644E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
526452:  MOV             R0, R4; this
526454:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
526458:  POP.W           {R4,R6,R7,LR}
52645C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
