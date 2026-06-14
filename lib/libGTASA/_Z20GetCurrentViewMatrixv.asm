; =========================================================
; Game Engine Function: _Z20GetCurrentViewMatrixv
; Address            : 0x1BA6E0 - 0x1BA6F4
; =========================================================

1BA6E0:  LDR             R0, =(ViewStack_ptr - 0x1BA6E6)
1BA6E2:  ADD             R0, PC; ViewStack_ptr
1BA6E4:  LDR             R0, [R0]; ViewStack
1BA6E6:  LDR.W           R1, [R0,#(dword_6B3C08 - 0x6B39E8)]
1BA6EA:  ADD.W           R1, R1, R1,LSL#4
1BA6EE:  ADD.W           R0, R0, R1,LSL#2
1BA6F2:  BX              LR
