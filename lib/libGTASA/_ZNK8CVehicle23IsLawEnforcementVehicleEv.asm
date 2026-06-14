; =========================================================
; Game Engine Function: _ZNK8CVehicle23IsLawEnforcementVehicleEv
; Address            : 0x584CD4 - 0x584D20
; =========================================================

584CD4:  LDRSH.W         R1, [R0,#0x26]
584CD8:  MOVS            R0, #1
584CDA:  CMP.W           R1, #0x210
584CDE:  BGE             loc_584D06
584CE0:  SUBW            R2, R1, #0x1AB
584CE4:  CMP             R2, #6
584CE6:  BHI             loc_584CF4
584CE8:  MOVS            R3, #1
584CEA:  LSL.W           R2, R3, R2
584CEE:  TST.W           R2, #0x69
584CF2:  BNE             locret_584D12
584CF4:  CMP.W           R1, #0x1EA
584CF8:  BEQ             locret_584D12
584CFA:  MOVW            R2, #0x20B
584CFE:  CMP             R1, R2
584D00:  BEQ             locret_584D12
584D02:  MOVS            R0, #0
584D04:  BX              LR
584D06:  SUB.W           R2, R1, #0x254
584D0A:  CMP             R2, #5
584D0C:  BHI             loc_584D14
584D0E:  CMP             R2, #4
584D10:  BEQ             loc_584D14
584D12:  BX              LR
584D14:  CMP.W           R1, #0x210
584D18:  IT EQ
584D1A:  BXEQ            LR
584D1C:  MOVS            R0, #0
584D1E:  BX              LR
