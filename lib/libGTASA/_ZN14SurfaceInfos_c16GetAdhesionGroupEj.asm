; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c16GetAdhesionGroupEj
; Address            : 0x41DE00 - 0x41DE12
; =========================================================

41DE00:  ADD.W           R1, R1, R1,LSL#1
41DE04:  ADD.W           R0, R0, R1,LSL#2
41DE08:  LDR.W           R0, [R0,#0x92]
41DE0C:  AND.W           R0, R0, #7
41DE10:  BX              LR
