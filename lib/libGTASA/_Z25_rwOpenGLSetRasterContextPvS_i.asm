; =========================================================
; Game Engine Function: _Z25_rwOpenGLSetRasterContextPvS_i
; Address            : 0x1B0E14 - 0x1B0E1E
; =========================================================

1B0E14:  LDR             R0, =(dword_6B3290 - 0x1B0E1A)
1B0E16:  ADD             R0, PC; dword_6B3290
1B0E18:  STR             R1, [R0]
1B0E1A:  MOVS            R0, #1
1B0E1C:  BX              LR
