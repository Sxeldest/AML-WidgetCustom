; =========================================================
; Game Engine Function: _Z17_rpSizeSectRightsPKvii
; Address            : 0x2126EA - 0x212700
; =========================================================

2126EA:  LDR.W           R0, [R0,#0x84]
2126EE:  CMP             R0, #0
2126F0:  ITT NE
2126F2:  LDRNE           R0, [R0,#0x2C]
2126F4:  CMPNE           R0, #0
2126F6:  BEQ             loc_2126FC
2126F8:  MOVS            R0, #8
2126FA:  BX              LR
2126FC:  MOVS            R0, #0
2126FE:  BX              LR
