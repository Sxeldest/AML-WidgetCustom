; =========================================================
; Game Engine Function: _Z23OS_LanguageDeviceRegionv
; Address            : 0x268D2C - 0x268D36
; =========================================================

268D2C:  LDR             R0, =(deviceRegion_ptr - 0x268D32)
268D2E:  ADD             R0, PC; deviceRegion_ptr
268D30:  LDR             R0, [R0]; deviceRegion
268D32:  LDR             R0, [R0]
268D34:  BX              LR
