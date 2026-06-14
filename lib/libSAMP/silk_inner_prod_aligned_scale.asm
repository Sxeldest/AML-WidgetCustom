; =========================================================
; Game Engine Function: silk_inner_prod_aligned_scale
; Address            : 0x1AA5B8 - 0x1AA5DE
; =========================================================

1AA5B8:  PUSH            {R4,R6,R7,LR}
1AA5BA:  ADD             R7, SP, #8
1AA5BC:  MOV             R12, R0
1AA5BE:  MOVS            R0, #0
1AA5C0:  CMP             R3, #1
1AA5C2:  IT LT
1AA5C4:  POPLT           {R4,R6,R7,PC}
1AA5C6:  LDRSH.W         LR, [R12],#2
1AA5CA:  SUBS            R3, #1
1AA5CC:  LDRSH.W         R4, [R1],#2
1AA5D0:  SMULBB.W        R4, R4, LR
1AA5D4:  ASR.W           R4, R4, R2
1AA5D8:  ADD             R0, R4
1AA5DA:  BNE             loc_1AA5C6
1AA5DC:  POP             {R4,R6,R7,PC}
