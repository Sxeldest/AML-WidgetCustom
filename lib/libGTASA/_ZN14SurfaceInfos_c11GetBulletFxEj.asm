; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c11GetBulletFxEj
; Address            : 0x41DE98 - 0x41DEAA
; =========================================================

41DE98:  ADD.W           R1, R1, R1,LSL#1
41DE9C:  ADD.W           R0, R0, R1,LSL#2
41DEA0:  LDR.W           R0, [R0,#0x92]
41DEA4:  UBFX.W          R0, R0, #8, #3
41DEA8:  BX              LR
