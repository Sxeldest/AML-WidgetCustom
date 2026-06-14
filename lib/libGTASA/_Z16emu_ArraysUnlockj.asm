; =========================================================
; Game Engine Function: _Z16emu_ArraysUnlockj
; Address            : 0x1BCF00 - 0x1BCF0C
; =========================================================

1BCF00:  LDR             R1, =(staticState_ptr - 0x1BCF08)
1BCF02:  MOVS            R2, #0xC0; size_t
1BCF04:  ADD             R1, PC; staticState_ptr
1BCF06:  LDR             R1, [R1]; staticState ; void *
1BCF08:  B.W             j_memcpy_1
