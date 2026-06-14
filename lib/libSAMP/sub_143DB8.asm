; =========================================================
; Game Engine Function: sub_143DB8
; Address            : 0x143DB8 - 0x143E64
; =========================================================

143DB8:  PUSH            {R4-R7,LR}
143DBA:  ADD             R7, SP, #0xC
143DBC:  PUSH.W          {R8}
143DC0:  SUB             SP, SP, #0x118
143DC2:  MOV             R4, R1
143DC4:  ADD             R1, SP, #0x128+var_14; int
143DC6:  MOV             R0, R4; int
143DC8:  MOVS            R2, #0x20 ; ' '
143DCA:  MOVS            R3, #1
143DCC:  BL              sub_17D786
143DD0:  LDR             R0, [SP,#0x128+var_14]
143DD2:  CBZ             R0, loc_143E3C
143DD4:  ADD             R1, SP, #0x128+var_18; int
143DD6:  MOV             R0, R4; int
143DD8:  MOVS            R2, #0x20 ; ' '
143DDA:  MOVS            R3, #1
143DDC:  BL              sub_17D786
143DE0:  ADD             R5, SP, #0x128+dest
143DE2:  LDR             R2, [SP,#0x128+var_18]
143DE4:  MOV             R0, R4; int
143DE6:  MOV             R1, R5; dest
143DE8:  BL              sub_17D744
143DEC:  LDR             R0, =(off_234A24 - 0x143DF6)
143DEE:  MOVS            R4, #0
143DF0:  LDR             R1, =(off_234AF8 - 0x143DFA)
143DF2:  ADD             R0, PC; off_234A24
143DF4:  LDR             R2, =(off_234AFC - 0x143E00)
143DF6:  ADD             R1, PC; off_234AF8
143DF8:  LDR             R3, [SP,#0x128+var_18]
143DFA:  LDR             R0, [R0]; dword_23DEEC
143DFC:  ADD             R2, PC; off_234AFC
143DFE:  LDR             R1, [R1]; dword_25B208
143E00:  LDR             R2, [R2]; byte_25B20C
143E02:  LDR             R0, [R0]
143E04:  STRB            R4, [R5,R3]
143E06:  LDR             R6, [SP,#0x128+var_14]
143E08:  LDR.W           R8, [R0,#0x70]
143E0C:  MOV             R0, R5; s
143E0E:  STR             R6, [R1]
143E10:  STRB            R4, [R2]
143E12:  BLX             strlen
143E16:  ADD             R6, SP, #0x128+var_124
143E18:  MOV             R2, R0
143E1A:  MOV             R1, R5
143E1C:  MOV             R0, R6
143E1E:  BL              sub_164D04
143E22:  LDR             R2, [SP,#0x128+var_14]
143E24:  MOV             R0, R8
143E26:  MOV             R1, R6
143E28:  BL              sub_12EE78
143E2C:  LDRB.W          R0, [SP,#0x128+var_124]
143E30:  LSLS            R0, R0, #0x1F
143E32:  ITT NE
143E34:  LDRNE           R0, [SP,#0x128+var_11C]; void *
143E36:  BLXNE           j__ZdlPv; operator delete(void *)
143E3A:  B               loc_143E5C
143E3C:  LDR             R0, =(off_234A24 - 0x143E46)
143E3E:  MOVS            R3, #0
143E40:  LDR             R1, =(off_234AFC - 0x143E4A)
143E42:  ADD             R0, PC; off_234A24
143E44:  LDR             R2, =(off_234AF8 - 0x143E4E)
143E46:  ADD             R1, PC; off_234AFC
143E48:  LDR             R0, [R0]; dword_23DEEC
143E4A:  ADD             R2, PC; off_234AF8
143E4C:  LDR             R1, [R1]; byte_25B20C
143E4E:  LDR             R2, [R2]; dword_25B208
143E50:  LDR             R0, [R0]
143E52:  STRB            R3, [R1]
143E54:  STR             R3, [R2]
143E56:  LDR             R0, [R0,#0x70]
143E58:  BL              sub_12EEA8
143E5C:  ADD             SP, SP, #0x118
143E5E:  POP.W           {R8}
143E62:  POP             {R4-R7,PC}
