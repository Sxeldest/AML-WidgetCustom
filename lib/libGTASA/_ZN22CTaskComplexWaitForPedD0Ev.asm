; =========================================================
; Game Engine Function: _ZN22CTaskComplexWaitForPedD0Ev
; Address            : 0x536340 - 0x53636C
; =========================================================

536340:  PUSH            {R4,R6,R7,LR}
536342:  ADD             R7, SP, #8
536344:  MOV             R4, R0
536346:  LDR             R0, =(_ZTV22CTaskComplexWaitForPed_ptr - 0x53634E)
536348:  MOV             R1, R4
53634A:  ADD             R0, PC; _ZTV22CTaskComplexWaitForPed_ptr
53634C:  LDR             R2, [R0]; `vtable for'CTaskComplexWaitForPed ...
53634E:  LDR.W           R0, [R1,#0xC]!; CEntity **
536352:  ADDS            R2, #8
536354:  STR             R2, [R4]
536356:  CMP             R0, #0
536358:  IT NE
53635A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53635E:  MOV             R0, R4; this
536360:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
536364:  POP.W           {R4,R6,R7,LR}
536368:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
