; =========================================================
; Game Engine Function: _ZN8CCarCtrl24IsThisVehicleInterestingEP8CVehicle
; Address            : 0x2ECBEC - 0x2ECC0E
; =========================================================

2ECBEC:  LDR             R1, =(apCarsToKeep_ptr - 0x2ECBF4)
2ECBEE:  MOVS            R3, #0
2ECBF0:  ADD             R1, PC; apCarsToKeep_ptr
2ECBF2:  LDR             R1, [R1]; apCarsToKeep
2ECBF4:  LDRD.W          R2, R1, [R1]
2ECBF8:  CMP             R1, R0
2ECBFA:  MOV.W           R1, #0
2ECBFE:  IT EQ
2ECC00:  MOVEQ           R1, #1
2ECC02:  CMP             R2, R0
2ECC04:  IT EQ
2ECC06:  MOVEQ           R3, #1
2ECC08:  ORR.W           R0, R3, R1
2ECC0C:  BX              LR
