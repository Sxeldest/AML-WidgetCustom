; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo45GetMaximumNumberOfPassengersFromNumberOfDoorsEi
; Address            : 0x388F24 - 0x389036
; =========================================================

388F24:  PUSH            {R7,LR}
388F26:  MOV             R7, SP
388F28:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x388F2E)
388F2A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
388F2C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
388F2E:  LDR.W           R2, [R1,R0,LSL#2]
388F32:  MOVS            R1, #0
388F34:  LDR             R3, [R2,#0x54]
388F36:  CMP             R3, #5
388F38:  IT NE
388F3A:  CMPNE           R3, #0xB
388F3C:  BEQ             loc_388FAC
388F3E:  LDRB.W          LR, [R2,#0x62]
388F42:  CMP.W           R0, #0x1A8
388F46:  BGT             loc_388F56
388F48:  ADDS            R1, R0, #1
388F4A:  BEQ             loc_388F70
388F4C:  MOVW            R1, #0x197
388F50:  CMP             R0, R1
388F52:  BEQ             loc_388F6A
388F54:  B               loc_388F76
388F56:  CMP.W           R0, #0x1FC
388F5A:  BEQ             loc_388F6A
388F5C:  MOVW            R1, #0x1A9
388F60:  CMP             R0, R1
388F62:  BNE             loc_388F76
388F64:  MOV.W           R12, #1
388F68:  B               loc_388F80
388F6A:  MOV.W           R12, #2
388F6E:  B               loc_388F80
388F70:  MOV.W           R12, #3
388F74:  B               loc_388F80
388F76:  LDRB.W          R12, [R2,#0x64]
388F7A:  CMP.W           R12, #0
388F7E:  BEQ             loc_388FBE
388F80:  LDR             R1, =(mod_HandlingManager_ptr - 0x388F8A)
388F82:  RSB.W           R2, LR, LR,LSL#3
388F86:  ADD             R1, PC; mod_HandlingManager_ptr
388F88:  LDR             R1, [R1]; mod_HandlingManager
388F8A:  ADD.W           R1, R1, R2,LSL#5
388F8E:  LDRB.W          R1, [R1,#0xE1]
388F92:  LSLS            R1, R1, #0x1E
388F94:  BMI             loc_388FB0
388F96:  MOVW            R2, #0x1AF
388F9A:  MOVS            R1, #8
388F9C:  CMP             R0, R2
388F9E:  BEQ             loc_388FAC
388FA0:  MOVW            R2, #0x1B5
388FA4:  CMP             R0, R2
388FA6:  IT NE
388FA8:  SUBNE.W         R1, R12, #1
388FAC:  MOV             R0, R1
388FAE:  POP             {R7,PC}
388FB0:  SUB.W           R0, R12, #2
388FB4:  ADD.W           R0, R0, R0,LSR#31
388FB8:  ASRS            R1, R0, #1
388FBA:  MOV             R0, R1
388FBC:  POP             {R7,PC}
388FBE:  CMP             R3, #0xA
388FC0:  BHI             loc_38900C
388FC2:  MOVS            R1, #1
388FC4:  LSLS            R1, R3
388FC6:  MOVW            R3, #0x604
388FCA:  TST             R1, R3
388FCC:  BEQ             loc_38900C
388FCE:  LDR             R0, [R2,#0x74]
388FD0:  VLDR            S0, [R0,#0x3C]
388FD4:  VCMP.F32        S0, #0.0
388FD8:  VMRS            APSR_nzcv, FPSCR
388FDC:  BEQ             loc_388FE4
388FDE:  MOVS            R1, #1
388FE0:  MOV             R0, R1
388FE2:  POP             {R7,PC}
388FE4:  VLDR            S0, [R0,#0x40]
388FE8:  MOVS            R1, #0
388FEA:  VLDR            S2, [R0,#0x44]
388FEE:  MOVS            R0, #0
388FF0:  VCMP.F32        S0, #0.0
388FF4:  VMRS            APSR_nzcv, FPSCR
388FF8:  VCMP.F32        S2, #0.0
388FFC:  IT NE
388FFE:  MOVNE           R1, #1
389000:  VMRS            APSR_nzcv, FPSCR
389004:  IT NE
389006:  MOVNE           R0, #1
389008:  ORRS            R0, R1
38900A:  POP             {R7,PC}
38900C:  LDR             R1, =(mod_HandlingManager_ptr - 0x389016)
38900E:  RSB.W           R3, LR, LR,LSL#3
389012:  ADD             R1, PC; mod_HandlingManager_ptr
389014:  LDR             R1, [R1]; mod_HandlingManager
389016:  ADD.W           R1, R1, R3,LSL#5
38901A:  LDRB.W          R1, [R1,#0xE1]
38901E:  LSLS            R1, R1, #0x1E
389020:  BMI             loc_388FCE
389022:  MOVW            R2, #0x1B9
389026:  CMP             R0, R2
389028:  MOV.W           R1, #0
38902C:  IT NE
38902E:  CMPNE.W         R0, #0x234
389032:  BEQ             loc_388FAC
389034:  B               loc_388FDE
