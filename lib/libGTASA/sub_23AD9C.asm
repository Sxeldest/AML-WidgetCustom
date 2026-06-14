; =========================================================
; Game Engine Function: sub_23AD9C
; Address            : 0x23AD9C - 0x23AECC
; =========================================================

23AD9C:  PUSH            {R4-R7,LR}
23AD9E:  ADD             R7, SP, #0xC
23ADA0:  PUSH.W          {R8,R9,R11}
23ADA4:  SUB             SP, SP, #8
23ADA6:  MOV             R4, R2
23ADA8:  MOV             R6, R1
23ADAA:  MOV             R8, R0
23ADAC:  CMP             R4, #0
23ADAE:  BEQ             loc_23AE4C
23ADB0:  CMP             R4, #3
23ADB2:  BLS             loc_23AE0A
23ADB4:  BIC.W           R0, R4, #3
23ADB8:  MOVS            R1, #0
23ADBA:  CBZ             R0, loc_23AE0A
23ADBC:  VDUP.32         Q8, R1
23ADC0:  VMOV.I32        Q9, #0xFF
23ADC4:  ADD             R1, SP, #0x20+var_1C
23ADC6:  MOV             R2, R0
23ADC8:  VMOV.32         D16[0], R4
23ADCC:  MOV             R3, R6
23ADCE:  LDR.W           R5, [R3],#4
23ADD2:  SUBS            R2, #4
23ADD4:  STR             R5, [SP,#0x20+var_1C]
23ADD6:  VLD1.32         {D20[0]}, [R1@32]
23ADDA:  VMOVL.U8        Q10, D20
23ADDE:  VSHR.U16        D20, D20, #7
23ADE2:  VMOVL.U16       Q10, D20
23ADE6:  VAND            Q10, Q10, Q9
23ADEA:  VADD.I32        Q8, Q8, Q10
23ADEE:  BNE             loc_23ADCE
23ADF0:  VEXT.8          Q9, Q8, Q8, #8
23ADF4:  CMP             R0, R4
23ADF6:  VADD.I32        Q8, Q8, Q9
23ADFA:  VDUP.32         Q9, D16[1]
23ADFE:  VADD.I32        Q8, Q8, Q9
23AE02:  VMOV.32         R5, D16[0]
23AE06:  BNE             loc_23AE0E
23AE08:  B               loc_23AE1E
23AE0A:  MOVS            R0, #0
23AE0C:  MOV             R5, R4
23AE0E:  SUBS            R1, R4, R0
23AE10:  ADD             R0, R6
23AE12:  LDRB.W          R2, [R0],#1
23AE16:  SUBS            R1, #1
23AE18:  ADD.W           R5, R5, R2,LSR#7
23AE1C:  BNE             loc_23AE12
23AE1E:  LDR.W           R1, [R8,#4]
23AE22:  ADDS.W          R9, R5, #1
23AE26:  BNE             loc_23AE56
23AE28:  CBZ             R1, loc_23AE36
23AE2A:  LDR.W           R0, [R8]; p
23AE2E:  CMP             R0, #0
23AE30:  IT NE
23AE32:  BLXNE           free
23AE36:  MOV.W           R9, #0
23AE3A:  MOV.W           R5, #0xFFFFFFFF
23AE3E:  MOVS            R0, #0
23AE40:  STRD.W          R9, R9, [R8]
23AE44:  STR.W           R9, [R8,#8]
23AE48:  CBNZ            R4, loc_23AE6E
23AE4A:  B               loc_23AE9C
23AE4C:  LDR.W           R1, [R8,#4]
23AE50:  MOVS            R5, #0
23AE52:  MOV.W           R9, #1
23AE56:  LDR.W           R0, [R8]; ptr
23AE5A:  CMP             R1, R9
23AE5C:  BEQ             loc_23AE6C
23AE5E:  CBZ             R0, loc_23AEAC
23AE60:  MOV             R1, R9; size
23AE62:  BLX             realloc
23AE66:  CBZ             R0, loc_23AEB6
23AE68:  STRD.W          R0, R9, [R8]
23AE6C:  CBZ             R4, loc_23AE9C
23AE6E:  MOVS            R1, #0xC0
23AE70:  LDRB            R3, [R6]
23AE72:  SXTB            R2, R3
23AE74:  CMP             R2, #0
23AE76:  BLT             loc_23AE7E
23AE78:  STRB            R2, [R0]
23AE7A:  MOVS            R2, #1
23AE7C:  B               loc_23AE8E
23AE7E:  ORR.W           R2, R1, R3,LSR#6
23AE82:  STRB            R2, [R0]
23AE84:  LDRB            R3, [R6]
23AE86:  MOVS            R2, #2
23AE88:  BFI.W           R3, R2, #6, #0x1A
23AE8C:  STRB            R3, [R0,#1]
23AE8E:  ADD             R0, R2
23AE90:  SUBS            R4, #1
23AE92:  ADD.W           R6, R6, #1
23AE96:  BNE             loc_23AE70
23AE98:  LDR.W           R0, [R8]
23AE9C:  MOVS            R1, #0
23AE9E:  STRB            R1, [R0,R5]
23AEA0:  STR.W           R9, [R8,#8]
23AEA4:  ADD             SP, SP, #8
23AEA6:  POP.W           {R8,R9,R11}
23AEAA:  POP             {R4-R7,PC}
23AEAC:  MOV             R0, R9; byte_count
23AEAE:  BLX             malloc
23AEB2:  CMP             R0, #0
23AEB4:  BNE             loc_23AE68
23AEB6:  LDR.W           R0, [R8]; p
23AEBA:  CMP             R0, #0
23AEBC:  IT NE
23AEBE:  BLXNE           free
23AEC2:  MOV.W           R9, #0
23AEC6:  STRD.W          R9, R9, [R8]
23AECA:  B               loc_23AEA0
