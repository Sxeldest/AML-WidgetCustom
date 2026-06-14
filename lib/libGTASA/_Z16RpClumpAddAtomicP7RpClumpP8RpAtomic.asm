; =========================================================
; Game Engine Function: _Z16RpClumpAddAtomicP7RpClumpP8RpAtomic
; Address            : 0x2142C4 - 0x2142DC
; =========================================================

2142C4:  MOV             R2, R0
2142C6:  LDR.W           R3, [R2,#8]!
2142CA:  STR.W           R3, [R1,#0x40]!
2142CE:  STR             R2, [R1,#4]
2142D0:  LDR             R3, [R2]
2142D2:  STR             R1, [R3,#4]
2142D4:  STR             R1, [R2]
2142D6:  STR.W           R0, [R1,#-4]
2142DA:  BX              LR
