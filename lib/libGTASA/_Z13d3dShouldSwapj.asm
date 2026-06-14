; =========================================================
; Game Engine Function: _Z13d3dShouldSwapj
; Address            : 0x1B3D10 - 0x1B3D1E
; =========================================================

1B3D10:  SUB.W           R1, R0, #0x15
1B3D14:  MOVS            R0, #0
1B3D16:  CMP             R1, #2
1B3D18:  IT CC
1B3D1A:  MOVCC           R0, #1
1B3D1C:  BX              LR
