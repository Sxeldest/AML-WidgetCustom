; =========================================================
; Game Engine Function: _Z16emu_glMatrixModej
; Address            : 0x1BA728 - 0x1BA744
; =========================================================

1BA728:  SUB.W           R0, R0, #0x1700
1BA72C:  CMP             R0, #3
1BA72E:  IT HI
1BA730:  BXHI            LR
1BA732:  LDR             R1, =(curStack_ptr - 0x1BA73A)
1BA734:  LDR             R2, =(off_660868 - 0x1BA73C)
1BA736:  ADD             R1, PC; curStack_ptr
1BA738:  ADD             R2, PC; off_660868
1BA73A:  LDR             R1, [R1]; curStack
1BA73C:  LDR.W           R0, [R2,R0,LSL#2]
1BA740:  STR             R0, [R1]; ModelViewStack
1BA742:  BX              LR
