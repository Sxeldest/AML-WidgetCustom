; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c16IsAudioLongGrassEj
; Address            : 0x41E130 - 0x41E142
; =========================================================

41E130:  ADD.W           R1, R1, R1,LSL#1
41E134:  ADD.W           R0, R0, R1,LSL#2
41E138:  LDR.W           R0, [R0,#0x96]
41E13C:  UBFX.W          R0, R0, #0x11, #1
41E140:  BX              LR
