; =========================================================
; Game Engine Function: _ZN22CTaskComplexBeInCoupleD2Ev
; Address            : 0x5365B8 - 0x5365E0
; =========================================================

5365B8:  PUSH            {R4,R6,R7,LR}
5365BA:  ADD             R7, SP, #8
5365BC:  MOV             R4, R0
5365BE:  LDR             R0, =(_ZTV22CTaskComplexBeInCouple_ptr - 0x5365C6)
5365C0:  MOV             R1, R4
5365C2:  ADD             R0, PC; _ZTV22CTaskComplexBeInCouple_ptr
5365C4:  LDR             R2, [R0]; `vtable for'CTaskComplexBeInCouple ...
5365C6:  LDR.W           R0, [R1,#0x10]!; CEntity **
5365CA:  ADDS            R2, #8
5365CC:  STR             R2, [R4]
5365CE:  CMP             R0, #0
5365D0:  IT NE
5365D2:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
5365D6:  MOV             R0, R4; this
5365D8:  POP.W           {R4,R6,R7,LR}
5365DC:  B.W             sub_18EDE8
