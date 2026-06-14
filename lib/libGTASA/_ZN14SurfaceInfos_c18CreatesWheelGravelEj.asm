; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c18CreatesWheelGravelEj
; Address            : 0x41E022 - 0x41E034
; =========================================================

41E022:  ADD.W           R1, R1, R1,LSL#1
41E026:  ADD.W           R0, R0, R1,LSL#2
41E02A:  LDR.W           R0, [R0,#0x96]
41E02E:  UBFX.W          R0, R0, #2, #1
41E032:  BX              LR
