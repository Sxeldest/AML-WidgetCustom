; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetED0Ev
; Address            : 0x499350 - 0x49937C
; =========================================================

499350:  PUSH            {R4,R6,R7,LR}
499352:  ADD             R7, SP, #8
499354:  MOV             R4, R0
499356:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x49935E)
499358:  MOV             R1, R4
49935A:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
49935C:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
49935E:  LDR.W           R0, [R1,#0xC]!; CEntity **
499362:  ADDS            R2, #8
499364:  STR             R2, [R4]
499366:  CMP             R0, #0
499368:  IT NE
49936A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49936E:  MOV             R0, R4; this
499370:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
499374:  POP.W           {R4,R6,R7,LR}
499378:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
