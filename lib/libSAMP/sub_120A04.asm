; =========================================================
; Game Engine Function: sub_120A04
; Address            : 0x120A04 - 0x120A24
; =========================================================

120A04:  PUSH            {R4,R6,R7,LR}
120A06:  ADD             R7, SP, #8
120A08:  SUB             SP, SP, #0x10
120A0A:  MOV             R4, R0
120A0C:  MOVS            R0, #0
120A0E:  STR             R0, [R4,#0x10]
120A10:  STR             R2, [SP,#0x18+var_C]
120A12:  STRD.W          R3, R1, [SP,#0x18+var_14]
120A16:  ADD             R1, SP, #0x18+var_14
120A18:  MOV             R0, R4
120A1A:  BL              sub_120CC8
120A1E:  MOV             R0, R4
120A20:  ADD             SP, SP, #0x10
120A22:  POP             {R4,R6,R7,PC}
