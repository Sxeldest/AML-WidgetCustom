; =========================================================
; Game Engine Function: _ZSt15set_new_handlerPFvvE
; Address            : 0x106E34 - 0x106E52
; =========================================================

106E34:  DMB.W           ISH
106E38:  LDR             R1, =(__cxa_new_handler_ptr - 0x106E3E)
106E3A:  ADD             R1, PC; __cxa_new_handler_ptr
106E3C:  LDR             R2, [R1]; __cxa_new_handler
106E3E:  LDREX.W         R1, [R2]
106E42:  STREX.W         R3, R0, [R2]
106E46:  CMP             R3, #0
106E48:  BNE             loc_106E3E
106E4A:  MOV             R0, R1
106E4C:  DMB.W           ISH
106E50:  BX              LR
