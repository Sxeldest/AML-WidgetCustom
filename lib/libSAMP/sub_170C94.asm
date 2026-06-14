; =========================================================
; Game Engine Function: sub_170C94
; Address            : 0x170C94 - 0x170E20
; =========================================================

170C94:  PUSH            {R4-R7,LR}
170C96:  ADD             R7, SP, #0xC
170C98:  PUSH.W          {R8-R11}
170C9C:  SUB             SP, SP, #0x14
170C9E:  LDR             R4, =(dword_381B58 - 0x170CA8)
170CA0:  MOV             R5, R1
170CA2:  MOV             R8, R0
170CA4:  ADD             R4, PC; dword_381B58
170CA6:  LDR             R1, [R4]
170CA8:  STR             R1, [SP,#0x30+var_20]
170CAA:  MOV             R0, R1
170CAC:  CBNZ            R5, loc_170CB8
170CAE:  MOV             R0, R8; s
170CB0:  BLX             strlen
170CB4:  LDR             R1, [R4]
170CB6:  MOV             R5, R0
170CB8:  ADDS            R0, R5, #1
170CBA:  CBZ             R1, loc_170CC6
170CBC:  LDR.W           R2, [R1,#0x370]
170CC0:  ADDS            R2, #1
170CC2:  STR.W           R2, [R1,#0x370]
170CC6:  LDR             R1, =(dword_381B60 - 0x170CCE)
170CC8:  LDR             R2, =(off_2390AC - 0x170CD2)
170CCA:  ADD             R1, PC; dword_381B60
170CCC:  STR             R1, [SP,#0x30+var_28]
170CCE:  ADD             R2, PC; off_2390AC
170CD0:  LDR             R1, [R1]
170CD2:  LDR             R2, [R2]; sub_171190
170CD4:  BLX             R2; sub_171190
170CD6:  MOV             R1, R8; src
170CD8:  MOV             R2, R5; n
170CDA:  MOV             R6, R0
170CDC:  BLX             j_memcpy
170CE0:  MOV.W           R12, #0
170CE4:  CMP             R5, #1
170CE6:  STRB.W          R12, [R6,R5]
170CEA:  BLT.W           loc_170DF2
170CEE:  STR             R4, [SP,#0x30+var_2C]
170CF0:  ADDS            R4, R6, R5
170CF2:  SUB.W           LR, R4, #1
170CF6:  MOV.W           R9, #0
170CFA:  MOV             R3, R6
170CFC:  MOV.W           R11, #0
170D00:  STR             R6, [SP,#0x30+var_30]
170D02:  STR.W           LR, [SP,#0x30+var_24]
170D06:  SUB.W           R1, LR, R3
170D0A:  NEGS            R0, R3
170D0C:  B               loc_170D14
170D0E:  SUBS            R1, #1
170D10:  SUBS            R0, #1
170D12:  ADDS            R3, #1
170D14:  LDRB            R2, [R3]
170D16:  CMP             R2, #0xA
170D18:  IT NE
170D1A:  CMPNE           R2, #0xD
170D1C:  BEQ             loc_170D0E
170D1E:  CMP             R3, R4
170D20:  MOV             R8, R3
170D22:  BCS             loc_170D46
170D24:  ADDS            R5, R3, R4
170D26:  MOV             R8, R3
170D28:  ADD             R5, R0
170D2A:  UXTB            R2, R2
170D2C:  CMP             R2, #0xA
170D2E:  IT NE
170D30:  CMPNE           R2, #0xD
170D32:  BEQ             loc_170D46
170D34:  CBZ             R1, loc_170D44
170D36:  ADD.W           R6, R8, #1
170D3A:  LDRB.W          R2, [R8,#1]
170D3E:  SUBS            R1, #1
170D40:  MOV             R8, R6
170D42:  B               loc_170D2A
170D44:  MOV             R8, R5
170D46:  STRB.W          R12, [R8]
170D4A:  LDRB            R1, [R3]
170D4C:  CMP             R1, #0x3B ; ';'
170D4E:  BEQ             loc_170DE2
170D50:  CMP             R1, #0x5B ; '['
170D52:  BNE             loc_170D96
170D54:  CMP             R8, R3
170D56:  BLS             loc_170D96
170D58:  MOV             R10, R8
170D5A:  LDRB.W          R1, [R10,#-1]!
170D5E:  CMP             R1, #0x5D ; ']'
170D60:  BNE             loc_170D96
170D62:  ADD             R0, R10
170D64:  ADDS            R5, R3, #1
170D66:  SUBS            R2, R0, #1; n
170D68:  MOVS            R1, #0x5D ; ']'; c
170D6A:  MOV             R0, R5; s
170D6C:  MOV.W           R9, #0
170D70:  STRB.W          R12, [R10]
170D74:  BLX             memchr
170D78:  CBZ             R0, loc_170DB8
170D7A:  MOV             R6, R0
170D7C:  ADDS            R0, #1; s
170D7E:  SUB.W           R2, R10, R0; n
170D82:  MOVS            R1, #0x5B ; '['; c
170D84:  BLX             memchr
170D88:  CBZ             R0, loc_170DB8
170D8A:  ADDS            R1, R0, #1
170D8C:  MOV             R0, R5
170D8E:  STRB.W          R9, [R6]
170D92:  MOV             R5, R1
170D94:  B               loc_170DBC
170D96:  CMP.W           R11, #0
170D9A:  IT NE
170D9C:  CMPNE.W         R9, #0
170DA0:  BEQ             loc_170DE2
170DA2:  LDR.W           R6, [R11,#0xC]
170DA6:  MOV             R1, R11
170DA8:  LDR             R0, [SP,#0x30+var_20]
170DAA:  MOV             R2, R9
170DAC:  BLX             R6
170DAE:  LDR.W           LR, [SP,#0x30+var_24]
170DB2:  MOV.W           R12, #0
170DB6:  B               loc_170DE2
170DB8:  LDR             R0, =(aWindow - 0x170DBE); "Window" ...
170DBA:  ADD             R0, PC; "Window"
170DBC:  BL              sub_170E34
170DC0:  CBZ             R0, loc_170DD2
170DC2:  MOV             R11, R0
170DC4:  LDR             R3, [R0,#8]
170DC6:  LDR             R0, [SP,#0x30+var_20]
170DC8:  MOV             R1, R11
170DCA:  MOV             R2, R5
170DCC:  BLX             R3
170DCE:  MOV             R9, R0
170DD0:  B               loc_170DDA
170DD2:  MOV.W           R11, #0
170DD6:  MOV.W           R9, #0
170DDA:  MOV.W           R12, #0
170DDE:  LDR.W           LR, [SP,#0x30+var_24]
170DE2:  ADD.W           R3, R8, #1
170DE6:  CMP             R3, R4
170DE8:  BCC.W           loc_170D06
170DEC:  LDR             R6, [SP,#0x30+var_30]
170DEE:  LDR             R4, [SP,#0x30+var_2C]
170DF0:  CBZ             R6, loc_170E00
170DF2:  LDR             R0, [R4]
170DF4:  CBZ             R0, loc_170E00
170DF6:  LDR.W           R1, [R0,#0x370]
170DFA:  SUBS            R1, #1
170DFC:  STR.W           R1, [R0,#0x370]
170E00:  LDR             R0, =(off_2390B0 - 0x170E08)
170E02:  LDR             R1, [SP,#0x30+var_28]
170E04:  ADD             R0, PC; off_2390B0
170E06:  LDR             R2, [R0]; j_opus_decoder_destroy_0
170E08:  MOV             R0, R6
170E0A:  LDR             R1, [R1]
170E0C:  BLX             R2; j_opus_decoder_destroy_0
170E0E:  LDR             R2, [SP,#0x30+var_20]
170E10:  MOVW            R0, #0x2CF4
170E14:  MOVS            R1, #1
170E16:  STRB            R1, [R2,R0]
170E18:  ADD             SP, SP, #0x14
170E1A:  POP.W           {R8-R11}
170E1E:  POP             {R4-R7,PC}
