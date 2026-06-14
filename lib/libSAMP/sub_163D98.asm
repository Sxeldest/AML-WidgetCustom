; =========================================================
; Game Engine Function: sub_163D98
; Address            : 0x163D98 - 0x163DAC
; =========================================================

163D98:  LDR             R1, =(off_23494C - 0x163DA6)
163D9A:  MOV             R2, #0x5AB27D
163DA2:  ADD             R1, PC; off_23494C
163DA4:  LDR             R1, [R1]; dword_23DF24
163DA6:  LDR             R1, [R1]
163DA8:  ADD             R1, R2
163DAA:  BX              R1
