; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c13IsSoftLandingEj
; Address            : 0x41DEAA - 0x41DEBC
; =========================================================

41DEAA:  ADD.W           R1, R1, R1,LSL#1
41DEAE:  ADD.W           R0, R0, R1,LSL#2
41DEB2:  LDR.W           R0, [R0,#0x92]
41DEB6:  UBFX.W          R0, R0, #0xB, #1
41DEBA:  BX              LR
