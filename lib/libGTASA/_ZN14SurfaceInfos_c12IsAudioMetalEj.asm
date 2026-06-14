; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c12IsAudioMetalEj
; Address            : 0x41E11E - 0x41E130
; =========================================================

41E11E:  ADD.W           R1, R1, R1,LSL#1
41E122:  ADD.W           R0, R0, R1,LSL#2
41E126:  LDRH.W          R0, [R0,#0x98]
41E12A:  AND.W           R0, R0, #1
41E12E:  BX              LR
