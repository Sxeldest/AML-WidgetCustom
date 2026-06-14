; =========================================================
; Game Engine Function: _ZNKSt9bad_alloc4whatEv
; Address            : 0x10869C - 0x1086A2
; =========================================================

10869C:  LDR             R0, =(aStdBadAlloc - 0x1086A2); "std::bad_alloc" ...
10869E:  ADD             R0, PC; "std::bad_alloc"
1086A0:  BX              LR
