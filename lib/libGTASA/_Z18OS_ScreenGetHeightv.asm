; =========================================================
; Game Engine Function: _Z18OS_ScreenGetHeightv
; Address            : 0x268D4C - 0x268D56
; =========================================================

268D4C:  LDR             R0, =(windowSize_ptr - 0x268D52)
268D4E:  ADD             R0, PC; windowSize_ptr
268D50:  LDR             R0, [R0]; windowSize
268D52:  LDR             R0, [R0,#(dword_6855B8 - 0x6855B4)]
268D54:  BX              LR
