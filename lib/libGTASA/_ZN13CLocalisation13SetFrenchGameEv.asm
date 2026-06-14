; =========================================================
; Game Engine Function: _ZN13CLocalisation13SetFrenchGameEv
; Address            : 0x3F5368 - 0x3F5386
; =========================================================

3F5368:  LDR             R0, =(_ZN13CLocalisation10germanGameE_ptr - 0x3F5374)
3F536A:  MOVS            R3, #0
3F536C:  LDR             R1, =(_ZN13CLocalisation10frenchGameE_ptr - 0x3F5376)
3F536E:  LDR             R2, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F5378)
3F5370:  ADD             R0, PC; _ZN13CLocalisation10germanGameE_ptr
3F5372:  ADD             R1, PC; _ZN13CLocalisation10frenchGameE_ptr
3F5374:  ADD             R2, PC; _ZN13CLocalisation9nastyGameE_ptr
3F5376:  LDR             R0, [R0]; CLocalisation::germanGame ...
3F5378:  LDR             R1, [R1]; CLocalisation::frenchGame ...
3F537A:  LDR             R2, [R2]; CLocalisation::nastyGame ...
3F537C:  STRB            R3, [R0]; CLocalisation::germanGame
3F537E:  MOVS            R0, #1
3F5380:  STRB            R0, [R1]; CLocalisation::frenchGame
3F5382:  STRB            R0, [R2]; CLocalisation::nastyGame
3F5384:  BX              LR
