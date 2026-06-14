; =========================================================
; Game Engine Function: sub_1E3402
; Address            : 0x1E3402 - 0x1E341E
; =========================================================

1E3402:  LDR             R3, [R0,#4]
1E3404:  LDR             R2, [R1]
1E3406:  LDR             R3, [R3]
1E3408:  CMP             R3, R2
1E340A:  BNE             loc_1E3414
1E340C:  LDR             R0, [R0,#8]
1E340E:  LDR             R1, [R1,#4]
1E3410:  SUBS            R1, R1, R3
1E3412:  STR             R1, [R0]
1E3414:  SUBS            R0, R3, R2
1E3416:  CLZ.W           R0, R0
1E341A:  LSRS            R0, R0, #5
1E341C:  BX              LR
