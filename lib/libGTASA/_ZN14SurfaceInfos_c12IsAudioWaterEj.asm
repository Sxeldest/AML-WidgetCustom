; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c12IsAudioWaterEj
; Address            : 0x41E10C - 0x41E11E
; =========================================================

41E10C:  ADD.W           R1, R1, R1,LSL#1
41E110:  ADD.W           R0, R0, R1,LSL#2
41E114:  LDR.W           R0, [R0,#0x96]
41E118:  UBFX.W          R0, R0, #0xF, #1
41E11C:  BX              LR
