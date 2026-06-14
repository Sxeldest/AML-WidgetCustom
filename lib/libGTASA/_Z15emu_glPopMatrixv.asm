; =========================================================
; Game Engine Function: _Z15emu_glPopMatrixv
; Address            : 0x1BA85C - 0x1BA87E
; =========================================================

1BA85C:  LDR             R0, =(curStack_ptr - 0x1BA862)
1BA85E:  ADD             R0, PC; curStack_ptr
1BA860:  LDR             R0, [R0]; curStack
1BA862:  LDR             R0, [R0]; ModelViewStack
1BA864:  LDR.W           R1, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BA868:  SUBS            R1, #1
1BA86A:  STR.W           R1, [R0,#(dword_6B39E4 - 0x6B37C4)]
1BA86E:  ADD.W           R1, R1, R1,LSL#4
1BA872:  ADD.W           R0, R0, R1,LSL#2
1BA876:  MOVS            R1, #1
1BA878:  STRB.W          R1, [R0,#0x40]
1BA87C:  BX              LR
