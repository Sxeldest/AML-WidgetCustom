; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c12IsSteepSlopeEj
; Address            : 0x41DF28 - 0x41DF3A
; =========================================================

41DF28:  ADD.W           R1, R1, R1,LSL#1
41DF2C:  ADD.W           R0, R0, R1,LSL#2
41DF30:  LDR.W           R0, [R0,#0x92]
41DF34:  UBFX.W          R0, R0, #0x12, #1
41DF38:  BX              LR
