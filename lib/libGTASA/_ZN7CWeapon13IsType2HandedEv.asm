; =========================================================
; Game Engine Function: _ZN7CWeapon13IsType2HandedEv
; Address            : 0x5E25A0 - 0x5E25BE
; =========================================================

5E25A0:  LDR             R0, [R0]
5E25A2:  SUBS            R0, #0x19
5E25A4:  CMP             R0, #0xC
5E25A6:  ITT HI
5E25A8:  MOVHI           R0, #0
5E25AA:  BXHI            LR
5E25AC:  BFC.W           R0, #0xD, #0x13
5E25B0:  MOVW            R1, #0x1365
5E25B4:  LSR.W           R0, R1, R0
5E25B8:  AND.W           R0, R0, #1
5E25BC:  BX              LR
