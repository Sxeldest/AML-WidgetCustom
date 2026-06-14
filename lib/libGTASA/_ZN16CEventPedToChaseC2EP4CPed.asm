; =========================================================
; Game Engine Function: _ZN16CEventPedToChaseC2EP4CPed
; Address            : 0x374A3C - 0x374A6A
; =========================================================

374A3C:  PUSH            {R4,R6,R7,LR}
374A3E:  ADD             R7, SP, #8
374A40:  MOV             R4, R0
374A42:  LDR             R0, =(_ZTV16CEventPedToChase_ptr - 0x374A4C)
374A44:  MOVS            R2, #0
374A46:  CMP             R1, #0
374A48:  ADD             R0, PC; _ZTV16CEventPedToChase_ptr
374A4A:  STRB            R2, [R4,#8]
374A4C:  LDR             R0, [R0]; `vtable for'CEventPedToChase ...
374A4E:  ADD.W           R0, R0, #8
374A52:  STRD.W          R0, R2, [R4]
374A56:  MOV             R2, R4
374A58:  STR.W           R1, [R2,#0xC]!
374A5C:  ITTT NE
374A5E:  MOVNE           R0, R1; this
374A60:  MOVNE           R1, R2; CEntity **
374A62:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
374A66:  MOV             R0, R4
374A68:  POP             {R4,R6,R7,PC}
