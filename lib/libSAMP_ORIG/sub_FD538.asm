; =========================================================
; Game Engine Function: sub_FD538
; Address            : 0xFD538 - 0xFD53E
; =========================================================

FD538:  LDR             R0, =(aFuture - 0xFD53E); "future" ...
FD53A:  ADD             R0, PC; "future"
FD53C:  BX              LR
