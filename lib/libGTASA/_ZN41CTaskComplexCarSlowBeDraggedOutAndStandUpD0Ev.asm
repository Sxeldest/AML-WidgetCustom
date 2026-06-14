; =========================================================
; Game Engine Function: _ZN41CTaskComplexCarSlowBeDraggedOutAndStandUpD0Ev
; Address            : 0x5052B8 - 0x5052E4
; =========================================================

5052B8:  PUSH            {R4,R6,R7,LR}
5052BA:  ADD             R7, SP, #8
5052BC:  MOV             R4, R0
5052BE:  LDR             R0, =(_ZTV41CTaskComplexCarSlowBeDraggedOutAndStandUp_ptr - 0x5052C6)
5052C0:  MOV             R1, R4
5052C2:  ADD             R0, PC; _ZTV41CTaskComplexCarSlowBeDraggedOutAndStandUp_ptr
5052C4:  LDR             R2, [R0]; `vtable for'CTaskComplexCarSlowBeDraggedOutAndStandUp ...
5052C6:  LDR.W           R0, [R1,#0xC]!; CEntity **
5052CA:  ADDS            R2, #8
5052CC:  STR             R2, [R4]
5052CE:  CMP             R0, #0
5052D0:  IT NE
5052D2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5052D6:  MOV             R0, R4; this
5052D8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5052DC:  POP.W           {R4,R6,R7,LR}
5052E0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
