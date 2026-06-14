; =========================================================
; Game Engine Function: _ZN7CGarage14OpenThisGarageEv
; Address            : 0x3139EC - 0x313A0A
; =========================================================

3139EC:  LDRB.W          R1, [R0,#0x4D]
3139F0:  CMP             R1, #5
3139F2:  IT HI
3139F4:  BXHI            LR
3139F6:  MOVS            R2, #1
3139F8:  LSL.W           R1, R2, R1
3139FC:  TST.W           R1, #0x25
313A00:  ITT NE
313A02:  MOVNE           R1, #3
313A04:  STRBNE.W        R1, [R0,#0x4D]
313A08:  BX              LR
