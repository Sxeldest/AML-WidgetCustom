; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c15CreatesWheelMudEj
; Address            : 0x41E034 - 0x41E046
; =========================================================

41E034:  ADD.W           R1, R1, R1,LSL#1
41E038:  ADD.W           R0, R0, R1,LSL#2
41E03C:  LDR.W           R0, [R0,#0x96]
41E040:  UBFX.W          R0, R0, #3, #1
41E044:  BX              LR
