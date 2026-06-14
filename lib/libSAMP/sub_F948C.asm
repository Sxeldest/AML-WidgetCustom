; =========================================================
; Game Engine Function: sub_F948C
; Address            : 0xF948C - 0xF94AE
; =========================================================

F948C:  LDR             R0, =(off_23494C - 0xF949A)
F948E:  MOV             R12, #0x953142
F9496:  ADD             R0, PC; off_23494C
F9498:  LDR             R0, [R0]; dword_23DF24
F949A:  LDR             R3, [R0]
F949C:  ADD             R3, R12
F949E:  STRB            R2, [R3,#1]
F94A0:  LDR             R3, [R0]
F94A2:  LDR             R0, =(unk_B2CB4 - 0xF94A8)
F94A4:  ADD             R0, PC; unk_B2CB4
F94A6:  STRB.W          R1, [R3,R12]
F94AA:  B.W             sub_107188
