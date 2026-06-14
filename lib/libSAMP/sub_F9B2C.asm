; =========================================================
; Game Engine Function: sub_F9B2C
; Address            : 0xF9B2C - 0xF9B4A
; =========================================================

F9B2C:  LDRB            R0, [R0,#0xC]
F9B2E:  CBZ             R0, loc_F9B32
F9B30:  BX              LR
F9B32:  LDR             R0, =(off_23494C - 0xF9B44)
F9B34:  MOV             R2, #0x96B4D8
F9B3C:  BIC.W           R1, R1, #0xC0000000
F9B40:  ADD             R0, PC; off_23494C
F9B42:  LDR             R0, [R0]; dword_23DF24
F9B44:  LDR             R0, [R0]
F9B46:  STR             R1, [R0,R2]
F9B48:  BX              LR
