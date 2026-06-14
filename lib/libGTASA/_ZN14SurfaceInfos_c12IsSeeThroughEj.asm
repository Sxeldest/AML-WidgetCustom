; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c12IsSeeThroughEj
; Address            : 0x41DEBC - 0x41DECE
; =========================================================

41DEBC:  ADD.W           R1, R1, R1,LSL#1
41DEC0:  ADD.W           R0, R0, R1,LSL#2
41DEC4:  LDR.W           R0, [R0,#0x92]
41DEC8:  UBFX.W          R0, R0, #0xC, #1
41DECC:  BX              LR
