; =========================================================
; Game Engine Function: _ZN13CLocalisation10ShootLimbsEv
; Address            : 0x3F5438 - 0x3F5448
; =========================================================

3F5438:  LDR             R0, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F543E)
3F543A:  ADD             R0, PC; _ZN13CLocalisation9nastyGameE_ptr
3F543C:  LDR             R0, [R0]; CLocalisation::nastyGame ...
3F543E:  LDRB            R0, [R0]; CLocalisation::nastyGame
3F5440:  CMP             R0, #0
3F5442:  IT NE
3F5444:  MOVNE           R0, #1
3F5446:  BX              LR
