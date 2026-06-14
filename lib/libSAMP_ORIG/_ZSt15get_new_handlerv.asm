; =========================================================
; Game Engine Function: _ZSt15get_new_handlerv
; Address            : 0x106E58 - 0x106E66
; =========================================================

106E58:  LDR             R0, =(__cxa_new_handler_ptr - 0x106E5E)
106E5A:  ADD             R0, PC; __cxa_new_handler_ptr
106E5C:  LDR             R0, [R0]; __cxa_new_handler
106E5E:  LDR             R0, [R0]
106E60:  DMB.W           ISH
106E64:  BX              LR
