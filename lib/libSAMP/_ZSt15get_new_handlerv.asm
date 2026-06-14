; =========================================================
; Game Engine Function: _ZSt15get_new_handlerv
; Address            : 0x21E2B0 - 0x21E2BE
; =========================================================

21E2B0:  LDR             R0, =(__cxa_new_handler_ptr - 0x21E2B6)
21E2B2:  ADD             R0, PC; __cxa_new_handler_ptr
21E2B4:  LDR             R0, [R0]; __cxa_new_handler
21E2B6:  LDR             R0, [R0]
21E2B8:  DMB.W           ISH
21E2BC:  BX              LR
