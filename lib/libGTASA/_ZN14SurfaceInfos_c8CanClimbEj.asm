; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c8CanClimbEj
; Address            : 0x41E0A0 - 0x41E0B2
; =========================================================

41E0A0:  ADD.W           R1, R1, R1,LSL#1
41E0A4:  ADD.W           R0, R0, R1,LSL#2
41E0A8:  LDR.W           R0, [R0,#0x96]
41E0AC:  UBFX.W          R0, R0, #9, #1
41E0B0:  BX              LR
