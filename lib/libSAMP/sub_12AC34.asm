; =========================================================
; Game Engine Function: sub_12AC34
; Address            : 0x12AC34 - 0x12AC7E
; =========================================================

12AC34:  PUSH            {R4-R7,LR}
12AC36:  ADD             R7, SP, #0xC
12AC38:  PUSH.W          {R8}
12AC3C:  SUB             SP, SP, #8
12AC3E:  LDR             R4, [R0,#4]
12AC40:  MOV             R8, R3
12AC42:  LDR             R0, [R7,#arg_0]
12AC44:  MOV             R5, R2
12AC46:  MOV             R6, R1
12AC48:  BL              sub_165778
12AC4C:  LDR             R1, [R7,#arg_4]
12AC4E:  CBZ             R1, loc_12AC60
12AC50:  STR             R0, [SP,#0x18+var_18]
12AC52:  MOV             R0, R4
12AC54:  MOV             R1, R6
12AC56:  MOV             R2, R5
12AC58:  MOV             R3, R8
12AC5A:  BL              sub_17443A
12AC5E:  B               loc_12AC76
12AC60:  VLDR            S0, [R7,#arg_8]
12AC64:  MOV             R1, R6; int
12AC66:  STR             R0, [SP,#0x18+var_18]; int
12AC68:  MOV             R0, R4; int
12AC6A:  MOV             R2, R5; int
12AC6C:  MOV             R3, R8; int
12AC6E:  VSTR            S0, [SP,#0x18+var_14]
12AC72:  BL              sub_1742E2
12AC76:  ADD             SP, SP, #8
12AC78:  POP.W           {R8}
12AC7C:  POP             {R4-R7,PC}
