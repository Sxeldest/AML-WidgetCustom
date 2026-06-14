; =========================================================
; Game Engine Function: JNI_OnUnload
; Address            : 0x25F7EC - 0x25F7FE
; =========================================================

25F7EC:  LDR             R0, =(apportableOpenALFuncs_ptr - 0x25F7F2)
25F7EE:  ADD             R0, PC; apportableOpenALFuncs_ptr
25F7F0:  LDR             R0, [R0]; apportableOpenALFuncs
25F7F2:  LDR             R1, [R0,#(off_A98FE0 - 0xA98FD8)]
25F7F4:  CMP             R1, #0
25F7F6:  IT EQ
25F7F8:  BXEQ            LR
25F7FA:  MOVS            R0, #0
25F7FC:  BX              R1
