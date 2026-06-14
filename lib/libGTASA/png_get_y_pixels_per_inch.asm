; =========================================================
; Game Engine Function: png_get_y_pixels_per_inch
; Address            : 0x1F345A - 0x1F34A0
; =========================================================

1F345A:  CMP             R0, #0
1F345C:  IT NE
1F345E:  CMPNE           R1, #0
1F3460:  BEQ             loc_1F347E
1F3462:  LDRB            R0, [R1,#8]
1F3464:  LSLS            R0, R0, #0x18
1F3466:  BPL             loc_1F347E
1F3468:  LDRB.W          R0, [R1,#0xC8]
1F346C:  CMP             R0, #1
1F346E:  BNE             loc_1F347E
1F3470:  LDR.W           R1, [R1,#0xC4]
1F3474:  CMP             R1, #0
1F3476:  ITT LT
1F3478:  MOVLT           R0, #0
1F347A:  BXLT            LR
1F347C:  B               loc_1F3480
1F347E:  MOVS            R1, #0
1F3480:  PUSH            {R7,LR}
1F3482:  MOV             R7, SP
1F3484:  SUB             SP, SP, #8
1F3486:  ADD             R0, SP, #0x10+var_C
1F3488:  MOVS            R2, #0x7F
1F348A:  MOVW            R3, #0x1388
1F348E:  BLX             j_png_muldiv
1F3492:  MOV             R1, R0
1F3494:  LDR             R0, [SP,#0x10+var_C]
1F3496:  CMP             R1, #0
1F3498:  IT EQ
1F349A:  MOVEQ           R0, R1
1F349C:  ADD             SP, SP, #8
1F349E:  POP             {R7,PC}
