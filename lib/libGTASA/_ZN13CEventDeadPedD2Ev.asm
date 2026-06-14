; =========================================================
; Game Engine Function: _ZN13CEventDeadPedD2Ev
; Address            : 0x373B28 - 0x373B4A
; =========================================================

373B28:  PUSH            {R4,R6,R7,LR}
373B2A:  ADD             R7, SP, #8
373B2C:  MOV             R4, R0
373B2E:  LDR             R0, =(_ZTV13CEventDeadPed_ptr - 0x373B36)
373B30:  MOV             R1, R4
373B32:  ADD             R0, PC; _ZTV13CEventDeadPed_ptr
373B34:  LDR             R2, [R0]; `vtable for'CEventDeadPed ...
373B36:  LDR.W           R0, [R1,#0x10]!; CEntity **
373B3A:  ADDS            R2, #8
373B3C:  STR             R2, [R4]
373B3E:  CMP             R0, #0
373B40:  IT NE
373B42:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
373B46:  MOV             R0, R4
373B48:  POP             {R4,R6,R7,PC}
