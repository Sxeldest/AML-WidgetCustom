; =========================================================
; Game Engine Function: _ZN23CEventCopCarBeingStolenC2EP4CPedP8CVehicle
; Address            : 0x376EE8 - 0x376F2A
; =========================================================

376EE8:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CEventCopCarBeingStolen::CEventCopCarBeingStolen(CPed *, CVehicle *)'
376EEA:  ADD             R7, SP, #8
376EEC:  MOV             R4, R0
376EEE:  LDR             R0, =(_ZTV23CEventCopCarBeingStolen_ptr - 0x376EF8)
376EF0:  MOVS            R3, #0
376EF2:  MOV             R5, R4
376EF4:  ADD             R0, PC; _ZTV23CEventCopCarBeingStolen_ptr
376EF6:  STRB            R3, [R4,#8]
376EF8:  CMP             R1, #0
376EFA:  LDR             R0, [R0]; `vtable for'CEventCopCarBeingStolen ...
376EFC:  ADD.W           R0, R0, #8
376F00:  STRD.W          R0, R3, [R4]
376F04:  MOV             R3, R4
376F06:  STR.W           R2, [R5,#0x10]!
376F0A:  STR.W           R1, [R3,#0xC]!
376F0E:  BEQ             loc_376F1A
376F10:  MOV             R0, R1; this
376F12:  MOV             R1, R3; CEntity **
376F14:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
376F18:  LDR             R2, [R5]
376F1A:  CMP             R2, #0
376F1C:  ITTT NE
376F1E:  MOVNE           R0, R2; this
376F20:  MOVNE           R1, R5; CEntity **
376F22:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
376F26:  MOV             R0, R4
376F28:  POP             {R4,R5,R7,PC}
