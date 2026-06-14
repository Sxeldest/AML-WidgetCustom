; =========================================================
; Game Engine Function: _ZN13ANDThreadData7DestroyEPv
; Address            : 0x27CAD8 - 0x27CAE2
; =========================================================

27CAD8:  CMP             R0, #0
27CADA:  IT NE
27CADC:  BNE.W           j_free
27CAE0:  BX              LR
