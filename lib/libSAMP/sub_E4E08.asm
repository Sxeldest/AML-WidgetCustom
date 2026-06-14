; =========================================================
; Game Engine Function: sub_E4E08
; Address            : 0xE4E08 - 0xE4E76
; =========================================================

E4E08:  PUSH            {R4,R6,R7,LR}
E4E0A:  ADD             R7, SP, #8
E4E0C:  MOV             R2, R0
E4E0E:  MOVS            R0, #0
E4E10:  CMP             R2, #5
E4E12:  BHI             locret_E4E74
E4E14:  CBZ             R1, locret_E4E74
E4E16:  CMP             R2, #4; switch 5 cases
E4E18:  BHI             def_E4E1A; jumptable 000E4E1A default case
E4E1A:  TBB.W           [PC,R2]; switch jump
E4E1E:  DCB 3; jump table for switch statement
E4E1F:  DCB 0x17
E4E20:  DCB 8
E4E21:  DCB 0xD
E4E22:  DCB 0x12
E4E23:  ALIGN 2
E4E24:  CMP             R1, #0x17; jumptable 000E4E1A case 0
E4E26:  BHI             def_E4E1A; jumptable 000E4E1A default case
E4E28:  LDR             R2, =(off_23769C - 0xE4E2E)
E4E2A:  ADD             R2, PC; off_23769C
E4E2C:  B               loc_E4E58
E4E2E:  CMP             R1, #3; jumptable 000E4E1A case 2
E4E30:  BHI             def_E4E1A; jumptable 000E4E1A default case
E4E32:  LDR             R2, =(off_237880 - 0xE4E38)
E4E34:  ADD             R2, PC; off_237880
E4E36:  B               loc_E4E58
E4E38:  CMP             R1, #3; jumptable 000E4E1A case 3
E4E3A:  BHI             def_E4E1A; jumptable 000E4E1A default case
E4E3C:  LDR             R2, =(off_2378E4 - 0xE4E42)
E4E3E:  ADD             R2, PC; off_2378E4
E4E40:  B               loc_E4E58
E4E42:  CMP             R1, #3; jumptable 000E4E1A case 4
E4E44:  BHI             def_E4E1A; jumptable 000E4E1A default case
E4E46:  LDR             R2, =(off_237944 - 0xE4E4C); "5=#;;#5?#<;?\r" ...
E4E48:  ADD             R2, PC; off_237944
E4E4A:  B               loc_E4E58
E4E4C:  CMP             R1, #2; jumptable 000E4E1A case 1
E4E4E:  BLS             loc_E4E54
E4E50:  MOVS            R0, #0; jumptable 000E4E1A default case
E4E52:  POP             {R4,R6,R7,PC}
E4E54:  LDR             R2, =(off_237830 - 0xE4E5A)
E4E56:  ADD             R2, PC; off_237830
E4E58:  LDR             R0, =(dword_23DC18 - 0xE4E66)
E4E5A:  ADD.W           R4, R2, R1,LSL#4
E4E5E:  SUB.W           R1, R4, #0x10
E4E62:  ADD             R0, PC; dword_23DC18
E4E64:  BL              sub_E4ED8
E4E68:  LDR             R1, =(word_23DC24 - 0xE4E70)
E4E6A:  SUBS            R0, R4, #4
E4E6C:  ADD             R1, PC; word_23DC24
E4E6E:  LDRH            R0, [R0]
E4E70:  STRH            R0, [R1]
E4E72:  MOVS            R0, #1
E4E74:  POP             {R4,R6,R7,PC}
