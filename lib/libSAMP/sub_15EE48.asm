; =========================================================
; Game Engine Function: sub_15EE48
; Address            : 0x15EE48 - 0x15F062
; =========================================================

15EE48:  PUSH            {R4-R7,LR}
15EE4A:  ADD             R7, SP, #0xC
15EE4C:  PUSH.W          {R8-R11}
15EE50:  SUB             SP, SP, #0x14
15EE52:  LDR             R5, [R2]
15EE54:  MOV             R9, R1
15EE56:  STR             R0, [SP,#0x30+var_2C]
15EE58:  MOV             R0, #0x5BD1E995
15EE60:  MOVW            R2, #0xA654
15EE64:  MUL.W           R1, R5, R0
15EE68:  MOVT            R2, #0x6F47
15EE6C:  LDR.W           R10, [R9,#4]
15EE70:  CMP.W           R10, #0
15EE74:  EOR.W           R1, R1, R1,LSR#24
15EE78:  MUL.W           R1, R0, R1
15EE7C:  EOR.W           R1, R1, R2
15EE80:  EOR.W           R1, R1, R1,LSR#13
15EE84:  MUL.W           R0, R1, R0
15EE88:  EOR.W           R11, R0, R0,LSR#15
15EE8C:  BEQ             loc_15EEC6
15EE8E:  MOV.W           R0, #0x55555555
15EE92:  MOV.W           R1, #0x33333333
15EE96:  AND.W           R0, R0, R10,LSR#1
15EE9A:  SUB.W           R0, R10, R0
15EE9E:  AND.W           R1, R1, R0,LSR#2
15EEA2:  BIC.W           R0, R0, #0xCCCCCCCC
15EEA6:  ADD             R0, R1
15EEA8:  MOV.W           R1, #0x1010101
15EEAC:  ADD.W           R0, R0, R0,LSR#4
15EEB0:  BIC.W           R0, R0, #0xF0F0F0F0
15EEB4:  MULS            R0, R1
15EEB6:  LSRS            R4, R0, #0x18
15EEB8:  CMP             R4, #1
15EEBA:  BHI             loc_15EEC8
15EEBC:  SUB.W           R0, R10, #1
15EEC0:  AND.W           R6, R11, R0
15EEC4:  B               loc_15EED8
15EEC6:  B               loc_15EF2E
15EEC8:  CMP             R11, R10
15EECA:  MOV             R6, R11
15EECC:  BCC             loc_15EED8
15EECE:  MOV             R0, R11
15EED0:  MOV             R1, R10
15EED2:  BLX             sub_221798
15EED6:  MOV             R6, R1
15EED8:  LDR.W           R0, [R9]
15EEDC:  LDR.W           R8, [R0,R6,LSL#2]
15EEE0:  CMP.W           R8, #0
15EEE4:  BEQ             loc_15EF2E
15EEE6:  SUB.W           R1, R10, #1
15EEEA:  STR             R6, [SP,#0x30+var_30]
15EEEC:  LDR.W           R8, [R8]
15EEF0:  CMP.W           R8, #0
15EEF4:  BEQ             loc_15EF2E
15EEF6:  LDR.W           R0, [R8,#4]
15EEFA:  CMP             R0, R11
15EEFC:  BEQ             loc_15EF20
15EEFE:  CMP             R4, #1
15EF00:  BHI             loc_15EF06
15EF02:  ANDS            R0, R1
15EF04:  B               loc_15EF1C
15EF06:  CMP             R0, R10
15EF08:  BCC             loc_15EF1C
15EF0A:  MOV             R6, R9
15EF0C:  MOV             R9, R1
15EF0E:  MOV             R1, R10
15EF10:  BLX             sub_221798
15EF14:  MOV             R0, R1
15EF16:  MOV             R1, R9
15EF18:  MOV             R9, R6
15EF1A:  LDR             R6, [SP,#0x30+var_30]
15EF1C:  CMP             R0, R6
15EF1E:  BNE             loc_15EF2E
15EF20:  LDR.W           R0, [R8,#8]
15EF24:  CMP             R0, R5
15EF26:  BNE             loc_15EEEC
15EF28:  MOVS            R0, #0
15EF2A:  LDR             R6, [SP,#0x30+var_2C]
15EF2C:  B               loc_15F054
15EF2E:  MOVS            R0, #0x10; unsigned int
15EF30:  LDR.W           R8, [R7,#arg_0]
15EF34:  BLX             j__Znwj; operator new(uint)
15EF38:  MOV             R5, R0
15EF3A:  LDR.W           R0, [R8]
15EF3E:  LDR.W           R1, [R9,#0xC]
15EF42:  ADD.W           R8, R9, #8
15EF46:  VLDR            S0, [R9,#0x10]
15EF4A:  CMP.W           R10, #0
15EF4E:  LDR             R0, [R0]
15EF50:  STR             R0, [R5,#8]
15EF52:  ADD.W           R0, R1, #1
15EF56:  MOV.W           R1, #0
15EF5A:  STR.W           R11, [R5,#4]
15EF5E:  VMOV            S2, R0
15EF62:  MOV.W           R0, #1
15EF66:  STR             R1, [R5]
15EF68:  VCVT.F32.U32    S2, S2
15EF6C:  STR             R1, [R5,#0xC]
15EF6E:  STRD.W          R5, R8, [SP,#0x30+var_28]
15EF72:  STRB.W          R0, [SP,#0x30+var_20]
15EF76:  BEQ             loc_15EF92
15EF78:  VMOV            S4, R10
15EF7C:  VCVT.F32.U32    S4, S4
15EF80:  VMUL.F32        S4, S0, S4
15EF84:  VCMP.F32        S4, S2
15EF88:  VMRS            APSR_nzcv, FPSCR
15EF8C:  BMI             loc_15EF92
15EF8E:  MOV             R11, R6
15EF90:  B               loc_15EFF6
15EF92:  MOV.W           R6, R10,LSL#1
15EF96:  CMP.W           R10, #3
15EF9A:  BCC             loc_15EFAA
15EF9C:  SUB.W           R0, R10, #1
15EFA0:  ANDS.W          R4, R10, R0
15EFA4:  IT NE
15EFA6:  MOVNE           R4, #1
15EFA8:  B               loc_15EFAC
15EFAA:  MOVS            R4, #1
15EFAC:  VDIV.F32        S0, S2, S0
15EFB0:  VMOV            R0, S0; x
15EFB4:  BLX             ceilf
15EFB8:  VMOV            S0, R0
15EFBC:  ORR.W           R1, R4, R6
15EFC0:  VCVT.U32.F32    S0, S0
15EFC4:  VMOV            R0, S0
15EFC8:  CMP             R1, R0
15EFCA:  IT CC
15EFCC:  MOVCC           R1, R0; this
15EFCE:  MOV             R0, R9; int
15EFD0:  BL              sub_15F074
15EFD4:  LDR.W           R10, [R9,#4]
15EFD8:  SUB.W           R0, R10, #1
15EFDC:  TST.W           R10, R0
15EFE0:  BNE             loc_15EFE8
15EFE2:  AND.W           R11, R11, R0
15EFE6:  B               loc_15EFF6
15EFE8:  CMP             R11, R10
15EFEA:  BCC             loc_15EFF6
15EFEC:  MOV             R0, R11
15EFEE:  MOV             R1, R10
15EFF0:  BLX             sub_221798
15EFF4:  MOV             R11, R1
15EFF6:  LDR.W           R0, [R9]
15EFFA:  LDR.W           R1, [R0,R11,LSL#2]
15EFFE:  CBZ             R1, loc_15F00A
15F000:  LDR             R6, [SP,#0x30+var_2C]
15F002:  LDR             R0, [R1]
15F004:  STR             R0, [R5]
15F006:  STR             R5, [R1]
15F008:  B               loc_15F044
15F00A:  LDR.W           R1, [R8]
15F00E:  STR             R1, [R5]
15F010:  STR.W           R5, [R8]
15F014:  STR.W           R8, [R0,R11,LSL#2]
15F018:  LDR             R5, [SP,#0x30+var_28]
15F01A:  LDR             R6, [SP,#0x30+var_2C]
15F01C:  LDR             R0, [R5]
15F01E:  CBZ             R0, loc_15F044
15F020:  LDR             R0, [R0,#4]
15F022:  SUB.W           R1, R10, #1
15F026:  TST.W           R10, R1
15F02A:  BNE             loc_15F030
15F02C:  ANDS            R0, R1
15F02E:  B               loc_15F03C
15F030:  CMP             R0, R10
15F032:  BCC             loc_15F03C
15F034:  MOV             R1, R10
15F036:  BLX             sub_221798
15F03A:  MOV             R0, R1
15F03C:  LDR.W           R1, [R9]
15F040:  STR.W           R5, [R1,R0,LSL#2]
15F044:  LDR.W           R0, [R9,#0xC]
15F048:  LDR.W           R8, [SP,#0x30+var_28]
15F04C:  ADDS            R0, #1
15F04E:  STR.W           R0, [R9,#0xC]
15F052:  MOVS            R0, #1
15F054:  STRB            R0, [R6,#4]
15F056:  STR.W           R8, [R6]
15F05A:  ADD             SP, SP, #0x14
15F05C:  POP.W           {R8-R11}
15F060:  POP             {R4-R7,PC}
