; =========================================================
; Game Engine Function: silk_gains_ID
; Address            : 0xB7ECA - 0xB7EE2
; =========================================================

B7ECA:  MOV             R2, R0
B7ECC:  MOVS            R0, #0
B7ECE:  CMP             R1, #1
B7ED0:  IT LT
B7ED2:  BXLT            LR
B7ED4:  LDRSB.W         R3, [R2],#1
B7ED8:  SUBS            R1, #1
B7EDA:  ADD.W           R0, R3, R0,LSL#8
B7EDE:  BNE             loc_B7ED4
B7EE0:  BX              LR
