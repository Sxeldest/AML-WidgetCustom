; =========================================================
; Game Engine Function: _ZN11CFileLoader15LoadBoundingBoxEPhR12CBoundingBox
; Address            : 0x3F03B0 - 0x3F03DA
; =========================================================

3F03B0:  LDR             R2, [R0]
3F03B2:  STR             R2, [R1,#0x24]
3F03B4:  VLDR            D16, [R0,#4]
3F03B8:  LDR             R2, [R0,#0xC]
3F03BA:  STR             R2, [R1,#0x20]
3F03BC:  VSTR            D16, [R1,#0x18]
3F03C0:  VLDR            D16, [R0,#0x10]
3F03C4:  LDR             R2, [R0,#0x18]
3F03C6:  STR             R2, [R1,#8]
3F03C8:  VSTR            D16, [R1]
3F03CC:  VLDR            D16, [R0,#0x1C]
3F03D0:  LDR             R0, [R0,#0x24]
3F03D2:  STR             R0, [R1,#0x14]
3F03D4:  VSTR            D16, [R1,#0xC]
3F03D8:  BX              LR
