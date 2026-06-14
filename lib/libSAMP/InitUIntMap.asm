; =========================================================
; Game Engine Function: InitUIntMap
; Address            : 0x1C10A8 - 0x1C10D4
; =========================================================

1C10A8:  MOV             R2, #0
1C10AC:  STR             R2, [R0,#0x10]
1C10B0:  STR             R2, [R0,#0x14]
1C10B4:  STR             R2, [R0,#0x18]
1C10B8:  STR             R2, [R0,#0x1C]
1C10BC:  STR             R2, [R0]
1C10C0:  STR             R2, [R0,#4]
1C10C4:  STR             R2, [R0,#8]
1C10C8:  STR             R1, [R0,#0xC]
1C10CC:  STR             R2, [R0,#0x20]
1C10D0:  BX              LR
