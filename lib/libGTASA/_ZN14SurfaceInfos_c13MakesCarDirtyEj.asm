; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c13MakesCarDirtyEj
; Address            : 0x41DFEE - 0x41DFFE
; =========================================================

41DFEE:  ADD.W           R1, R1, R1,LSL#1
41DFF2:  ADD.W           R0, R0, R1,LSL#2
41DFF6:  LDR.W           R0, [R0,#0x92]
41DFFA:  LSRS            R0, R0, #0x1F
41DFFC:  BX              LR
