; =========================================================
; Game Engine Function: silk_inner_prod_aligned_scale
; Address            : 0xCC7F8 - 0xCC81E
; =========================================================

CC7F8:  PUSH            {R4,R6,R7,LR}
CC7FA:  ADD             R7, SP, #8
CC7FC:  MOV             R12, R0
CC7FE:  MOVS            R0, #0
CC800:  CMP             R3, #1
CC802:  IT LT
CC804:  POPLT           {R4,R6,R7,PC}
CC806:  LDRSH.W         LR, [R12],#2
CC80A:  SUBS            R3, #1
CC80C:  LDRSH.W         R4, [R1],#2
CC810:  SMULBB.W        R4, R4, LR
CC814:  ASR.W           R4, R4, R2
CC818:  ADD             R0, R4
CC81A:  BNE             loc_CC806
CC81C:  POP             {R4,R6,R7,PC}
