; =========================================================
; Game Engine Function: _ZN27CTaskComplexDestroyCarMeleeD0Ev
; Address            : 0x4E6288 - 0x4E62B4
; =========================================================

4E6288:  PUSH            {R4,R6,R7,LR}
4E628A:  ADD             R7, SP, #8
4E628C:  MOV             R4, R0
4E628E:  LDR             R0, =(_ZTV27CTaskComplexDestroyCarMelee_ptr - 0x4E6296)
4E6290:  MOV             R1, R4
4E6292:  ADD             R0, PC; _ZTV27CTaskComplexDestroyCarMelee_ptr
4E6294:  LDR             R2, [R0]; `vtable for'CTaskComplexDestroyCarMelee ...
4E6296:  LDR.W           R0, [R1,#0x10]!; CEntity **
4E629A:  ADDS            R2, #8
4E629C:  STR             R2, [R4]
4E629E:  CMP             R0, #0
4E62A0:  IT NE
4E62A2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4E62A6:  MOV             R0, R4; this
4E62A8:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
4E62AC:  POP.W           {R4,R6,R7,LR}
4E62B0:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
