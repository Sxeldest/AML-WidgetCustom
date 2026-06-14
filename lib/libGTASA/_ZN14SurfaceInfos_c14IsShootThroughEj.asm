; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c14IsShootThroughEj
; Address            : 0x41DECE - 0x41DEE0
; =========================================================

41DECE:  ADD.W           R1, R1, R1,LSL#1
41DED2:  ADD.W           R0, R0, R1,LSL#2
41DED6:  LDR.W           R0, [R0,#0x92]
41DEDA:  UBFX.W          R0, R0, #0xD, #1
41DEDE:  BX              LR
