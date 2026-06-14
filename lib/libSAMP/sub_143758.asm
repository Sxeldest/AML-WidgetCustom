; =========================================================
; Game Engine Function: sub_143758
; Address            : 0x143758 - 0x1438E0
; =========================================================

143758:  PUSH            {R4-R7,LR}
14375A:  ADD             R7, SP, #0xC
14375C:  PUSH.W          {R8-R11}
143760:  SUB             SP, SP, #0xC
143762:  MOV             R4, R0
143764:  MOV             R6, R2
143766:  LDR             R0, [R0]
143768:  MOV             R5, R3
14376A:  LDR             R2, [R4,#8]
14376C:  MOV             R8, R1
14376E:  CMP             R2, R0
143770:  BGE             loc_14378C
143772:  LDR             R1, [R4,#0xC]
143774:  ASRS            R3, R2, #3
143776:  LDRB            R3, [R1,R3]
143778:  ADDS            R1, R2, #1
14377A:  AND.W           R2, R2, #7
14377E:  STR             R1, [R4,#8]
143780:  LSL.W           R2, R3, R2
143784:  UXTB            R2, R2
143786:  LSRS            R2, R2, #7
143788:  STR             R2, [SP,#0x28+var_28]
14378A:  B               loc_14378E
14378C:  MOV             R1, R2
14378E:  CMP             R1, R0
143790:  BGE             loc_1437AC
143792:  LDR             R2, [R4,#0xC]
143794:  ASRS            R3, R1, #3
143796:  LDRB            R3, [R2,R3]
143798:  ADDS            R2, R1, #1
14379A:  AND.W           R1, R1, #7
14379E:  STR             R2, [R4,#8]
1437A0:  LSL.W           R1, R3, R1
1437A4:  UXTB            R1, R1
1437A6:  MOV.W           R10, R1,LSR#7
1437AA:  B               loc_1437AE
1437AC:  MOV             R2, R1
1437AE:  CMP             R2, R0
1437B0:  BGE             loc_1437CC
1437B2:  LDR             R1, [R4,#0xC]
1437B4:  ASRS            R3, R2, #3
1437B6:  LDRB            R3, [R1,R3]
1437B8:  ADDS            R1, R2, #1
1437BA:  AND.W           R2, R2, #7
1437BE:  STR             R1, [R4,#8]
1437C0:  LSL.W           R2, R3, R2
1437C4:  UXTB            R2, R2
1437C6:  MOV.W           R11, R2,LSR#7
1437CA:  B               loc_1437CE
1437CC:  MOV             R1, R2
1437CE:  CMP             R1, R0
1437D0:  BGE             loc_1437E8
1437D2:  LDR             R0, [R4,#0xC]
1437D4:  ASRS            R2, R1, #3
1437D6:  LDRB            R0, [R0,R2]
1437D8:  ADDS            R2, R1, #1
1437DA:  AND.W           R1, R1, #7
1437DE:  STR             R2, [R4,#8]
1437E0:  LSLS            R0, R1
1437E2:  UXTB            R0, R0
1437E4:  MOV.W           R9, R0,LSR#7
1437E8:  SUB.W           R1, R7, #-var_1E; int
1437EC:  MOV             R0, R4; int
1437EE:  MOVS            R2, #0x10
1437F0:  MOVS            R3, #1
1437F2:  BL              sub_17D786
1437F6:  ADD             R1, SP, #0x28+var_20; int
1437F8:  MOV             R0, R4; int
1437FA:  MOVS            R2, #0x10
1437FC:  MOVS            R3, #1
1437FE:  BL              sub_17D786
143802:  SUB.W           R1, R7, #-var_22; int
143806:  MOV             R0, R4; int
143808:  MOVS            R2, #0x10
14380A:  MOVS            R3, #1
14380C:  BL              sub_17D786
143810:  CMP             R0, #0
143812:  BEQ             loc_1438D8
143814:  LDRH.W          R2, [R7,#var_1E]
143818:  LDRH.W          R3, [R7,#var_22]
14381C:  VLDR            D17, =65535.0
143820:  VMOV            S0, R2
143824:  LDRH.W          R2, [SP,#0x28+var_20]
143828:  LDR             R1, [R7,#arg_0]
14382A:  VCVT.F64.U32    D16, S0
14382E:  VMOV            S0, R2
143832:  MOVS.W          R2, R10,LSL#24
143836:  VDIV.F64        D16, D16, D17
14383A:  VCVT.F64.U32    D18, S0
14383E:  VMOV            S0, R3
143842:  VDIV.F64        D18, D18, D17
143846:  VCVT.F64.U32    D19, S0
14384A:  VDIV.F64        D17, D19, D17
14384E:  VCVT.F32.F64    S0, D16
143852:  VCVT.F32.F64    S2, D18
143856:  VCVT.F32.F64    S4, D17
14385A:  VSTR            S0, [R6]
14385E:  VSTR            S2, [R5]
143862:  VMOV.F32        S2, #1.0
143866:  VSTR            S4, [R1]
14386A:  ITTT NE
14386C:  VLDRNE          S0, [R6]
143870:  VNEGNE.F32      S0, S0
143874:  VSTRNE          S0, [R6]
143878:  MOVS.W          R2, R11,LSL#24
14387C:  ITTT NE
14387E:  VLDRNE          S0, [R5]
143882:  VNEGNE.F32      S0, S0
143886:  VSTRNE          S0, [R5]
14388A:  MOVS.W          R2, R9,LSL#24
14388E:  VLDR            S0, [R1]
143892:  ITT NE
143894:  VNEGNE.F32      S0, S0
143898:  VSTRNE          S0, [R1]
14389C:  VLDR            S4, [R6]
1438A0:  VMLS.F32        S2, S4, S4
1438A4:  VLDR            S4, [R5]
1438A8:  VMLS.F32        S2, S4, S4
1438AC:  VMLS.F32        S2, S0, S0
1438B0:  VLDR            S0, =0.0
1438B4:  VCMP.F32        S2, #0.0
1438B8:  VMRS            APSR_nzcv, FPSCR
1438BC:  IT MI
1438BE:  VMOVMI.F32      S2, S0
1438C2:  VSQRT.F32       S0, S2
1438C6:  LDR             R1, [SP,#0x28+var_28]
1438C8:  LSLS            R1, R1, #0x18
1438CA:  VSTR            S0, [R8]
1438CE:  ITT NE
1438D0:  VNEGNE.F32      S0, S0
1438D4:  VSTRNE          S0, [R8]
1438D8:  ADD             SP, SP, #0xC
1438DA:  POP.W           {R8-R11}
1438DE:  POP             {R4-R7,PC}
