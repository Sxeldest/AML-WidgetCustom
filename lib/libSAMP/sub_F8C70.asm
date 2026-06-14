; =========================================================
; Game Engine Function: sub_F8C70
; Address            : 0xF8C70 - 0xF8C9C
; =========================================================

F8C70:  LDR             R0, [R0,#4]
F8C72:  CBZ             R0, loc_F8C94
F8C74:  LDR             R1, =(off_23494C - 0xF8C84)
F8C76:  MOVW            R2, #0x7D24
F8C7A:  LDR             R3, [R0]
F8C7C:  MOVT            R2, #0x66 ; 'f'
F8C80:  ADD             R1, PC; off_23494C
F8C82:  LDR             R1, [R1]; dword_23DF24
F8C84:  LDR             R1, [R1]
F8C86:  ADD             R1, R2
F8C88:  CMP             R3, R1
F8C8A:  ITT NE
F8C8C:  LDRNE.W         R0, [R0,#0xB8]
F8C90:  CMPNE           R0, #0
F8C92:  BNE             loc_F8C98
F8C94:  MOVS            R0, #0
F8C96:  BX              LR
F8C98:  MOVS            R0, #1
F8C9A:  BX              LR
