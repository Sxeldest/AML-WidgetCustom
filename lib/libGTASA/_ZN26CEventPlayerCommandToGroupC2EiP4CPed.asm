; =========================================================
; Game Engine Function: _ZN26CEventPlayerCommandToGroupC2EiP4CPed
; Address            : 0x377C0C - 0x377C48
; =========================================================

377C0C:  PUSH            {R4,R6,R7,LR}
377C0E:  ADD             R7, SP, #8
377C10:  MOV             R4, R0
377C12:  LDR             R0, =(_ZTV26CEventPlayerCommandToGroup_ptr - 0x377C1C)
377C14:  MOVS            R3, #0
377C16:  CMP             R2, #0
377C18:  ADD             R0, PC; _ZTV26CEventPlayerCommandToGroup_ptr
377C1A:  STR             R3, [R4,#4]
377C1C:  MOV             R3, #0xC80100
377C24:  LDR             R0, [R0]; `vtable for'CEventPlayerCommandToGroup ...
377C26:  STR             R3, [R4,#8]
377C28:  MOVW            R3, #0xFFFF
377C2C:  STRH            R3, [R4,#0xC]
377C2E:  ADD.W           R0, R0, #8
377C32:  STR             R1, [R4,#0x10]
377C34:  MOV             R1, R4
377C36:  STR             R0, [R4]
377C38:  STR.W           R2, [R1,#0x14]!; CEntity **
377C3C:  ITT NE
377C3E:  MOVNE           R0, R2; this
377C40:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
377C44:  MOV             R0, R4
377C46:  POP             {R4,R6,R7,PC}
