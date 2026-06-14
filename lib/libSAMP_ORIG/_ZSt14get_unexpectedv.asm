; =========================================================
; Game Engine Function: _ZSt14get_unexpectedv
; Address            : 0x106D6C - 0x106D7A
; =========================================================

106D6C:  LDR             R0, =(__cxa_unexpected_handler_ptr - 0x106D72)
106D6E:  ADD             R0, PC; __cxa_unexpected_handler_ptr
106D70:  LDR             R0, [R0]; __cxa_unexpected_handler
106D72:  LDR             R0, [R0]; sub_106F48
106D74:  DMB.W           ISH
106D78:  BX              LR
