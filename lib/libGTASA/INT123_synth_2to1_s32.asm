; =========================================================
; Game Engine Function: INT123_synth_2to1_s32
; Address            : 0x239B58 - 0x239FF4
; =========================================================

239B58:  PUSH            {R4-R7,LR}
239B5A:  ADD             R7, SP, #0xC
239B5C:  PUSH.W          {R8-R11}
239B60:  SUB             SP, SP, #0xC
239B62:  MOV             R5, R2
239B64:  MOV             R2, R0
239B66:  STR             R3, [SP,#0x28+var_20]
239B68:  MOVW            R12, #0xB2A8
239B6C:  MOVW            R0, #0xB2A0
239B70:  LDR.W           LR, [R5,R12]
239B74:  LDR             R6, [R5,R0]
239B76:  MOVW            R0, #0x4848
239B7A:  LDR             R0, [R5,R0]
239B7C:  CBZ             R0, loc_239BA6
239B7E:  ADD.W           R0, R5, R1,LSL#8
239B82:  MOVW            R4, #0x4850
239B86:  ADD             R4, R0
239B88:  MOVS            R0, #0
239B8A:  ADDS            R3, R4, R0
239B8C:  VLDR            D16, [R3]
239B90:  ADDS            R3, R2, R0
239B92:  ADDS            R0, #8
239B94:  VLDR            D17, [R3]
239B98:  CMP.W           R0, #0x100
239B9C:  VMUL.F64        D16, D17, D16
239BA0:  VSTR            D16, [R3]
239BA4:  BNE             loc_239B8A
239BA6:  ADD.W           R4, R6, LR
239BAA:  MOVW            R0, #0x4838
239BAE:  CBZ             R1, loc_239BBA
239BB0:  LDR.W           R10, [R5,R0]
239BB4:  ADDS            R4, #4
239BB6:  MOVS            R1, #1
239BB8:  B               loc_239BC8
239BBA:  LDR             R1, [R5,R0]
239BBC:  ADDS            R1, #0xF
239BBE:  AND.W           R10, R1, #0xF
239BC2:  STR.W           R10, [R5,R0]
239BC6:  MOVS            R1, #0
239BC8:  ADD.W           R0, R5, R12
239BCC:  STR             R0, [SP,#0x28+var_28]
239BCE:  ADD.W           R0, R5, R1,LSL#3
239BD2:  MOVW            R1, #0x4820
239BD6:  ADD             R1, R0
239BD8:  MOVS.W          R3, R10,LSL#31
239BDC:  BNE             loc_239BFC
239BDE:  MOVW            R3, #0x4824
239BE2:  LDR             R1, [R1]
239BE4:  LDR.W           R8, [R0,R3]
239BE8:  ADD.W           R0, R1, R10,LSL#3
239BEC:  ADD.W           R1, R8, R10,LSL#3
239BF0:  ADDS            R1, #8
239BF2:  BLX             j_INT123_dct64
239BF6:  ADD.W           R10, R10, #1
239BFA:  B               loc_239C1A
239BFC:  ADD.W           R3, R10, #1
239C00:  LDR.W           R8, [R1]
239C04:  MOVW            R1, #0x4824
239C08:  AND.W           R3, R3, #0xF
239C0C:  LDR             R0, [R0,R1]
239C0E:  ADD.W           R1, R8, R10,LSL#3
239C12:  ADD.W           R0, R0, R3,LSL#3
239C16:  BLX             j_INT123_dct64
239C1A:  MOVW            R0, #0x4844
239C1E:  VLDR            D16, =65536.0
239C22:  LDR.W           LR, [R5,R0]
239C26:  RSB.W           R0, R10, #0x1D0
239C2A:  VLDR            D17, =2.14748365e9
239C2E:  ADD.W           R2, LR, R0,LSL#3
239C32:  SUB.W           R0, LR, R10,LSL#3
239C36:  ADD.W           R5, R0, #0x80
239C3A:  RSB.W           R0, R10, #0x210
239C3E:  VLDR            D18, =-2.14748365e9
239C42:  MOVS            R3, #0
239C44:  STR             R0, [SP,#0x28+var_24]
239C46:  MOV             R1, #0x7FFFFFFF
239C4A:  MOV.W           R11, #0x80000000
239C4E:  MOV             R6, R8
239C50:  MOVS            R0, #0
239C52:  VLDM            R6, {D19-D22}
239C56:  MOV.W           R9, R3,LSL#1
239C5A:  VLDM            R5, {D23-D26}
239C5E:  VMUL.F64        D20, D24, D20
239C62:  VMUL.F64        D19, D23, D19
239C66:  VMUL.F64        D21, D25, D21
239C6A:  VSUB.F64        D19, D19, D20
239C6E:  VMUL.F64        D22, D26, D22
239C72:  VADD.F64        D19, D19, D21
239C76:  VLDR            D20, [R6,#0x20]
239C7A:  VLDR            D23, [R5,#0x20]
239C7E:  VSUB.F64        D19, D19, D22
239C82:  VMUL.F64        D20, D23, D20
239C86:  VLDR            D21, [R6,#0x28]
239C8A:  VLDR            D24, [R5,#0x28]
239C8E:  VADD.F64        D19, D19, D20
239C92:  VMUL.F64        D21, D24, D21
239C96:  VLDR            D22, [R6,#0x30]
239C9A:  VLDR            D23, [R5,#0x30]
239C9E:  VSUB.F64        D19, D19, D21
239CA2:  VMUL.F64        D22, D23, D22
239CA6:  VLDR            D20, [R6,#0x38]
239CAA:  VLDR            D24, [R5,#0x38]
239CAE:  VADD.F64        D19, D19, D22
239CB2:  VMUL.F64        D20, D24, D20
239CB6:  VLDR            D21, [R6,#0x40]
239CBA:  VLDR            D23, [R5,#0x40]
239CBE:  VSUB.F64        D19, D19, D20
239CC2:  VMUL.F64        D21, D23, D21
239CC6:  VLDR            D22, [R6,#0x48]
239CCA:  VLDR            D24, [R5,#0x48]
239CCE:  VADD.F64        D19, D19, D21
239CD2:  VMUL.F64        D22, D24, D22
239CD6:  VLDR            D20, [R6,#0x50]
239CDA:  VLDR            D23, [R5,#0x50]
239CDE:  VSUB.F64        D19, D19, D22
239CE2:  VMUL.F64        D20, D23, D20
239CE6:  VLDR            D21, [R6,#0x58]
239CEA:  VLDR            D24, [R5,#0x58]
239CEE:  VADD.F64        D19, D19, D20
239CF2:  VMUL.F64        D21, D24, D21
239CF6:  VLDR            D22, [R6,#0x60]
239CFA:  VLDR            D23, [R5,#0x60]
239CFE:  VSUB.F64        D19, D19, D21
239D02:  VMUL.F64        D22, D23, D22
239D06:  VLDR            D20, [R6,#0x68]
239D0A:  VLDR            D24, [R5,#0x68]
239D0E:  VADD.F64        D19, D19, D22
239D12:  VMUL.F64        D20, D24, D20
239D16:  VLDR            D21, [R6,#0x70]
239D1A:  VLDR            D23, [R5,#0x70]
239D1E:  VSUB.F64        D19, D19, D20
239D22:  VMUL.F64        D21, D23, D21
239D26:  VLDR            D22, [R6,#0x78]
239D2A:  VLDR            D24, [R5,#0x78]
239D2E:  VADD.F64        D19, D19, D21
239D32:  VMUL.F64        D20, D24, D22
239D36:  VSUB.F64        D19, D19, D20
239D3A:  VMUL.F64        D19, D19, D16
239D3E:  VCMPE.F64       D19, D17
239D42:  VMRS            APSR_nzcv, FPSCR
239D46:  BLE             loc_239D50
239D48:  STR.W           R1, [R4,R9,LSL#2]
239D4C:  ADDS            R0, #1
239D4E:  B               loc_239D6E
239D50:  VCMPE.F64       D19, D18
239D54:  VMRS            APSR_nzcv, FPSCR
239D58:  BGE             loc_239D62
239D5A:  STR.W           R11, [R4,R9,LSL#2]
239D5E:  ADDS            R0, #1
239D60:  B               loc_239D6E
239D62:  VCVT.S32.F64    S0, D19
239D66:  VMOV            R12, S0
239D6A:  STR.W           R12, [R4,R9,LSL#2]
239D6E:  ADDS            R3, #1
239D70:  ADD.W           R6, R6, #0x100
239D74:  ADD.W           R5, R5, #0x200
239D78:  CMP             R3, #8
239D7A:  BNE.W           loc_239C52
239D7E:  LDR             R1, [SP,#0x28+var_24]
239D80:  ADD.W           R3, R8, #0x810
239D84:  VLDR            D19, [R2,#0x210]
239D88:  VLDR            D24, [R3]
239D8C:  ADD.W           R1, LR, R1,LSL#3
239D90:  VLDR            D20, [R2,#0x220]
239D94:  VMUL.F64        D19, D19, D24
239D98:  VLDR            D23, [R1]
239D9C:  ADD.W           R1, R8, #0x800
239DA0:  VLDR            D21, [R2,#0x230]
239DA4:  VLDR            D25, [R1]
239DA8:  ADD.W           R1, R8, #0x820
239DAC:  VLDR            D22, [R2,#0x240]
239DB0:  VMUL.F64        D23, D23, D25
239DB4:  VLDR            D24, [R1]
239DB8:  ADD.W           R1, R8, #0x830
239DBC:  VADD.F64        D19, D23, D19
239DC0:  VMUL.F64        D20, D20, D24
239DC4:  VLDR            D25, [R1]
239DC8:  ADD.W           R1, R8, #0x840
239DCC:  VADD.F64        D19, D19, D20
239DD0:  VMUL.F64        D21, D21, D25
239DD4:  VLDR            D23, [R1]
239DD8:  ADD.W           R1, R8, #0x850
239DDC:  VADD.F64        D19, D19, D21
239DE0:  VMUL.F64        D22, D22, D23
239DE4:  VLDR            D24, [R1]
239DE8:  ADD.W           R1, R8, #0x860
239DEC:  VLDR            D20, [R2,#0x250]
239DF0:  VADD.F64        D19, D19, D22
239DF4:  VMUL.F64        D20, D20, D24
239DF8:  VLDR            D23, [R1]
239DFC:  ADD.W           R1, R8, #0x870
239E00:  VLDR            D22, [R2,#0x260]
239E04:  VADD.F64        D19, D19, D20
239E08:  VMUL.F64        D22, D22, D23
239E0C:  VLDR            D21, [R2,#0x270]
239E10:  ADD.W           R2, R8, #0x700
239E14:  VLDR            D24, [R1]
239E18:  VADD.F64        D19, D19, D22
239E1C:  VMUL.F64        D20, D21, D24
239E20:  VADD.F64        D19, D19, D20
239E24:  VMUL.F64        D19, D19, D16
239E28:  VCMPE.F64       D19, D17
239E2C:  VMRS            APSR_nzcv, FPSCR
239E30:  BLE             loc_239E38
239E32:  MOV             R1, #0x7FFFFFFF
239E36:  B               loc_239E46
239E38:  VCMPE.F64       D19, D18
239E3C:  VMRS            APSR_nzcv, FPSCR
239E40:  BGE             loc_239E4C
239E42:  MOV.W           R1, #0x80000000
239E46:  STR             R1, [R4,#0x40]
239E48:  ADDS            R0, #1
239E4A:  B               loc_239E54
239E4C:  VCVT.S32.F64    S0, D19
239E50:  VSTR            S0, [R4,#0x40]
239E54:  ADD.W           R1, LR, R10,LSL#3
239E58:  ADD.W           R3, R4, #0x48 ; 'H'
239E5C:  MOVS            R6, #0
239E5E:  MOV             LR, #0x7FFFFFFF
239E62:  MOV.W           R12, #0x80000000
239E66:  ADDS            R4, R1, R6
239E68:  VLDM            R2, {D19-D22}
239E6C:  ADD.W           R5, R4, #0xE70
239E70:  VLDR            D23, [R5]
239E74:  ADDW            R5, R4, #0xE78
239E78:  VLDR            D24, [R5]
239E7C:  ADDW            R5, R4, #0xE68
239E80:  VMUL.F64        D20, D23, D20
239E84:  VNMUL.F64       D19, D24, D19
239E88:  VLDR            D23, [R5]
239E8C:  ADD.W           R5, R4, #0xE60
239E90:  VSUB.F64        D19, D19, D20
239E94:  VMUL.F64        D21, D23, D21
239E98:  VLDR            D24, [R5]
239E9C:  ADDW            R5, R4, #0xE58
239EA0:  VSUB.F64        D19, D19, D21
239EA4:  VMUL.F64        D20, D24, D22
239EA8:  VLDR            D23, [R5]
239EAC:  ADD.W           R5, R4, #0xE50
239EB0:  VLDR            D22, [R2,#0x20]
239EB4:  VSUB.F64        D19, D19, D20
239EB8:  VMUL.F64        D22, D23, D22
239EBC:  VLDR            D24, [R5]
239EC0:  ADDW            R5, R4, #0xE48
239EC4:  VLDR            D21, [R2,#0x28]
239EC8:  VSUB.F64        D19, D19, D22
239ECC:  VMUL.F64        D20, D24, D21
239ED0:  VLDR            D23, [R5]
239ED4:  ADD.W           R5, R4, #0xE40
239ED8:  VLDR            D22, [R2,#0x30]
239EDC:  VSUB.F64        D19, D19, D20
239EE0:  VMUL.F64        D22, D23, D22
239EE4:  VLDR            D24, [R5]
239EE8:  ADDW            R5, R4, #0xE38
239EEC:  VLDR            D21, [R2,#0x38]
239EF0:  VSUB.F64        D19, D19, D22
239EF4:  VMUL.F64        D20, D24, D21
239EF8:  VLDR            D23, [R5]
239EFC:  ADD.W           R5, R4, #0xE30
239F00:  VLDR            D22, [R2,#0x40]
239F04:  VSUB.F64        D19, D19, D20
239F08:  VMUL.F64        D22, D23, D22
239F0C:  VLDR            D24, [R5]
239F10:  ADDW            R5, R4, #0xE28
239F14:  VLDR            D21, [R2,#0x48]
239F18:  VSUB.F64        D19, D19, D22
239F1C:  VMUL.F64        D20, D24, D21
239F20:  VLDR            D23, [R5]
239F24:  ADD.W           R5, R4, #0xE20
239F28:  VLDR            D22, [R2,#0x50]
239F2C:  VSUB.F64        D19, D19, D20
239F30:  VMUL.F64        D22, D23, D22
239F34:  VLDR            D24, [R5]
239F38:  ADDW            R5, R4, #0xE18
239F3C:  VLDR            D21, [R2,#0x58]
239F40:  VSUB.F64        D19, D19, D22
239F44:  VMUL.F64        D20, D24, D21
239F48:  VLDR            D23, [R5]
239F4C:  ADD.W           R5, R4, #0xE10
239F50:  VLDR            D22, [R2,#0x60]
239F54:  VSUB.F64        D19, D19, D20
239F58:  VMUL.F64        D22, D23, D22
239F5C:  VLDR            D24, [R5]
239F60:  ADDW            R5, R4, #0xE08
239F64:  VLDR            D21, [R2,#0x68]
239F68:  ADD.W           R4, R4, #0xE00
239F6C:  VSUB.F64        D19, D19, D22
239F70:  VMUL.F64        D20, D24, D21
239F74:  VLDR            D22, [R2,#0x70]
239F78:  VLDR            D23, [R5]
239F7C:  VSUB.F64        D19, D19, D20
239F80:  VMUL.F64        D22, D23, D22
239F84:  VLDR            D21, [R2,#0x78]
239F88:  VLDR            D24, [R4]
239F8C:  VSUB.F64        D19, D19, D22
239F90:  VMUL.F64        D20, D24, D21
239F94:  VSUB.F64        D19, D19, D20
239F98:  VMUL.F64        D19, D19, D16
239F9C:  VCMPE.F64       D19, D17
239FA0:  VMRS            APSR_nzcv, FPSCR
239FA4:  BLE             loc_239FAE
239FA6:  STR.W           LR, [R3]
239FAA:  ADDS            R0, #1
239FAC:  B               loc_239FC8
239FAE:  VCMPE.F64       D19, D18
239FB2:  VMRS            APSR_nzcv, FPSCR
239FB6:  BGE             loc_239FC0
239FB8:  STR.W           R12, [R3]
239FBC:  ADDS            R0, #1
239FBE:  B               loc_239FC8
239FC0:  VCVT.S32.F64    S0, D19
239FC4:  VSTR            S0, [R3]
239FC8:  SUB.W           R6, R6, #0x200
239FCC:  SUB.W           R2, R2, #0x100
239FD0:  ADDS            R3, #8
239FD2:  CMN.W           R6, #0xE00
239FD6:  BNE.W           loc_239E66
239FDA:  LDR             R1, [SP,#0x28+var_20]
239FDC:  CMP             R1, #0
239FDE:  ITTTT NE
239FE0:  LDRNE           R1, [SP,#0x28+var_28]
239FE2:  MOVNE           R2, R1
239FE4:  LDRNE           R1, [R2]
239FE6:  ADDNE           R1, #0x80
239FE8:  IT NE
239FEA:  STRNE           R1, [R2]
239FEC:  ADD             SP, SP, #0xC
239FEE:  POP.W           {R8-R11}
239FF2:  POP             {R4-R7,PC}
