; =========================================================
; Game Engine Function: _ZN5CRope21ReleasePickedUpObjectEv
; Address            : 0x414F00 - 0x414F38
; =========================================================

414F00:  LDR.W           R1, [R0,#0x318]
414F04:  CBZ             R1, loc_414F20
414F06:  LDR             R2, [R1,#0x44]
414F08:  BIC.W           R2, R2, #0x2000000
414F0C:  STR             R2, [R1,#0x44]
414F0E:  LDR.W           R1, [R0,#0x318]
414F12:  LDR             R2, [R1,#0x44]
414F14:  BIC.W           R2, R2, #0x80000000
414F18:  STR             R2, [R1,#0x44]
414F1A:  MOVS            R1, #0
414F1C:  STR.W           R1, [R0,#0x318]
414F20:  LDR.W           R1, [R0,#0x314]
414F24:  LDRD.W          R2, R3, [R1,#0x1C]
414F28:  ORR.W           R2, R2, #1
414F2C:  STRD.W          R2, R3, [R1,#0x1C]
414F30:  MOVS            R1, #0x3C ; '<'
414F32:  STRB.W          R1, [R0,#0x326]
414F36:  BX              LR
