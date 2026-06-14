; =========================================================
; Game Engine Function: sub_222B44
; Address            : 0x222B44 - 0x222B70
; =========================================================

222B44:  PUSH            {R11,LR}
222B48:  MOV             R11, SP
222B4C:  SUB             SP, SP, #0x28
222B50:  MOV             R1, SP
222B54:  BL              sub_222E9C
222B58:  LDR             R1, [SP,#0x28+var_28]
222B5C:  CMP             R0, #0
222B60:  MOVNE           R1, #0
222B64:  MOV             R0, R1
222B68:  MOV             SP, R11
222B6C:  POP             {R11,PC}
