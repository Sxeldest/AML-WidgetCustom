; =========================================================
; Game Engine Function: sub_15DF86
; Address            : 0x15DF86 - 0x15DF9A
; =========================================================

15DF86:  PUSH            {R7,LR}
15DF88:  MOV             R7, SP
15DF8A:  LDR             R0, [R0,#8]
15DF8C:  MOVS            R1, #4
15DF8E:  BL              sub_164B08
15DF92:  ORRS            R0, R1
15DF94:  IT NE
15DF96:  MOVNE           R0, #1
15DF98:  POP             {R7,PC}
