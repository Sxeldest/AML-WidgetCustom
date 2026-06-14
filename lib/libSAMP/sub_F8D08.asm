; =========================================================
; Game Engine Function: sub_F8D08
; Address            : 0xF8D08 - 0xF8D3A
; =========================================================

F8D08:  LDR             R0, [R0,#4]
F8D0A:  CBZ             R0, locret_F8D2C
F8D0C:  LDR             R1, =(off_23494C - 0xF8D1C)
F8D0E:  MOVW            R3, #0x7D24
F8D12:  LDR             R2, [R0]
F8D14:  MOVT            R3, #0x66 ; 'f'
F8D18:  ADD             R1, PC; off_23494C
F8D1A:  LDR             R1, [R1]; dword_23DF24
F8D1C:  LDR             R1, [R1]
F8D1E:  ADD             R3, R1
F8D20:  CMP             R2, R3
F8D22:  ITT NE
F8D24:  LDRNE.W         R2, [R0,#0xB8]
F8D28:  CMPNE           R2, #0
F8D2A:  BNE             loc_F8D2E
F8D2C:  BX              LR
F8D2E:  MOV             R2, #0x4232BD
F8D36:  ADD             R1, R2
F8D38:  BX              R1
