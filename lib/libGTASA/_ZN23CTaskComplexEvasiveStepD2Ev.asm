; =========================================================
; Game Engine Function: _ZN23CTaskComplexEvasiveStepD2Ev
; Address            : 0x50AF38 - 0x50AF60
; =========================================================

50AF38:  PUSH            {R4,R6,R7,LR}
50AF3A:  ADD             R7, SP, #8
50AF3C:  MOV             R4, R0
50AF3E:  LDR             R0, =(_ZTV23CTaskComplexEvasiveStep_ptr - 0x50AF46)
50AF40:  MOV             R1, R4
50AF42:  ADD             R0, PC; _ZTV23CTaskComplexEvasiveStep_ptr
50AF44:  LDR             R2, [R0]; `vtable for'CTaskComplexEvasiveStep ...
50AF46:  LDR.W           R0, [R1,#0x18]!; CEntity **
50AF4A:  ADDS            R2, #8
50AF4C:  STR             R2, [R4]
50AF4E:  CMP             R0, #0
50AF50:  IT NE
50AF52:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
50AF56:  MOV             R0, R4; this
50AF58:  POP.W           {R4,R6,R7,LR}
50AF5C:  B.W             sub_18EDE8
