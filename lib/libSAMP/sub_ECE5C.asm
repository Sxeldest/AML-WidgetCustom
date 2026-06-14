; =========================================================
; Game Engine Function: sub_ECE5C
; Address            : 0xECE5C - 0xECE96
; =========================================================

ECE5C:  PUSH            {R4,R6,R7,LR}
ECE5E:  ADD             R7, SP, #8
ECE60:  SUB             SP, SP, #8
ECE62:  MOV             R4, R0
ECE64:  LDR             R0, [R0,#0x34]
ECE66:  STR             R1, [SP,#0x10+var_C]
ECE68:  CMP             R0, #9
ECE6A:  BHI             loc_ECE72
ECE6C:  STR.W           R1, [R4,R0,LSL#2]
ECE70:  B               loc_ECE8E
ECE72:  LDRD.W          R2, R3, [R4,#0x2C]
ECE76:  CMP             R2, R3
ECE78:  BEQ             loc_ECE82
ECE7A:  STR.W           R1, [R2],#4
ECE7E:  STR             R2, [R4,#0x2C]
ECE80:  B               loc_ECE8E
ECE82:  ADD.W           R0, R4, #0x28 ; '('
ECE86:  ADD             R1, SP, #0x10+var_C
ECE88:  BL              sub_ED3E8
ECE8C:  LDR             R0, [R4,#0x34]
ECE8E:  ADDS            R0, #1
ECE90:  STR             R0, [R4,#0x34]
ECE92:  ADD             SP, SP, #8
ECE94:  POP             {R4,R6,R7,PC}
