; =========================================================
; Game Engine Function: _Z17CreateTextureData12RwPlatformIDP8RwRaster
; Address            : 0x1B3B26 - 0x1B3B34
; =========================================================

1B3B26:  VMOV.I32        Q8, #0
1B3B2A:  MOVS            R1, #0
1B3B2C:  VST1.32         {D16-D17}, [R0]!
1B3B30:  STR             R1, [R0]
1B3B32:  BX              LR
