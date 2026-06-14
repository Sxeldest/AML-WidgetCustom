; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c16ProducesFootDustEj
; Address            : 0x41DFDC - 0x41DFEE
; =========================================================

41DFDC:  ADD.W           R1, R1, R1,LSL#1
41DFE0:  ADD.W           R0, R0, R1,LSL#2
41DFE4:  LDR.W           R0, [R0,#0x92]
41DFE8:  UBFX.W          R0, R0, #0x1E, #1
41DFEC:  BX              LR
