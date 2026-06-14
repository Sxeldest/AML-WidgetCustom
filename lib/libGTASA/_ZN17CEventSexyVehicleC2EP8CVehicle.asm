; =========================================================
; Game Engine Function: _ZN17CEventSexyVehicleC2EP8CVehicle
; Address            : 0x37496C - 0x37499A
; =========================================================

37496C:  PUSH            {R4,R6,R7,LR}
37496E:  ADD             R7, SP, #8
374970:  MOV             R4, R0
374972:  LDR             R0, =(_ZTV17CEventSexyVehicle_ptr - 0x37497C)
374974:  MOVS            R2, #0
374976:  CMP             R1, #0
374978:  ADD             R0, PC; _ZTV17CEventSexyVehicle_ptr
37497A:  STRB            R2, [R4,#8]
37497C:  LDR             R0, [R0]; `vtable for'CEventSexyVehicle ...
37497E:  ADD.W           R0, R0, #8
374982:  STRD.W          R0, R2, [R4]
374986:  MOV             R2, R4
374988:  STR.W           R1, [R2,#0xC]!
37498C:  ITTT NE
37498E:  MOVNE           R0, R1; this
374990:  MOVNE           R1, R2; CEntity **
374992:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
374996:  MOV             R0, R4
374998:  POP             {R4,R6,R7,PC}
