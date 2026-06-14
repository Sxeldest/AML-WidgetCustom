; =========================================================
; Game Engine Function: _ZSt13get_terminatev
; Address            : 0x106DEC - 0x106DFA
; =========================================================

106DEC:  LDR             R0, =(__cxa_terminate_handler_ptr - 0x106DF2)
106DEE:  ADD             R0, PC; __cxa_terminate_handler_ptr
106DF0:  LDR             R0, [R0]; __cxa_terminate_handler
106DF2:  LDR             R0, [R0]; loc_106E6C
106DF4:  DMB.W           ISH
106DF8:  BX              LR
