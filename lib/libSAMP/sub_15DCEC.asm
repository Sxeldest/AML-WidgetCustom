; =========================================================
; Game Engine Function: sub_15DCEC
; Address            : 0x15DCEC - 0x15DE9A
; =========================================================

15DCEC:  PUSH            {R4-R7,LR}
15DCEE:  ADD             R7, SP, #0xC
15DCF0:  PUSH.W          {R8-R11}
15DCF4:  SUB             SP, SP, #0xC
15DCF6:  LDR             R5, [R1,#4]
15DCF8:  MOV             R9, R1
15DCFA:  LDR             R4, [R2]
15DCFC:  MOV             R10, R0
15DCFE:  STR             R3, [SP,#0x28+var_20]
15DD00:  CBZ             R5, loc_15DD3A
15DD02:  MOV.W           R0, #0x55555555
15DD06:  MOV.W           R1, #0x33333333
15DD0A:  AND.W           R0, R0, R5,LSR#1
15DD0E:  SUBS            R0, R5, R0
15DD10:  AND.W           R1, R1, R0,LSR#2
15DD14:  BIC.W           R0, R0, #0xCCCCCCCC
15DD18:  ADD             R0, R1
15DD1A:  MOV.W           R1, #0x1010101
15DD1E:  ADD.W           R0, R0, R0,LSR#4
15DD22:  BIC.W           R0, R0, #0xF0F0F0F0
15DD26:  MULS            R0, R1
15DD28:  MOV.W           R8, R0,LSR#24
15DD2C:  CMP.W           R8, #1
15DD30:  BHI             loc_15DD3C
15DD32:  SUBS            R0, R5, #1
15DD34:  AND.W           R11, R0, R4
15DD38:  B               loc_15DD4C
15DD3A:  B               loc_15DD96
15DD3C:  CMP             R4, R5
15DD3E:  MOV             R11, R4
15DD40:  BCC             loc_15DD4C
15DD42:  MOV             R0, R4
15DD44:  MOV             R1, R5
15DD46:  BLX             sub_221798
15DD4A:  MOV             R11, R1
15DD4C:  LDR.W           R0, [R9]
15DD50:  LDR.W           R6, [R0,R11,LSL#2]
15DD54:  CBZ             R6, loc_15DD96
15DD56:  STR.W           R10, [SP,#0x28+var_24]
15DD5A:  SUB.W           R10, R5, #1
15DD5E:  LDR             R6, [R6]
15DD60:  CBZ             R6, loc_15DD92
15DD62:  LDR             R0, [R6,#4]
15DD64:  CMP             R0, R4
15DD66:  BEQ             loc_15DD84
15DD68:  CMP.W           R8, #1
15DD6C:  BHI             loc_15DD74
15DD6E:  AND.W           R0, R0, R10
15DD72:  B               loc_15DD80
15DD74:  CMP             R0, R5
15DD76:  BCC             loc_15DD80
15DD78:  MOV             R1, R5
15DD7A:  BLX             sub_221798
15DD7E:  MOV             R0, R1
15DD80:  CMP             R0, R11
15DD82:  BNE             loc_15DD92
15DD84:  LDR             R0, [R6,#8]
15DD86:  CMP             R0, R4
15DD88:  BNE             loc_15DD5E
15DD8A:  MOVS            R0, #0
15DD8C:  LDR.W           R10, [SP,#0x28+var_24]
15DD90:  B               loc_15DE8A
15DD92:  LDR.W           R10, [SP,#0x28+var_24]
15DD96:  MOVS            R0, #0x10; unsigned int
15DD98:  LDR.W           R8, [R7,#arg_0]
15DD9C:  BLX             j__Znwj; operator new(uint)
15DDA0:  MOV             R6, R0
15DDA2:  LDR.W           R0, [R9,#0xC]
15DDA6:  LDR             R1, [SP,#0x28+var_20]
15DDA8:  MOVS            R2, #0
15DDAA:  ADDS            R0, #1
15DDAC:  VLDR            S0, [R9,#0x10]
15DDB0:  STRD.W          R2, R4, [R6]
15DDB4:  VMOV            S2, R0
15DDB8:  LDRB.W          R0, [R8]
15DDBC:  LDR             R1, [R1]
15DDBE:  VCVT.F32.U32    S2, S2
15DDC2:  STR             R1, [R6,#8]
15DDC4:  STRB            R0, [R6,#0xC]
15DDC6:  CBZ             R5, loc_15DDE2
15DDC8:  VMOV            S4, R5
15DDCC:  VCVT.F32.U32    S4, S4
15DDD0:  VMUL.F32        S4, S0, S4
15DDD4:  VCMP.F32        S4, S2
15DDD8:  VMRS            APSR_nzcv, FPSCR
15DDDC:  BMI             loc_15DDE2
15DDDE:  MOV             R4, R11
15DDE0:  B               loc_15DE3A
15DDE2:  MOV.W           R8, R5,LSL#1
15DDE6:  CMP             R5, #3
15DDE8:  BCC             loc_15DDF4
15DDEA:  SUBS            R0, R5, #1
15DDEC:  ANDS            R5, R0
15DDEE:  IT NE
15DDF0:  MOVNE           R5, #1
15DDF2:  B               loc_15DDF6
15DDF4:  MOVS            R5, #1
15DDF6:  VDIV.F32        S0, S2, S0
15DDFA:  VMOV            R0, S0; x
15DDFE:  BLX             ceilf
15DE02:  VMOV            S0, R0
15DE06:  ORR.W           R1, R5, R8
15DE0A:  VCVT.U32.F32    S0, S0
15DE0E:  VMOV            R0, S0
15DE12:  CMP             R1, R0
15DE14:  IT CC
15DE16:  MOVCC           R1, R0; this
15DE18:  MOV             R0, R9; int
15DE1A:  BL              sub_15CD14
15DE1E:  LDR.W           R5, [R9,#4]
15DE22:  SUBS            R0, R5, #1
15DE24:  TST             R5, R0
15DE26:  BNE             loc_15DE2C
15DE28:  ANDS            R4, R0
15DE2A:  B               loc_15DE3A
15DE2C:  CMP             R4, R5
15DE2E:  BCC             loc_15DE3A
15DE30:  MOV             R0, R4
15DE32:  MOV             R1, R5
15DE34:  BLX             sub_221798
15DE38:  MOV             R4, R1
15DE3A:  LDR.W           R0, [R9]
15DE3E:  LDR.W           R1, [R0,R4,LSL#2]
15DE42:  CBZ             R1, loc_15DE4C
15DE44:  LDR             R0, [R1]
15DE46:  STR             R0, [R6]
15DE48:  STR             R6, [R1]
15DE4A:  B               loc_15DE7E
15DE4C:  MOV             R1, R9
15DE4E:  LDR.W           R2, [R1,#8]!
15DE52:  STR             R2, [R6]
15DE54:  STR             R6, [R1]
15DE56:  STR.W           R1, [R0,R4,LSL#2]
15DE5A:  LDR             R0, [R6]
15DE5C:  CBZ             R0, loc_15DE7E
15DE5E:  LDR             R0, [R0,#4]
15DE60:  SUBS            R1, R5, #1
15DE62:  TST             R5, R1
15DE64:  BNE             loc_15DE6A
15DE66:  ANDS            R0, R1
15DE68:  B               loc_15DE76
15DE6A:  CMP             R0, R5
15DE6C:  BCC             loc_15DE76
15DE6E:  MOV             R1, R5
15DE70:  BLX             sub_221798
15DE74:  MOV             R0, R1
15DE76:  LDR.W           R1, [R9]
15DE7A:  STR.W           R6, [R1,R0,LSL#2]
15DE7E:  LDR.W           R0, [R9,#0xC]
15DE82:  ADDS            R0, #1
15DE84:  STR.W           R0, [R9,#0xC]
15DE88:  MOVS            R0, #1
15DE8A:  STRB.W          R0, [R10,#4]
15DE8E:  STR.W           R6, [R10]
15DE92:  ADD             SP, SP, #0xC
15DE94:  POP.W           {R8-R11}
15DE98:  POP             {R4-R7,PC}
