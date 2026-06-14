; =========================================================
; Game Engine Function: png_gamma_significant
; Address            : 0x1F0FA8 - 0x1F0FBE
; =========================================================

1F0FA8:  SUB.W           R0, R0, #0x17000
1F0FAC:  MOVW            R2, #0x2710
1F0FB0:  SUB.W           R1, R0, #0x318
1F0FB4:  MOVS            R0, #0
1F0FB6:  CMP             R1, R2
1F0FB8:  IT HI
1F0FBA:  MOVHI           R0, #1
1F0FBC:  BX              LR
