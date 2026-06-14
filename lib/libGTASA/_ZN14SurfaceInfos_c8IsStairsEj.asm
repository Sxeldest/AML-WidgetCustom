; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c8IsStairsEj
; Address            : 0x41DF4C - 0x41DF5E
; =========================================================

41DF4C:  ADD.W           R1, R1, R1,LSL#1
41DF50:  ADD.W           R0, R0, R1,LSL#2
41DF54:  LDR.W           R0, [R0,#0x92]
41DF58:  UBFX.W          R0, R0, #0x14, #1
41DF5C:  BX              LR
