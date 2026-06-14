; =========================================================
; Game Engine Function: _ZSt14get_unexpectedv
; Address            : 0x21E1C4 - 0x21E1D2
; =========================================================

21E1C4:  LDR             R0, =(__cxa_unexpected_handler_ptr - 0x21E1CA)
21E1C6:  ADD             R0, PC; __cxa_unexpected_handler_ptr
21E1C8:  LDR             R0, [R0]; __cxa_unexpected_handler
21E1CA:  LDR             R0, [R0]; sub_21E3A0
21E1CC:  DMB.W           ISH
21E1D0:  BX              LR
