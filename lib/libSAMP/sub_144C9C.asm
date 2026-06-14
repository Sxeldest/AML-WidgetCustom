; =========================================================
; Game Engine Function: sub_144C9C
; Address            : 0x144C9C - 0x145082
; =========================================================

144C9C:  PUSH            {R4-R7,LR}
144C9E:  ADD             R7, SP, #0xC
144CA0:  PUSH.W          {R8-R11}
144CA4:  SUB.W           SP, SP, #0x20C
144CA8:  LDR             R1, =(off_23496C - 0x144CB0)
144CAA:  MOVS            R3, #0
144CAC:  ADD             R1, PC; off_23496C
144CAE:  LDR             R5, [R1]; dword_23DEF4
144CB0:  LDR             R1, [R5]
144CB2:  LDR.W           R2, [R1,#0x3B0]
144CB6:  LDRD.W          R1, R0, [R0]; src
144CBA:  LDR.W           R9, [R2]
144CBE:  MOVS            R2, #0
144CC0:  STR             R2, [SP,#0x228+var_24]
144CC2:  ASRS            R2, R0, #0x1F
144CC4:  ADD.W           R0, R0, R2,LSR#29
144CC8:  MOVS            R2, #1
144CCA:  ADD.W           R2, R2, R0,ASR#3; size
144CCE:  ADD             R0, SP, #0x228+var_138; int
144CD0:  BL              sub_17D4F2
144CD4:  LDR             R0, [R5]
144CD6:  LDR             R2, [SP,#0x228+var_138]
144CD8:  LDR             R1, [SP,#0x228+var_130]
144CDA:  LDR.W           R0, [R0,#0x20C]
144CDE:  CMP             R1, R2
144CE0:  BGE             loc_144CF8
144CE2:  LDR             R3, [SP,#0x228+var_12C]
144CE4:  ASRS            R6, R1, #3
144CE6:  LDRB            R3, [R3,R6]
144CE8:  AND.W           R6, R1, #7
144CEC:  ADDS            R1, #1
144CEE:  LSLS            R3, R6
144CF0:  UXTB            R3, R3
144CF2:  LSRS            R3, R3, #7
144CF4:  STRB            R3, [R0]
144CF6:  STR             R1, [SP,#0x228+var_130]
144CF8:  CMP             R1, R2
144CFA:  BGE             loc_144D12
144CFC:  LDR             R3, [SP,#0x228+var_12C]
144CFE:  ASRS            R6, R1, #3
144D00:  LDRB            R3, [R3,R6]
144D02:  AND.W           R6, R1, #7
144D06:  ADDS            R1, #1
144D08:  STR             R1, [SP,#0x228+var_130]
144D0A:  LSLS            R3, R6
144D0C:  UXTB            R3, R3
144D0E:  LSRS            R3, R3, #7
144D10:  STRB            R3, [R0,#0x1A]
144D12:  CMP             R1, R2
144D14:  BGE             loc_144D2C
144D16:  LDR             R3, [SP,#0x228+var_12C]
144D18:  ASRS            R6, R1, #3
144D1A:  LDRB            R3, [R3,R6]
144D1C:  AND.W           R6, R1, #7
144D20:  ADDS            R1, #1
144D22:  LSLS            R3, R6
144D24:  UXTB            R3, R3
144D26:  LSRS            R3, R3, #7
144D28:  STRB            R3, [R0,#8]
144D2A:  STR             R1, [SP,#0x228+var_130]
144D2C:  CMP             R1, R2
144D2E:  BGE             loc_144D48
144D30:  LDR             R2, [SP,#0x228+var_12C]
144D32:  ASRS            R3, R1, #3
144D34:  LDRB            R2, [R2,R3]
144D36:  AND.W           R3, R1, #7
144D3A:  ADDS            R1, #1
144D3C:  STR             R1, [SP,#0x228+var_130]
144D3E:  LSLS            R2, R3
144D40:  UXTB            R2, R2
144D42:  LSRS            R2, R2, #7
144D44:  STRB.W          R2, [R0,#0x35]
144D48:  ADD.W           R1, R0, #0x30 ; '0'; int
144D4C:  ADD             R0, SP, #0x228+var_138; int
144D4E:  MOVS            R2, #0x20 ; ' '
144D50:  MOVS            R3, #1
144D52:  BL              sub_17D786
144D56:  LDR             R1, [SP,#0x228+var_138]
144D58:  LDR             R0, [SP,#0x228+var_130]
144D5A:  CMP             R0, R1
144D5C:  BGE             loc_144D76
144D5E:  LDR             R1, [SP,#0x228+var_12C]
144D60:  ASRS            R2, R0, #3
144D62:  LDRB            R1, [R1,R2]
144D64:  ADDS            R2, R0, #1
144D66:  AND.W           R0, R0, #7
144D6A:  STR             R2, [SP,#0x228+var_130]
144D6C:  LSL.W           R0, R1, R0
144D70:  UXTB            R0, R0
144D72:  MOV.W           R8, R0,LSR#7
144D76:  LDR             R0, [R5]
144D78:  LDR.W           R0, [R0,#0x20C]
144D7C:  ADD.W           R1, R0, #0x20 ; ' '; int
144D80:  ADD             R0, SP, #0x228+var_138; int
144D82:  MOVS            R2, #0x20 ; ' '
144D84:  MOVS            R3, #1
144D86:  BL              sub_17D786
144D8A:  LDR             R0, [R5]
144D8C:  LDR             R2, [SP,#0x228+var_138]
144D8E:  LDR             R1, [SP,#0x228+var_130]
144D90:  LDR.W           R0, [R0,#0x20C]
144D94:  CMP             R1, R2
144D96:  BGE             loc_144DAE
144D98:  LDR             R3, [SP,#0x228+var_12C]
144D9A:  ASRS            R6, R1, #3
144D9C:  LDRB            R3, [R3,R6]
144D9E:  AND.W           R6, R1, #7
144DA2:  ADDS            R1, #1
144DA4:  STR             R1, [SP,#0x228+var_130]
144DA6:  LSLS            R3, R6
144DA8:  UXTB            R3, R3
144DAA:  LSRS            R3, R3, #7
144DAC:  STRB            R3, [R0,#0x10]
144DAE:  CMP             R1, R2
144DB0:  BGE             loc_144DCA
144DB2:  LDR             R3, [SP,#0x228+var_12C]
144DB4:  ASRS            R6, R1, #3
144DB6:  LDRB            R3, [R3,R6]
144DB8:  AND.W           R6, R1, #7
144DBC:  ADDS            R1, #1
144DBE:  STR             R1, [SP,#0x228+var_130]
144DC0:  LSLS            R3, R6
144DC2:  UXTB            R3, R3
144DC4:  LSRS            R3, R3, #7
144DC6:  STRB.W          R3, [R0,#0x28]
144DCA:  MOVS            R3, #1
144DCC:  CMP             R1, R2
144DCE:  STRB.W          R3, [R0,#0x28]
144DD2:  BGE             loc_144DEC
144DD4:  LDR             R2, [SP,#0x228+var_12C]
144DD6:  ASRS            R3, R1, #3
144DD8:  LDRB            R2, [R2,R3]
144DDA:  AND.W           R3, R1, #7
144DDE:  ADDS            R1, #1
144DE0:  STR             R1, [SP,#0x228+var_130]
144DE2:  LSLS            R2, R3
144DE4:  UXTB            R2, R2
144DE6:  LSRS            R2, R2, #7
144DE8:  STRB.W          R2, [R0,#0x24]
144DEC:  ADD.W           R1, R0, #0x1C; int
144DF0:  ADD             R0, SP, #0x228+var_138; int
144DF2:  MOVS            R2, #0x20 ; ' '
144DF4:  MOVS            R3, #1
144DF6:  BL              sub_17D786
144DFA:  ADD             R0, SP, #0x228+var_138; int
144DFC:  SUB.W           R1, R7, #-var_1E; int
144E00:  MOVS            R2, #0x10
144E02:  MOVS            R3, #1
144E04:  BL              sub_17D786
144E08:  LDR             R0, [R5]
144E0A:  LDR             R2, [SP,#0x228+var_138]
144E0C:  LDR             R1, [SP,#0x228+var_130]
144E0E:  LDR.W           R0, [R0,#0x20C]
144E12:  CMP             R1, R2
144E14:  BGE             loc_144E2E
144E16:  LDR             R2, [SP,#0x228+var_12C]
144E18:  ASRS            R3, R1, #3
144E1A:  LDRB            R2, [R2,R3]
144E1C:  AND.W           R3, R1, #7
144E20:  ADDS            R1, #1
144E22:  STR             R1, [SP,#0x228+var_130]
144E24:  LSLS            R2, R3
144E26:  UXTB            R2, R2
144E28:  LSRS            R2, R2, #7
144E2A:  STRB.W          R2, [R0,#0x34]
144E2E:  ADD.W           R1, R0, #0x2C ; ','; int
144E32:  ADD             R0, SP, #0x228+var_138; int
144E34:  MOVS            R2, #0x20 ; ' '
144E36:  MOVS            R3, #1
144E38:  BL              sub_17D786
144E3C:  LDR             R0, [R5]
144E3E:  LDR.W           R0, [R0,#0x20C]
144E42:  ADD.W           R1, R0, #0x25 ; '%'; int
144E46:  ADD             R0, SP, #0x228+var_138; int
144E48:  MOVS            R2, #8
144E4A:  MOVS            R3, #1
144E4C:  BL              sub_17D786
144E50:  LDR             R0, [R5]
144E52:  LDR.W           R0, [R0,#0x20C]
144E56:  ADD.W           R1, R0, #0x27 ; '''; int
144E5A:  ADD             R0, SP, #0x228+var_138; int
144E5C:  MOVS            R2, #8
144E5E:  MOVS            R3, #1
144E60:  BL              sub_17D786
144E64:  LDR             R0, [R5]
144E66:  LDR.W           R0, [R0,#0x20C]
144E6A:  ADD.W           R1, R0, #0xC; int
144E6E:  ADD             R0, SP, #0x228+var_138; int
144E70:  MOVS            R2, #0x20 ; ' '
144E72:  MOVS            R3, #1
144E74:  BL              sub_17D786
144E78:  LDR             R1, [SP,#0x228+var_138]
144E7A:  LDR             R0, [SP,#0x228+var_130]
144E7C:  CMP             R0, R1
144E7E:  BGE             loc_144E98
144E80:  LDR             R1, [SP,#0x228+var_12C]
144E82:  ASRS            R2, R0, #3
144E84:  LDRB            R1, [R1,R2]
144E86:  ADDS            R2, R0, #1
144E88:  AND.W           R0, R0, #7
144E8C:  STR             R2, [SP,#0x228+var_130]
144E8E:  LSL.W           R0, R1, R0
144E92:  UXTB            R0, R0
144E94:  MOV.W           R11, R0,LSR#7
144E98:  LDR             R0, [R5]
144E9A:  LDR.W           R0, [R0,#0x20C]
144E9E:  ADDS            R1, R0, #4; int
144EA0:  ADD             R0, SP, #0x228+var_138; int
144EA2:  MOVS            R2, #0x20 ; ' '
144EA4:  MOVS            R3, #1
144EA6:  BL              sub_17D786
144EAA:  LDR             R1, [SP,#0x228+var_138]
144EAC:  LDR             R0, [SP,#0x228+var_130]
144EAE:  CMP             R0, R1
144EB0:  BGE             loc_144ECE
144EB2:  LDR             R1, [SP,#0x228+var_12C]
144EB4:  ASRS            R2, R0, #3
144EB6:  AND.W           R3, R0, #7
144EBA:  ADDS            R0, #1
144EBC:  LDRB            R1, [R1,R2]
144EBE:  LDR             R2, [R5]
144EC0:  STR             R0, [SP,#0x228+var_130]
144EC2:  LSLS            R1, R3
144EC4:  LDR.W           R2, [R2,#0x20C]
144EC8:  UXTB            R1, R1
144ECA:  LSRS            R1, R1, #7
144ECC:  STRB            R1, [R2,#0x19]
144ECE:  LDR             R1, =(off_234C2C - 0x144ED4)
144ED0:  ADD             R1, PC; off_234C2C
144ED2:  LDR             R1, [R1]; dword_23903C ; int
144ED4:  ADD             R0, SP, #0x228+var_138; int
144ED6:  MOVS            R2, #0x20 ; ' '
144ED8:  MOVS            R3, #1
144EDA:  BL              sub_17D786
144EDE:  LDR             R1, =(off_234C28 - 0x144EE4)
144EE0:  ADD             R1, PC; off_234C28
144EE2:  LDR             R1, [R1]; dword_239040 ; int
144EE4:  ADD             R0, SP, #0x228+var_138; int
144EE6:  MOVS            R2, #0x20 ; ' '
144EE8:  MOVS            R3, #1
144EEA:  BL              sub_17D786
144EEE:  LDR             R1, =(off_234C14 - 0x144EF4)
144EF0:  ADD             R1, PC; off_234C14
144EF2:  LDR             R1, [R1]; dword_239044 ; int
144EF4:  ADD             R0, SP, #0x228+var_138; int
144EF6:  MOVS            R2, #0x20 ; ' '
144EF8:  MOVS            R3, #1
144EFA:  BL              sub_17D786
144EFE:  LDR             R1, =(off_234C6C - 0x144F04)
144F00:  ADD             R1, PC; off_234C6C
144F02:  LDR             R1, [R1]; unk_239048 ; int
144F04:  ADD             R0, SP, #0x228+var_138; int
144F06:  MOVS            R2, #0x20 ; ' '
144F08:  MOVS            R3, #1
144F0A:  BL              sub_17D786
144F0E:  ADD             R0, SP, #0x228+var_138; int
144F10:  ADD             R1, SP, #0x228+var_24; int
144F12:  MOVS            R2, #0x20 ; ' '
144F14:  MOVS            R3, #1
144F16:  BL              sub_17D786
144F1A:  LDR             R0, =(off_234970 - 0x144F24)
144F1C:  MOVS            R3, #2
144F1E:  LDR             R1, =(dword_314320 - 0x144F28)
144F20:  ADD             R0, PC; off_234970
144F22:  LDR             R2, [SP,#0x228+var_24]
144F24:  ADD             R1, PC; dword_314320
144F26:  LDR             R4, [R0]; dword_23DEF0
144F28:  CMP             R2, #2
144F2A:  IT EQ
144F2C:  MOVEQ           R3, #1
144F2E:  SUBS            R2, #1
144F30:  LDR             R0, [R4]
144F32:  IT NE
144F34:  MOVNE           R2, R3
144F36:  STR             R2, [R1]
144F38:  CBZ             R0, loc_144F3E
144F3A:  BL              nullsub_29
144F3E:  ADD             R0, SP, #0x228+var_138; int
144F40:  ADD.W           R1, SP, #0x228+var_139; int
144F44:  MOVS            R2, #8
144F46:  MOVS            R3, #1
144F48:  BL              sub_17D786
144F4C:  LDRB.W          R0, [SP,#0x228+var_139]
144F50:  MOVS            R6, #0
144F52:  CBZ             R0, loc_144F74
144F54:  LDR             R0, [R5]; int
144F56:  MOVW            R1, #0x101; n
144F5A:  BLX             sub_22178C
144F5E:  LDR             R1, [R5]; dest
144F60:  LDRB.W          R2, [SP,#0x228+var_139]
144F64:  ADD             R0, SP, #0x228+var_138; int
144F66:  BL              sub_17D744
144F6A:  LDRB.W          R0, [SP,#0x228+var_139]
144F6E:  B               loc_144F76
144F70:  DCD off_23496C - 0x144CB0
144F74:  MOVS            R0, #0
144F76:  LDR             R1, [R5]
144F78:  STRB            R6, [R1,R0]
144F7A:  ADD             R0, SP, #0x228+var_138; int
144F7C:  ADD.W           R1, SP, #0x228+dest; dest
144F80:  MOVS            R2, #0xD4
144F82:  BL              sub_17D744
144F86:  LDR             R0, [R5]
144F88:  LDR.W           R0, [R0,#0x20C]
144F8C:  ADD.W           R1, R0, #0x14; int
144F90:  ADD             R0, SP, #0x228+var_138; int
144F92:  MOVS            R2, #0x20 ; ' '
144F94:  MOVS            R3, #1
144F96:  BL              sub_17D786
144F9A:  LDRH.W          R1, [R7,#var_1E]
144F9E:  ADD.W           R10, R9, #0x13A0
144FA2:  LDR             R0, [R4]
144FA4:  STRH.W          R1, [R10]
144FA8:  UXTB.W          R1, R8
144FAC:  CMP             R1, #0
144FAE:  IT NE
144FB0:  MOVNE           R1, #1
144FB2:  BL              nullsub_30
144FB6:  LDR             R0, [R5]
144FB8:  MOVS.W          R1, R11,LSL#24
144FBC:  ITT NE
144FBE:  MOVNE           R1, #1
144FC0:  STRBNE.W        R1, [R0,#0x208]
144FC4:  BL              sub_144590
144FC8:  LDR             R0, [R5]
144FCA:  LDR.W           R1, [R0,#0x20C]
144FCE:  LDR             R0, [R4]
144FD0:  LDR             R1, [R1,#0xC]
144FD2:  BL              sub_F9B50
144FD6:  LDR             R0, [R5]
144FD8:  LDR.W           R0, [R0,#0x20C]
144FDC:  LDRB            R1, [R0,#0x10]
144FDE:  CBZ             R1, loc_144FEC
144FE0:  LDR             R0, [R4]
144FE2:  BL              sub_FA364
144FE6:  LDR             R0, [R5]
144FE8:  LDR.W           R0, [R0,#0x20C]
144FEC:  LDRB.W          R1, [R0,#0x27]
144FF0:  LDR             R0, [R4]
144FF2:  BL              sub_F977C
144FF6:  LDR             R0, =(off_234A24 - 0x144FFC)
144FF8:  ADD             R0, PC; off_234A24
144FFA:  LDR             R0, [R0]; dword_23DEEC
144FFC:  LDR             R0, [R0]
144FFE:  CBZ             R0, loc_14504A
145000:  LDR.W           R8, [R0,#0x60]
145004:  LDR             R1, =(unk_8F4B9 - 0x14500A)
145006:  ADD             R1, PC; unk_8F4B9 ; s
145008:  ADD             R0, SP, #0x228+var_218; int
14500A:  MOVS            R2, #0x27 ; '''
14500C:  BL              sub_F1E90
145010:  LDR             R4, [R5]
145012:  LDR.W           R9, [SP,#0x228+var_218]
145016:  MOV             R0, R4; s
145018:  BLX             strlen
14501C:  MOV             R2, R0
14501E:  ADD             R6, SP, #0x228+var_224
145020:  MOV             R1, R4
145022:  MOV             R0, R6
145024:  BL              sub_164D04
145028:  LDRB.W          R0, [SP,#0x228+var_224]
14502C:  LDR             R2, [SP,#0x228+var_21C]
14502E:  LSLS            R0, R0, #0x1F
145030:  IT EQ
145032:  ADDEQ           R2, R6, #1
145034:  MOV             R0, R8
145036:  MOV             R1, R9
145038:  BL              sub_12D5E8
14503C:  LDRB.W          R0, [SP,#0x228+var_224]
145040:  LSLS            R0, R0, #0x1F
145042:  ITT NE
145044:  LDRNE           R0, [SP,#0x228+var_21C]; void *
145046:  BLXNE           j__ZdlPv; operator delete(void *)
14504A:  LDR             R1, [R5]
14504C:  MOVS            R2, #5
14504E:  LDR.W           R0, [R10,#0x1C]
145052:  STR.W           R2, [R1,#0x218]
145056:  BL              sub_1407EC
14505A:  LDR             R0, =(off_23494C - 0x145068)
14505C:  MOV             R2, #0x6E045C
145064:  ADD             R0, PC; off_23494C
145066:  LDR             R0, [R0]; dword_23DF24
145068:  LDR             R1, [R0]
14506A:  LDR             R0, [R5]
14506C:  LDRB            R1, [R1,R2]
14506E:  BL              sub_144AF8
145072:  ADD             R0, SP, #0x228+var_138
145074:  BL              sub_17D542
145078:  ADD.W           SP, SP, #0x20C
14507C:  POP.W           {R8-R11}
145080:  POP             {R4-R7,PC}
