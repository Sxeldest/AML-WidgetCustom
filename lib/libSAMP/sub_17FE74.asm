; =========================================================
; Game Engine Function: sub_17FE74
; Address            : 0x17FE74 - 0x17FE9E
; =========================================================

17FE74:  PUSH            {R4,R6,R7,LR}
17FE76:  ADD             R7, SP, #8
17FE78:  MOV             R4, R0
17FE7A:  MOVS            R0, #1
17FE7C:  STRB            R0, [R4,#5]
17FE7E:  LDRB            R0, [R4,#4]
17FE80:  CBNZ            R0, loc_17FE96
17FE82:  MOV             R0, R4
17FE84:  BL              sub_183A60
17FE88:  LDR.W           R0, [R4,#0x7E8]
17FE8C:  CMP             R0, #0
17FE8E:  BMI             loc_17FE7E
17FE90:  BL              sub_186FEC
17FE94:  B               loc_17FE7E
17FE96:  MOVS            R0, #0
17FE98:  STRB            R0, [R4,#5]
17FE9A:  MOVS            R0, #0
17FE9C:  POP             {R4,R6,R7,PC}
