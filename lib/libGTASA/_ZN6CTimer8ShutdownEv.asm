; =========================================================
; Game Engine Function: _ZN6CTimer8ShutdownEv
; Address            : 0x420BD4 - 0x420BDE
; =========================================================

420BD4:  LDR             R0, =(byte_96B524 - 0x420BDC)
420BD6:  MOVS            R1, #0
420BD8:  ADD             R0, PC; byte_96B524
420BDA:  STRB            R1, [R0]
420BDC:  BX              LR
