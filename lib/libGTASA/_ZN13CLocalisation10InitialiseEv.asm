; =========================================================
; Game Engine Function: _ZN13CLocalisation10InitialiseEv
; Address            : 0x3F5310 - 0x3F532E
; =========================================================

3F5310:  LDR             R0, =(_ZN13CLocalisation10germanGameE_ptr - 0x3F531C)
3F5312:  MOVS            R3, #0
3F5314:  LDR             R1, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F531E)
3F5316:  LDR             R2, =(_ZN13CLocalisation10frenchGameE_ptr - 0x3F5320)
3F5318:  ADD             R0, PC; _ZN13CLocalisation10germanGameE_ptr
3F531A:  ADD             R1, PC; _ZN13CLocalisation9nastyGameE_ptr
3F531C:  ADD             R2, PC; _ZN13CLocalisation10frenchGameE_ptr
3F531E:  LDR             R0, [R0]; CLocalisation::germanGame ...
3F5320:  LDR             R1, [R1]; CLocalisation::nastyGame ...
3F5322:  LDR             R2, [R2]; CLocalisation::frenchGame ...
3F5324:  STRB            R3, [R0]; CLocalisation::germanGame
3F5326:  MOVS            R0, #1
3F5328:  STRB            R0, [R1]; CLocalisation::nastyGame
3F532A:  STRB            R3, [R2]; CLocalisation::frenchGame
3F532C:  BX              LR
