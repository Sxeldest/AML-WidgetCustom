; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c16CreatesWheelDustEj
; Address            : 0x41E046 - 0x41E058
; =========================================================

41E046:  ADD.W           R1, R1, R1,LSL#1
41E04A:  ADD.W           R0, R0, R1,LSL#2
41E04E:  LDR.W           R0, [R0,#0x96]
41E052:  UBFX.W          R0, R0, #4, #1
41E056:  BX              LR
