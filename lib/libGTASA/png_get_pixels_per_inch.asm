; =========================================================
; Game Engine Function: png_get_pixels_per_inch
; Address            : 0x1F33C8 - 0x1F3414
; =========================================================

1F33C8:  CMP             R0, #0
1F33CA:  IT NE
1F33CC:  CMPNE           R1, #0
1F33CE:  BEQ             loc_1F33E6
1F33D0:  LDRB            R0, [R1,#8]
1F33D2:  LSLS            R0, R0, #0x18
1F33D4:  BPL             loc_1F33E6
1F33D6:  LDRB.W          R0, [R1,#0xC8]
1F33DA:  CMP             R0, #1
1F33DC:  ITT EQ
1F33DE:  LDRDEQ.W        R2, R0, [R1,#0xC0]
1F33E2:  CMPEQ           R2, R0
1F33E4:  BEQ             loc_1F340A
1F33E6:  MOVS            R2, #0
1F33E8:  PUSH            {R7,LR}
1F33EA:  MOV             R7, SP
1F33EC:  SUB             SP, SP, #8
1F33EE:  ADD             R0, SP, #0x10+var_C
1F33F0:  MOV             R1, R2
1F33F2:  MOVS            R2, #0x7F
1F33F4:  MOVW            R3, #0x1388
1F33F8:  BLX             j_png_muldiv
1F33FC:  MOV             R1, R0
1F33FE:  LDR             R0, [SP,#0x10+var_C]
1F3400:  CMP             R1, #0
1F3402:  IT EQ
1F3404:  MOVEQ           R0, R1
1F3406:  ADD             SP, SP, #8
1F3408:  POP             {R7,PC}
1F340A:  CMP             R2, #0
1F340C:  ITT LT
1F340E:  MOVLT           R0, #0
1F3410:  BXLT            LR
1F3412:  B               loc_1F33E8
