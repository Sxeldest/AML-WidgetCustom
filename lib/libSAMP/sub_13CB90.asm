; =========================================================
; Game Engine Function: sub_13CB90
; Address            : 0x13CB90 - 0x13CBC8
; =========================================================

13CB90:  PUSH            {R4,R5,R7,LR}
13CB92:  ADD             R7, SP, #8
13CB94:  SUB             SP, SP, #8
13CB96:  MOV             R5, R0
13CB98:  MOV             R4, R1
13CB9A:  LDR             R0, [R0,#0x60]
13CB9C:  LDR             R1, [R5,#0x64]
13CB9E:  STRD.W          R4, R2, [SP,#0x10+var_10]
13CBA2:  CMP             R0, R1
13CBA4:  BEQ             loc_13CBB2
13CBA6:  LDRD.W          R1, R2, [SP,#0x10+var_10]
13CBAA:  STRD.W          R1, R2, [R0],#8
13CBAE:  STR             R0, [R5,#0x60]
13CBB0:  B               loc_13CBBC
13CBB2:  ADD.W           R0, R5, #0x5C ; '\'
13CBB6:  MOV             R1, SP
13CBB8:  BL              sub_13CCEC
13CBBC:  MOV             R0, R5
13CBBE:  MOV             R1, R4
13CBC0:  BL              sub_12BDF6
13CBC4:  ADD             SP, SP, #8
13CBC6:  POP             {R4,R5,R7,PC}
