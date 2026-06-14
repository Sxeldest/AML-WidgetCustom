; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c16CreatesWheelSandEj
; Address            : 0x41E058 - 0x41E06A
; =========================================================

41E058:  ADD.W           R1, R1, R1,LSL#1
41E05C:  ADD.W           R0, R0, R1,LSL#2
41E060:  LDR.W           R0, [R0,#0x96]
41E064:  UBFX.W          R0, R0, #5, #1
41E068:  BX              LR
