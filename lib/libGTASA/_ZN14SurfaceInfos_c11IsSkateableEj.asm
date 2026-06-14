; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c11IsSkateableEj
; Address            : 0x41DF5E - 0x41DF70
; =========================================================

41DF5E:  ADD.W           R1, R1, R1,LSL#1
41DF62:  ADD.W           R0, R0, R1,LSL#2
41DF66:  LDR.W           R0, [R0,#0x92]
41DF6A:  UBFX.W          R0, R0, #0x15, #1
41DF6E:  BX              LR
