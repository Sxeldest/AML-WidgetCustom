; =========================================================
; Game Engine Function: _Z19RpClumpRemoveAtomicP7RpClumpP8RpAtomic
; Address            : 0x214790 - 0x2147A2
; =========================================================

214790:  LDRD.W          R2, R3, [R1,#0x40]
214794:  STR             R2, [R3]
214796:  LDRD.W          R2, R3, [R1,#0x40]
21479A:  STR             R3, [R2,#4]
21479C:  MOVS            R2, #0
21479E:  STR             R2, [R1,#0x3C]
2147A0:  BX              LR
