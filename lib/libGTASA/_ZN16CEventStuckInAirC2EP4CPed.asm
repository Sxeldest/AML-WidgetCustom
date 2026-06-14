; =========================================================
; Game Engine Function: _ZN16CEventStuckInAirC2EP4CPed
; Address            : 0x376CFC - 0x376D2A
; =========================================================

376CFC:  PUSH            {R4,R6,R7,LR}
376CFE:  ADD             R7, SP, #8
376D00:  MOV             R4, R0
376D02:  LDR             R0, =(_ZTV16CEventStuckInAir_ptr - 0x376D0C)
376D04:  MOVS            R2, #0
376D06:  CMP             R1, #0
376D08:  ADD             R0, PC; _ZTV16CEventStuckInAir_ptr
376D0A:  STRB            R2, [R4,#8]
376D0C:  LDR             R0, [R0]; `vtable for'CEventStuckInAir ...
376D0E:  ADD.W           R0, R0, #8
376D12:  STRD.W          R0, R2, [R4]
376D16:  MOV             R2, R4
376D18:  STR.W           R1, [R2,#0xC]!
376D1C:  ITTT NE
376D1E:  MOVNE           R0, R1; this
376D20:  MOVNE           R1, R2; CEntity **
376D22:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
376D26:  MOV             R0, R4
376D28:  POP             {R4,R6,R7,PC}
