; =========================================================
; Game Engine Function: silk_inner_prod16_aligned_64_c
; Address            : 0x1AD5AE - 0x1AD5D0
; =========================================================

1AD5AE:  PUSH            {R4,R6,R7,LR}
1AD5B0:  ADD             R7, SP, #8
1AD5B2:  MOV             R12, R0
1AD5B4:  MOVS            R0, #0
1AD5B6:  MOVS            R3, #0
1AD5B8:  CMP             R2, #1
1AD5BA:  BLT             loc_1AD5CC
1AD5BC:  LDRSH.W         LR, [R12],#2
1AD5C0:  SUBS            R2, #1
1AD5C2:  LDRSH.W         R4, [R1],#2
1AD5C6:  SMLALBB.W       R0, R3, R4, LR
1AD5CA:  BNE             loc_1AD5BC
1AD5CC:  MOV             R1, R3
1AD5CE:  POP             {R4,R6,R7,PC}
