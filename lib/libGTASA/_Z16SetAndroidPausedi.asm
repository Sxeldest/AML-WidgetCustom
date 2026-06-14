; =========================================================
; Game Engine Function: _Z16SetAndroidPausedi
; Address            : 0x269AE4 - 0x269AEE
; =========================================================

269AE4:  LDR             R1, =(IsAndroidPaused_ptr - 0x269AEA)
269AE6:  ADD             R1, PC; IsAndroidPaused_ptr
269AE8:  LDR             R1, [R1]; IsAndroidPaused
269AEA:  STR             R0, [R1]
269AEC:  BX              LR
