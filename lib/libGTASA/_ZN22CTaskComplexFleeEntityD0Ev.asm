; =========================================================
; Game Engine Function: _ZN22CTaskComplexFleeEntityD0Ev
; Address            : 0x513280 - 0x5132AC
; =========================================================

513280:  PUSH            {R4,R6,R7,LR}
513282:  ADD             R7, SP, #8
513284:  MOV             R4, R0
513286:  LDR             R0, =(_ZTV22CTaskComplexFleeEntity_ptr - 0x51328E)
513288:  MOV             R1, R4
51328A:  ADD             R0, PC; _ZTV22CTaskComplexFleeEntity_ptr
51328C:  LDR             R2, [R0]; `vtable for'CTaskComplexFleeEntity ...
51328E:  LDR.W           R0, [R1,#0xC]!; CEntity **
513292:  ADDS            R2, #8
513294:  STR             R2, [R4]
513296:  CMP             R0, #0
513298:  IT NE
51329A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
51329E:  MOV             R0, R4; this
5132A0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
5132A4:  POP.W           {R4,R6,R7,LR}
5132A8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
