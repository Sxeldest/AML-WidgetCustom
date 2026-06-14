; =========================================================
; Game Engine Function: _ZN36CTaskComplexEnterCarAsPassengerTimedD0Ev
; Address            : 0x4F768C - 0x4F76B8
; =========================================================

4F768C:  PUSH            {R4,R6,R7,LR}
4F768E:  ADD             R7, SP, #8
4F7690:  MOV             R4, R0
4F7692:  LDR             R0, =(_ZTV36CTaskComplexEnterCarAsPassengerTimed_ptr - 0x4F769A)
4F7694:  MOV             R1, R4
4F7696:  ADD             R0, PC; _ZTV36CTaskComplexEnterCarAsPassengerTimed_ptr
4F7698:  LDR             R2, [R0]; `vtable for'CTaskComplexEnterCarAsPassengerTimed ...
4F769A:  LDR.W           R0, [R1,#0xC]!; CEntity **
4F769E:  ADDS            R2, #8
4F76A0:  STR             R2, [R4]
4F76A2:  CMP             R0, #0
4F76A4:  IT NE
4F76A6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F76AA:  MOV             R0, R4; this
4F76AC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4F76B0:  POP.W           {R4,R6,R7,LR}
4F76B4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
