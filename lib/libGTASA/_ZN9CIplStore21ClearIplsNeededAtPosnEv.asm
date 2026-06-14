; =========================================================
; Game Engine Function: _ZN9CIplStore21ClearIplsNeededAtPosnEv
; Address            : 0x2811A8 - 0x2811B2
; =========================================================

2811A8:  LDR             R0, =(byte_6DFD9C - 0x2811B0)
2811AA:  MOVS            R1, #0
2811AC:  ADD             R0, PC; byte_6DFD9C
2811AE:  STRB            R1, [R0]
2811B0:  BX              LR
