; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c13IsAudioGravelEj
; Address            : 0x41E0E8 - 0x41E0FA
; =========================================================

41E0E8:  ADD.W           R1, R1, R1,LSL#1
41E0EC:  ADD.W           R0, R0, R1,LSL#2
41E0F0:  LDR.W           R0, [R0,#0x96]
41E0F4:  UBFX.W          R0, R0, #0xD, #1
41E0F8:  BX              LR
