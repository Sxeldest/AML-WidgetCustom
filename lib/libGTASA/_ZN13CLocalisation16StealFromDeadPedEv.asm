; =========================================================
; Game Engine Function: _ZN13CLocalisation16StealFromDeadPedEv
; Address            : 0x3F5474 - 0x3F5484
; =========================================================

3F5474:  LDR             R0, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F547A)
3F5476:  ADD             R0, PC; _ZN13CLocalisation9nastyGameE_ptr
3F5478:  LDR             R0, [R0]; CLocalisation::nastyGame ...
3F547A:  LDRB            R0, [R0]; CLocalisation::nastyGame
3F547C:  CMP             R0, #0
3F547E:  IT NE
3F5480:  MOVNE           R0, #1
3F5482:  BX              LR
