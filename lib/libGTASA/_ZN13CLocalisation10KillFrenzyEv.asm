; =========================================================
; Game Engine Function: _ZN13CLocalisation10KillFrenzyEv
; Address            : 0x3F5460 - 0x3F5470
; =========================================================

3F5460:  LDR             R0, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F5466)
3F5462:  ADD             R0, PC; _ZN13CLocalisation9nastyGameE_ptr
3F5464:  LDR             R0, [R0]; CLocalisation::nastyGame ...
3F5466:  LDRB            R0, [R0]; CLocalisation::nastyGame
3F5468:  CMP             R0, #0
3F546A:  IT NE
3F546C:  MOVNE           R0, #1
3F546E:  BX              LR
