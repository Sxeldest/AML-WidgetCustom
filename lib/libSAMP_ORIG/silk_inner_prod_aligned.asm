; =========================================================
; Game Engine Function: silk_inner_prod_aligned
; Address            : 0xCF7CE - 0xCF7EE
; =========================================================

CF7CE:  PUSH            {R7,LR}
CF7D0:  MOV             R7, SP
CF7D2:  MOV             LR, R0
CF7D4:  MOVS            R0, #0
CF7D6:  CMP             R2, #1
CF7D8:  IT LT
CF7DA:  POPLT           {R7,PC}
CF7DC:  LDRSH.W         R12, [LR],#2
CF7E0:  SUBS            R2, #1
CF7E2:  LDRSH.W         R3, [R1],#2
CF7E6:  SMLABB.W        R0, R3, R12, R0
CF7EA:  BNE             loc_CF7DC
CF7EC:  POP             {R7,PC}
