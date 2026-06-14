; =========================================================
; Game Engine Function: _ZSt13set_terminatePFvvE
; Address            : 0x106F94 - 0x106FBA
; =========================================================

106F94:  LDR             R1, =(loc_106E6C+1 - 0x106F9C)
106F96:  CMP             R0, #0
106F98:  ADD             R1, PC; loc_106E6C
106F9A:  IT NE
106F9C:  MOVNE           R1, R0
106F9E:  DMB.W           ISH
106FA2:  LDR             R0, =(__cxa_terminate_handler_ptr - 0x106FA8)
106FA4:  ADD             R0, PC; __cxa_terminate_handler_ptr
106FA6:  LDR             R2, [R0]; __cxa_terminate_handler
106FA8:  LDREX.W         R0, [R2]
106FAC:  STREX.W         R3, R1, [R2]
106FB0:  CMP             R3, #0
106FB2:  BNE             loc_106FA8
106FB4:  DMB.W           ISH
106FB8:  BX              LR
