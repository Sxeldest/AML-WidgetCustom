; =========================================================
; Game Engine Function: _ZN30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetED2Ev
; Address            : 0x5464E0 - 0x546508
; =========================================================

5464E0:  PUSH            {R4,R6,R7,LR}
5464E2:  ADD             R7, SP, #8
5464E4:  MOV             R4, R0
5464E6:  LDR             R0, =(_ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x5464EE)
5464E8:  MOV             R1, R4
5464EA:  ADD             R0, PC; _ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr
5464EC:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntityAnyMeans<CEntitySeekPosCalculatorXYOffset> ...
5464EE:  LDR.W           R0, [R1,#0xC]!; CEntity **
5464F2:  ADDS            R2, #8
5464F4:  STR             R2, [R4]
5464F6:  CMP             R0, #0
5464F8:  IT NE
5464FA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5464FE:  MOV             R0, R4; this
546500:  POP.W           {R4,R6,R7,LR}
546504:  B.W             sub_18EDE8
