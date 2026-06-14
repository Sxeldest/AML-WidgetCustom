; =========================================================
; Game Engine Function: sub_F66D8
; Address            : 0xF66D8 - 0xF66EC
; =========================================================

F66D8:  LDR             R1, [R0,#4]
F66DA:  B.W             loc_F66DE
F66DE:  LDR             R2, [R0,#8]
F66E0:  CMP             R2, R1
F66E2:  IT EQ
F66E4:  BXEQ            LR
F66E6:  SUBS            R2, #4
F66E8:  STR             R2, [R0,#8]
F66EA:  B               loc_F66E0
