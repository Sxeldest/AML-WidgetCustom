; =========================================================
; Game Engine Function: png_set_expand_gray_1_2_4_to_8
; Address            : 0x1FA2BC - 0x1FA2E6
; =========================================================

1FA2BC:  CMP             R0, #0
1FA2BE:  IT EQ
1FA2C0:  BXEQ            LR
1FA2C2:  LDR.W           R1, [R0,#0x138]
1FA2C6:  TST.W           R1, #0x40
1FA2CA:  BNE             loc_1FA2DE
1FA2CC:  LDR.W           R2, [R0,#0x13C]
1FA2D0:  ORR.W           R1, R1, #0x4000
1FA2D4:  ORR.W           R2, R2, #0x1000
1FA2D8:  STRD.W          R1, R2, [R0,#0x138]
1FA2DC:  BX              LR
1FA2DE:  LDR             R1, =(aInvalidAfterPn - 0x1FA2E4); "invalid after png_start_read_image or p"...
1FA2E0:  ADD             R1, PC; "invalid after png_start_read_image or p"...
1FA2E2:  B.W             j_j_png_app_error
