; =========================================================
; Game Engine Function: mpg123_decode
; Address            : 0x230D14 - 0x230E7C
; =========================================================

230D14:  PUSH            {R4-R7,LR}
230D16:  ADD             R7, SP, #0xC
230D18:  PUSH.W          {R8-R11}
230D1C:  SUB             SP, SP, #0x14
230D1E:  MOV             R5, R3
230D20:  LDR             R3, [R7,#arg_4]
230D22:  MOV             R4, R0
230D24:  CMP             R3, #0
230D26:  ITT NE
230D28:  MOVNE           R0, #0
230D2A:  STRNE           R0, [R3]
230D2C:  CBZ             R4, loc_230D6A
230D2E:  CBZ             R2, loc_230D92
230D30:  CBZ             R1, loc_230D70
230D32:  MOVW            R0, #0xB320
230D36:  ADD             R0, R4; int
230D38:  BL              sub_2346FC
230D3C:  CBZ             R0, loc_230D82
230D3E:  MOVW            R0, #0xB33C
230D42:  LDRB            R0, [R4,R0]
230D44:  LSLS            R0, R0, #0x1A
230D46:  BMI             loc_230D78
230D48:  LDR             R0, =(off_677664 - 0x230D58)
230D4A:  MOVW            R2, #0x29A
230D4E:  LDR             R1, =(aCProjectsOswra_44 - 0x230D5E); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230D50:  MOV.W           R3, #0xFFFFFFFF
230D54:  ADD             R0, PC; off_677664
230D56:  MOV.W           R6, #0xFFFFFFFF
230D5A:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
230D5C:  LDR             R0, [R0]
230D5E:  LDR             R0, [R0]; stream
230D60:  BLX             fprintf
230D64:  MOVS            R0, #0
230D66:  STR             R0, [SP,#0x30+var_28]
230D68:  B               loc_230E68
230D6A:  MOV.W           R6, #0xFFFFFFFF
230D6E:  B               loc_230E72
230D70:  MOVW            R0, #0xB468
230D74:  MOVS            R1, #0x1F
230D76:  STR             R1, [R4,R0]
230D78:  MOVS            R0, #0
230D7A:  MOV.W           R6, #0xFFFFFFFF
230D7E:  STR             R0, [SP,#0x30+var_28]
230D80:  B               loc_230E68
230D82:  MOVW            R0, #0xB468
230D86:  LDR             R1, [R4,R0]
230D88:  CMP             R1, #0x12
230D8A:  ITTT EQ
230D8C:  ADDEQ           R0, R4
230D8E:  MOVEQ           R1, #0
230D90:  STREQ           R1, [R0]
230D92:  LDR             R0, [R7,#arg_0]
230D94:  CMP             R5, #0
230D96:  STR             R5, [SP,#0x30+var_2C]
230D98:  IT EQ
230D9A:  MOVEQ           R0, R5
230D9C:  STR             R0, [SP,#0x30+var_30]
230D9E:  MOVW            R0, #0xB2A4
230DA2:  ADDS            R5, R4, R0
230DA4:  MOVW            R0, #0xB2CC
230DA8:  ADD             R0, R4
230DAA:  STR             R0, [SP,#0x30+var_20]
230DAC:  MOVW            R0, #0xB2A0
230DB0:  ADD             R0, R4
230DB2:  STR             R0, [SP,#0x30+var_24]
230DB4:  MOVW            R0, #0xB2C4
230DB8:  ADD.W           R9, R4, R0
230DBC:  MOVW            R0, #0xB2AC
230DC0:  ADD.W           R11, R4, R0
230DC4:  MOVW            R0, #0xB2A8
230DC8:  ADD.W           R8, R4, R0
230DCC:  MOVW            R0, #0xB2C8
230DD0:  ADD.W           R10, R4, R0
230DD4:  MOVS            R0, #0
230DD6:  STR             R0, [SP,#0x30+var_28]
230DD8:  LDR.W           R0, [R10]
230DDC:  CBZ             R0, loc_230E0A
230DDE:  LDR             R0, [R4,#4]
230DE0:  CBNZ            R0, loc_230E5C
230DE2:  LDR.W           R0, [R8]
230DE6:  LDR.W           R1, [R11]
230DEA:  LDR.W           R2, [R9]
230DEE:  SUBS            R0, R1, R0
230DF0:  CMP             R0, R2
230DF2:  BCC             loc_230E66
230DF4:  MOV             R0, R4
230DF6:  BL              sub_230748
230DFA:  LDR             R0, [SP,#0x30+var_20]
230DFC:  MOVS            R1, #0
230DFE:  STR             R1, [R0]
230E00:  STR.W           R1, [R10]
230E04:  LDR             R0, [SP,#0x30+var_24]
230E06:  LDR             R0, [R0]
230E08:  STR             R0, [R5]
230E0A:  LDR.W           R6, [R8]
230E0E:  CBNZ            R6, loc_230E20
230E10:  MOV             R0, R4
230E12:  BL              sub_2309D2
230E16:  MOV             R6, R0
230E18:  CMP.W           R6, #0xFFFFFFFF
230E1C:  BGT             loc_230DD8
230E1E:  B               loc_230E68
230E20:  LDR             R0, [SP,#0x30+var_30]
230E22:  LDR             R1, [SP,#0x30+var_28]
230E24:  SUBS            R0, R0, R1
230E26:  LDR             R1, [R5]; void *
230E28:  CMP             R6, R0
230E2A:  IT HI
230E2C:  MOVHI           R6, R0
230E2E:  LDR             R0, [SP,#0x30+var_2C]; void *
230E30:  MOV             R2, R6; size_t
230E32:  BLX             memcpy_1
230E36:  LDR.W           R0, [R8]
230E3A:  SUBS            R0, R0, R6
230E3C:  STR.W           R0, [R8]
230E40:  LDR             R0, [R5]
230E42:  ADD             R0, R6
230E44:  STR             R0, [R5]
230E46:  LDR             R1, [SP,#0x30+var_2C]
230E48:  LDR             R0, [SP,#0x30+var_28]
230E4A:  ADD             R1, R6
230E4C:  STR             R1, [SP,#0x30+var_2C]
230E4E:  LDR             R1, [SP,#0x30+var_30]
230E50:  ADD             R0, R6
230E52:  MOVS            R6, #0
230E54:  STR             R0, [SP,#0x30+var_28]
230E56:  CMP             R1, R0
230E58:  BHI             loc_230DD8
230E5A:  B               loc_230E68
230E5C:  MOVS            R0, #0
230E5E:  MOV             R6, #0xFFFFFFF5
230E62:  STR             R0, [R4,#4]
230E64:  B               loc_230E68
230E66:  MOVS            R6, #0xE
230E68:  LDR             R0, [R7,#arg_4]
230E6A:  CMP             R0, #0
230E6C:  ITT NE
230E6E:  LDRNE           R1, [SP,#0x30+var_28]
230E70:  STRNE           R1, [R0]
230E72:  MOV             R0, R6
230E74:  ADD             SP, SP, #0x14
230E76:  POP.W           {R8-R11}
230E7A:  POP             {R4-R7,PC}
