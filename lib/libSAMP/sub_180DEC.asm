; =========================================================
; Game Engine Function: sub_180DEC
; Address            : 0x180DEC - 0x180E46
; =========================================================

180DEC:  PUSH            {R4-R7,LR}
180DEE:  ADD             R7, SP, #0xC
180DF0:  PUSH.W          {R8}
180DF4:  SUB             SP, SP, #0x120
180DF6:  MOV             R6, R0
180DF8:  ADD             R0, SP, #0x130+var_128; int
180DFA:  MOV             R8, R3
180DFC:  MOV             R5, R2
180DFE:  MOVS            R2, #4; size
180E00:  MOVS            R3, #0
180E02:  BL              sub_17D4F2
180E06:  ADD             R1, SP, #0x130+var_12C; int
180E08:  MOVS            R2, #0x20 ; ' '
180E0A:  MOVS            R3, #1
180E0C:  BL              sub_17D786
180E10:  LDR             R4, [SP,#0x130+var_12C]
180E12:  MOV             R0, R6
180E14:  MOV             R1, R5
180E16:  MOV             R2, R8
180E18:  BL              sub_182BE8
180E1C:  SUBS            R0, R4, R0
180E1E:  STR             R0, [SP,#0x130+var_12C]
180E20:  ADD             R0, SP, #0x130+var_128
180E22:  MOVS            R1, #0
180E24:  BL              sub_17DA9E
180E28:  LDR             R0, [SP,#0x130+var_12C]
180E2A:  STR             R0, [SP,#0x130+var_14]
180E2C:  ADD             R0, SP, #0x130+var_128
180E2E:  ADD             R1, SP, #0x130+var_14
180E30:  MOVS            R2, #0x20 ; ' '
180E32:  MOVS            R3, #1
180E34:  BL              sub_17D628
180E38:  ADD             R0, SP, #0x130+var_128
180E3A:  BL              sub_17D542
180E3E:  ADD             SP, SP, #0x120
180E40:  POP.W           {R8}
180E44:  POP             {R4-R7,PC}
