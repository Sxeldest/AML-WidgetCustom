; =========================================================
; Game Engine Function: _ZN13CLocalisation8KillPedsEv
; Address            : 0x3F5488 - 0x3F5498
; =========================================================

3F5488:  LDR             R0, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F548E)
3F548A:  ADD             R0, PC; _ZN13CLocalisation9nastyGameE_ptr
3F548C:  LDR             R0, [R0]; CLocalisation::nastyGame ...
3F548E:  LDRB            R0, [R0]; CLocalisation::nastyGame
3F5490:  CMP             R0, #0
3F5492:  IT NE
3F5494:  MOVNE           R0, #1
3F5496:  BX              LR
