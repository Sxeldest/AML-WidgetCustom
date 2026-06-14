; =========================================================
; Game Engine Function: _ZN15CEventPedToFleeD2Ev
; Address            : 0x374B28 - 0x374B4A
; =========================================================

374B28:  PUSH            {R4,R6,R7,LR}
374B2A:  ADD             R7, SP, #8
374B2C:  MOV             R4, R0
374B2E:  LDR             R0, =(_ZTV15CEventPedToFlee_ptr - 0x374B36)
374B30:  MOV             R1, R4
374B32:  ADD             R0, PC; _ZTV15CEventPedToFlee_ptr
374B34:  LDR             R2, [R0]; `vtable for'CEventPedToFlee ...
374B36:  LDR.W           R0, [R1,#0xC]!; CEntity **
374B3A:  ADDS            R2, #8
374B3C:  STR             R2, [R4]
374B3E:  CMP             R0, #0
374B40:  IT NE
374B42:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
374B46:  MOV             R0, R4
374B48:  POP             {R4,R6,R7,PC}
