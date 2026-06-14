; =========================================================
; Game Engine Function: _ZNK4CPed7IsAliveEv
; Address            : 0x4A4B3C - 0x4A4B4E
; =========================================================

4A4B3C:  LDR.W           R0, [R0,#0x44C]
4A4B40:  BIC.W           R1, R0, #1
4A4B44:  MOVS            R0, #0
4A4B46:  CMP             R1, #0x36 ; '6'
4A4B48:  IT NE
4A4B4A:  MOVNE           R0, #1
4A4B4C:  BX              LR
