; =========================================================
; Game Engine Function: _ZN24CTaskComplexEvasiveCowerD0Ev
; Address            : 0x50E6CC - 0x50E6F8
; =========================================================

50E6CC:  PUSH            {R4,R6,R7,LR}
50E6CE:  ADD             R7, SP, #8
50E6D0:  MOV             R4, R0
50E6D2:  LDR             R0, =(_ZTV24CTaskComplexEvasiveCower_ptr - 0x50E6DA)
50E6D4:  MOV             R1, R4
50E6D6:  ADD             R0, PC; _ZTV24CTaskComplexEvasiveCower_ptr
50E6D8:  LDR             R2, [R0]; `vtable for'CTaskComplexEvasiveCower ...
50E6DA:  LDR.W           R0, [R1,#0x18]!; CEntity **
50E6DE:  ADDS            R2, #8
50E6E0:  STR             R2, [R4]
50E6E2:  CMP             R0, #0
50E6E4:  IT NE
50E6E6:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50E6EA:  MOV             R0, R4; this
50E6EC:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
50E6F0:  POP.W           {R4,R6,R7,LR}
50E6F4:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
