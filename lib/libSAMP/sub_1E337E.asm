; =========================================================
; Game Engine Function: sub_1E337E
; Address            : 0x1E337E - 0x1E3398
; =========================================================

1E337E:  LDR             R3, [R0,#4]
1E3380:  LDR             R2, [R1]
1E3382:  LDR             R3, [R3]
1E3384:  CMP             R3, R2
1E3386:  ITTT EQ
1E3388:  LDREQ           R0, [R0,#8]
1E338A:  LDREQ           R1, [R1,#0xC]
1E338C:  STREQ           R1, [R0]
1E338E:  SUBS            R0, R3, R2
1E3390:  CLZ.W           R0, R0
1E3394:  LSRS            R0, R0, #5
1E3396:  BX              LR
