; =========================================================
; Game Engine Function: png_get_x_offset_inches_fixed
; Address            : 0x1F34A0 - 0x1F34D0
; =========================================================

1F34A0:  CMP             R0, #0
1F34A2:  MOV             R2, R1
1F34A4:  MOV.W           R1, #0
1F34A8:  IT NE
1F34AA:  CMPNE           R2, #0
1F34AC:  BEQ             loc_1F34C6
1F34AE:  LDRB            R1, [R2,#9]
1F34B0:  LSLS            R1, R1, #0x1F
1F34B2:  BNE             loc_1F34B8
1F34B4:  MOVS            R1, #0
1F34B6:  B               loc_1F34C6
1F34B8:  LDRB.W          R1, [R2,#0xBC]
1F34BC:  CMP             R1, #1
1F34BE:  ITE EQ
1F34C0:  LDREQ.W         R1, [R2,#0xB4]
1F34C4:  MOVNE           R1, #0
1F34C6:  MOV.W           R2, #0x1F4
1F34CA:  MOVS            R3, #0x7F
1F34CC:  B.W             j_j_png_muldiv_warn
