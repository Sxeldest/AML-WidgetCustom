; =========================================================
; Game Engine Function: png_free
; Address            : 0x1F3FB4 - 0x1F3FCE
; =========================================================

1F3FB4:  CMP             R0, #0
1F3FB6:  IT NE
1F3FB8:  CMPNE           R1, #0
1F3FBA:  BEQ             locret_1F3FCC
1F3FBC:  LDR.W           R2, [R0,#0x31C]
1F3FC0:  CMP             R2, #0
1F3FC2:  ITT EQ
1F3FC4:  MOVEQ           R0, R1; p
1F3FC6:  BEQ.W           j_free
1F3FCA:  BX              R2
1F3FCC:  BX              LR
