; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c15LeavesFootstepsEj
; Address            : 0x41DFCA - 0x41DFDC
; =========================================================

41DFCA:  ADD.W           R1, R1, R1,LSL#1
41DFCE:  ADD.W           R0, R0, R1,LSL#2
41DFD2:  LDR.W           R0, [R0,#0x92]
41DFD6:  UBFX.W          R0, R0, #0x1D, #1
41DFDA:  BX              LR
