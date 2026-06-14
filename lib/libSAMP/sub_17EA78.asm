; =========================================================
; Game Engine Function: sub_17EA78
; Address            : 0x17EA78 - 0x17EA86
; =========================================================

17EA78:  LDR.W           R1, [R0,#0x9D4]
17EA7C:  MOVS            R0, #0
17EA7E:  CMP             R1, #0
17EA80:  IT GT
17EA82:  MOVGT           R0, #1
17EA84:  BX              LR
