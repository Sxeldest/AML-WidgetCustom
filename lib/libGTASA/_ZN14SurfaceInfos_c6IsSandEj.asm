; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c6IsSandEj
; Address            : 0x41DEE0 - 0x41DEF2
; =========================================================

41DEE0:  ADD.W           R1, R1, R1,LSL#1
41DEE4:  ADD.W           R0, R0, R1,LSL#2
41DEE8:  LDR.W           R0, [R0,#0x92]
41DEEC:  UBFX.W          R0, R0, #0xE, #1
41DEF0:  BX              LR
