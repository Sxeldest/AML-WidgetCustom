; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c12GetRoughnessEj
; Address            : 0x41DF82 - 0x41DF94
; =========================================================

41DF82:  ADD.W           R1, R1, R1,LSL#1
41DF86:  ADD.W           R0, R0, R1,LSL#2
41DF8A:  LDR.W           R0, [R0,#0x92]
41DF8E:  UBFX.W          R0, R0, #0x17, #2
41DF92:  BX              LR
