; =========================================================
; Game Engine Function: _Z30AND_GamepadUpdateAccelerometerfff
; Address            : 0x268580 - 0x26858A
; =========================================================

268580:  LDR             R3, =(accelerometerValues_ptr - 0x268586)
268582:  ADD             R3, PC; accelerometerValues_ptr
268584:  LDR             R3, [R3]; accelerometerValues
268586:  STM             R3!, {R0-R2}
268588:  BX              LR
