; =========================================================
; Game Engine Function: sub_118D14
; Address            : 0x118D14 - 0x118D5A
; =========================================================

118D14:  PUSH            {R4-R7,LR}
118D16:  ADD             R7, SP, #0xC
118D18:  PUSH.W          {R11}
118D1C:  SUB             SP, SP, #8
118D1E:  MOV             R6, R0
118D20:  MOV             R5, R0
118D22:  LDR.W           R0, [R6],#0x6C
118D26:  MOV             R4, R1
118D28:  LDR             R1, [R0,#4]
118D2A:  MOV             R0, R5
118D2C:  BLX             R1
118D2E:  VMOV            S2, R0
118D32:  VLDR            S0, =32.0
118D36:  MOVW            R0, #0xA7E6
118D3A:  MOV             R1, R4
118D3C:  VMUL.F32        S0, S2, S0
118D40:  MOVT            R0, #0xFF1E
118D44:  STR             R0, [SP,#0x18+var_18]
118D46:  MOV             R0, R5
118D48:  MOV             R2, R6
118D4A:  VMOV            R3, S0
118D4E:  BL              sub_118B08
118D52:  ADD             SP, SP, #8
118D54:  POP.W           {R11}
118D58:  POP             {R4-R7,PC}
