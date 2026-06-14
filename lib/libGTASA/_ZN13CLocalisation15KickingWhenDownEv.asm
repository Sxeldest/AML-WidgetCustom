; =========================================================
; Game Engine Function: _ZN13CLocalisation15KickingWhenDownEv
; Address            : 0x3F5424 - 0x3F5434
; =========================================================

3F5424:  LDR             R0, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F542A)
3F5426:  ADD             R0, PC; _ZN13CLocalisation9nastyGameE_ptr
3F5428:  LDR             R0, [R0]; CLocalisation::nastyGame ...
3F542A:  LDRB            R0, [R0]; CLocalisation::nastyGame
3F542C:  CMP             R0, #0
3F542E:  IT NE
3F5430:  MOVNE           R0, #1
3F5432:  BX              LR
