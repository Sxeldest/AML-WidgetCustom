; =========================================================
; Game Engine Function: _ZN22CTaskComplexBeInCoupleD0Ev
; Address            : 0x5365E4 - 0x536610
; =========================================================

5365E4:  PUSH            {R4,R6,R7,LR}
5365E6:  ADD             R7, SP, #8
5365E8:  MOV             R4, R0
5365EA:  LDR             R0, =(_ZTV22CTaskComplexBeInCouple_ptr - 0x5365F2)
5365EC:  MOV             R1, R4
5365EE:  ADD             R0, PC; _ZTV22CTaskComplexBeInCouple_ptr
5365F0:  LDR             R2, [R0]; `vtable for'CTaskComplexBeInCouple ...
5365F2:  LDR.W           R0, [R1,#0x10]!; CEntity **
5365F6:  ADDS            R2, #8
5365F8:  STR             R2, [R4]
5365FA:  CMP             R0, #0
5365FC:  IT NE
5365FE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
536602:  MOV             R0, R4; this
536604:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
536608:  POP.W           {R4,R6,R7,LR}
53660C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
