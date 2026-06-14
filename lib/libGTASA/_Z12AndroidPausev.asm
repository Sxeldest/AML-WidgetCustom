; =========================================================
; Game Engine Function: _Z12AndroidPausev
; Address            : 0x269AF4 - 0x269B00
; =========================================================

269AF4:  LDR             R0, =(IsAndroidPaused_ptr - 0x269AFC)
269AF6:  MOVS            R1, #1
269AF8:  ADD             R0, PC; IsAndroidPaused_ptr
269AFA:  LDR             R0, [R0]; IsAndroidPaused
269AFC:  STR             R1, [R0]
269AFE:  BX              LR
