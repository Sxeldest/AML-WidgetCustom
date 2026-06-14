; =========================================================
; Game Engine Function: RWLockInit
; Address            : 0x1C0DAC - 0x1C0DC8
; =========================================================

1C0DAC:  MOV             R1, #0
1C0DB0:  STR             R1, [R0]
1C0DB4:  STR             R1, [R0,#4]
1C0DB8:  STR             R1, [R0,#8]
1C0DBC:  STR             R1, [R0,#0xC]
1C0DC0:  STR             R1, [R0,#0x10]
1C0DC4:  BX              LR
