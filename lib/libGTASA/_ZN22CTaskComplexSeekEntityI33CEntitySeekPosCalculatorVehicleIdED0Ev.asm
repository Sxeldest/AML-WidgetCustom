; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdED0Ev
; Address            : 0x49B41C - 0x49B448
; =========================================================

49B41C:  PUSH            {R4,R6,R7,LR}
49B41E:  ADD             R7, SP, #8
49B420:  MOV             R4, R0
49B422:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE_ptr - 0x49B42A)
49B424:  MOV             R1, R4
49B426:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE_ptr
49B428:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorVehicleId> ...
49B42A:  LDR.W           R0, [R1,#0xC]!; CEntity **
49B42E:  ADDS            R2, #8
49B430:  STR             R2, [R4]
49B432:  CMP             R0, #0
49B434:  IT NE
49B436:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49B43A:  MOV             R0, R4; this
49B43C:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
49B440:  POP.W           {R4,R6,R7,LR}
49B444:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
