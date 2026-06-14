; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c13MakesCarCleanEj
; Address            : 0x41DFFE - 0x41E010
; =========================================================

41DFFE:  ADD.W           R1, R1, R1,LSL#1
41E002:  ADD.W           R0, R0, R1,LSL#2
41E006:  LDR.W           R0, [R0,#0x96]
41E00A:  AND.W           R0, R0, #1
41E00E:  BX              LR
