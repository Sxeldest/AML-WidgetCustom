; =========================================================
; Game Engine Function: sub_163F8C
; Address            : 0x163F8C - 0x163FA2
; =========================================================

163F8C:  LDR             R0, =(off_23494C - 0x163F9A)
163F8E:  MOV             R1, #0x676F0C
163F96:  ADD             R0, PC; off_23494C
163F98:  LDR             R0, [R0]; dword_23DF24
163F9A:  LDR             R0, [R0]
163F9C:  LDR             R0, [R0,R1]
163F9E:  ADDS            R0, #0xE
163FA0:  BX              LR
