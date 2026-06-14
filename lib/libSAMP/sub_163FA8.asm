; =========================================================
; Game Engine Function: sub_163FA8
; Address            : 0x163FA8 - 0x163FBC
; =========================================================

163FA8:  LDR             R0, =(off_23494C - 0x163FB6)
163FAA:  MOV             R1, #0x678A78
163FB2:  ADD             R0, PC; off_23494C
163FB4:  LDR             R0, [R0]; dword_23DF24
163FB6:  LDR             R0, [R0]
163FB8:  LDR             R0, [R0,R1]
163FBA:  BX              LR
