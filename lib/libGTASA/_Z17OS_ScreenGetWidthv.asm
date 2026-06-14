; =========================================================
; Game Engine Function: _Z17OS_ScreenGetWidthv
; Address            : 0x268D3C - 0x268D46
; =========================================================

268D3C:  LDR             R0, =(windowSize_ptr - 0x268D42)
268D3E:  ADD             R0, PC; windowSize_ptr
268D40:  LDR             R0, [R0]; windowSize
268D42:  LDR             R0, [R0]
268D44:  BX              LR
