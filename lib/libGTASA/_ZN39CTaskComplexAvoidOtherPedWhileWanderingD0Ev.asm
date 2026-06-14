; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWanderingD0Ev
; Address            : 0x521C34 - 0x521C60
; =========================================================

521C34:  PUSH            {R4,R6,R7,LR}
521C36:  ADD             R7, SP, #8
521C38:  MOV             R4, R0
521C3A:  LDR             R0, =(_ZTV39CTaskComplexAvoidOtherPedWhileWandering_ptr - 0x521C42)
521C3C:  MOV             R1, R4
521C3E:  ADD             R0, PC; _ZTV39CTaskComplexAvoidOtherPedWhileWandering_ptr
521C40:  LDR             R2, [R0]; `vtable for'CTaskComplexAvoidOtherPedWhileWandering ...
521C42:  LDR.W           R0, [R1,#0xC]!; CEntity **
521C46:  ADDS            R2, #8
521C48:  STR             R2, [R4]
521C4A:  CMP             R0, #0
521C4C:  IT NE
521C4E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
521C52:  MOV             R0, R4; this
521C54:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
521C58:  POP.W           {R4,R6,R7,LR}
521C5C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
