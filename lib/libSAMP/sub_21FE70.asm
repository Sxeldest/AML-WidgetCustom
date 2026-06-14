; =========================================================
; Game Engine Function: sub_21FE70
; Address            : 0x21FE70 - 0x21FF74
; =========================================================

21FE70:  PUSH            {R4-R7,LR}
21FE72:  ADD             R7, SP, #0xC
21FE74:  PUSH.W          {R7-R11}
21FE78:  LDR             R5, =(unk_384168 - 0x21FE84)
21FE7A:  MOV             R10, R0
21FE7C:  LDR             R0, [R7,#arg_0]
21FE7E:  MOV             R8, R3
21FE80:  ADD             R5, PC; unk_384168
21FE82:  MOV             R11, R2
21FE84:  CMP             R0, #0
21FE86:  IT NE
21FE88:  MOVNE           R5, R0
21FE8A:  MOV             R9, R1
21FE8C:  CBZ             R2, loc_21FEB2
21FE8E:  LDRB            R0, [R5,#2]
21FE90:  CBNZ            R0, loc_21FE9A
21FE92:  LDRB            R0, [R5,#1]
21FE94:  CBNZ            R0, loc_21FE9A
21FE96:  LDRB            R0, [R5]
21FE98:  CBZ             R0, loc_21FEB2
21FE9A:  LDR.W           R0, [R9]
21FE9E:  LDRSB.W         R0, [R0]
21FEA2:  CMP             R0, #0
21FEA4:  BMI             loc_21FEB2
21FEA6:  MOV             R0, R5
21FEA8:  BL              sub_21FF78
21FEAC:  MOV.W           R6, #0xFFFFFFFF
21FEB0:  B               loc_21FF56
21FEB2:  CMP.W           R10, #0
21FEB6:  BEQ             loc_21FF04
21FEB8:  STR             R5, [SP,#0x20+var_20]
21FEBA:  MOVS            R5, #0
21FEBC:  MOVS            R4, #0
21FEBE:  MOVS            R6, #0
21FEC0:  LDR.W           R0, [R9]
21FEC4:  ADDS            R1, R0, R4
21FEC6:  CMP             R4, R11
21FEC8:  IT CC
21FECA:  CMPCC           R6, R8
21FECC:  BCS             loc_21FF40
21FECE:  LDRSB.W         R0, [R1]
21FED2:  CMP             R0, #0
21FED4:  BMI             loc_21FEE4
21FED6:  UXTB            R0, R0
21FED8:  STR.W           R0, [R10,R6,LSL#2]
21FEDC:  LDRB            R0, [R1]
21FEDE:  CBZ             R0, loc_21FF4C
21FEE0:  MOVS            R0, #1
21FEE2:  B               loc_21FEFC
21FEE4:  LDR             R3, [SP,#0x20+var_20]
21FEE6:  ADD.W           R0, R10, R5
21FEEA:  SUB.W           R2, R11, R4
21FEEE:  BL              sub_21FE54
21FEF2:  ADDS            R1, R0, #2
21FEF4:  BEQ             loc_21FF5E
21FEF6:  CBZ             R0, loc_21FF4C
21FEF8:  ADDS            R1, R0, #1
21FEFA:  BEQ             loc_21FF66
21FEFC:  ADD             R4, R0
21FEFE:  ADDS            R5, #4
21FF00:  ADDS            R6, #1
21FF02:  B               loc_21FEC0
21FF04:  MOVS            R4, #0
21FF06:  MOVS            R6, #0
21FF08:  CMP             R4, R11
21FF0A:  BCS             loc_21FF3A
21FF0C:  LDR.W           R0, [R9]
21FF10:  LDRSB           R1, [R0,R4]
21FF12:  CMP             R1, #0
21FF14:  BMI             loc_21FF1C
21FF16:  BEQ             loc_21FF3A
21FF18:  MOVS            R0, #1
21FF1A:  B               loc_21FF34
21FF1C:  ADDS            R1, R0, R4
21FF1E:  SUB.W           R2, R11, R4
21FF22:  MOVS            R0, #0
21FF24:  MOV             R3, R5
21FF26:  BL              sub_21FE54
21FF2A:  ADDS            R1, R0, #2
21FF2C:  BEQ             loc_21FEA6
21FF2E:  CBZ             R0, loc_21FF3A
21FF30:  ADDS            R1, R0, #1
21FF32:  BEQ             loc_21FEA6
21FF34:  ADD             R4, R0
21FF36:  ADDS            R6, #1
21FF38:  B               loc_21FF08
21FF3A:  MOVS            R0, #0
21FF3C:  STR             R0, [R5]
21FF3E:  B               loc_21FF56
21FF40:  LDR             R2, [SP,#0x20+var_20]
21FF42:  MOVS            R0, #0
21FF44:  STR.W           R1, [R9]
21FF48:  STR             R0, [R2]
21FF4A:  B               loc_21FF56
21FF4C:  LDR             R1, [SP,#0x20+var_20]
21FF4E:  MOVS            R0, #0
21FF50:  STR.W           R0, [R9]
21FF54:  STR             R0, [R1]
21FF56:  MOV             R0, R6
21FF58:  POP.W           {R3,R8-R11}
21FF5C:  POP             {R4-R7,PC}
21FF5E:  LDR.W           R0, [R9]
21FF62:  ADD             R0, R11
21FF64:  B               loc_21FF6C
21FF66:  LDR.W           R0, [R9]
21FF6A:  ADD             R0, R4
21FF6C:  STR.W           R0, [R9]
21FF70:  LDR             R0, [SP,#0x20+var_20]
21FF72:  B               loc_21FEA8
