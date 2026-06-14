; =========================================================
; Game Engine Function: sub_163C24
; Address            : 0x163C24 - 0x163C3C
; =========================================================

163C24:  LDR             R2, =(off_23494C - 0x163C32)
163C26:  MOV             R3, #0x66F464
163C2E:  ADD             R2, PC; off_23494C
163C30:  LDR             R2, [R2]; dword_23DF24
163C32:  LDR             R2, [R2]
163C34:  LDR             R2, [R2,R3]
163C36:  CBZ             R2, locret_163C3A
163C38:  BX              R2
163C3A:  BX              LR
