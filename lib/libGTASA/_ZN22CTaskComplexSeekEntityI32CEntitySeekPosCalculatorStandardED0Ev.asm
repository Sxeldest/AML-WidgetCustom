; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardED0Ev
; Address            : 0x333E60 - 0x333E8C
; =========================================================

333E60:  PUSH            {R4,R6,R7,LR}
333E62:  ADD             R7, SP, #8
333E64:  MOV             R4, R0
333E66:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x333E6E)
333E68:  MOV             R1, R4
333E6A:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
333E6C:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
333E6E:  LDR.W           R0, [R1,#0xC]!; CEntity **
333E72:  ADDS            R2, #8
333E74:  STR             R2, [R4]
333E76:  CMP             R0, #0
333E78:  IT NE
333E7A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
333E7E:  MOV             R0, R4; this
333E80:  BLX             j__ZN12CTaskComplexD2Ev; CTaskComplex::~CTaskComplex()
333E84:  POP.W           {R4,R6,R7,LR}
333E88:  B.W             j_j__ZN5CTaskdlEPv; j_CTask::operator delete(void *)
