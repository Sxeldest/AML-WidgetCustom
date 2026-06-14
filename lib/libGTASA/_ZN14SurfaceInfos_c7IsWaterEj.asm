; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c7IsWaterEj
; Address            : 0x41DEF2 - 0x41DF04
; =========================================================

41DEF2:  ADD.W           R1, R1, R1,LSL#1
41DEF6:  ADD.W           R0, R0, R1,LSL#2
41DEFA:  LDR.W           R0, [R0,#0x92]
41DEFE:  UBFX.W          R0, R0, #0xF, #1
41DF02:  BX              LR
