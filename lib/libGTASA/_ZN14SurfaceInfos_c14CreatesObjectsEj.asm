; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c14CreatesObjectsEj
; Address            : 0x41E08E - 0x41E0A0
; =========================================================

41E08E:  ADD.W           R1, R1, R1,LSL#1
41E092:  ADD.W           R0, R0, R1,LSL#2
41E096:  LDR.W           R0, [R0,#0x96]
41E09A:  UBFX.W          R0, R0, #8, #1
41E09E:  BX              LR
