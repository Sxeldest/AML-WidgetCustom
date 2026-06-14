; =========================================================
; Game Engine Function: png_set_expand_16
; Address            : 0x1FA324 - 0x1FA356
; =========================================================

1FA324:  CMP             R0, #0
1FA326:  IT EQ
1FA328:  BXEQ            LR
1FA32A:  LDR.W           R1, [R0,#0x138]
1FA32E:  TST.W           R1, #0x40
1FA332:  BNE             loc_1FA34E
1FA334:  ORR.W           R1, R1, #0x4000
1FA338:  STR.W           R1, [R0,#0x138]
1FA33C:  LDR.W           R1, [R0,#0x13C]
1FA340:  ORR.W           R1, R1, #0x2000000
1FA344:  ORR.W           R1, R1, #0x1200
1FA348:  STR.W           R1, [R0,#0x13C]
1FA34C:  BX              LR
1FA34E:  LDR             R1, =(aInvalidAfterPn - 0x1FA354); "invalid after png_start_read_image or p"...
1FA350:  ADD             R1, PC; "invalid after png_start_read_image or p"...
1FA352:  B.W             j_j_png_app_error
