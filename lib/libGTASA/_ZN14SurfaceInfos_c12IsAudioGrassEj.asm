; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c12IsAudioGrassEj
; Address            : 0x41E0C4 - 0x41E0D6
; =========================================================

41E0C4:  ADD.W           R1, R1, R1,LSL#1
41E0C8:  ADD.W           R0, R0, R1,LSL#2
41E0CC:  LDR.W           R0, [R0,#0x96]
41E0D0:  UBFX.W          R0, R0, #0xB, #1
41E0D4:  BX              LR
