; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c7IsGlassEj
; Address            : 0x41DF3A - 0x41DF4C
; =========================================================

41DF3A:  ADD.W           R1, R1, R1,LSL#1
41DF3E:  ADD.W           R0, R0, R1,LSL#2
41DF42:  LDR.W           R0, [R0,#0x92]
41DF46:  UBFX.W          R0, R0, #0x13, #1
41DF4A:  BX              LR
