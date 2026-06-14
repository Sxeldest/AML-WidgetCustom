; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c7IsBeachEj
; Address            : 0x41DF16 - 0x41DF28
; =========================================================

41DF16:  ADD.W           R1, R1, R1,LSL#1
41DF1A:  ADD.W           R0, R0, R1,LSL#2
41DF1E:  LDR.W           R0, [R0,#0x92]
41DF22:  UBFX.W          R0, R0, #0x11, #1
41DF26:  BX              LR
