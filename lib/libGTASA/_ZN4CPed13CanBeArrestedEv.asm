; =========================================================
; Game Engine Function: _ZN4CPed13CanBeArrestedEv
; Address            : 0x4A4B9C - 0x4A4BBC
; =========================================================

4A4B9C:  LDR.W           R0, [R0,#0x44C]
4A4BA0:  SUBS            R0, #0x36 ; '6'
4A4BA2:  CMP             R0, #9
4A4BA4:  ITT HI
4A4BA6:  MOVHI           R0, #1
4A4BA8:  BXHI            LR
4A4BAA:  BFC.W           R0, #0xA, #0x16
4A4BAE:  MOV.W           R1, #0x15C
4A4BB2:  LSR.W           R0, R1, R0
4A4BB6:  AND.W           R0, R0, #1
4A4BBA:  BX              LR
