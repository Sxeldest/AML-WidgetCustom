; =========================================================
; Game Engine Function: _ZN13CLocalisation10FrenchGameEv
; Address            : 0x3F53D4 - 0x3F53E4
; =========================================================

3F53D4:  LDR             R0, =(_ZN13CLocalisation10frenchGameE_ptr - 0x3F53DA)
3F53D6:  ADD             R0, PC; _ZN13CLocalisation10frenchGameE_ptr
3F53D8:  LDR             R0, [R0]; CLocalisation::frenchGame ...
3F53DA:  LDRB            R0, [R0]; CLocalisation::frenchGame
3F53DC:  CMP             R0, #0
3F53DE:  IT NE
3F53E0:  MOVNE           R0, #1
3F53E2:  BX              LR
