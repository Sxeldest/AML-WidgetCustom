; =========================================================
; Game Engine Function: _ZN30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetED0Ev
; Address            : 0x54650C - 0x546538
; =========================================================

54650C:  PUSH            {R4,R6,R7,LR}
54650E:  ADD             R7, SP, #8
546510:  MOV             R4, R0
546512:  LDR             R0, =(_ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x54651A)
546514:  MOV             R1, R4
546516:  ADD             R0, PC; _ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr
546518:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntityAnyMeans<CEntitySeekPosCalculatorXYOffset> ...
54651A:  LDR.W           R0, [R1,#0xC]!; CEntity **
54651E:  ADDS            R2, #8
546520:  STR             R2, [R4]
546522:  CMP             R0, #0
546524:  IT NE
546526:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
54652A:  MOV             R0, R4; this
54652C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
546530:  POP.W           {R4,R6,R7,LR}
546534:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
