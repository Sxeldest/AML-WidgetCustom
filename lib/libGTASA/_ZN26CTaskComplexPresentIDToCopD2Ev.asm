; =========================================================
; Game Engine Function: _ZN26CTaskComplexPresentIDToCopD2Ev
; Address            : 0x5115B4 - 0x5115DC
; =========================================================

5115B4:  PUSH            {R4,R6,R7,LR}
5115B6:  ADD             R7, SP, #8
5115B8:  MOV             R4, R0
5115BA:  LDR             R0, =(_ZTV26CTaskComplexPresentIDToCop_ptr - 0x5115C2)
5115BC:  MOV             R1, R4
5115BE:  ADD             R0, PC; _ZTV26CTaskComplexPresentIDToCop_ptr
5115C0:  LDR             R2, [R0]; `vtable for'CTaskComplexPresentIDToCop ...
5115C2:  LDR.W           R0, [R1,#0xC]!; CEntity **
5115C6:  ADDS            R2, #8
5115C8:  STR             R2, [R4]
5115CA:  CMP             R0, #0
5115CC:  IT NE
5115CE:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5115D2:  MOV             R0, R4; this
5115D4:  POP.W           {R4,R6,R7,LR}
5115D8:  B.W             sub_18EDE8
