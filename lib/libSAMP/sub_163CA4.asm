; =========================================================
; Game Engine Function: sub_163CA4
; Address            : 0x163CA4 - 0x163CB8
; =========================================================

163CA4:  LDR             R1, =(off_23494C - 0x163CB2)
163CA6:  MOV             R2, #0x5AB305
163CAE:  ADD             R1, PC; off_23494C
163CB0:  LDR             R1, [R1]; dword_23DF24
163CB2:  LDR             R1, [R1]
163CB4:  ADD             R1, R2
163CB6:  BX              R1
