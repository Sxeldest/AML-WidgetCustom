; =========================================================
; Game Engine Function: _ZSt14set_unexpectedPFvvE
; Address            : 0x21E3BC - 0x21E3E2
; =========================================================

21E3BC:  LDR             R1, =(sub_21E3A0+1 - 0x21E3C4)
21E3BE:  CMP             R0, #0
21E3C0:  ADD             R1, PC; sub_21E3A0
21E3C2:  IT NE
21E3C4:  MOVNE           R1, R0
21E3C6:  DMB.W           ISH
21E3CA:  LDR             R0, =(__cxa_unexpected_handler_ptr - 0x21E3D0)
21E3CC:  ADD             R0, PC; __cxa_unexpected_handler_ptr
21E3CE:  LDR             R2, [R0]; __cxa_unexpected_handler
21E3D0:  LDREX.W         R0, [R2]
21E3D4:  STREX.W         R3, R1, [R2]
21E3D8:  CMP             R3, #0
21E3DA:  BNE             loc_21E3D0
21E3DC:  DMB.W           ISH
21E3E0:  BX              LR
