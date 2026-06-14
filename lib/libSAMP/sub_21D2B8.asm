; =========================================================
; Game Engine Function: sub_21D2B8
; Address            : 0x21D2B8 - 0x21D2D8
; =========================================================

21D2B8:  PUSH            {R4,R6,R7,LR}
21D2BA:  ADD             R7, SP, #8
21D2BC:  LDR             R0, [R0,#8]
21D2BE:  MOV             R4, R1
21D2C0:  LDR             R1, [R0]
21D2C2:  LDR             R2, [R1,#0x10]
21D2C4:  MOV             R1, R4
21D2C6:  BLX             R2
21D2C8:  LDR             R1, =(asc_84C32 - 0x21D2D0); " " ...
21D2CA:  MOV             R0, R4
21D2CC:  ADD             R1, PC; " "
21D2CE:  ADDS            R2, R1, #1
21D2D0:  POP.W           {R4,R6,R7,LR}
21D2D4:  B.W             sub_216F98
