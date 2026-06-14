; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c17CreatesWheelGrassEj
; Address            : 0x41E010 - 0x41E022
; =========================================================

41E010:  ADD.W           R1, R1, R1,LSL#1
41E014:  ADD.W           R0, R0, R1,LSL#2
41E018:  LDR.W           R0, [R0,#0x96]
41E01C:  UBFX.W          R0, R0, #1, #1
41E020:  BX              LR
