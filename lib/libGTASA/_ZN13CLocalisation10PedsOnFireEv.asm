; =========================================================
; Game Engine Function: _ZN13CLocalisation10PedsOnFireEv
; Address            : 0x3F549C - 0x3F54AC
; =========================================================

3F549C:  LDR             R0, =(_ZN13CLocalisation9nastyGameE_ptr - 0x3F54A2)
3F549E:  ADD             R0, PC; _ZN13CLocalisation9nastyGameE_ptr
3F54A0:  LDR             R0, [R0]; CLocalisation::nastyGame ...
3F54A2:  LDRB            R0, [R0]; CLocalisation::nastyGame
3F54A4:  CMP             R0, #0
3F54A6:  IT NE
3F54A8:  MOVNE           R0, #1
3F54AA:  BX              LR
