; =========================================================
; Game Engine Function: sub_21A3A8
; Address            : 0x21A3A8 - 0x21A3CE
; =========================================================

21A3A8:  PUSH            {R4,R6,R7,LR}
21A3AA:  ADD             R7, SP, #8
21A3AC:  LDRB            R0, [R0,#8]
21A3AE:  MOV             R3, R1
21A3B0:  LDR             R4, =(aFalse - 0x21A3BA); "false" ...
21A3B2:  LDR             R1, =(aTrue_0 - 0x21A3BE); "true" ...
21A3B4:  CMP             R0, #0
21A3B6:  ADD             R4, PC; "false"
21A3B8:  MOV             R0, R3
21A3BA:  ADD             R1, PC; "true"
21A3BC:  ADD.W           R2, R1, #4
21A3C0:  ITT EQ
21A3C2:  MOVEQ           R1, R4
21A3C4:  ADDEQ           R2, R4, #5
21A3C6:  POP.W           {R4,R6,R7,LR}
21A3CA:  B.W             sub_216F98
