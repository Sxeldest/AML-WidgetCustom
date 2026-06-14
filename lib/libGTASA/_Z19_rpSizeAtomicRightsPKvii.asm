; =========================================================
; Game Engine Function: _Z19_rpSizeAtomicRightsPKvii
; Address            : 0x213946 - 0x21395A
; =========================================================

213946:  LDR             R0, [R0,#0x6C]
213948:  CMP             R0, #0
21394A:  ITT NE
21394C:  LDRNE           R0, [R0,#0x2C]
21394E:  CMPNE           R0, #0
213950:  BEQ             loc_213956
213952:  MOVS            R0, #8
213954:  BX              LR
213956:  MOVS            R0, #0
213958:  BX              LR
