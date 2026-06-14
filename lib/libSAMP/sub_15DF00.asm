; =========================================================
; Game Engine Function: sub_15DF00
; Address            : 0x15DF00 - 0x15DF12
; =========================================================

15DF00:  PUSH            {R7,LR}
15DF02:  MOV             R7, SP
15DF04:  LDR             R0, [R0,#8]
15DF06:  BL              sub_164BBC
15DF0A:  CLZ.W           R0, R0
15DF0E:  LSRS            R0, R0, #5
15DF10:  POP             {R7,PC}
