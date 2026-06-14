; =========================================================
; Game Engine Function: png_set_expand
; Address            : 0x1FA24C - 0x1FA27E
; =========================================================

1FA24C:  CMP             R0, #0
1FA24E:  IT EQ
1FA250:  BXEQ            LR
1FA252:  LDR.W           R1, [R0,#0x138]
1FA256:  TST.W           R1, #0x40
1FA25A:  BNE             loc_1FA276
1FA25C:  ORR.W           R1, R1, #0x4000
1FA260:  STR.W           R1, [R0,#0x138]
1FA264:  LDR.W           R1, [R0,#0x13C]
1FA268:  ORR.W           R1, R1, #0x2000000
1FA26C:  ORR.W           R1, R1, #0x1000
1FA270:  STR.W           R1, [R0,#0x13C]
1FA274:  BX              LR
1FA276:  LDR             R1, =(aInvalidAfterPn - 0x1FA27C); "invalid after png_start_read_image or p"...
1FA278:  ADD             R1, PC; "invalid after png_start_read_image or p"...
1FA27A:  B.W             j_j_png_app_error
