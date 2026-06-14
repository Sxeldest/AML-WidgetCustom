; =========================================================
; Game Engine Function: sub_FA948
; Address            : 0xFA948 - 0xFA968
; =========================================================

FA948:  PUSH            {R4,R5,R7,LR}
FA94A:  ADD             R7, SP, #8
FA94C:  MOV             R2, R1
FA94E:  LDRB            R4, [R1]
FA950:  LDR.W           R3, [R2,#4]!
FA954:  ANDS.W          R5, R4, #1
FA958:  IT EQ
FA95A:  LSREQ           R3, R4, #1
FA95C:  LDR             R1, [R1,#8]
FA95E:  IT EQ
FA960:  MOVEQ           R1, R2
FA962:  STRD.W          R1, R3, [R0]
FA966:  POP             {R4,R5,R7,PC}
