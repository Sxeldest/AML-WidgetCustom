; =========================================================
; Game Engine Function: sub_A3E34
; Address            : 0xA3E34 - 0xA3EFA
; =========================================================

A3E34:  PUSH            {R4-R7,LR}
A3E36:  ADD             R7, SP, #0xC
A3E38:  PUSH.W          {R8,R9,R11}
A3E3C:  AND.W           R5, R3, R3,ASR#31
A3E40:  CMP             R3, #1
A3E42:  BLT             loc_A3E54
A3E44:  LDRB            R2, [R1,R5]
A3E46:  ADDS            R5, #1
A3E48:  LSLS            R4, R2, #8
A3E4A:  CMP             R5, R3
A3E4C:  BGE             loc_A3E5A
A3E4E:  LDRB            R2, [R1,R5]
A3E50:  ADDS            R5, #1
A3E52:  B               loc_A3E5C
A3E54:  MOVS            R4, #0
A3E56:  CMP             R5, R3
A3E58:  BLT             loc_A3E4E
A3E5A:  MOVS            R2, #0
A3E5C:  LDR             R6, [R7,#arg_0]
A3E5E:  CMP             R5, R3
A3E60:  BGE             loc_A3E6A
A3E62:  LDRB.W          R8, [R1,R5]
A3E66:  ADDS            R5, #1
A3E68:  B               loc_A3E6E
A3E6A:  MOV.W           R8, #0
A3E6E:  ORR.W           R12, R4, R2
A3E72:  MLA.W           R2, R8, R6, R5
A3E76:  MOV.W           LR, #0
A3E7A:  MOV.W           R9, #0
A3E7E:  CMP             R3, R2
A3E80:  MOV             R5, R2
A3E82:  IT LT
A3E84:  MOVLT           R5, R3
A3E86:  CMP             R2, #0
A3E88:  IT MI
A3E8A:  MOVMI           R5, R3
A3E8C:  CMP.W           R8, #0
A3E90:  BEQ             loc_A3ECA
A3E92:  MOV             R6, R8
A3E94:  B               loc_A3EA6
A3E96:  LDRB            R2, [R1,R5]
A3E98:  ADDS            R5, #1
A3E9A:  MOV.W           R4, R9,LSL#8
A3E9E:  ORR.W           R9, R4, R2
A3EA2:  SUBS            R6, #1
A3EA4:  BEQ             loc_A3EAE
A3EA6:  CMP             R5, R3
A3EA8:  BLT             loc_A3E96
A3EAA:  MOVS            R2, #0
A3EAC:  B               loc_A3E9A
A3EAE:  MOVS            R6, #0
A3EB0:  MOV             R2, R8
A3EB2:  B               loc_A3EC2
A3EB4:  LDRB            R4, [R1,R5]
A3EB6:  ADDS            R5, #1
A3EB8:  LSLS            R6, R6, #8
A3EBA:  SUBS            R2, #1
A3EBC:  ORR.W           R6, R6, R4
A3EC0:  BEQ             loc_A3ECC
A3EC2:  CMP             R5, R3
A3EC4:  BLT             loc_A3EB4
A3EC6:  MOVS            R4, #0
A3EC8:  B               loc_A3EB8
A3ECA:  MOVS            R6, #0
A3ECC:  ADD.W           R2, R12, #1
A3ED0:  SUB.W           R6, R6, R9
A3ED4:  STRD.W          LR, LR, [R0]
A3ED8:  MLA.W           R2, R8, R2, R9
A3EDC:  STR.W           LR, [R0,#8]
A3EE0:  ADDS            R2, #2
A3EE2:  ORRS.W          R5, R6, R2
A3EE6:  BMI             loc_A3EF4
A3EE8:  SUBS            R3, R3, R2
A3EEA:  ITTTT GE
A3EEC:  CMPGE           R3, R6
A3EEE:  STRGE           R6, [R0,#8]
A3EF0:  ADDGE           R1, R2
A3EF2:  STRGE           R1, [R0]
A3EF4:  POP.W           {R8,R9,R11}
A3EF8:  POP             {R4-R7,PC}
