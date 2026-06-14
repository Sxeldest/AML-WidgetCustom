; =========================================================
; Game Engine Function: sub_82028
; Address            : 0x82028 - 0x82030
; =========================================================

82028:  LDR             R0, =(_ZTIPFvvE_ptr - 0x8202E)
8202A:  ADD             R0, PC; _ZTIPFvvE_ptr
8202C:  LDR             R0, [R0]; `typeinfo for'void (*)(void) ...
8202E:  BX              LR
