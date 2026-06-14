; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c17CreatesWheelSprayEj
; Address            : 0x41E06A - 0x41E07C
; =========================================================

41E06A:  ADD.W           R1, R1, R1,LSL#1
41E06E:  ADD.W           R0, R0, R1,LSL#2
41E072:  LDR.W           R0, [R0,#0x96]
41E076:  UBFX.W          R0, R0, #6, #1
41E07A:  BX              LR
