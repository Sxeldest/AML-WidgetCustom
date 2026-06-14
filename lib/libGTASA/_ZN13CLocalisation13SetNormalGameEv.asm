; =========================================================
; Game Engine Function: _ZN13CLocalisation13SetNormalGameEv
; Address            : 0x3F533C - 0x3F535A
; =========================================================

3F533C:  LDR             R0, =(_ZN13CLocalisation10frenchGameE_ptr - 0x3F5348)
3F533E:  MOVS            R3, #0
3F5340:  LDR             R1, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F534A)
3F5342:  LDR             R2, =(_ZN13CLocalisation10germanGameE_ptr - 0x3F534C)
3F5344:  ADD             R0, PC; _ZN13CLocalisation10frenchGameE_ptr
3F5346:  ADD             R1, PC; _ZN13CLocalisation9nastyGameE_ptr
3F5348:  ADD             R2, PC; _ZN13CLocalisation10germanGameE_ptr
3F534A:  LDR             R0, [R0]; CLocalisation::frenchGame ...
3F534C:  LDR             R1, [R1]; CLocalisation::nastyGame ...
3F534E:  LDR             R2, [R2]; CLocalisation::germanGame ...
3F5350:  STRB            R3, [R0]; CLocalisation::frenchGame
3F5352:  MOVS            R0, #1
3F5354:  STRB            R0, [R1]; CLocalisation::nastyGame
3F5356:  STRB            R3, [R2]; CLocalisation::germanGame
3F5358:  BX              LR
