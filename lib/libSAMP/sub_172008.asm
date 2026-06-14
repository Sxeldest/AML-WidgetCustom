; =========================================================
; Game Engine Function: sub_172008
; Address            : 0x172008 - 0x172126
; =========================================================

172008:  VMOV.F32        S0, #-1.0
17200C:  VLDR            S2, [R0,#0x1F0]
172010:  VMOV.F32        S8, #1.0
172014:  VLDR            S6, [R0,#0x1F8]
172018:  VLDR            S4, [R0,#0x1F4]
17201C:  VLDR            S10, [R0,#0x1FC]
172020:  VLDR            S14, [R1]
172024:  VADD.F32        S1, S2, S0
172028:  VADD.F32        S2, S10, S8
17202C:  VLDR            S10, [R1,#8]
172030:  VADD.F32        S12, S6, S8
172034:  VADD.F32        S6, S4, S0
172038:  VLDR            S4, [R1,#4]
17203C:  VLDR            S0, [R1,#0xC]
172040:  VCMP.F32        S14, S1
172044:  VMRS            APSR_nzcv, FPSCR
172048:  ITT GE
17204A:  VCMPGE.F32      S4, S6
17204E:  VMRSGE          APSR_nzcv, FPSCR
172052:  BGE             loc_17208C
172054:  LDR             R1, =(dword_381B58 - 0x17205E)
172056:  LDRB.W          R2, [R0,#0x78]
17205A:  ADD             R1, PC; dword_381B58
17205C:  LDR             R1, [R1]
17205E:  ADD.W           R1, R1, #0x1560
172062:  CBZ             R2, loc_1720CC
172064:  VCMP.F32        S14, S1
172068:  VMRS            APSR_nzcv, FPSCR
17206C:  BPL             loc_1720A2
17206E:  VLDR            S8, [R0,#0xC]
172072:  VLDR            S10, [R0,#0x58]
172076:  VSUB.F32        S8, S14, S8
17207A:  VADD.F32        S8, S8, S10
17207E:  VLDR            S10, [R1]
172082:  VSUB.F32        S10, S8, S10
172086:  VLDR            S8, =0.0
17208A:  B               loc_1720C4
17208C:  VCMP.F32        S10, S12
172090:  VMRS            APSR_nzcv, FPSCR
172094:  ITT LS
172096:  VCMPLS.F32      S0, S2
17209A:  VMRSLS          APSR_nzcv, FPSCR
17209E:  BHI             loc_172054
1720A0:  BX              LR
1720A2:  VCMP.F32        S10, S12
1720A6:  VMRS            APSR_nzcv, FPSCR
1720AA:  BLT             loc_1720CC
1720AC:  VLDR            S12, [R0,#0xC]
1720B0:  VLDR            S14, [R0,#0x58]
1720B4:  VSUB.F32        S10, S10, S12
1720B8:  VLDR            S12, [R1]
1720BC:  VADD.F32        S10, S10, S14
1720C0:  VADD.F32        S10, S10, S12
1720C4:  VSTR            S8, [R0,#0x68]
1720C8:  VSTR            S10, [R0,#0x60]
1720CC:  VCMP.F32        S4, S6
1720D0:  VMRS            APSR_nzcv, FPSCR
1720D4:  BPL             loc_1720F4
1720D6:  VLDR            S0, [R0,#0x10]
1720DA:  VLDR            S2, [R0,#0x5C]
1720DE:  VSUB.F32        S0, S4, S0
1720E2:  VADD.F32        S0, S0, S2
1720E6:  VLDR            S2, [R1,#4]
1720EA:  VSUB.F32        S0, S0, S2
1720EE:  VLDR            S2, =0.0
1720F2:  B               loc_17211C
1720F4:  VCMP.F32        S0, S2
1720F8:  VMRS            APSR_nzcv, FPSCR
1720FC:  IT LT
1720FE:  BXLT            LR
172100:  VLDR            S2, [R0,#0x10]
172104:  VLDR            S4, [R0,#0x5C]
172108:  VSUB.F32        S0, S0, S2
17210C:  VMOV.F32        S2, #1.0
172110:  VADD.F32        S0, S0, S4
172114:  VLDR            S4, [R1,#4]
172118:  VADD.F32        S0, S0, S4
17211C:  VSTR            S2, [R0,#0x6C]
172120:  VSTR            S0, [R0,#0x64]
172124:  BX              LR
