; =========================================================
; Game Engine Function: _ZN24CTaskComplexEvasiveCowerD2Ev
; Address            : 0x50E6A0 - 0x50E6C8
; =========================================================

50E6A0:  PUSH            {R4,R6,R7,LR}
50E6A2:  ADD             R7, SP, #8
50E6A4:  MOV             R4, R0
50E6A6:  LDR             R0, =(_ZTV24CTaskComplexEvasiveCower_ptr - 0x50E6AE)
50E6A8:  MOV             R1, R4
50E6AA:  ADD             R0, PC; _ZTV24CTaskComplexEvasiveCower_ptr
50E6AC:  LDR             R2, [R0]; `vtable for'CTaskComplexEvasiveCower ...
50E6AE:  LDR.W           R0, [R1,#0x18]!; CEntity **
50E6B2:  ADDS            R2, #8
50E6B4:  STR             R2, [R4]
50E6B6:  CMP             R0, #0
50E6B8:  IT NE
50E6BA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50E6BE:  MOV             R0, R4; this
50E6C0:  POP.W           {R4,R6,R7,LR}
50E6C4:  B.W             sub_18EDE8
