; =========================================================
; Game Engine Function: _Z16emu_ArraysVertexPvjjj
; Address            : 0x1BCE38 - 0x1BCE66
; =========================================================

1BCE38:  MOV             R12, R1
1BCE3A:  MOV             R1, R0; void *
1BCE3C:  LDR             R0, =(staticState_ptr - 0x1BCE42)
1BCE3E:  ADD             R0, PC; staticState_ptr
1BCE40:  LDR             R0, [R0]; staticState
1BCE42:  LDRB.W          R0, [R0,#(byte_6B40C4 - 0x6B40A4)]
1BCE46:  CBZ             R0, loc_1BCE56
1BCE48:  LDR             R0, =(staticState_ptr - 0x1BCE50)
1BCE4A:  MOV             R2, R12; size_t
1BCE4C:  ADD             R0, PC; staticState_ptr
1BCE4E:  LDR             R0, [R0]; staticState
1BCE50:  LDR             R0, [R0,#(dword_6B40B4 - 0x6B40A4)]; void *
1BCE52:  B.W             j_memcpy_1
1BCE56:  LDR             R0, =(staticState_ptr - 0x1BCE5C)
1BCE58:  ADD             R0, PC; staticState_ptr
1BCE5A:  LDR             R0, [R0]; staticState
1BCE5C:  STRD.W          R1, R12, [R0,#(dword_6B40B4 - 0x6B40A4)]
1BCE60:  STRD.W          R2, R3, [R0,#(dword_6B40BC - 0x6B40A4)]
1BCE64:  BX              LR
