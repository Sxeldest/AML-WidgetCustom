; =========================================================
; Game Engine Function: sub_109FEA
; Address            : 0x109FEA - 0x109FFC
; =========================================================

109FEA:  PUSH            {R7,LR}
109FEC:  MOV             R7, SP
109FEE:  LDR             R0, [R0,#8]
109FF0:  BL              sub_108354
109FF4:  CMP             R0, #0
109FF6:  IT NE
109FF8:  MOVNE           R0, #1
109FFA:  POP             {R7,PC}
