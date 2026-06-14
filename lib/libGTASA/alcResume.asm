; =========================================================
; Game Engine Function: alcResume
; Address            : 0x25F818 - 0x25F828
; =========================================================

25F818:  LDR             R0, =(apportableOpenALFuncs_ptr - 0x25F81E)
25F81A:  ADD             R0, PC; apportableOpenALFuncs_ptr
25F81C:  LDR             R0, [R0]; apportableOpenALFuncs
25F81E:  LDR             R0, [R0,#(off_A98FDC - 0xA98FD8)]
25F820:  CMP             R0, #0
25F822:  IT EQ
25F824:  BXEQ            LR
25F826:  BX              R0
