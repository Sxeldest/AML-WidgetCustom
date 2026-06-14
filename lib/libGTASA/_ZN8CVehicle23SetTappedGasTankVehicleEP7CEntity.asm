; =========================================================
; Game Engine Function: _ZN8CVehicle23SetTappedGasTankVehicleEP7CEntity
; Address            : 0x591D30 - 0x591D68
; =========================================================

591D30:  PUSH            {R4,R6,R7,LR}
591D32:  ADD             R7, SP, #8
591D34:  MOV             R4, R0
591D36:  LDR             R0, =(_ZN8CVehicle23m_pTappedGasTankVehicleE_ptr - 0x591D3C)
591D38:  ADD             R0, PC; _ZN8CVehicle23m_pTappedGasTankVehicleE_ptr
591D3A:  LDR             R0, [R0]; CVehicle::m_pTappedGasTankVehicle ...
591D3C:  LDR             R0, [R0]; this
591D3E:  CBZ             R0, loc_591D4A
591D40:  LDR             R1, =(_ZN8CVehicle23m_pTappedGasTankVehicleE_ptr - 0x591D46)
591D42:  ADD             R1, PC; _ZN8CVehicle23m_pTappedGasTankVehicleE_ptr
591D44:  LDR             R1, [R1]; CEntity **
591D46:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
591D4A:  LDR             R0, =(_ZN8CVehicle23m_pTappedGasTankVehicleE_ptr - 0x591D52)
591D4C:  CMP             R4, #0
591D4E:  ADD             R0, PC; _ZN8CVehicle23m_pTappedGasTankVehicleE_ptr
591D50:  LDR             R0, [R0]; CVehicle::m_pTappedGasTankVehicle ...
591D52:  STR             R4, [R0]; CVehicle::m_pTappedGasTankVehicle
591D54:  IT EQ
591D56:  POPEQ           {R4,R6,R7,PC}
591D58:  LDR             R0, =(_ZN8CVehicle23m_pTappedGasTankVehicleE_ptr - 0x591D5E)
591D5A:  ADD             R0, PC; _ZN8CVehicle23m_pTappedGasTankVehicleE_ptr
591D5C:  LDR             R1, [R0]; CEntity **
591D5E:  MOV             R0, R4; this
591D60:  POP.W           {R4,R6,R7,LR}
591D64:  B.W             j_j__ZN7CEntity17RegisterReferenceEPPS_; j_CEntity::RegisterReference(CEntity**)
