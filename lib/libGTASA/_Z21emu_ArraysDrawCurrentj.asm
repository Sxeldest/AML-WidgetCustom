; =========================================================
; Game Engine Function: _Z21emu_ArraysDrawCurrentj
; Address            : 0x1BD064 - 0x1BD06E
; =========================================================

1BD064:  MOV             R1, R0; unsigned int
1BD066:  LDR             R0, =(staticState_ptr - 0x1BD06C)
1BD068:  ADD             R0, PC; staticState_ptr
1BD06A:  LDR             R0, [R0]; staticState ; this
1BD06C:  B               _ZN10ArrayState4DrawEj; ArrayState::Draw(uint)
