; =========================================================
; Game Engine Function: sub_108DF8
; Address            : 0x108DF8 - 0x108E1E
; =========================================================

108DF8:  CBZ             R0, locret_108E08
108DFA:  LDRB            R1, [R0]
108DFC:  CMP             R1, #2
108DFE:  BEQ             loc_108E0A
108E00:  CMP             R1, #1
108E02:  BNE             locret_108E08
108E04:  LDR             R1, [R0,#0x48]
108E06:  BX              R1
108E08:  BX              LR
108E0A:  LDR             R1, =(off_23494C - 0x108E18)
108E0C:  MOV             R2, #0x2142DD
108E14:  ADD             R1, PC; off_23494C
108E16:  LDR             R1, [R1]; dword_23DF24
108E18:  LDR             R1, [R1]
108E1A:  ADD             R1, R2
108E1C:  BX              R1
