; =========================================================
; Game Engine Function: _Z14FindCBFunctionh
; Address            : 0x450C64 - 0x450C70
; =========================================================

450C64:  LDR             R1, =(CBArray_ptr - 0x450C6A)
450C66:  ADD             R1, PC; CBArray_ptr
450C68:  LDR             R1, [R1]; CBArray
450C6A:  LDR.W           R0, [R1,R0,LSL#2]
450C6E:  BX              LR
