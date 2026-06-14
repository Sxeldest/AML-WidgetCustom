; =========================================================
; Game Engine Function: png_set_read_user_transform_fn
; Address            : 0x1FA55C - 0x1FA56E
; =========================================================

1FA55C:  LDR.W           R2, [R0,#0x13C]
1FA560:  STR.W           R1, [R0,#0x124]
1FA564:  ORR.W           R1, R2, #0x100000
1FA568:  STR.W           R1, [R0,#0x13C]
1FA56C:  BX              LR
