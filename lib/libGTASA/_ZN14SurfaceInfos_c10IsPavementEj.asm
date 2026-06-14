; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c10IsPavementEj
; Address            : 0x41DF70 - 0x41DF82
; =========================================================

41DF70:  ADD.W           R1, R1, R1,LSL#1
41DF74:  ADD.W           R0, R0, R1,LSL#2
41DF78:  LDR.W           R0, [R0,#0x92]
41DF7C:  UBFX.W          R0, R0, #0x16, #1
41DF80:  BX              LR
