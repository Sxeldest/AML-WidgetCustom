; =========================================================
; Game Engine Function: _ZN28CTaskComplexWalkAlongsidePedD2Ev
; Address            : 0x535C14 - 0x535C3C
; =========================================================

535C14:  PUSH            {R4,R6,R7,LR}
535C16:  ADD             R7, SP, #8
535C18:  MOV             R4, R0
535C1A:  LDR             R0, =(_ZTV28CTaskComplexWalkAlongsidePed_ptr - 0x535C22)
535C1C:  MOV             R1, R4
535C1E:  ADD             R0, PC; _ZTV28CTaskComplexWalkAlongsidePed_ptr
535C20:  LDR             R2, [R0]; `vtable for'CTaskComplexWalkAlongsidePed ...
535C22:  LDR.W           R0, [R1,#0xC]!; CEntity **
535C26:  ADDS            R2, #8
535C28:  STR             R2, [R4]
535C2A:  CMP             R0, #0
535C2C:  IT NE
535C2E:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
535C32:  MOV             R0, R4; this
535C34:  POP.W           {R4,R6,R7,LR}
535C38:  B.W             sub_18EDE8
