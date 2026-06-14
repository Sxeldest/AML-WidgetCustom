; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c17GetFrictionEffectEj
; Address            : 0x41DE86 - 0x41DE98
; =========================================================

41DE86:  ADD.W           R1, R1, R1,LSL#1
41DE8A:  ADD.W           R0, R0, R1,LSL#2
41DE8E:  LDR.W           R0, [R0,#0x92]
41DE92:  UBFX.W          R0, R0, #5, #3
41DE96:  BX              LR
