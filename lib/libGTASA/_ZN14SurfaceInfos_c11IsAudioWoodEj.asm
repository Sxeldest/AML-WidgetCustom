; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c11IsAudioWoodEj
; Address            : 0x41E0FA - 0x41E10C
; =========================================================

41E0FA:  ADD.W           R1, R1, R1,LSL#1
41E0FE:  ADD.W           R0, R0, R1,LSL#2
41E102:  LDR.W           R0, [R0,#0x96]
41E106:  UBFX.W          R0, R0, #0xE, #1
41E10A:  BX              LR
