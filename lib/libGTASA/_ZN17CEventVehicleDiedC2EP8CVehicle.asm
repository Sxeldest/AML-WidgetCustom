; =========================================================
; Game Engine Function: _ZN17CEventVehicleDiedC2EP8CVehicle
; Address            : 0x376720 - 0x37674A
; =========================================================

376720:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventVehicleDied::CEventVehicleDied(CVehicle *)'
376722:  ADD             R7, SP, #8
376724:  MOV             R4, R0
376726:  LDR             R0, =(_ZTV17CEventVehicleDied_ptr - 0x37672E)
376728:  MOVS            R2, #0
37672A:  ADD             R0, PC; _ZTV17CEventVehicleDied_ptr
37672C:  STRB            R2, [R4,#8]
37672E:  STRB            R2, [R4,#0x10]
376730:  LDR             R0, [R0]; `vtable for'CEventVehicleDied ...
376732:  ADDS            R0, #8
376734:  STRD.W          R0, R2, [R4]
376738:  MOV             R2, R4
37673A:  MOV             R0, R1; this
37673C:  STR.W           R1, [R2,#0xC]!
376740:  MOV             R1, R2; CEntity **
376742:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
376746:  MOV             R0, R4
376748:  POP             {R4,R6,R7,PC}
