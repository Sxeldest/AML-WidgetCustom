; =========================================================
; Game Engine Function: png_set_tRNS_to_alpha
; Address            : 0x1FA2EC - 0x1FA31E
; =========================================================

1FA2EC:  CMP             R0, #0
1FA2EE:  IT EQ
1FA2F0:  BXEQ            LR
1FA2F2:  LDR.W           R1, [R0,#0x138]
1FA2F6:  TST.W           R1, #0x40
1FA2FA:  BNE             loc_1FA316
1FA2FC:  ORR.W           R1, R1, #0x4000
1FA300:  STR.W           R1, [R0,#0x138]
1FA304:  LDR.W           R1, [R0,#0x13C]
1FA308:  ORR.W           R1, R1, #0x2000000
1FA30C:  ORR.W           R1, R1, #0x1000
1FA310:  STR.W           R1, [R0,#0x13C]
1FA314:  BX              LR
1FA316:  LDR             R1, =(aInvalidAfterPn - 0x1FA31C); "invalid after png_start_read_image or p"...
1FA318:  ADD             R1, PC; "invalid after png_start_read_image or p"...
1FA31A:  B.W             j_j_png_app_error
