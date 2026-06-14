; =========================================================
; Game Engine Function: _Z16GetAlphaModulatev
; Address            : 0x1BA65C - 0x1BA666
; =========================================================

1BA65C:  LDR             R0, =(curAlphaModulate_ptr - 0x1BA662)
1BA65E:  ADD             R0, PC; curAlphaModulate_ptr
1BA660:  LDR             R0, [R0]; curAlphaModulate
1BA662:  LDR             R0, [R0]
1BA664:  BX              LR
