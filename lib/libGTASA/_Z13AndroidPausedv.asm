; =========================================================
; Game Engine Function: _Z13AndroidPausedv
; Address            : 0x269AD4 - 0x269ADE
; =========================================================

269AD4:  LDR             R0, =(IsAndroidPaused_ptr - 0x269ADA)
269AD6:  ADD             R0, PC; IsAndroidPaused_ptr
269AD8:  LDR             R0, [R0]; IsAndroidPaused
269ADA:  LDR             R0, [R0]
269ADC:  BX              LR
