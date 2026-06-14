; =========================================================
; Game Engine Function: sub_178F3A
; Address            : 0x178F3A - 0x178FFE
; =========================================================

178F3A:  PUSH            {R4-R7,LR}
178F3C:  ADD             R7, SP, #0xC
178F3E:  PUSH.W          {R8,R9,R11}
178F42:  LDR.W           LR, [R7,#arg_0]
178F46:  AND.W           R4, R3, R3,ASR#31
178F4A:  MOV.W           R8, #0
178F4E:  MOVS            R6, #2
178F50:  CMP             R4, R3
178F52:  BGE             loc_178F5A
178F54:  LDRB            R2, [R1,R4]
178F56:  ADDS            R4, #1
178F58:  B               loc_178F5C
178F5A:  MOVS            R2, #0
178F5C:  MOV.W           R5, R8,LSL#8
178F60:  ORR.W           R8, R5, R2
178F64:  SUBS            R6, #1
178F66:  BNE             loc_178F50
178F68:  CMP             R4, R3
178F6A:  BGE             loc_178F74
178F6C:  LDRB.W          R12, [R1,R4]
178F70:  ADDS            R4, #1
178F72:  B               loc_178F78
178F74:  MOV.W           R12, #0
178F78:  MLA.W           R2, R12, LR, R4
178F7C:  MOV.W           LR, #0
178F80:  MOV.W           R9, #0
178F84:  CMP             R3, R2
178F86:  MOV             R5, R2
178F88:  IT LT
178F8A:  MOVLT           R5, R3
178F8C:  CMP             R2, #0
178F8E:  IT MI
178F90:  MOVMI           R5, R3
178F92:  CMP.W           R12, #0
178F96:  BEQ             loc_178FCE
178F98:  MOV             R6, R12
178F9A:  CMP             R5, R3
178F9C:  BGE             loc_178FA4
178F9E:  LDRB            R2, [R1,R5]
178FA0:  ADDS            R5, #1
178FA2:  B               loc_178FA6
178FA4:  MOVS            R2, #0
178FA6:  MOV.W           R4, R9,LSL#8
178FAA:  ORR.W           R9, R4, R2
178FAE:  SUBS            R6, #1
178FB0:  BNE             loc_178F9A
178FB2:  MOVS            R6, #0
178FB4:  MOV             R2, R12
178FB6:  CMP             R5, R3
178FB8:  BGE             loc_178FC0
178FBA:  LDRB            R4, [R1,R5]
178FBC:  ADDS            R5, #1
178FBE:  B               loc_178FC2
178FC0:  MOVS            R4, #0
178FC2:  LSLS            R6, R6, #8
178FC4:  SUBS            R2, #1
178FC6:  ORR.W           R6, R6, R4
178FCA:  BNE             loc_178FB6
178FCC:  B               loc_178FD0
178FCE:  MOVS            R6, #0
178FD0:  ADD.W           R2, R8, #1
178FD4:  SUB.W           R6, R6, R9
178FD8:  STRD.W          LR, LR, [R0]
178FDC:  MLA.W           R2, R12, R2, R9
178FE0:  STR.W           LR, [R0,#8]
178FE4:  ADDS            R2, #2
178FE6:  ORRS.W          R5, R6, R2
178FEA:  BMI             loc_178FF8
178FEC:  SUBS            R3, R3, R2
178FEE:  ITTTT GE
178FF0:  CMPGE           R3, R6
178FF2:  STRGE           R6, [R0,#8]
178FF4:  ADDGE           R1, R2
178FF6:  STRGE           R1, [R0]
178FF8:  POP.W           {R8,R9,R11}
178FFC:  POP             {R4-R7,PC}
