; =========================================================
; Game Engine Function: zError
; Address            : 0x210F2C - 0x210F3C
; =========================================================

210F2C:  LDR             R1, =(z_errmsg_ptr - 0x210F36)
210F2E:  RSB.W           R0, R0, #2
210F32:  ADD             R1, PC; z_errmsg_ptr
210F34:  LDR             R1, [R1]; z_errmsg
210F36:  LDR.W           R0, [R1,R0,LSL#2]
210F3A:  BX              LR
