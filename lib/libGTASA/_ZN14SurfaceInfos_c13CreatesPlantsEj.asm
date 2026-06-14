; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c13CreatesPlantsEj
; Address            : 0x41E07C - 0x41E08E
; =========================================================

41E07C:  ADD.W           R1, R1, R1,LSL#1
41E080:  ADD.W           R0, R0, R1,LSL#2
41E084:  LDR.W           R0, [R0,#0x96]
41E088:  UBFX.W          R0, R0, #7, #1
41E08C:  BX              LR
