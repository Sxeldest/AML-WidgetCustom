; =========================================================
; Game Engine Function: silk_scale_vector32_Q26_lshift_18
; Address            : 0x1AD570 - 0x1AD58E
; =========================================================

1AD570:  CMP             R2, #1
1AD572:  IT LT
1AD574:  BXLT            LR
1AD576:  LDR             R3, [R0]
1AD578:  SUBS            R2, #1
1AD57A:  SMULL.W         R3, R12, R3, R1
1AD57E:  MOV.W           R3, R3,LSR#8
1AD582:  ORR.W           R3, R3, R12,LSL#24
1AD586:  STR.W           R3, [R0],#4
1AD58A:  BNE             loc_1AD576
1AD58C:  BX              LR
