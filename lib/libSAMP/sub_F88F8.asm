; =========================================================
; Game Engine Function: sub_F88F8
; Address            : 0xF88F8 - 0xF890C
; =========================================================

F88F8:  LDR             R0, =(off_23494C - 0xF8906)
F88FA:  MOV             R1, #0x2FE1E9
F8902:  ADD             R0, PC; off_23494C
F8904:  LDR             R0, [R0]; dword_23DF24
F8906:  LDR             R0, [R0]
F8908:  ADD             R0, R1
F890A:  BX              R0
