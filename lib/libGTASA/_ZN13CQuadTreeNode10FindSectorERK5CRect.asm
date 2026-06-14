; =========================================================
; Game Engine Function: _ZN13CQuadTreeNode10FindSectorERK5CRect
; Address            : 0x40E1C4 - 0x40E24A
; =========================================================

40E1C4:  LDR             R2, [R0,#0x24]
40E1C6:  CBZ             R2, loc_40E226
40E1C8:  VLDR            S6, [R0,#4]
40E1CC:  VMOV.F32        S4, #0.5
40E1D0:  VLDR            S8, [R0,#0xC]
40E1D4:  VLDR            S0, [R0]
40E1D8:  VADD.F32        S6, S8, S6
40E1DC:  VLDR            S8, [R1,#4]
40E1E0:  VLDR            S2, [R0,#8]
40E1E4:  VMUL.F32        S6, S6, S4
40E1E8:  VCMPE.F32       S8, S6
40E1EC:  VMRS            APSR_nzcv, FPSCR
40E1F0:  BGE             loc_40E1F6
40E1F2:  MOVS            R2, #0
40E1F4:  B               loc_40E206
40E1F6:  VLDR            S8, [R1,#0xC]
40E1FA:  VCMPE.F32       S8, S6
40E1FE:  VMRS            APSR_nzcv, FPSCR
40E202:  BLE             loc_40E226
40E204:  MOVS            R2, #1
40E206:  VADD.F32        S0, S0, S2
40E20A:  VLDR            S2, [R1,#8]
40E20E:  VMUL.F32        S0, S0, S4
40E212:  VCMPE.F32       S2, S0
40E216:  VMRS            APSR_nzcv, FPSCR
40E21A:  BGE             loc_40E22C
40E21C:  MOVS            R0, #2
40E21E:  CMP             R2, #0
40E220:  IT NE
40E222:  MOVNE           R0, #0
40E224:  BX              LR
40E226:  MOV.W           R0, #0xFFFFFFFF
40E22A:  BX              LR
40E22C:  VLDR            S2, [R1]
40E230:  VCMPE.F32       S2, S0
40E234:  VMRS            APSR_nzcv, FPSCR
40E238:  ITT LE
40E23A:  MOVLE.W         R0, #0xFFFFFFFF
40E23E:  BXLE            LR
40E240:  MOVS            R0, #3
40E242:  CMP             R2, #0
40E244:  IT NE
40E246:  MOVNE           R0, #1
40E248:  BX              LR
