; =========================================================
; Game Engine Function: _ZN15CEventPedToFleeC2EP4CPed
; Address            : 0x374AF4 - 0x374B22
; =========================================================

374AF4:  PUSH            {R4,R6,R7,LR}
374AF6:  ADD             R7, SP, #8
374AF8:  MOV             R4, R0
374AFA:  LDR             R0, =(_ZTV15CEventPedToFlee_ptr - 0x374B04)
374AFC:  MOVS            R2, #0
374AFE:  CMP             R1, #0
374B00:  ADD             R0, PC; _ZTV15CEventPedToFlee_ptr
374B02:  STRB            R2, [R4,#8]
374B04:  LDR             R0, [R0]; `vtable for'CEventPedToFlee ...
374B06:  ADD.W           R0, R0, #8
374B0A:  STRD.W          R0, R2, [R4]
374B0E:  MOV             R2, R4
374B10:  STR.W           R1, [R2,#0xC]!
374B14:  ITTT NE
374B16:  MOVNE           R0, R1; this
374B18:  MOVNE           R1, R2; CEntity **
374B1A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
374B1E:  MOV             R0, R4
374B20:  POP             {R4,R6,R7,PC}
