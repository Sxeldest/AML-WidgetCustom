; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceED2Ev
; Address            : 0x49A398 - 0x49A3C0
; =========================================================

49A398:  PUSH            {R4,R6,R7,LR}
49A39A:  ADD             R7, SP, #8
49A39C:  MOV             R4, R0
49A39E:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE_ptr - 0x49A3A6)
49A3A0:  MOV             R1, R4
49A3A2:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE_ptr
49A3A4:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorEntitySurface> ...
49A3A6:  LDR.W           R0, [R1,#0xC]!; CEntity **
49A3AA:  ADDS            R2, #8
49A3AC:  STR             R2, [R4]
49A3AE:  CMP             R0, #0
49A3B0:  IT NE
49A3B2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
49A3B6:  MOV             R0, R4; this
49A3B8:  POP.W           {R4,R6,R7,LR}
49A3BC:  B.W             sub_18EDE8
