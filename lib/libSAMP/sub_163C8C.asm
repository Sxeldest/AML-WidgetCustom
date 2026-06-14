; =========================================================
; Game Engine Function: sub_163C8C
; Address            : 0x163C8C - 0x163CA0
; =========================================================

163C8C:  LDR             R1, =(off_23494C - 0x163C9A)
163C8E:  MOV             R2, #0x5AB2F5
163C96:  ADD             R1, PC; off_23494C
163C98:  LDR             R1, [R1]; dword_23DF24
163C9A:  LDR             R1, [R1]
163C9C:  ADD             R1, R2
163C9E:  BX              R1
