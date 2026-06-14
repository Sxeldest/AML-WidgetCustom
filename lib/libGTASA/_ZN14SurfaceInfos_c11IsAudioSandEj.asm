; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c11IsAudioSandEj
; Address            : 0x41E0D6 - 0x41E0E8
; =========================================================

41E0D6:  ADD.W           R1, R1, R1,LSL#1
41E0DA:  ADD.W           R0, R0, R1,LSL#2
41E0DE:  LDR.W           R0, [R0,#0x96]
41E0E2:  UBFX.W          R0, R0, #0xC, #1
41E0E6:  BX              LR
