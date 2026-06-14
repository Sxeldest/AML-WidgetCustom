; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosED0Ev
; Address            : 0x49D4F4 - 0x49D520
; =========================================================

49D4F4:  PUSH            {R4,R6,R7,LR}
49D4F6:  ADD             R7, SP, #8
49D4F8:  MOV             R4, R0
49D4FA:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE_ptr - 0x49D502)
49D4FC:  MOV             R1, R4
49D4FE:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE_ptr
49D500:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorFixedPos> ...
49D502:  LDR.W           R0, [R1,#0xC]!; CEntity **
49D506:  ADDS            R2, #8
49D508:  STR             R2, [R4]
49D50A:  CMP             R0, #0
49D50C:  IT NE
49D50E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49D512:  MOV             R0, R4; this
49D514:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
49D518:  POP.W           {R4,R6,R7,LR}
49D51C:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
