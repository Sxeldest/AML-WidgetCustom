; =========================================================
; Game Engine Function: _ZN7CCamera21TakeControlWithSplineEs
; Address            : 0x3E199C - 0x3E19BA
; =========================================================

3E199C:  MOVS            R2, #0
3E199E:  MOVS            R3, #0x11
3E19A0:  STRB.W          R2, [R0,#0x29]
3E19A4:  STRH.W          R3, [R0,#0xBC0]
3E19A8:  STRB.W          R2, [R0,#0x2A]
3E19AC:  STRB            R2, [R0,#0x1D]
3E19AE:  STRH.W          R1, [R0,#0xBC4]
3E19B2:  MOVS            R1, #1
3E19B4:  STRB.W          R1, [R0,#0x30]
3E19B8:  BX              LR
