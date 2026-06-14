; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetED2Ev
; Address            : 0x499324 - 0x49934C
; =========================================================

499324:  PUSH            {R4,R6,R7,LR}
499326:  ADD             R7, SP, #8
499328:  MOV             R4, R0
49932A:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x499332)
49932C:  MOV             R1, R4
49932E:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
499330:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
499332:  LDR.W           R0, [R1,#0xC]!; CEntity **
499336:  ADDS            R2, #8
499338:  STR             R2, [R4]
49933A:  CMP             R0, #0
49933C:  IT NE
49933E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
499342:  MOV             R0, R4; this
499344:  POP.W           {R4,R6,R7,LR}
499348:  B.W             sub_18EDE8
