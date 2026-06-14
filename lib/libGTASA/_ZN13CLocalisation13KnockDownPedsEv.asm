; =========================================================
; Game Engine Function: _ZN13CLocalisation13KnockDownPedsEv
; Address            : 0x3F544C - 0x3F545C
; =========================================================

3F544C:  LDR             R0, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F5452)
3F544E:  ADD             R0, PC; _ZN13CLocalisation9nastyGameE_ptr
3F5450:  LDR             R0, [R0]; CLocalisation::nastyGame ...
3F5452:  LDRB            R0, [R0]; CLocalisation::nastyGame
3F5454:  CMP             R0, #0
3F5456:  IT NE
3F5458:  MOVNE           R0, #1
3F545A:  BX              LR
