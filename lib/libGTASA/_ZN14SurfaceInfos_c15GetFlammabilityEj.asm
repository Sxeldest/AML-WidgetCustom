; =========================================================
; Game Engine Function: _ZN14SurfaceInfos_c15GetFlammabilityEj
; Address            : 0x41DF94 - 0x41DFA6
; =========================================================

41DF94:  ADD.W           R1, R1, R1,LSL#1
41DF98:  ADD.W           R0, R0, R1,LSL#2
41DF9C:  LDR.W           R0, [R0,#0x92]
41DFA0:  UBFX.W          R0, R0, #0x19, #2
41DFA4:  BX              LR
