; =========================================================
; Game Engine Function: _ZN19CEventVehicleOnFireC2EP8CVehicle
; Address            : 0x376980 - 0x3769BC
; =========================================================

376980:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventVehicleOnFire::CEventVehicleOnFire(CVehicle *)'
376982:  ADD             R7, SP, #8
376984:  MOV             R4, R0
376986:  LDR             R0, =(_ZTV19CEventVehicleOnFire_ptr - 0x376990)
376988:  MOVS            R2, #0
37698A:  CMP             R1, #0
37698C:  ADD             R0, PC; _ZTV19CEventVehicleOnFire_ptr
37698E:  STR             R2, [R4,#4]
376990:  MOV             R2, #0xC80100
376998:  LDR             R0, [R0]; `vtable for'CEventVehicleOnFire ...
37699A:  STR             R2, [R4,#8]
37699C:  MOVW            R2, #0xFFFF
3769A0:  STRH            R2, [R4,#0xC]
3769A2:  MOV             R2, R4
3769A4:  ADD.W           R0, R0, #8
3769A8:  STR             R0, [R4]
3769AA:  STR.W           R1, [R2,#0x10]!
3769AE:  ITTT NE
3769B0:  MOVNE           R0, R1; this
3769B2:  MOVNE           R1, R2; CEntity **
3769B4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3769B8:  MOV             R0, R4
3769BA:  POP             {R4,R6,R7,PC}
