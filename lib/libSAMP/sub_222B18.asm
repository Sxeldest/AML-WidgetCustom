; =========================================================
; Game Engine Function: sub_222B18
; Address            : 0x222B18 - 0x222B44
; =========================================================

222B18:  PUSH            {R11,LR}
222B1C:  MOV             R11, SP
222B20:  SUB             SP, SP, #0x28
222B24:  MOV             R1, SP
222B28:  BL              sub_222E9C
222B2C:  LDR             R1, [SP,#0x28+var_20]
222B30:  CMP             R0, #0
222B34:  MOVNE           R1, #0
222B38:  MOV             R0, R1
222B3C:  MOV             SP, R11
222B40:  POP             {R11,PC}
