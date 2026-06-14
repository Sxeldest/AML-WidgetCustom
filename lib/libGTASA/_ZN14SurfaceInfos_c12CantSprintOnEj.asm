; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c12CantSprintOnEj
; Address            : 0x41DFB8 - 0x41DFCA
; =========================================================

41DFB8:  ADD.W           R1, R1, R1,LSL#1
41DFBC:  ADD.W           R0, R0, R1,LSL#2
41DFC0:  LDR.W           R0, [R0,#0x92]
41DFC4:  UBFX.W          R0, R0, #0x1C, #1
41DFC8:  BX              LR
