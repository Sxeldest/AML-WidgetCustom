; =========================================================
; Game Engine Function: _ZSt13set_terminatePFvvE
; Address            : 0x21E3EC - 0x21E412
; =========================================================

21E3EC:  LDR             R1, =(loc_21E2C4+1 - 0x21E3F4)
21E3EE:  CMP             R0, #0
21E3F0:  ADD             R1, PC; loc_21E2C4
21E3F2:  IT NE
21E3F4:  MOVNE           R1, R0
21E3F6:  DMB.W           ISH
21E3FA:  LDR             R0, =(__cxa_terminate_handler_ptr - 0x21E400)
21E3FC:  ADD             R0, PC; __cxa_terminate_handler_ptr
21E3FE:  LDR             R2, [R0]; __cxa_terminate_handler
21E400:  LDREX.W         R0, [R2]
21E404:  STREX.W         R3, R1, [R2]
21E408:  CMP             R3, #0
21E40A:  BNE             loc_21E400
21E40C:  DMB.W           ISH
21E410:  BX              LR
