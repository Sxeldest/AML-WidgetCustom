; =========================================================
; Game Engine Function: sub_163F70
; Address            : 0x163F70 - 0x163F86
; =========================================================

163F70:  LDR             R0, =(off_23494C - 0x163F7E)
163F72:  MOV             R1, #0x676F0C
163F7A:  ADD             R0, PC; off_23494C
163F7C:  LDR             R0, [R0]; dword_23DF24
163F7E:  LDR             R0, [R0]
163F80:  LDR             R0, [R0,R1]
163F82:  ADDS            R0, #0xD
163F84:  BX              LR
