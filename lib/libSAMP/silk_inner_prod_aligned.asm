; =========================================================
; Game Engine Function: silk_inner_prod_aligned
; Address            : 0x1AD58E - 0x1AD5AE
; =========================================================

1AD58E:  PUSH            {R7,LR}
1AD590:  MOV             R7, SP
1AD592:  MOV             LR, R0
1AD594:  MOVS            R0, #0
1AD596:  CMP             R2, #1
1AD598:  IT LT
1AD59A:  POPLT           {R7,PC}
1AD59C:  LDRSH.W         R12, [LR],#2
1AD5A0:  SUBS            R2, #1
1AD5A2:  LDRSH.W         R3, [R1],#2
1AD5A6:  SMLABB.W        R0, R3, R12, R0
1AD5AA:  BNE             loc_1AD59C
1AD5AC:  POP             {R7,PC}
