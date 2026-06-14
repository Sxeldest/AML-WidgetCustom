; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetED0Ev
; Address            : 0x35D5C0 - 0x35D5EC
; =========================================================

35D5C0:  PUSH            {R4,R6,R7,LR}
35D5C2:  ADD             R7, SP, #8
35D5C4:  MOV             R4, R0
35D5C6:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE_ptr - 0x35D5CE)
35D5C8:  MOV             R1, R4
35D5CA:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE_ptr
35D5CC:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorRadiusAngleOffset> ...
35D5CE:  LDR.W           R0, [R1,#0xC]!; CEntity **
35D5D2:  ADDS            R2, #8
35D5D4:  STR             R2, [R4]
35D5D6:  CMP             R0, #0
35D5D8:  IT NE
35D5DA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
35D5DE:  MOV             R0, R4; this
35D5E0:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
35D5E4:  POP.W           {R4,R6,R7,LR}
35D5E8:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
