; =========================================================
; Game Engine Function: silk_scale_vector32_Q26_lshift_18
; Address            : 0xCF7B0 - 0xCF7CE
; =========================================================

CF7B0:  CMP             R2, #1
CF7B2:  IT LT
CF7B4:  BXLT            LR
CF7B6:  LDR             R3, [R0]
CF7B8:  SUBS            R2, #1
CF7BA:  SMULL.W         R3, R12, R3, R1
CF7BE:  MOV.W           R3, R3,LSR#8
CF7C2:  ORR.W           R3, R3, R12,LSL#24
CF7C6:  STR.W           R3, [R0],#4
CF7CA:  BNE             loc_CF7B6
CF7CC:  BX              LR
