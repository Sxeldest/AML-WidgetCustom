; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c15GetSkidmarkTypeEj
; Address            : 0x41DE74 - 0x41DE86
; =========================================================

41DE74:  ADD.W           R1, R1, R1,LSL#1
41DE78:  ADD.W           R0, R0, R1,LSL#2
41DE7C:  LDR.W           R0, [R0,#0x92]
41DE80:  UBFX.W          R0, R0, #3, #2
41DE84:  BX              LR
