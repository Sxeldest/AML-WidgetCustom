; =========================================================
; Game Engine Function: silk_inner_prod16_aligned_64_c
; Address            : 0xCF7EE - 0xCF810
; =========================================================

CF7EE:  PUSH            {R4,R6,R7,LR}
CF7F0:  ADD             R7, SP, #8
CF7F2:  MOV             R12, R0
CF7F4:  MOVS            R0, #0
CF7F6:  MOVS            R3, #0
CF7F8:  CMP             R2, #1
CF7FA:  BLT             loc_CF80C
CF7FC:  LDRSH.W         LR, [R12],#2
CF800:  SUBS            R2, #1
CF802:  LDRSH.W         R4, [R1],#2
CF806:  SMLALBB.W       R0, R3, R4, LR
CF80A:  BNE             loc_CF7FC
CF80C:  MOV             R1, R3
CF80E:  POP             {R4,R6,R7,PC}
