; =========================================================
; Game Engine Function: alcSuspend
; Address            : 0x25F804 - 0x25F814
; =========================================================

25F804:  LDR             R0, =(apportableOpenALFuncs_ptr - 0x25F80A)
25F806:  ADD             R0, PC; apportableOpenALFuncs_ptr
25F808:  LDR             R0, [R0]; apportableOpenALFuncs
25F80A:  LDR             R0, [R0]
25F80C:  CMP             R0, #0
25F80E:  IT EQ
25F810:  BXEQ            LR
25F812:  BX              R0
