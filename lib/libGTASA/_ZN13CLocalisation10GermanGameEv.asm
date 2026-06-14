; =========================================================
; Game Engine Function: _ZN13CLocalisation10GermanGameEv
; Address            : 0x3F53C0 - 0x3F53D0
; =========================================================

3F53C0:  LDR             R0, =(_ZN13CLocalisation10germanGameE_ptr - 0x3F53C6)
3F53C2:  ADD             R0, PC; _ZN13CLocalisation10germanGameE_ptr
3F53C4:  LDR             R0, [R0]; CLocalisation::germanGame ...
3F53C6:  LDRB            R0, [R0]; CLocalisation::germanGame
3F53C8:  CMP             R0, #0
3F53CA:  IT NE
3F53CC:  MOVNE           R0, #1
3F53CE:  BX              LR
