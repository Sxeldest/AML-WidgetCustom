; =========================================================
; Game Engine Function: InitUIntMap
; Address            : 0x24D5CC - 0x24D5E2
; =========================================================

24D5CC:  MOVS            R2, #0
24D5CE:  STR             R2, [R0,#0x10]
24D5D0:  STR             R2, [R0,#0x14]
24D5D2:  STR             R2, [R0,#0x18]
24D5D4:  STR             R2, [R0,#0x1C]
24D5D6:  STRD.W          R2, R2, [R0]
24D5DA:  STRD.W          R2, R1, [R0,#8]
24D5DE:  STR             R2, [R0,#0x20]
24D5E0:  BX              LR
