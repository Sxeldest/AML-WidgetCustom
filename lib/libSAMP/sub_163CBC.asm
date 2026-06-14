; =========================================================
; Game Engine Function: sub_163CBC
; Address            : 0x163CBC - 0x163CD0
; =========================================================

163CBC:  LDR             R1, =(off_23494C - 0x163CCA)
163CBE:  MOV             R2, #0x5AB1D9
163CC6:  ADD             R1, PC; off_23494C
163CC8:  LDR             R1, [R1]; dword_23DF24
163CCA:  LDR             R1, [R1]
163CCC:  ADD             R1, R2
163CCE:  BX              R1
