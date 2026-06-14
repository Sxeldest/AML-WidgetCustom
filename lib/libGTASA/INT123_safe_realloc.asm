; =========================================================
; Game Engine Function: INT123_safe_realloc
; Address            : 0x2231C0 - 0x2231CE
; =========================================================

2231C0:  CMP             R0, #0
2231C2:  IT NE
2231C4:  BNE.W           j_realloc
2231C8:  MOV             R0, R1; byte_count
2231CA:  B.W             j_malloc
