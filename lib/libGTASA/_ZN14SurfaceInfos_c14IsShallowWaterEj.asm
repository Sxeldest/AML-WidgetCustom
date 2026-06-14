; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c14IsShallowWaterEj
; Address            : 0x41DF04 - 0x41DF16
; =========================================================

41DF04:  ADD.W           R1, R1, R1,LSL#1
41DF08:  ADD.W           R0, R0, R1,LSL#2
41DF0C:  LDRH.W          R0, [R0,#0x94]
41DF10:  AND.W           R0, R0, #1
41DF14:  BX              LR
