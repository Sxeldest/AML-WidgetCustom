; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c11IsAudioTileEj
; Address            : 0x41E142 - 0x41E154
; =========================================================

41E142:  ADD.W           R1, R1, R1,LSL#1
41E146:  ADD.W           R0, R0, R1,LSL#2
41E14A:  LDR.W           R0, [R0,#0x96]
41E14E:  UBFX.W          R0, R0, #0x12, #1
41E152:  BX              LR
