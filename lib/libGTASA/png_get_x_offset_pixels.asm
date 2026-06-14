; =========================================================
; Game Engine Function: png_get_x_offset_pixels
; Address            : 0x1F3380 - 0x1F33A4
; =========================================================

1F3380:  MOV             R2, R0
1F3382:  CMP             R2, #0
1F3384:  MOV.W           R0, #0
1F3388:  IT NE
1F338A:  CMPNE           R1, #0
1F338C:  BEQ             locret_1F33A2
1F338E:  LDRB            R0, [R1,#9]
1F3390:  LSLS            R0, R0, #0x1F
1F3392:  BEQ             loc_1F339A
1F3394:  LDRB.W          R0, [R1,#0xBC]
1F3398:  CBZ             R0, loc_1F339E
1F339A:  MOVS            R0, #0
1F339C:  BX              LR
1F339E:  LDR.W           R0, [R1,#0xB4]
1F33A2:  BX              LR
