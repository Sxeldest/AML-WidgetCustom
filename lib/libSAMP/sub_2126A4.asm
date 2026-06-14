; =========================================================
; Game Engine Function: sub_2126A4
; Address            : 0x2126A4 - 0x2126C4
; =========================================================

2126A4:  PUSH            {R4,R5,R7,LR}
2126A6:  ADD             R7, SP, #8
2126A8:  MOV             R2, R1
2126AA:  LDRB            R4, [R1]
2126AC:  LDR.W           R3, [R2,#4]!
2126B0:  ANDS.W          R5, R4, #1
2126B4:  IT EQ
2126B6:  LSREQ           R3, R4, #1
2126B8:  LDR             R1, [R1,#8]
2126BA:  IT EQ
2126BC:  MOVEQ           R1, R2
2126BE:  STRD.W          R1, R3, [R0]
2126C2:  POP             {R4,R5,R7,PC}
