; =========================================================
; Game Engine Function: INT123_synth_2to1_8bit
; Address            : 0x236AB8 - 0x236F5E
; =========================================================

236AB8:  PUSH            {R4-R7,LR}
236ABA:  ADD             R7, SP, #0xC
236ABC:  PUSH.W          {R8-R11}
236AC0:  SUB             SP, SP, #0xC
236AC2:  MOV             R5, R2
236AC4:  MOV             R2, R0
236AC6:  STR             R3, [SP,#0x28+var_20]
236AC8:  MOVW            R12, #0xB2A8
236ACC:  MOVW            R0, #0xB2A0
236AD0:  LDR.W           LR, [R5,R12]
236AD4:  LDR             R6, [R5,R0]
236AD6:  MOVW            R0, #0x4848
236ADA:  LDR             R0, [R5,R0]
236ADC:  CBZ             R0, loc_236B06
236ADE:  ADD.W           R0, R5, R1,LSL#8
236AE2:  MOVW            R4, #0x4850
236AE6:  ADD             R4, R0
236AE8:  MOVS            R0, #0
236AEA:  ADDS            R3, R4, R0
236AEC:  VLDR            D16, [R3]
236AF0:  ADDS            R3, R2, R0
236AF2:  ADDS            R0, #8
236AF4:  VLDR            D17, [R3]
236AF8:  CMP.W           R0, #0x100
236AFC:  VMUL.F64        D16, D17, D16
236B00:  VSTR            D16, [R3]
236B04:  BNE             loc_236AEA
236B06:  ADD.W           R4, R6, LR
236B0A:  MOVW            R0, #0x4838
236B0E:  CBZ             R1, loc_236B1A
236B10:  LDR.W           R10, [R5,R0]
236B14:  ADDS            R4, #1
236B16:  MOVS            R1, #1
236B18:  B               loc_236B28
236B1A:  LDR             R1, [R5,R0]
236B1C:  ADDS            R1, #0xF
236B1E:  AND.W           R10, R1, #0xF
236B22:  STR.W           R10, [R5,R0]
236B26:  MOVS            R1, #0
236B28:  ADD.W           R0, R5, R12
236B2C:  STR             R0, [SP,#0x28+var_28]
236B2E:  ADD.W           R0, R5, R1,LSL#3
236B32:  MOVW            R1, #0x4820
236B36:  ADD             R1, R0
236B38:  MOVS.W          R3, R10,LSL#31
236B3C:  BNE             loc_236B5C
236B3E:  MOVW            R3, #0x4824
236B42:  LDR             R1, [R1]
236B44:  LDR.W           R11, [R0,R3]
236B48:  ADD.W           R0, R1, R10,LSL#3
236B4C:  ADD.W           R1, R11, R10,LSL#3
236B50:  ADDS            R1, #8
236B52:  BLX             j_INT123_dct64
236B56:  ADD.W           R10, R10, #1
236B5A:  B               loc_236B7A
236B5C:  ADD.W           R3, R10, #1
236B60:  LDR.W           R11, [R1]
236B64:  MOVW            R1, #0x4824
236B68:  AND.W           R3, R3, #0xF
236B6C:  LDR             R0, [R0,R1]
236B6E:  ADD.W           R1, R11, R10,LSL#3
236B72:  ADD.W           R0, R0, R3,LSL#3
236B76:  BLX             j_INT123_dct64
236B7A:  MOVW            R0, #0x4844
236B7E:  MOVW            R1, #0x4A7C
236B82:  LDR             R0, [R5,R0]
236B84:  ADD.W           LR, R5, R1
236B88:  VLDR            D16, =32767.0
236B8C:  VLDR            D17, =-32768.0
236B90:  MOVS            R2, #0
236B92:  MOV             R1, R0
236B94:  RSB.W           R0, R10, #0x210
236B98:  MOV             R6, R11
236B9A:  ADD.W           R0, R1, R0,LSL#3
236B9E:  STR             R0, [SP,#0x28+var_24]
236BA0:  RSB.W           R0, R10, #0x1D0
236BA4:  ADD.W           R12, R1, R0,LSL#3
236BA8:  SUB.W           R0, R1, R10,LSL#3
236BAC:  ADD.W           R5, R0, #0x80
236BB0:  MOVS            R0, #0
236BB2:  VLDM            R6, {D18-D21}
236BB6:  VLDM            R5, {D22-D25}
236BBA:  VMUL.F64        D19, D23, D19
236BBE:  VMUL.F64        D18, D22, D18
236BC2:  VMUL.F64        D20, D24, D20
236BC6:  VSUB.F64        D18, D18, D19
236BCA:  VMUL.F64        D21, D25, D21
236BCE:  VADD.F64        D18, D18, D20
236BD2:  VLDR            D19, [R6,#0x20]
236BD6:  VLDR            D22, [R5,#0x20]
236BDA:  VSUB.F64        D18, D18, D21
236BDE:  VMUL.F64        D19, D22, D19
236BE2:  VLDR            D20, [R6,#0x28]
236BE6:  VLDR            D23, [R5,#0x28]
236BEA:  VADD.F64        D18, D18, D19
236BEE:  VMUL.F64        D20, D23, D20
236BF2:  VLDR            D21, [R6,#0x30]
236BF6:  VLDR            D22, [R5,#0x30]
236BFA:  VSUB.F64        D18, D18, D20
236BFE:  VMUL.F64        D21, D22, D21
236C02:  VLDR            D19, [R6,#0x38]
236C06:  VLDR            D23, [R5,#0x38]
236C0A:  VADD.F64        D18, D18, D21
236C0E:  VMUL.F64        D19, D23, D19
236C12:  VLDR            D20, [R6,#0x40]
236C16:  VLDR            D22, [R5,#0x40]
236C1A:  VSUB.F64        D18, D18, D19
236C1E:  VMUL.F64        D20, D22, D20
236C22:  VLDR            D21, [R6,#0x48]
236C26:  VLDR            D23, [R5,#0x48]
236C2A:  VADD.F64        D18, D18, D20
236C2E:  VMUL.F64        D21, D23, D21
236C32:  VLDR            D19, [R6,#0x50]
236C36:  VLDR            D22, [R5,#0x50]
236C3A:  VSUB.F64        D18, D18, D21
236C3E:  VMUL.F64        D19, D22, D19
236C42:  VLDR            D20, [R6,#0x58]
236C46:  VLDR            D23, [R5,#0x58]
236C4A:  VADD.F64        D18, D18, D19
236C4E:  VMUL.F64        D20, D23, D20
236C52:  VLDR            D21, [R6,#0x60]
236C56:  VLDR            D22, [R5,#0x60]
236C5A:  VSUB.F64        D18, D18, D20
236C5E:  VMUL.F64        D21, D22, D21
236C62:  VLDR            D19, [R6,#0x68]
236C66:  VLDR            D23, [R5,#0x68]
236C6A:  VADD.F64        D18, D18, D21
236C6E:  VMUL.F64        D19, D23, D19
236C72:  VLDR            D20, [R6,#0x70]
236C76:  VLDR            D22, [R5,#0x70]
236C7A:  VSUB.F64        D18, D18, D19
236C7E:  VMUL.F64        D20, D22, D20
236C82:  VLDR            D21, [R6,#0x78]
236C86:  VLDR            D23, [R5,#0x78]
236C8A:  VADD.F64        D18, D18, D20
236C8E:  VMUL.F64        D19, D23, D21
236C92:  VSUB.F64        D18, D18, D19
236C96:  VCMPE.F64       D18, D16
236C9A:  VMRS            APSR_nzcv, FPSCR
236C9E:  BLE             loc_236CA8
236CA0:  ADDS            R0, #1
236CA2:  MOVW            R8, #0x7FFF
236CA6:  B               loc_236CC2
236CA8:  VCMPE.F64       D18, D17
236CAC:  VMRS            APSR_nzcv, FPSCR
236CB0:  BGE             loc_236CBA
236CB2:  ADDS            R0, #1
236CB4:  MOV.W           R8, #0x8000
236CB8:  B               loc_236CC2
236CBA:  VCVT.S32.F64    S0, D18
236CBE:  VMOV            R8, S0
236CC2:  LDR.W           R9, [LR]
236CC6:  SXTH.W          R3, R8
236CCA:  ASRS            R3, R3, #3
236CCC:  ADD.W           R6, R6, #0x100
236CD0:  ADD.W           R5, R5, #0x200
236CD4:  LDRB.W          R3, [R9,R3]
236CD8:  STRB.W          R3, [R4,R2,LSL#1]
236CDC:  ADDS            R2, #1
236CDE:  CMP             R2, #8
236CE0:  BNE.W           loc_236BB2
236CE4:  LDR             R2, [SP,#0x28+var_24]
236CE6:  ADD.W           R3, R11, #0x700
236CEA:  VLDR            D18, [R12,#0x210]
236CEE:  VLDR            D19, [R12,#0x220]
236CF2:  VLDR            D22, [R2]
236CF6:  ADD.W           R2, R11, #0x810
236CFA:  VLDR            D20, [R12,#0x230]
236CFE:  VLDR            D23, [R2]
236D02:  ADD.W           R2, R11, #0x800
236D06:  VLDR            D21, [R12,#0x240]
236D0A:  VLDR            D24, [R2]
236D0E:  ADD.W           R2, R11, #0x820
236D12:  VMUL.F64        D18, D18, D23
236D16:  VMUL.F64        D22, D22, D24
236D1A:  VLDR            D23, [R2]
236D1E:  ADD.W           R2, R11, #0x830
236D22:  VADD.F64        D18, D22, D18
236D26:  VMUL.F64        D19, D19, D23
236D2A:  VLDR            D24, [R2]
236D2E:  ADD.W           R2, R11, #0x840
236D32:  VADD.F64        D18, D18, D19
236D36:  VMUL.F64        D20, D20, D24
236D3A:  VLDR            D22, [R2]
236D3E:  ADD.W           R2, R11, #0x850
236D42:  VADD.F64        D18, D18, D20
236D46:  VMUL.F64        D21, D21, D22
236D4A:  VLDR            D23, [R2]
236D4E:  ADD.W           R2, R11, #0x860
236D52:  VLDR            D19, [R12,#0x250]
236D56:  VADD.F64        D18, D18, D21
236D5A:  VMUL.F64        D19, D19, D23
236D5E:  VLDR            D22, [R2]
236D62:  ADD.W           R2, R11, #0x870
236D66:  VLDR            D21, [R12,#0x260]
236D6A:  VADD.F64        D18, D18, D19
236D6E:  VMUL.F64        D21, D21, D22
236D72:  VLDR            D20, [R12,#0x270]
236D76:  VLDR            D23, [R2]
236D7A:  VADD.F64        D18, D18, D21
236D7E:  VMUL.F64        D19, D20, D23
236D82:  VADD.F64        D18, D18, D19
236D86:  VCMPE.F64       D18, D16
236D8A:  VMRS            APSR_nzcv, FPSCR
236D8E:  BLE             loc_236D98
236D90:  ADDS            R0, #1
236D92:  MOVW            R2, #0x7FFF
236D96:  B               loc_236DB2
236D98:  VCMPE.F64       D18, D17
236D9C:  VMRS            APSR_nzcv, FPSCR
236DA0:  BGE             loc_236DAA
236DA2:  ADDS            R0, #1
236DA4:  MOV.W           R2, #0x8000
236DA8:  B               loc_236DB2
236DAA:  VCVT.S32.F64    S0, D18
236DAE:  VMOV            R2, S0
236DB2:  LDR.W           R6, [LR]
236DB6:  SXTH            R2, R2
236DB8:  ASRS            R2, R2, #3
236DBA:  MOVS            R5, #0
236DBC:  LDRB            R2, [R6,R2]
236DBE:  ADD.W           R6, R4, #0x12
236DC2:  STRB            R2, [R4,#0x10]
236DC4:  ADD.W           R2, R1, R10,LSL#3
236DC8:  ADDS            R4, R2, R5
236DCA:  VLDM            R3, {D18-D21}
236DCE:  ADD.W           R1, R4, #0xE70
236DD2:  VLDR            D22, [R1]
236DD6:  ADDW            R1, R4, #0xE78
236DDA:  VLDR            D23, [R1]
236DDE:  ADDW            R1, R4, #0xE68
236DE2:  VMUL.F64        D19, D22, D19
236DE6:  VNMUL.F64       D18, D23, D18
236DEA:  VLDR            D22, [R1]
236DEE:  ADD.W           R1, R4, #0xE60
236DF2:  VSUB.F64        D18, D18, D19
236DF6:  VMUL.F64        D20, D22, D20
236DFA:  VLDR            D23, [R1]
236DFE:  ADDW            R1, R4, #0xE58
236E02:  VSUB.F64        D18, D18, D20
236E06:  VMUL.F64        D19, D23, D21
236E0A:  VLDR            D22, [R1]
236E0E:  ADD.W           R1, R4, #0xE50
236E12:  VLDR            D21, [R3,#0x20]
236E16:  VSUB.F64        D18, D18, D19
236E1A:  VMUL.F64        D21, D22, D21
236E1E:  VLDR            D23, [R1]
236E22:  ADDW            R1, R4, #0xE48
236E26:  VLDR            D20, [R3,#0x28]
236E2A:  VSUB.F64        D18, D18, D21
236E2E:  VMUL.F64        D19, D23, D20
236E32:  VLDR            D22, [R1]
236E36:  ADD.W           R1, R4, #0xE40
236E3A:  VLDR            D21, [R3,#0x30]
236E3E:  VSUB.F64        D18, D18, D19
236E42:  VMUL.F64        D21, D22, D21
236E46:  VLDR            D23, [R1]
236E4A:  ADDW            R1, R4, #0xE38
236E4E:  VLDR            D20, [R3,#0x38]
236E52:  VSUB.F64        D18, D18, D21
236E56:  VMUL.F64        D19, D23, D20
236E5A:  VLDR            D22, [R1]
236E5E:  ADD.W           R1, R4, #0xE30
236E62:  VLDR            D21, [R3,#0x40]
236E66:  VSUB.F64        D18, D18, D19
236E6A:  VMUL.F64        D21, D22, D21
236E6E:  VLDR            D23, [R1]
236E72:  ADDW            R1, R4, #0xE28
236E76:  VLDR            D20, [R3,#0x48]
236E7A:  VSUB.F64        D18, D18, D21
236E7E:  VMUL.F64        D19, D23, D20
236E82:  VLDR            D22, [R1]
236E86:  ADD.W           R1, R4, #0xE20
236E8A:  VLDR            D21, [R3,#0x50]
236E8E:  VSUB.F64        D18, D18, D19
236E92:  VMUL.F64        D21, D22, D21
236E96:  VLDR            D23, [R1]
236E9A:  ADDW            R1, R4, #0xE18
236E9E:  VLDR            D20, [R3,#0x58]
236EA2:  VSUB.F64        D18, D18, D21
236EA6:  VMUL.F64        D19, D23, D20
236EAA:  VLDR            D22, [R1]
236EAE:  ADD.W           R1, R4, #0xE10
236EB2:  VLDR            D21, [R3,#0x60]
236EB6:  VSUB.F64        D18, D18, D19
236EBA:  VMUL.F64        D21, D22, D21
236EBE:  VLDR            D23, [R1]
236EC2:  ADDW            R1, R4, #0xE08
236EC6:  VLDR            D20, [R3,#0x68]
236ECA:  VSUB.F64        D18, D18, D21
236ECE:  VMUL.F64        D19, D23, D20
236ED2:  VLDR            D22, [R1]
236ED6:  ADD.W           R1, R4, #0xE00
236EDA:  VLDR            D21, [R3,#0x70]
236EDE:  VSUB.F64        D18, D18, D19
236EE2:  VMUL.F64        D21, D22, D21
236EE6:  VLDR            D20, [R3,#0x78]
236EEA:  VLDR            D23, [R1]
236EEE:  VSUB.F64        D18, D18, D21
236EF2:  VMUL.F64        D19, D23, D20
236EF6:  VSUB.F64        D18, D18, D19
236EFA:  VCMPE.F64       D18, D16
236EFE:  VMRS            APSR_nzcv, FPSCR
236F02:  BLE             loc_236F0C
236F04:  ADDS            R0, #1
236F06:  MOVW            R4, #0x7FFF
236F0A:  B               loc_236F26
236F0C:  VCMPE.F64       D18, D17
236F10:  VMRS            APSR_nzcv, FPSCR
236F14:  BGE             loc_236F1E
236F16:  ADDS            R0, #1
236F18:  MOV.W           R4, #0x8000
236F1C:  B               loc_236F26
236F1E:  VCVT.S32.F64    S0, D18
236F22:  VMOV            R4, S0
236F26:  LDR.W           R1, [LR]
236F2A:  SXTH            R4, R4
236F2C:  ASRS            R4, R4, #3
236F2E:  SUB.W           R5, R5, #0x200
236F32:  SUB.W           R3, R3, #0x100
236F36:  CMN.W           R5, #0xE00
236F3A:  LDRB            R1, [R1,R4]
236F3C:  STRB.W          R1, [R6],#2
236F40:  BNE.W           loc_236DC8
236F44:  LDR             R1, [SP,#0x28+var_20]
236F46:  CMP             R1, #0
236F48:  ITTTT NE
236F4A:  LDRNE           R1, [SP,#0x28+var_28]
236F4C:  MOVNE           R2, R1
236F4E:  LDRNE           R1, [R2]
236F50:  ADDNE           R1, #0x20 ; ' '
236F52:  IT NE
236F54:  STRNE           R1, [R2]
236F56:  ADD             SP, SP, #0xC
236F58:  POP.W           {R8-R11}
236F5C:  POP             {R4-R7,PC}
