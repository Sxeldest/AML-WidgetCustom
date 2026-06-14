; =========================================================
; Game Engine Function: sub_108CB8
; Address            : 0x108CB8 - 0x108CCC
; =========================================================

108CB8:  LDR             R1, =(off_23494C - 0x108CC6)
108CBA:  MOV             R2, #0x1DB765
108CC2:  ADD             R1, PC; off_23494C
108CC4:  LDR             R1, [R1]; dword_23DF24
108CC6:  LDR             R1, [R1]
108CC8:  ADD             R1, R2
108CCA:  BX              R1
