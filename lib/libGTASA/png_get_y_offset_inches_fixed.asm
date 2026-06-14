; =========================================================
; Game Engine Function: png_get_y_offset_inches_fixed
; Address            : 0x1F34D0 - 0x1F3500
; =========================================================

1F34D0:  CMP             R0, #0
1F34D2:  MOV             R2, R1
1F34D4:  MOV.W           R1, #0
1F34D8:  IT NE
1F34DA:  CMPNE           R2, #0
1F34DC:  BEQ             loc_1F34F6
1F34DE:  LDRB            R1, [R2,#9]
1F34E0:  LSLS            R1, R1, #0x1F
1F34E2:  BNE             loc_1F34E8
1F34E4:  MOVS            R1, #0
1F34E6:  B               loc_1F34F6
1F34E8:  LDRB.W          R1, [R2,#0xBC]
1F34EC:  CMP             R1, #1
1F34EE:  ITE EQ
1F34F0:  LDREQ.W         R1, [R2,#0xB8]
1F34F4:  MOVNE           R1, #0
1F34F6:  MOV.W           R2, #0x1F4
1F34FA:  MOVS            R3, #0x7F
1F34FC:  B.W             j_j_png_muldiv_warn
