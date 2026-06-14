; =========================================================
; Game Engine Function: _Z26GetCurrentProjectionMatrixv
; Address            : 0x1BA6F8 - 0x1BA70C
; =========================================================

1BA6F8:  LDR             R0, =(ProjectionStack_ptr - 0x1BA6FE)
1BA6FA:  ADD             R0, PC; ProjectionStack_ptr
1BA6FC:  LDR             R0, [R0]; ProjectionStack
1BA6FE:  LDR.W           R1, [R0,#(dword_6B3E2C - 0x6B3C0C)]
1BA702:  ADD.W           R1, R1, R1,LSL#4
1BA706:  ADD.W           R0, R0, R1,LSL#2
1BA70A:  BX              LR
