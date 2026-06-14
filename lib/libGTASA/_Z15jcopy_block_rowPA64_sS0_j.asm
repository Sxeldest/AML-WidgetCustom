; =========================================================
; Game Engine Function: _Z15jcopy_block_rowPA64_sS0_j
; Address            : 0x4822C8 - 0x4822D4
; =========================================================

4822C8:  MOV             R3, R0
4822CA:  MOV             R0, R1; void *
4822CC:  LSLS            R2, R2, #7; size_t
4822CE:  MOV             R1, R3; void *
4822D0:  B.W             j_memcpy_1
