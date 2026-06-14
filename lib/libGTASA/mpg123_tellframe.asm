; =========================================================
; Game Engine Function: mpg123_tellframe
; Address            : 0x2313C8 - 0x2313FE
; =========================================================

2313C8:  CMP             R0, #0
2313CA:  ITTT EQ
2313CC:  MOVEQ.W         R1, #0xFFFFFFFF
2313D0:  MOVEQ           R0, R1
2313D2:  BXEQ            LR
2313D4:  MOVW            R1, #0xB2D0
2313D8:  MOVW            R2, #0x9314
2313DC:  LDR             R1, [R0,R1]
2313DE:  LDR             R2, [R0,R2]
2313E0:  CMP             R2, R1
2313E2:  BLT             loc_2313FA
2313E4:  MOVW            R1, #0xB2C8
2313E8:  LDR             R1, [R0,R1]
2313EA:  CBNZ            R1, loc_2313F8
2313EC:  MOVW            R1, #0xB2A8
2313F0:  LDR             R0, [R0,R1]
2313F2:  CMP             R0, #0
2313F4:  IT EQ
2313F6:  ADDEQ           R2, #1
2313F8:  MOV             R1, R2
2313FA:  MOV             R0, R1
2313FC:  BX              LR
