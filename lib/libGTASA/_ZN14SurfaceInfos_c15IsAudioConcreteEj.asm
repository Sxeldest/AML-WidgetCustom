; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c15IsAudioConcreteEj
; Address            : 0x41E0B2 - 0x41E0C4
; =========================================================

41E0B2:  ADD.W           R1, R1, R1,LSL#1
41E0B6:  ADD.W           R0, R0, R1,LSL#2
41E0BA:  LDR.W           R0, [R0,#0x96]
41E0BE:  UBFX.W          R0, R0, #0xA, #1
41E0C2:  BX              LR
