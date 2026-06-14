; =========================================================
; Game Engine Function: sub_13BF3C
; Address            : 0x13BF3C - 0x13BF74
; =========================================================

13BF3C:  PUSH            {R4,R5,R7,LR}
13BF3E:  ADD             R7, SP, #8
13BF40:  SUB             SP, SP, #8
13BF42:  MOV             R5, R0
13BF44:  MOV             R4, R1
13BF46:  LDR             R0, [R0,#0x60]
13BF48:  LDR             R1, [R5,#0x64]
13BF4A:  STRD.W          R4, R2, [SP,#0x10+var_10]
13BF4E:  CMP             R0, R1
13BF50:  BEQ             loc_13BF5E
13BF52:  LDRD.W          R1, R2, [SP,#0x10+var_10]
13BF56:  STRD.W          R1, R2, [R0],#8
13BF5A:  STR             R0, [R5,#0x60]
13BF5C:  B               loc_13BF68
13BF5E:  ADD.W           R0, R5, #0x5C ; '\'
13BF62:  MOV             R1, SP
13BF64:  BL              sub_13C3B0
13BF68:  MOV             R0, R5
13BF6A:  MOV             R1, R4
13BF6C:  BL              sub_12BDF6
13BF70:  ADD             SP, SP, #8
13BF72:  POP             {R4,R5,R7,PC}
