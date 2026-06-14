; =========================================================
; Game Engine Function: sub_222B88
; Address            : 0x222B88 - 0x222BB0
; =========================================================

222B88:  PUSH            {R11,LR}
222B8C:  MOV             R11, SP
222B90:  MOV             R0, R1
222B94:  BL              sub_222E84
222B98:  MOV             R1, #9
222B9C:  CMP             R0, #0
222BA0:  MOVWEQ          R1, #5
222BA4:  SUBS            R0, R0, #1
222BA8:  MOVNE           R0, R1
222BAC:  POP             {R11,PC}
