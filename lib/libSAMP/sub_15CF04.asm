; =========================================================
; Game Engine Function: sub_15CF04
; Address            : 0x15CF04 - 0x15D0D4
; =========================================================

15CF04:  PUSH            {R4-R7,LR}
15CF06:  ADD             R7, SP, #0xC
15CF08:  PUSH.W          {R8-R11}
15CF0C:  SUB             SP, SP, #0x14
15CF0E:  LDR             R4, [R1,#4]
15CF10:  MOV             R9, R1
15CF12:  LDRH            R6, [R2]
15CF14:  STR             R0, [SP,#0x30+var_2C]
15CF16:  CBZ             R4, loc_15CF50
15CF18:  MOV.W           R0, #0x55555555
15CF1C:  MOV.W           R1, #0x33333333
15CF20:  AND.W           R0, R0, R4,LSR#1
15CF24:  SUBS            R0, R4, R0
15CF26:  AND.W           R1, R1, R0,LSR#2
15CF2A:  BIC.W           R0, R0, #0xCCCCCCCC
15CF2E:  ADD             R0, R1
15CF30:  MOV.W           R1, #0x1010101
15CF34:  ADD.W           R0, R0, R0,LSR#4
15CF38:  BIC.W           R0, R0, #0xF0F0F0F0
15CF3C:  MULS            R0, R1
15CF3E:  MOV.W           R11, R0,LSR#24
15CF42:  CMP.W           R11, #1
15CF46:  BHI             loc_15CF52
15CF48:  SUBS            R0, R4, #1
15CF4A:  AND.W           R10, R0, R6
15CF4E:  B               loc_15CF62
15CF50:  B               loc_15CFA2
15CF52:  CMP             R4, R6
15CF54:  MOV             R10, R6
15CF56:  BHI             loc_15CF62
15CF58:  MOV             R0, R6
15CF5A:  MOV             R1, R4
15CF5C:  BLX             sub_221798
15CF60:  MOV             R10, R1
15CF62:  LDR.W           R0, [R9]
15CF66:  LDR.W           R5, [R0,R10,LSL#2]
15CF6A:  CBZ             R5, loc_15CFA2
15CF6C:  SUB.W           R8, R4, #1
15CF70:  LDR             R5, [R5]
15CF72:  CBZ             R5, loc_15CFA2
15CF74:  LDR             R0, [R5,#4]
15CF76:  CMP             R0, R6
15CF78:  BEQ             loc_15CF96
15CF7A:  CMP.W           R11, #1
15CF7E:  BHI             loc_15CF86
15CF80:  AND.W           R0, R0, R8
15CF84:  B               loc_15CF92
15CF86:  CMP             R0, R4
15CF88:  BCC             loc_15CF92
15CF8A:  MOV             R1, R4
15CF8C:  BLX             sub_221798
15CF90:  MOV             R0, R1
15CF92:  CMP             R0, R10
15CF94:  BNE             loc_15CFA2
15CF96:  LDRH            R0, [R5,#8]
15CF98:  CMP             R0, R6
15CF9A:  BNE             loc_15CF70
15CF9C:  MOVS            R0, #0
15CF9E:  LDR             R6, [SP,#0x30+var_2C]
15CFA0:  B               loc_15D0C8
15CFA2:  MOVS            R0, #0x1C; unsigned int
15CFA4:  LDRD.W          R11, R8, [R7,#arg_0]
15CFA8:  BLX             j__Znwj; operator new(uint)
15CFAC:  MOV             R5, R0
15CFAE:  LDR.W           R0, [R11]
15CFB2:  LDR.W           R1, [R8]
15CFB6:  ADD.W           R11, R9, #8
15CFBA:  LDRH            R0, [R0]
15CFBC:  STRH            R0, [R5,#8]
15CFBE:  MOV.W           R0, #0
15CFC2:  VLDR            D16, [R1]
15CFC6:  LDR             R2, [R1,#8]
15CFC8:  STR             R2, [R5,#0x14]
15CFCA:  VSTR            D16, [R5,#0xC]
15CFCE:  STRD.W          R0, R0, [R1]
15CFD2:  STR             R0, [R1,#8]
15CFD4:  LDR.W           R2, [R9,#0xC]
15CFD8:  LDRB            R1, [R1,#0xC]
15CFDA:  STRB            R1, [R5,#0x18]
15CFDC:  ADD.W           R1, R2, #1
15CFE0:  VLDR            S0, [R9,#0x10]
15CFE4:  VMOV            S2, R1
15CFE8:  STRD.W          R0, R6, [R5]
15CFEC:  MOV.W           R0, #1
15CFF0:  STRD.W          R5, R11, [SP,#0x30+var_28]
15CFF4:  VCVT.F32.U32    S2, S2
15CFF8:  STRB.W          R0, [SP,#0x30+var_20]
15CFFC:  CBZ             R4, loc_15D018
15CFFE:  VMOV            S4, R4
15D002:  VCVT.F32.U32    S4, S4
15D006:  VMUL.F32        S4, S0, S4
15D00A:  VCMP.F32        S4, S2
15D00E:  VMRS            APSR_nzcv, FPSCR
15D012:  BMI             loc_15D018
15D014:  MOV             R6, R10
15D016:  B               loc_15D070
15D018:  MOV.W           R8, R4,LSL#1
15D01C:  CMP             R4, #3
15D01E:  BCC             loc_15D02A
15D020:  SUBS            R0, R4, #1
15D022:  ANDS            R4, R0
15D024:  IT NE
15D026:  MOVNE           R4, #1
15D028:  B               loc_15D02C
15D02A:  MOVS            R4, #1
15D02C:  VDIV.F32        S0, S2, S0
15D030:  VMOV            R0, S0; x
15D034:  BLX             ceilf
15D038:  VMOV            S0, R0
15D03C:  ORR.W           R1, R4, R8
15D040:  VCVT.U32.F32    S0, S0
15D044:  VMOV            R0, S0
15D048:  CMP             R1, R0
15D04A:  IT CC
15D04C:  MOVCC           R1, R0; this
15D04E:  MOV             R0, R9; int
15D050:  BL              sub_15D0E6
15D054:  LDR.W           R4, [R9,#4]
15D058:  SUBS            R0, R4, #1
15D05A:  TST             R4, R0
15D05C:  BNE             loc_15D062
15D05E:  ANDS            R6, R0
15D060:  B               loc_15D070
15D062:  CMP             R4, R6
15D064:  BHI             loc_15D070
15D066:  MOV             R0, R6
15D068:  MOV             R1, R4
15D06A:  BLX             sub_221798
15D06E:  MOV             R6, R1
15D070:  LDR.W           R0, [R9]
15D074:  LDR.W           R1, [R0,R6,LSL#2]
15D078:  CBZ             R1, loc_15D084
15D07A:  LDR             R6, [SP,#0x30+var_2C]
15D07C:  LDR             R0, [R1]
15D07E:  STR             R0, [R5]
15D080:  STR             R5, [R1]
15D082:  B               loc_15D0BA
15D084:  LDR.W           R1, [R11]
15D088:  STR             R1, [R5]
15D08A:  STR.W           R5, [R11]
15D08E:  STR.W           R11, [R0,R6,LSL#2]
15D092:  LDR             R5, [SP,#0x30+var_28]
15D094:  LDR             R6, [SP,#0x30+var_2C]
15D096:  LDR             R0, [R5]
15D098:  CBZ             R0, loc_15D0BA
15D09A:  LDR             R0, [R0,#4]
15D09C:  SUBS            R1, R4, #1
15D09E:  TST             R4, R1
15D0A0:  BNE             loc_15D0A6
15D0A2:  ANDS            R0, R1
15D0A4:  B               loc_15D0B2
15D0A6:  CMP             R0, R4
15D0A8:  BCC             loc_15D0B2
15D0AA:  MOV             R1, R4
15D0AC:  BLX             sub_221798
15D0B0:  MOV             R0, R1
15D0B2:  LDR.W           R1, [R9]
15D0B6:  STR.W           R5, [R1,R0,LSL#2]
15D0BA:  LDR.W           R0, [R9,#0xC]
15D0BE:  LDR             R5, [SP,#0x30+var_28]
15D0C0:  ADDS            R0, #1
15D0C2:  STR.W           R0, [R9,#0xC]
15D0C6:  MOVS            R0, #1
15D0C8:  STRB            R0, [R6,#4]
15D0CA:  STR             R5, [R6]
15D0CC:  ADD             SP, SP, #0x14
15D0CE:  POP.W           {R8-R11}
15D0D2:  POP             {R4-R7,PC}
