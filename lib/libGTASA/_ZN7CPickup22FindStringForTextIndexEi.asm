; =========================================================
; Game Engine Function: _ZN7CPickup22FindStringForTextIndexEi
; Address            : 0x31FA18 - 0x31FA46
; =========================================================

31FA18:  CMP             R0, #2
31FA1A:  BEQ             loc_31FA3A
31FA1C:  CMP             R0, #1
31FA1E:  BNE             loc_31FA40
31FA20:  PUSH            {R7,LR}
31FA22:  MOV             R7, SP
31FA24:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
31FA28:  LDR             R2, =(aProp3x - 0x31FA34); "PROP_3X"
31FA2A:  MOV             R1, R0
31FA2C:  LDR             R0, =(aProp3 - 0x31FA36); "PROP_3"
31FA2E:  CMP             R1, #0
31FA30:  ADD             R2, PC; "PROP_3X"
31FA32:  ADD             R0, PC; "PROP_3"
31FA34:  IT NE
31FA36:  MOVNE           R0, R2
31FA38:  POP             {R7,PC}
31FA3A:  LDR             R0, =(aProp4 - 0x31FA40); "PROP_4"
31FA3C:  ADD             R0, PC; "PROP_4"
31FA3E:  BX              LR
31FA40:  LDR             R0, =(aFeszCa - 0x31FA46); "FESZ_CA"
31FA42:  ADD             R0, PC; "FESZ_CA"
31FA44:  BX              LR
