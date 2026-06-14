; =========================================================
; Game Engine Function: INT123_synth_1to1
; Address            : 0x234AB0 - 0x234F40
; =========================================================

234AB0:  PUSH            {R4-R7,LR}
234AB2:  ADD             R7, SP, #0xC
234AB4:  PUSH.W          {R8-R11}
234AB8:  SUB             SP, SP, #0xC
234ABA:  MOV             R5, R2
234ABC:  MOV             R2, R0
234ABE:  STR             R3, [SP,#0x28+var_20]
234AC0:  MOVW            R12, #0xB2A8
234AC4:  MOVW            R0, #0xB2A0
234AC8:  LDR.W           LR, [R5,R12]
234ACC:  LDR             R6, [R5,R0]
234ACE:  MOVW            R0, #0x4848
234AD2:  LDR             R0, [R5,R0]
234AD4:  CBZ             R0, loc_234AFE
234AD6:  ADD.W           R0, R5, R1,LSL#8
234ADA:  MOVW            R4, #0x4850
234ADE:  ADD             R4, R0
234AE0:  MOVS            R0, #0
234AE2:  ADDS            R3, R4, R0
234AE4:  VLDR            D16, [R3]
234AE8:  ADDS            R3, R2, R0
234AEA:  ADDS            R0, #8
234AEC:  VLDR            D17, [R3]
234AF0:  CMP.W           R0, #0x100
234AF4:  VMUL.F64        D16, D17, D16
234AF8:  VSTR            D16, [R3]
234AFC:  BNE             loc_234AE2
234AFE:  ADD.W           R4, R6, LR
234B02:  MOVW            R0, #0x4838
234B06:  CBZ             R1, loc_234B12
234B08:  LDR.W           R10, [R5,R0]
234B0C:  ADDS            R4, #2
234B0E:  MOVS            R1, #1
234B10:  B               loc_234B20
234B12:  LDR             R1, [R5,R0]
234B14:  ADDS            R1, #0xF
234B16:  AND.W           R10, R1, #0xF
234B1A:  STR.W           R10, [R5,R0]
234B1E:  MOVS            R1, #0
234B20:  ADD.W           R0, R5, R12
234B24:  STR             R0, [SP,#0x28+var_28]
234B26:  ADD.W           R0, R5, R1,LSL#3
234B2A:  MOVW            R1, #0x4820
234B2E:  ADD             R1, R0
234B30:  MOVS.W          R3, R10,LSL#31
234B34:  BNE             loc_234B54
234B36:  MOVW            R3, #0x4824
234B3A:  LDR             R1, [R1]
234B3C:  LDR.W           R8, [R0,R3]
234B40:  ADD.W           R0, R1, R10,LSL#3
234B44:  ADD.W           R1, R8, R10,LSL#3
234B48:  ADDS            R1, #8
234B4A:  BLX             j_INT123_dct64
234B4E:  ADD.W           R10, R10, #1
234B52:  B               loc_234B72
234B54:  ADD.W           R3, R10, #1
234B58:  LDR.W           R8, [R1]
234B5C:  MOVW            R1, #0x4824
234B60:  AND.W           R3, R3, #0xF
234B64:  LDR             R0, [R0,R1]
234B66:  ADD.W           R1, R8, R10,LSL#3
234B6A:  ADD.W           R0, R0, R3,LSL#3
234B6E:  BLX             j_INT123_dct64
234B72:  MOVW            R0, #0x4844
234B76:  VLDR            D16, =32767.0
234B7A:  LDR.W           LR, [R5,R0]
234B7E:  RSB.W           R0, R10, #0x1F0
234B82:  VLDR            D17, =-32768.0
234B86:  ADD.W           R2, LR, R0,LSL#3
234B8A:  SUB.W           R0, LR, R10,LSL#3
234B8E:  ADD.W           R5, R0, #0x80
234B92:  RSB.W           R0, R10, #0x210
234B96:  STR             R0, [SP,#0x28+var_24]
234B98:  MOVS            R3, #0
234B9A:  MOVW            R1, #0x7FFF
234B9E:  MOV.W           R11, #0x8000
234BA2:  MOVS            R0, #0
234BA4:  MOV             R6, R8
234BA6:  VLDM            R6, {D18-D21}
234BAA:  MOV.W           R9, R3,LSL#1
234BAE:  VLDM            R5, {D22-D25}
234BB2:  VMUL.F64        D19, D23, D19
234BB6:  VMUL.F64        D18, D22, D18
234BBA:  VMUL.F64        D20, D24, D20
234BBE:  VSUB.F64        D18, D18, D19
234BC2:  VMUL.F64        D21, D25, D21
234BC6:  VADD.F64        D18, D18, D20
234BCA:  VLDR            D19, [R6,#0x20]
234BCE:  VLDR            D22, [R5,#0x20]
234BD2:  VSUB.F64        D18, D18, D21
234BD6:  VMUL.F64        D19, D22, D19
234BDA:  VLDR            D20, [R6,#0x28]
234BDE:  VLDR            D23, [R5,#0x28]
234BE2:  VADD.F64        D18, D18, D19
234BE6:  VMUL.F64        D20, D23, D20
234BEA:  VLDR            D21, [R6,#0x30]
234BEE:  VLDR            D22, [R5,#0x30]
234BF2:  VSUB.F64        D18, D18, D20
234BF6:  VMUL.F64        D21, D22, D21
234BFA:  VLDR            D19, [R6,#0x38]
234BFE:  VLDR            D23, [R5,#0x38]
234C02:  VADD.F64        D18, D18, D21
234C06:  VMUL.F64        D19, D23, D19
234C0A:  VLDR            D20, [R6,#0x40]
234C0E:  VLDR            D22, [R5,#0x40]
234C12:  VSUB.F64        D18, D18, D19
234C16:  VMUL.F64        D20, D22, D20
234C1A:  VLDR            D21, [R6,#0x48]
234C1E:  VLDR            D23, [R5,#0x48]
234C22:  VADD.F64        D18, D18, D20
234C26:  VMUL.F64        D21, D23, D21
234C2A:  VLDR            D19, [R6,#0x50]
234C2E:  VLDR            D22, [R5,#0x50]
234C32:  VSUB.F64        D18, D18, D21
234C36:  VMUL.F64        D19, D22, D19
234C3A:  VLDR            D20, [R6,#0x58]
234C3E:  VLDR            D23, [R5,#0x58]
234C42:  VADD.F64        D18, D18, D19
234C46:  VMUL.F64        D20, D23, D20
234C4A:  VLDR            D21, [R6,#0x60]
234C4E:  VLDR            D22, [R5,#0x60]
234C52:  VSUB.F64        D18, D18, D20
234C56:  VMUL.F64        D21, D22, D21
234C5A:  VLDR            D19, [R6,#0x68]
234C5E:  VLDR            D23, [R5,#0x68]
234C62:  VADD.F64        D18, D18, D21
234C66:  VMUL.F64        D19, D23, D19
234C6A:  VLDR            D20, [R6,#0x70]
234C6E:  VLDR            D22, [R5,#0x70]
234C72:  VSUB.F64        D18, D18, D19
234C76:  VMUL.F64        D20, D22, D20
234C7A:  VLDR            D21, [R6,#0x78]
234C7E:  VLDR            D23, [R5,#0x78]
234C82:  VADD.F64        D18, D18, D20
234C86:  VMUL.F64        D19, D23, D21
234C8A:  VSUB.F64        D18, D18, D19
234C8E:  VCMPE.F64       D18, D16
234C92:  VMRS            APSR_nzcv, FPSCR
234C96:  BLE             loc_234CA0
234C98:  STRH.W          R1, [R4,R9,LSL#1]
234C9C:  ADDS            R0, #1
234C9E:  B               loc_234CBE
234CA0:  VCMPE.F64       D18, D17
234CA4:  VMRS            APSR_nzcv, FPSCR
234CA8:  BGE             loc_234CB2
234CAA:  STRH.W          R11, [R4,R9,LSL#1]
234CAE:  ADDS            R0, #1
234CB0:  B               loc_234CBE
234CB2:  VCVT.S32.F64    S0, D18
234CB6:  VMOV            R12, S0
234CBA:  STRH.W          R12, [R4,R9,LSL#1]
234CBE:  ADDS            R3, #1
234CC0:  ADDS            R6, #0x80
234CC2:  ADD.W           R5, R5, #0x100
234CC6:  CMP             R3, #0x10
234CC8:  BNE.W           loc_234BA6
234CCC:  LDR             R1, [SP,#0x28+var_24]
234CCE:  ADD.W           R3, R8, #0x810
234CD2:  VLDR            D18, [R2,#0x110]
234CD6:  VLDR            D23, [R3]
234CDA:  ADD.W           R1, LR, R1,LSL#3
234CDE:  VLDR            D19, [R2,#0x120]
234CE2:  VMUL.F64        D18, D18, D23
234CE6:  VLDR            D22, [R1]
234CEA:  ADD.W           R1, R8, #0x800
234CEE:  VLDR            D20, [R2,#0x130]
234CF2:  VLDR            D24, [R1]
234CF6:  ADD.W           R1, R8, #0x820
234CFA:  VLDR            D21, [R2,#0x140]
234CFE:  VMUL.F64        D22, D22, D24
234D02:  VLDR            D23, [R1]
234D06:  ADD.W           R1, R8, #0x830
234D0A:  VADD.F64        D18, D22, D18
234D0E:  VMUL.F64        D19, D19, D23
234D12:  VLDR            D24, [R1]
234D16:  ADD.W           R1, R8, #0x840
234D1A:  VADD.F64        D18, D18, D19
234D1E:  VMUL.F64        D20, D20, D24
234D22:  VLDR            D22, [R1]
234D26:  ADD.W           R1, R8, #0x850
234D2A:  VADD.F64        D18, D18, D20
234D2E:  VMUL.F64        D21, D21, D22
234D32:  VLDR            D23, [R1]
234D36:  ADD.W           R1, R8, #0x860
234D3A:  VLDR            D19, [R2,#0x150]
234D3E:  VADD.F64        D18, D18, D21
234D42:  VMUL.F64        D19, D19, D23
234D46:  VLDR            D22, [R1]
234D4A:  ADD.W           R1, R8, #0x870
234D4E:  VLDR            D21, [R2,#0x160]
234D52:  VADD.F64        D18, D18, D19
234D56:  VMUL.F64        D21, D21, D22
234D5A:  VLDR            D20, [R2,#0x170]
234D5E:  ADD.W           R2, R8, #0x780
234D62:  VLDR            D23, [R1]
234D66:  VADD.F64        D18, D18, D21
234D6A:  VMUL.F64        D19, D20, D23
234D6E:  VADD.F64        D18, D18, D19
234D72:  VCMPE.F64       D18, D16
234D76:  VMRS            APSR_nzcv, FPSCR
234D7A:  BLE             loc_234D82
234D7C:  MOVW            R1, #0x7FFF
234D80:  B               loc_234D90
234D82:  VCMPE.F64       D18, D17
234D86:  VMRS            APSR_nzcv, FPSCR
234D8A:  BGE             loc_234D98
234D8C:  MOV.W           R1, #0x8000
234D90:  STRH.W          R1, [R4,#0x40]
234D94:  ADDS            R0, #1
234D96:  B               loc_234DA4
234D98:  VCVT.S32.F64    S0, D18
234D9C:  VMOV            R1, S0
234DA0:  STRH.W          R1, [R4,#0x40]
234DA4:  ADD.W           R1, LR, R10,LSL#3
234DA8:  ADD.W           R3, R4, #0x44 ; 'D'
234DAC:  MOVS            R6, #0
234DAE:  MOVW            LR, #0x7FFF
234DB2:  MOV.W           R12, #0x8000
234DB6:  ADDS            R4, R1, R6
234DB8:  VLDM            R2, {D18-D21}
234DBC:  ADD.W           R5, R4, #0xF70
234DC0:  VLDR            D22, [R5]
234DC4:  ADDW            R5, R4, #0xF78
234DC8:  VLDR            D23, [R5]
234DCC:  ADDW            R5, R4, #0xF68
234DD0:  VMUL.F64        D19, D22, D19
234DD4:  VNMUL.F64       D18, D23, D18
234DD8:  VLDR            D22, [R5]
234DDC:  ADD.W           R5, R4, #0xF60
234DE0:  VSUB.F64        D18, D18, D19
234DE4:  VMUL.F64        D20, D22, D20
234DE8:  VLDR            D23, [R5]
234DEC:  ADDW            R5, R4, #0xF58
234DF0:  VSUB.F64        D18, D18, D20
234DF4:  VMUL.F64        D19, D23, D21
234DF8:  VLDR            D22, [R5]
234DFC:  ADD.W           R5, R4, #0xF50
234E00:  VLDR            D21, [R2,#0x20]
234E04:  VSUB.F64        D18, D18, D19
234E08:  VMUL.F64        D21, D22, D21
234E0C:  VLDR            D23, [R5]
234E10:  ADDW            R5, R4, #0xF48
234E14:  VLDR            D20, [R2,#0x28]
234E18:  VSUB.F64        D18, D18, D21
234E1C:  VMUL.F64        D19, D23, D20
234E20:  VLDR            D22, [R5]
234E24:  ADD.W           R5, R4, #0xF40
234E28:  VLDR            D21, [R2,#0x30]
234E2C:  VSUB.F64        D18, D18, D19
234E30:  VMUL.F64        D21, D22, D21
234E34:  VLDR            D23, [R5]
234E38:  ADDW            R5, R4, #0xF38
234E3C:  VLDR            D20, [R2,#0x38]
234E40:  VSUB.F64        D18, D18, D21
234E44:  VMUL.F64        D19, D23, D20
234E48:  VLDR            D22, [R5]
234E4C:  ADD.W           R5, R4, #0xF30
234E50:  VLDR            D21, [R2,#0x40]
234E54:  VSUB.F64        D18, D18, D19
234E58:  VMUL.F64        D21, D22, D21
234E5C:  VLDR            D23, [R5]
234E60:  ADDW            R5, R4, #0xF28
234E64:  VLDR            D20, [R2,#0x48]
234E68:  VSUB.F64        D18, D18, D21
234E6C:  VMUL.F64        D19, D23, D20
234E70:  VLDR            D22, [R5]
234E74:  ADD.W           R5, R4, #0xF20
234E78:  VLDR            D21, [R2,#0x50]
234E7C:  VSUB.F64        D18, D18, D19
234E80:  VMUL.F64        D21, D22, D21
234E84:  VLDR            D23, [R5]
234E88:  ADDW            R5, R4, #0xF18
234E8C:  VLDR            D20, [R2,#0x58]
234E90:  VSUB.F64        D18, D18, D21
234E94:  VMUL.F64        D19, D23, D20
234E98:  VLDR            D22, [R5]
234E9C:  ADD.W           R5, R4, #0xF10
234EA0:  VLDR            D21, [R2,#0x60]
234EA4:  VSUB.F64        D18, D18, D19
234EA8:  VMUL.F64        D21, D22, D21
234EAC:  VLDR            D23, [R5]
234EB0:  ADDW            R5, R4, #0xF08
234EB4:  VLDR            D20, [R2,#0x68]
234EB8:  ADD.W           R4, R4, #0xF00
234EBC:  VSUB.F64        D18, D18, D21
234EC0:  VMUL.F64        D19, D23, D20
234EC4:  VLDR            D21, [R2,#0x70]
234EC8:  VLDR            D22, [R5]
234ECC:  VSUB.F64        D18, D18, D19
234ED0:  VMUL.F64        D21, D22, D21
234ED4:  VLDR            D20, [R2,#0x78]
234ED8:  VLDR            D23, [R4]
234EDC:  VSUB.F64        D18, D18, D21
234EE0:  VMUL.F64        D19, D23, D20
234EE4:  VSUB.F64        D18, D18, D19
234EE8:  VCMPE.F64       D18, D16
234EEC:  VMRS            APSR_nzcv, FPSCR
234EF0:  BLE             loc_234EFA
234EF2:  STRH.W          LR, [R3]
234EF6:  ADDS            R0, #1
234EF8:  B               loc_234F16
234EFA:  VCMPE.F64       D18, D17
234EFE:  VMRS            APSR_nzcv, FPSCR
234F02:  BGE             loc_234F0C
234F04:  STRH.W          R12, [R3]
234F08:  ADDS            R0, #1
234F0A:  B               loc_234F16
234F0C:  VCVT.S32.F64    S0, D18
234F10:  VMOV            R4, S0
234F14:  STRH            R4, [R3]
234F16:  SUB.W           R6, R6, #0x100
234F1A:  SUBS            R2, #0x80
234F1C:  ADDS            R3, #4
234F1E:  CMN.W           R6, #0xF00
234F22:  BNE.W           loc_234DB6
234F26:  LDR             R1, [SP,#0x28+var_20]
234F28:  CMP             R1, #0
234F2A:  ITTTT NE
234F2C:  LDRNE           R1, [SP,#0x28+var_28]
234F2E:  MOVNE           R2, R1
234F30:  LDRNE           R1, [R2]
234F32:  ADDNE           R1, #0x80
234F34:  IT NE
234F36:  STRNE           R1, [R2]
234F38:  ADD             SP, SP, #0xC
234F3A:  POP.W           {R8-R11}
234F3E:  POP             {R4-R7,PC}
