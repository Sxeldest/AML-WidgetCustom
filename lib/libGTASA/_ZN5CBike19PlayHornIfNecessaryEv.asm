; =========================================================
; Game Engine Function: _ZN5CBike19PlayHornIfNecessaryEv
; Address            : 0x56528C - 0x56529E
; =========================================================

56528C:  LDRB.W          R1, [R0,#0x3DF]
565290:  LSLS            R1, R1, #0x1E
565292:  IT EQ
565294:  BXEQ            LR
565296:  LDR             R1, [R0]
565298:  LDR.W           R1, [R1,#0xDC]
56529C:  BX              R1
