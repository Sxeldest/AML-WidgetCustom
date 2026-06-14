; =========================================================
; Game Engine Function: _ZN23CEventCopCarBeingStolenD2Ev
; Address            : 0x376F30 - 0x376F60
; =========================================================

376F30:  PUSH            {R4,R6,R7,LR}
376F32:  ADD             R7, SP, #8
376F34:  MOV             R4, R0
376F36:  LDR             R0, =(_ZTV23CEventCopCarBeingStolen_ptr - 0x376F3E)
376F38:  MOV             R1, R4
376F3A:  ADD             R0, PC; _ZTV23CEventCopCarBeingStolen_ptr
376F3C:  LDR             R2, [R0]; `vtable for'CEventCopCarBeingStolen ...
376F3E:  LDR.W           R0, [R1,#0xC]!; CEntity **
376F42:  ADDS            R2, #8
376F44:  STR             R2, [R4]
376F46:  CMP             R0, #0
376F48:  IT NE
376F4A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376F4E:  MOV             R1, R4
376F50:  LDR.W           R0, [R1,#0x10]!; CEntity **
376F54:  CMP             R0, #0
376F56:  IT NE
376F58:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
376F5C:  MOV             R0, R4
376F5E:  POP             {R4,R6,R7,PC}
