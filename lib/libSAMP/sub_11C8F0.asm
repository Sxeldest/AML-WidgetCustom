; =========================================================
; Game Engine Function: sub_11C8F0
; Address            : 0x11C8F0 - 0x11C904
; =========================================================

11C8F0:  LDR             R1, =(off_23494C - 0x11C8FE)
11C8F2:  MOV             R2, #0x2B3E55
11C8FA:  ADD             R1, PC; off_23494C
11C8FC:  LDR             R1, [R1]; dword_23DF24
11C8FE:  LDR             R1, [R1]
11C900:  ADD             R1, R2
11C902:  BX              R1
