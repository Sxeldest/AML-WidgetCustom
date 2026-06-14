; =========================================================
; Game Engine Function: sub_153DA0
; Address            : 0x153DA0 - 0x153F68
; =========================================================

153DA0:  PUSH            {R4-R7,LR}
153DA2:  ADD             R7, SP, #0xC
153DA4:  PUSH.W          {R8-R11}
153DA8:  SUB             SP, SP, #0x14
153DAA:  LDR             R4, [R1,#4]
153DAC:  MOV             R11, R1
153DAE:  LDRH            R6, [R2]
153DB0:  STR             R0, [SP,#0x30+var_2C]
153DB2:  CBZ             R4, loc_153DEC
153DB4:  MOV.W           R0, #0x55555555
153DB8:  MOV.W           R1, #0x33333333
153DBC:  AND.W           R0, R0, R4,LSR#1
153DC0:  SUBS            R0, R4, R0
153DC2:  AND.W           R1, R1, R0,LSR#2
153DC6:  BIC.W           R0, R0, #0xCCCCCCCC
153DCA:  ADD             R0, R1
153DCC:  MOV.W           R1, #0x1010101
153DD0:  ADD.W           R0, R0, R0,LSR#4
153DD4:  BIC.W           R0, R0, #0xF0F0F0F0
153DD8:  MULS            R0, R1
153DDA:  MOV.W           R10, R0,LSR#24
153DDE:  CMP.W           R10, #1
153DE2:  BHI             loc_153DEE
153DE4:  SUBS            R0, R4, #1
153DE6:  AND.W           R9, R0, R6
153DEA:  B               loc_153DFE
153DEC:  B               loc_153E3E
153DEE:  CMP             R4, R6
153DF0:  MOV             R9, R6
153DF2:  BHI             loc_153DFE
153DF4:  MOV             R0, R6
153DF6:  MOV             R1, R4
153DF8:  BLX             sub_221798
153DFC:  MOV             R9, R1
153DFE:  LDR.W           R0, [R11]
153E02:  LDR.W           R5, [R0,R9,LSL#2]
153E06:  CBZ             R5, loc_153E3E
153E08:  SUB.W           R8, R4, #1
153E0C:  LDR             R5, [R5]
153E0E:  CBZ             R5, loc_153E3E
153E10:  LDR             R0, [R5,#4]
153E12:  CMP             R0, R6
153E14:  BEQ             loc_153E32
153E16:  CMP.W           R10, #1
153E1A:  BHI             loc_153E22
153E1C:  AND.W           R0, R0, R8
153E20:  B               loc_153E2E
153E22:  CMP             R0, R4
153E24:  BCC             loc_153E2E
153E26:  MOV             R1, R4
153E28:  BLX             sub_221798
153E2C:  MOV             R0, R1
153E2E:  CMP             R0, R9
153E30:  BNE             loc_153E3E
153E32:  LDRH            R0, [R5,#8]
153E34:  CMP             R0, R6
153E36:  BNE             loc_153E0C
153E38:  MOVS            R0, #0
153E3A:  LDR             R6, [SP,#0x30+var_2C]
153E3C:  B               loc_153F5C
153E3E:  MOVS            R0, #0x10; unsigned int
153E40:  LDRD.W          R5, R8, [R7,#arg_0]
153E44:  BLX             j__Znwj; operator new(uint)
153E48:  LDR.W           R2, [R11,#0xC]
153E4C:  ADD.W           R10, R11, #8
153E50:  LDR             R1, [R5]
153E52:  MOV.W           R12, #0
153E56:  ADDS            R2, #1
153E58:  LDR.W           R3, [R8]
153E5C:  VLDR            S0, [R11,#0x10]
153E60:  VMOV            S2, R2
153E64:  LDRH            R1, [R1]
153E66:  LDR             R5, [R3]
153E68:  VCVT.F32.U32    S2, S2
153E6C:  STR.W           R12, [R3]
153E70:  STR             R6, [R0,#4]
153E72:  STRH            R1, [R0,#8]
153E74:  STR.W           R12, [R0]
153E78:  STR             R5, [R0,#0xC]
153E7A:  STRD.W          R0, R10, [SP,#0x30+var_28]
153E7E:  MOV.W           R0, #1
153E82:  STRB.W          R0, [SP,#0x30+var_20]
153E86:  CBZ             R4, loc_153EA2
153E88:  VMOV            S4, R4
153E8C:  VCVT.F32.U32    S4, S4
153E90:  VMUL.F32        S4, S0, S4
153E94:  VCMP.F32        S4, S2
153E98:  VMRS            APSR_nzcv, FPSCR
153E9C:  BMI             loc_153EA2
153E9E:  MOV             R6, R9
153EA0:  B               loc_153EF8
153EA2:  LSLS            R5, R4, #1
153EA4:  CMP             R4, #3
153EA6:  BCC             loc_153EB2
153EA8:  SUBS            R0, R4, #1
153EAA:  ANDS            R4, R0
153EAC:  IT NE
153EAE:  MOVNE           R4, #1
153EB0:  B               loc_153EB4
153EB2:  MOVS            R4, #1
153EB4:  VDIV.F32        S0, S2, S0
153EB8:  VMOV            R0, S0; x
153EBC:  BLX             ceilf
153EC0:  VMOV            S0, R0
153EC4:  ORR.W           R1, R4, R5
153EC8:  VCVT.U32.F32    S0, S0
153ECC:  VMOV            R0, S0
153ED0:  CMP             R1, R0
153ED2:  IT CC
153ED4:  MOVCC           R1, R0; this
153ED6:  MOV             R0, R11; int
153ED8:  BL              sub_1539B2
153EDC:  LDR.W           R4, [R11,#4]
153EE0:  SUBS            R0, R4, #1
153EE2:  TST             R4, R0
153EE4:  BNE             loc_153EEA
153EE6:  ANDS            R6, R0
153EE8:  B               loc_153EF8
153EEA:  CMP             R4, R6
153EEC:  BHI             loc_153EF8
153EEE:  MOV             R0, R6
153EF0:  MOV             R1, R4
153EF2:  BLX             sub_221798
153EF6:  MOV             R6, R1
153EF8:  LDR.W           R0, [R11]
153EFC:  LDR.W           R0, [R0,R6,LSL#2]
153F00:  CBZ             R0, loc_153F10
153F02:  LDR             R1, [SP,#0x30+var_28]
153F04:  LDR             R2, [R0]
153F06:  LDR             R6, [SP,#0x30+var_2C]
153F08:  STR             R2, [R1]
153F0A:  LDR             R1, [SP,#0x30+var_28]
153F0C:  STR             R1, [R0]
153F0E:  B               loc_153F4E
153F10:  LDR             R0, [SP,#0x30+var_28]
153F12:  LDR.W           R1, [R11,#8]
153F16:  STR             R1, [R0]
153F18:  LDR.W           R0, [R11]
153F1C:  LDR             R1, [SP,#0x30+var_28]
153F1E:  STR.W           R1, [R11,#8]
153F22:  STR.W           R10, [R0,R6,LSL#2]
153F26:  LDR             R5, [SP,#0x30+var_28]
153F28:  LDR             R6, [SP,#0x30+var_2C]
153F2A:  LDR             R0, [R5]
153F2C:  CBZ             R0, loc_153F4E
153F2E:  LDR             R0, [R0,#4]
153F30:  SUBS            R1, R4, #1
153F32:  TST             R4, R1
153F34:  BNE             loc_153F3A
153F36:  ANDS            R0, R1
153F38:  B               loc_153F46
153F3A:  CMP             R0, R4
153F3C:  BCC             loc_153F46
153F3E:  MOV             R1, R4
153F40:  BLX             sub_221798
153F44:  MOV             R0, R1
153F46:  LDR.W           R1, [R11]
153F4A:  STR.W           R5, [R1,R0,LSL#2]
153F4E:  LDR.W           R0, [R11,#0xC]
153F52:  LDR             R5, [SP,#0x30+var_28]
153F54:  ADDS            R0, #1
153F56:  STR.W           R0, [R11,#0xC]
153F5A:  MOVS            R0, #1
153F5C:  STRB            R0, [R6,#4]
153F5E:  STR             R5, [R6]
153F60:  ADD             SP, SP, #0x14
153F62:  POP.W           {R8-R11}
153F66:  POP             {R4-R7,PC}
