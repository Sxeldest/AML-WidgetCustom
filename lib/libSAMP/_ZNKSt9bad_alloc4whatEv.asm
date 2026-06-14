; =========================================================
; Game Engine Function: _ZNKSt9bad_alloc4whatEv
; Address            : 0x21FAF4 - 0x21FAFA
; =========================================================

21FAF4:  LDR             R0, =(aStdBadAlloc - 0x21FAFA); "std::bad_alloc" ...
21FAF6:  ADD             R0, PC; "std::bad_alloc"
21FAF8:  BX              LR
