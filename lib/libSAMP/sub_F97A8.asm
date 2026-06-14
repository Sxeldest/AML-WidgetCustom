; =========================================================
; Game Engine Function: sub_F97A8
; Address            : 0xF97A8 - 0xF97CC
; =========================================================

F97A8:  LDR             R0, =(off_23494C - 0xF97B6)
F97AA:  MOV             R3, #0x819D88
F97B2:  ADD             R0, PC; off_23494C
F97B4:  LDR             R0, [R0]; dword_23DF24
F97B6:  LDR             R2, [R0]
F97B8:  STRB            R1, [R2,R3]
F97BA:  MOV             R2, #0x991FD8
F97C2:  LDR             R0, [R0]
F97C4:  EOR.W           R1, R1, #1
F97C8:  STRB            R1, [R0,R2]
F97CA:  BX              LR
