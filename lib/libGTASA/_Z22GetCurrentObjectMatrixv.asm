; =========================================================
; Game Engine Function: _Z22GetCurrentObjectMatrixv
; Address            : 0x1BA6C8 - 0x1BA6DC
; =========================================================

1BA6C8:  LDR             R0, =(ModelViewStack_ptr - 0x1BA6CE)
1BA6CA:  ADD             R0, PC; ModelViewStack_ptr
1BA6CC:  LDR             R0, [R0]; ModelViewStack
1BA6CE:  LDR.W           R1, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BA6D2:  ADD.W           R1, R1, R1,LSL#4
1BA6D6:  ADD.W           R0, R0, R1,LSL#2
1BA6DA:  BX              LR
