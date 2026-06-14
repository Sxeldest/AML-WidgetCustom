; =========================================================
; Game Engine Function: sub_F94B8
; Address            : 0xF94B8 - 0xF94D8
; =========================================================

F94B8:  LDR             R0, =(off_23494C - 0xF94C6)
F94BA:  MOV             R12, #0x953142
F94C2:  ADD             R0, PC; off_23494C
F94C4:  LDR             R0, [R0]; dword_23DF24
F94C6:  LDR             R3, [R0]
F94C8:  ADD             R3, R12
F94CA:  LDRB            R3, [R3,#1]
F94CC:  STR             R3, [R2]
F94CE:  LDR             R0, [R0]
F94D0:  LDRB.W          R0, [R0,R12]
F94D4:  STR             R0, [R1]
F94D6:  BX              LR
