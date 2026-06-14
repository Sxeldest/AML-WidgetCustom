; =========================================================
; Game Engine Function: _Z27OS_FileSetAsyncReadMultiplei
; Address            : 0x266830 - 0x26683A
; =========================================================

266830:  LDR             R1, =(MaxAsyncReadMultiply_ptr - 0x266836)
266832:  ADD             R1, PC; MaxAsyncReadMultiply_ptr
266834:  LDR             R1, [R1]; MaxAsyncReadMultiply
266836:  STR             R0, [R1]
266838:  BX              LR
