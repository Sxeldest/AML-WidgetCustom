; =========================================================
; Game Engine Function: _ZSt14set_unexpectedPFvvE
; Address            : 0x106F64 - 0x106F8A
; =========================================================

106F64:  LDR             R1, =(sub_106F48+1 - 0x106F6C)
106F66:  CMP             R0, #0
106F68:  ADD             R1, PC; sub_106F48
106F6A:  IT NE
106F6C:  MOVNE           R1, R0
106F6E:  DMB.W           ISH
106F72:  LDR             R0, =(__cxa_unexpected_handler_ptr - 0x106F78)
106F74:  ADD             R0, PC; __cxa_unexpected_handler_ptr
106F76:  LDR             R2, [R0]; __cxa_unexpected_handler
106F78:  LDREX.W         R0, [R2]
106F7C:  STREX.W         R3, R1, [R2]
106F80:  CMP             R3, #0
106F82:  BNE             loc_106F78
106F84:  DMB.W           ISH
106F88:  BX              LR
