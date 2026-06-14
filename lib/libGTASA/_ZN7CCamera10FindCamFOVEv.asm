; =========================================================
; Game Engine Function: _ZN7CCamera10FindCamFOVEv
; Address            : 0x3DB714 - 0x3DB726
; =========================================================

3DB714:  LDRB.W          R1, [R0,#0x57]
3DB718:  ADD.W           R1, R1, R1,LSL#5
3DB71C:  ADD.W           R0, R0, R1,LSL#4
3DB720:  LDR.W           R0, [R0,#0x1FC]
3DB724:  BX              LR
