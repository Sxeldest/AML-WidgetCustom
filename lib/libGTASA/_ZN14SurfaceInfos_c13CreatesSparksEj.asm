; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c13CreatesSparksEj
; Address            : 0x41DFA6 - 0x41DFB8
; =========================================================

41DFA6:  ADD.W           R1, R1, R1,LSL#1
41DFAA:  ADD.W           R0, R0, R1,LSL#2
41DFAE:  LDR.W           R0, [R0,#0x92]
41DFB2:  UBFX.W          R0, R0, #0x1B, #1
41DFB6:  BX              LR
