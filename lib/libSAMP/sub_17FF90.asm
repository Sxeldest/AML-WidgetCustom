; =========================================================
; Game Engine Function: sub_17FF90
; Address            : 0x17FF90 - 0x17FFBE
; =========================================================

17FF90:  PUSH            {R4-R7,LR}
17FF92:  ADD             R7, SP, #0xC
17FF94:  PUSH.W          {R11}
17FF98:  SUB             SP, SP, #0x20
17FF9A:  ADD             R5, SP, #0x30+var_20
17FF9C:  MOV             R4, R0
17FF9E:  MOV             R0, R5
17FFA0:  BL              sub_184910
17FFA4:  MOV             R6, SP
17FFA6:  MOV             R0, R6
17FFA8:  BL              sub_184910
17FFAC:  MOV             R0, R4
17FFAE:  MOV             R1, R5
17FFB0:  MOV             R2, R6
17FFB2:  BL              sub_17FFBE
17FFB6:  ADD             SP, SP, #0x20 ; ' '
17FFB8:  POP.W           {R11}
17FFBC:  POP             {R4-R7,PC}
