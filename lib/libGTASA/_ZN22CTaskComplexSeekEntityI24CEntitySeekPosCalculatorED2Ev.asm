; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorED2Ev
; Address            : 0x4983A0 - 0x4983C8
; =========================================================

4983A0:  PUSH            {R4,R6,R7,LR}
4983A2:  ADD             R7, SP, #8
4983A4:  MOV             R4, R0
4983A6:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE_ptr - 0x4983AE)
4983A8:  MOV             R1, R4
4983AA:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE_ptr
4983AC:  LDR             R2, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculator> ...
4983AE:  LDR.W           R0, [R1,#0xC]!; CEntity **
4983B2:  ADDS            R2, #8
4983B4:  STR             R2, [R4]
4983B6:  CMP             R0, #0
4983B8:  IT NE
4983BA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4983BE:  MOV             R0, R4; this
4983C0:  POP.W           {R4,R6,R7,LR}
4983C4:  B.W             sub_18EDE8
