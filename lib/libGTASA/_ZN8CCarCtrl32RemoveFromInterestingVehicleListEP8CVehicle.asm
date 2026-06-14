; =========================================================
; Game Engine Function: _ZN8CCarCtrl32RemoveFromInterestingVehicleListEP8CVehicle
; Address            : 0x2FACD8 - 0x2FAD08
; =========================================================

2FACD8:  LDR             R1, =(apCarsToKeep_ptr - 0x2FACDE)
2FACDA:  ADD             R1, PC; apCarsToKeep_ptr
2FACDC:  LDR             R1, [R1]; apCarsToKeep
2FACDE:  LDR             R1, [R1]
2FACE0:  CMP             R1, R0
2FACE2:  BNE             loc_2FACEE
2FACE4:  LDR             R1, =(apCarsToKeep_ptr - 0x2FACEC)
2FACE6:  MOVS            R2, #0
2FACE8:  ADD             R1, PC; apCarsToKeep_ptr
2FACEA:  LDR             R1, [R1]; apCarsToKeep
2FACEC:  STR             R2, [R1]
2FACEE:  LDR             R1, =(apCarsToKeep_ptr - 0x2FACF4)
2FACF0:  ADD             R1, PC; apCarsToKeep_ptr
2FACF2:  LDR             R1, [R1]; apCarsToKeep
2FACF4:  LDR             R1, [R1,#(dword_7967A8 - 0x7967A4)]
2FACF6:  CMP             R1, R0
2FACF8:  IT NE
2FACFA:  BXNE            LR
2FACFC:  LDR             R0, =(apCarsToKeep_ptr - 0x2FAD04)
2FACFE:  MOVS            R1, #0
2FAD00:  ADD             R0, PC; apCarsToKeep_ptr
2FAD02:  LDR             R0, [R0]; apCarsToKeep
2FAD04:  STR             R1, [R0,#(dword_7967A8 - 0x7967A4)]
2FAD06:  BX              LR
