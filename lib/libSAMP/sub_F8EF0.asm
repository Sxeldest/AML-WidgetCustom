; =========================================================
; Game Engine Function: sub_F8EF0
; Address            : 0xF8EF0 - 0xF8F18
; =========================================================

F8EF0:  LDR             R0, [R0,#4]
F8EF2:  CBZ             R0, loc_F8F14
F8EF4:  LDR             R1, =(off_23494C - 0xF8F04)
F8EF6:  MOVW            R2, #0x7D24
F8EFA:  LDR             R3, [R0]
F8EFC:  MOVT            R2, #0x66 ; 'f'
F8F00:  ADD             R1, PC; off_23494C
F8F02:  LDR             R1, [R1]; dword_23DF24
F8F04:  LDR             R1, [R1]
F8F06:  ADD             R1, R2
F8F08:  CMP             R3, R1
F8F0A:  ITTT NE
F8F0C:  LDRBNE          R0, [R0,#0x1C]
F8F0E:  ANDNE.W         R0, R0, #1
F8F12:  BXNE            LR
F8F14:  MOVS            R0, #1
F8F16:  BX              LR
