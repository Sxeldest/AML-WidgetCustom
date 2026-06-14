; =========================================================
; Game Engine Function: _Z14GetGlobalColorv
; Address            : 0x1B5054 - 0x1B505C
; =========================================================

1B5054:  LDR             R0, =(GlobalColor_ptr - 0x1B505A)
1B5056:  ADD             R0, PC; GlobalColor_ptr
1B5058:  LDR             R0, [R0]; GlobalColor
1B505A:  BX              LR
