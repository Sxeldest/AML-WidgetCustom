; =========================================================
; Game Engine Function: _ZSt13get_terminatev
; Address            : 0x21E244 - 0x21E252
; =========================================================

21E244:  LDR             R0, =(__cxa_terminate_handler_ptr - 0x21E24A)
21E246:  ADD             R0, PC; __cxa_terminate_handler_ptr
21E248:  LDR             R0, [R0]; __cxa_terminate_handler
21E24A:  LDR             R0, [R0]; loc_21E2C4
21E24C:  DMB.W           ISH
21E250:  BX              LR
