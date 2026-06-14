; =========================================================
; Game Engine Function: sub_118D60
; Address            : 0x118D60 - 0x118DB4
; =========================================================

118D60:  PUSH            {R4-R7,LR}
118D62:  ADD             R7, SP, #0xC
118D64:  PUSH.W          {R11}
118D68:  SUB             SP, SP, #8
118D6A:  MOV             R6, R0
118D6C:  MOV             R5, R0
118D6E:  LDR.W           R0, [R6],#0x68
118D72:  MOV             R4, R1
118D74:  LDR             R1, [R0,#4]
118D76:  MOV             R0, R5
118D78:  BLX             R1
118D7A:  VMOV            S6, R0
118D7E:  VLDR            S0, =0.1
118D82:  VMOV            S2, R4
118D86:  VLDR            S4, =-96.0
118D8A:  MOVW            R0, #0xCA60
118D8E:  MOV             R2, R6
118D90:  VMUL.F32        S0, S2, S0
118D94:  MOVT            R0, #0xFF5D
118D98:  VMUL.F32        S2, S6, S4
118D9C:  STR             R0, [SP,#0x18+var_18]
118D9E:  MOV             R0, R5
118DA0:  VMOV            R1, S0
118DA4:  VMOV            R3, S2
118DA8:  BL              sub_118B08
118DAC:  ADD             SP, SP, #8
118DAE:  POP.W           {R11}
118DB2:  POP             {R4-R7,PC}
