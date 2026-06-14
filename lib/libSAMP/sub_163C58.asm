; =========================================================
; Game Engine Function: sub_163C58
; Address            : 0x163C58 - 0x163C70
; =========================================================

163C58:  LDR             R2, =(off_23494C - 0x163C66)
163C5A:  MOV             R3, #0xA297B8
163C62:  ADD             R2, PC; off_23494C
163C64:  LDR             R2, [R2]; dword_23DF24
163C66:  LDR             R2, [R2]
163C68:  STR             R0, [R2,R3]
163C6A:  ADDS            R0, R2, R3
163C6C:  STR             R1, [R0,#4]
163C6E:  BX              LR
