; =========================================================
; Game Engine Function: sub_153BB4
; Address            : 0x153BB4 - 0x153D7C
; =========================================================

153BB4:  PUSH            {R4-R7,LR}
153BB6:  ADD             R7, SP, #0xC
153BB8:  PUSH.W          {R8-R11}
153BBC:  SUB             SP, SP, #0x14
153BBE:  LDR             R4, [R1,#4]
153BC0:  MOV             R11, R1
153BC2:  LDRH            R6, [R2]
153BC4:  STR             R0, [SP,#0x30+var_2C]
153BC6:  CBZ             R4, loc_153C00
153BC8:  MOV.W           R0, #0x55555555
153BCC:  MOV.W           R1, #0x33333333
153BD0:  AND.W           R0, R0, R4,LSR#1
153BD4:  SUBS            R0, R4, R0
153BD6:  AND.W           R1, R1, R0,LSR#2
153BDA:  BIC.W           R0, R0, #0xCCCCCCCC
153BDE:  ADD             R0, R1
153BE0:  MOV.W           R1, #0x1010101
153BE4:  ADD.W           R0, R0, R0,LSR#4
153BE8:  BIC.W           R0, R0, #0xF0F0F0F0
153BEC:  MULS            R0, R1
153BEE:  MOV.W           R10, R0,LSR#24
153BF2:  CMP.W           R10, #1
153BF6:  BHI             loc_153C02
153BF8:  SUBS            R0, R4, #1
153BFA:  AND.W           R9, R0, R6
153BFE:  B               loc_153C12
153C00:  B               loc_153C52
153C02:  CMP             R4, R6
153C04:  MOV             R9, R6
153C06:  BHI             loc_153C12
153C08:  MOV             R0, R6
153C0A:  MOV             R1, R4
153C0C:  BLX             sub_221798
153C10:  MOV             R9, R1
153C12:  LDR.W           R0, [R11]
153C16:  LDR.W           R5, [R0,R9,LSL#2]
153C1A:  CBZ             R5, loc_153C52
153C1C:  SUB.W           R8, R4, #1
153C20:  LDR             R5, [R5]
153C22:  CBZ             R5, loc_153C52
153C24:  LDR             R0, [R5,#4]
153C26:  CMP             R0, R6
153C28:  BEQ             loc_153C46
153C2A:  CMP.W           R10, #1
153C2E:  BHI             loc_153C36
153C30:  AND.W           R0, R0, R8
153C34:  B               loc_153C42
153C36:  CMP             R0, R4
153C38:  BCC             loc_153C42
153C3A:  MOV             R1, R4
153C3C:  BLX             sub_221798
153C40:  MOV             R0, R1
153C42:  CMP             R0, R9
153C44:  BNE             loc_153C52
153C46:  LDRH            R0, [R5,#8]
153C48:  CMP             R0, R6
153C4A:  BNE             loc_153C20
153C4C:  MOVS            R0, #0
153C4E:  LDR             R6, [SP,#0x30+var_2C]
153C50:  B               loc_153D70
153C52:  MOVS            R0, #0x10; unsigned int
153C54:  LDRD.W          R5, R8, [R7,#arg_0]
153C58:  BLX             j__Znwj; operator new(uint)
153C5C:  LDR.W           R2, [R11,#0xC]
153C60:  ADD.W           R10, R11, #8
153C64:  LDR             R1, [R5]
153C66:  MOV.W           R12, #0
153C6A:  ADDS            R2, #1
153C6C:  LDR.W           R3, [R8]
153C70:  VLDR            S0, [R11,#0x10]
153C74:  VMOV            S2, R2
153C78:  LDRH            R1, [R1]
153C7A:  LDR             R5, [R3]
153C7C:  VCVT.F32.U32    S2, S2
153C80:  STR.W           R12, [R3]
153C84:  STR             R6, [R0,#4]
153C86:  STRH            R1, [R0,#8]
153C88:  STR.W           R12, [R0]
153C8C:  STR             R5, [R0,#0xC]
153C8E:  STRD.W          R0, R10, [SP,#0x30+var_28]
153C92:  MOV.W           R0, #1
153C96:  STRB.W          R0, [SP,#0x30+var_20]
153C9A:  CBZ             R4, loc_153CB6
153C9C:  VMOV            S4, R4
153CA0:  VCVT.F32.U32    S4, S4
153CA4:  VMUL.F32        S4, S0, S4
153CA8:  VCMP.F32        S4, S2
153CAC:  VMRS            APSR_nzcv, FPSCR
153CB0:  BMI             loc_153CB6
153CB2:  MOV             R6, R9
153CB4:  B               loc_153D0C
153CB6:  LSLS            R5, R4, #1
153CB8:  CMP             R4, #3
153CBA:  BCC             loc_153CC6
153CBC:  SUBS            R0, R4, #1
153CBE:  ANDS            R4, R0
153CC0:  IT NE
153CC2:  MOVNE           R4, #1
153CC4:  B               loc_153CC8
153CC6:  MOVS            R4, #1
153CC8:  VDIV.F32        S0, S2, S0
153CCC:  VMOV            R0, S0; x
153CD0:  BLX             ceilf
153CD4:  VMOV            S0, R0
153CD8:  ORR.W           R1, R4, R5
153CDC:  VCVT.U32.F32    S0, S0
153CE0:  VMOV            R0, S0
153CE4:  CMP             R1, R0
153CE6:  IT CC
153CE8:  MOVCC           R1, R0; this
153CEA:  MOV             R0, R11; int
153CEC:  BL              sub_1539B2
153CF0:  LDR.W           R4, [R11,#4]
153CF4:  SUBS            R0, R4, #1
153CF6:  TST             R4, R0
153CF8:  BNE             loc_153CFE
153CFA:  ANDS            R6, R0
153CFC:  B               loc_153D0C
153CFE:  CMP             R4, R6
153D00:  BHI             loc_153D0C
153D02:  MOV             R0, R6
153D04:  MOV             R1, R4
153D06:  BLX             sub_221798
153D0A:  MOV             R6, R1
153D0C:  LDR.W           R0, [R11]
153D10:  LDR.W           R0, [R0,R6,LSL#2]
153D14:  CBZ             R0, loc_153D24
153D16:  LDR             R1, [SP,#0x30+var_28]
153D18:  LDR             R2, [R0]
153D1A:  LDR             R6, [SP,#0x30+var_2C]
153D1C:  STR             R2, [R1]
153D1E:  LDR             R1, [SP,#0x30+var_28]
153D20:  STR             R1, [R0]
153D22:  B               loc_153D62
153D24:  LDR             R0, [SP,#0x30+var_28]
153D26:  LDR.W           R1, [R11,#8]
153D2A:  STR             R1, [R0]
153D2C:  LDR.W           R0, [R11]
153D30:  LDR             R1, [SP,#0x30+var_28]
153D32:  STR.W           R1, [R11,#8]
153D36:  STR.W           R10, [R0,R6,LSL#2]
153D3A:  LDR             R5, [SP,#0x30+var_28]
153D3C:  LDR             R6, [SP,#0x30+var_2C]
153D3E:  LDR             R0, [R5]
153D40:  CBZ             R0, loc_153D62
153D42:  LDR             R0, [R0,#4]
153D44:  SUBS            R1, R4, #1
153D46:  TST             R4, R1
153D48:  BNE             loc_153D4E
153D4A:  ANDS            R0, R1
153D4C:  B               loc_153D5A
153D4E:  CMP             R0, R4
153D50:  BCC             loc_153D5A
153D52:  MOV             R1, R4
153D54:  BLX             sub_221798
153D58:  MOV             R0, R1
153D5A:  LDR.W           R1, [R11]
153D5E:  STR.W           R5, [R1,R0,LSL#2]
153D62:  LDR.W           R0, [R11,#0xC]
153D66:  LDR             R5, [SP,#0x30+var_28]
153D68:  ADDS            R0, #1
153D6A:  STR.W           R0, [R11,#0xC]
153D6E:  MOVS            R0, #1
153D70:  STRB            R0, [R6,#4]
153D72:  STR             R5, [R6]
153D74:  ADD             SP, SP, #0x14
153D76:  POP.W           {R8-R11}
153D7A:  POP             {R4-R7,PC}
