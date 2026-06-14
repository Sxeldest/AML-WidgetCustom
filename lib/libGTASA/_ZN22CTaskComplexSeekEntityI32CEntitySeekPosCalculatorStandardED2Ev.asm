; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardED2Ev
; Address            : 0x333E34 - 0x333E5C
; =========================================================

333E34:  PUSH            {R4,R6,R7,LR}
333E36:  ADD             R7, SP, #8
333E38:  MOV             R4, R0
333E3A:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr - 0x333E42)
333E3C:  MOV             R1, R4
333E3E:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE_ptr
333E40:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorStandard> ...
333E42:  LDR.W           R0, [R1,#0xC]!; CEntity **
333E46:  ADDS            R2, #8
333E48:  STR             R2, [R4]
333E4A:  CMP             R0, #0
333E4C:  IT NE
333E4E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
333E52:  MOV             R0, R4; this
333E54:  POP.W           {R4,R6,R7,LR}
333E58:  B.W             sub_18EDE8
