; =========================================================
; Game Engine Function: sub_183A60
; Address            : 0x183A60 - 0x1847FC
; =========================================================

183A60:  PUSH            {R4-R7,LR}
183A62:  ADD             R7, SP, #0xC
183A64:  PUSH.W          {R8-R11}
183A68:  SUB.W           SP, SP, #0x2F4
183A6C:  MOV             R8, R0
183A6E:  LDR             R0, =(off_234E88 - 0x183A76)
183A70:  ADD             R6, SP, #0x310+var_24
183A72:  ADD             R0, PC; off_234E88
183A74:  LDR.W           R10, [R0]; unk_382751
183A78:  LDR.W           R1, [R8,#0x7EC]; fd
183A7C:  MOV             R0, R10; int
183A7E:  MOV             R2, R8
183A80:  MOV             R3, R6
183A82:  BL              sub_18CC74
183A86:  ADDS            R1, R0, #1
183A88:  ITT EQ
183A8A:  LDREQ           R1, [SP,#0x310+var_24]
183A8C:  ADDSEQ.W        R1, R1, #1
183A90:  BEQ             loc_183B86
183A92:  LDRB.W          R1, [R8,#4]
183A96:  CMP             R1, #0
183A98:  BNE             loc_183B80
183A9A:  CMP             R0, #0
183A9C:  BGT             loc_183A78
183A9E:  LDR.W           R6, [R8,#0x7BC]
183AA2:  MOVS            R5, #0
183AA4:  LDR.W           R0, [R8,#0x7C8]
183AA8:  MOVS            R4, #0
183AAA:  CMP             R6, R0
183AAC:  BEQ             loc_183BA0
183AAE:  MOVS            R0, #0
183AB0:  STR             R0, [SP,#0x310+var_298]
183AB2:  LDRB.W          R0, [R6,#0x38]
183AB6:  CMP             R0, #0
183AB8:  BEQ             loc_183BA4
183ABA:  LDR             R0, [R6,#0x34]
183ABC:  LDR             R1, [R6,#0x3C]
183ABE:  STR.W           R1, [R8,#0x7BC]
183AC2:  CBZ             R0, loc_183B00
183AC4:  LDRB            R0, [R6,#0xC]
183AC6:  MOVS            R3, #1
183AC8:  LDRD.W          R1, R2, [R6,#0x10]
183ACC:  STRD.W          R3, R0, [SP,#0x310+var_310]
183AD0:  MOV             R0, R8
183AD2:  MOVS            R3, #0
183AD4:  BL              sub_181338
183AD8:  LDR.W           R0, [R8,#0x7C4]
183ADC:  LDR.W           R6, [R8,#0x7BC]
183AE0:  LDR.W           R1, [R8,#0x7C8]
183AE4:  LDR.W           R2, [R8,#0x7CC]
183AE8:  STRB.W          R5, [R0,#0x38]
183AEC:  CMP             R6, R1
183AEE:  LDR             R0, [R0,#0x3C]
183AF0:  ADD.W           R2, R2, #1
183AF4:  STR.W           R2, [R8,#0x7CC]
183AF8:  STR.W           R0, [R8,#0x7C4]
183AFC:  BNE             loc_183AB2
183AFE:  B               loc_183BA4
183B00:  LDR             R1, [SP,#0x310+var_298]
183B02:  MOV             R9, R4
183B04:  ORRS.W          R0, R4, R1
183B08:  BNE             loc_183B10
183B0A:  BL              sub_17E348
183B0E:  MOV             R9, R0
183B10:  LDR.W           R11, [R6,#0x30]
183B14:  LDRB            R4, [R6,#0xC]
183B16:  LDRD.W          R5, R0, [R6,#0x10]
183B1A:  LDM.W           R6, {R2,R3,R12}
183B1E:  LDRB.W          LR, [R6,#0x18]
183B22:  STRD.W          R5, R0, [SP,#0x310+var_308]
183B26:  MOVS            R0, #1
183B28:  STR             R0, [SP,#0x310+var_2FC]
183B2A:  MOV             R0, R8
183B2C:  STR             R1, [SP,#0x310+var_298]
183B2E:  STRD.W          R9, R1, [SP,#0x310+var_2F8]
183B32:  MOV             R1, R11
183B34:  STRD.W          R12, R4, [SP,#0x310+var_310]
183B38:  MOV             R4, R9
183B3A:  STR.W           LR, [SP,#0x310+var_300]
183B3E:  BL              sub_1825E8
183B42:  CBNZ            R0, loc_183B4C
183B44:  LDR             R0, [R6,#0x30]; void *
183B46:  CBZ             R0, loc_183B4C
183B48:  BLX             j__ZdlPv; operator delete(void *)
183B4C:  LDR             R0, [R6,#0x1C]
183B4E:  MOVS            R5, #0
183B50:  CMP             R0, #0
183B52:  BEQ             loc_183AD8
183B54:  LDR             R1, =(unk_BE944 - 0x183B5E)
183B56:  ADD.W           R0, R6, #0x10
183B5A:  ADD             R1, PC; unk_BE944
183B5C:  BL              sub_17E596
183B60:  CMP             R0, #0
183B62:  BEQ             loc_183AD8
183B64:  LDRD.W          R1, R2, [R6,#0x10]
183B68:  MOVS            R0, #1
183B6A:  STR             R0, [SP,#0x310+var_310]
183B6C:  MOV             R0, R8
183B6E:  MOVS            R3, #1
183B70:  BL              sub_181978
183B74:  CMP             R0, #0
183B76:  BEQ             loc_183AD8
183B78:  LDR             R1, [R6,#0x1C]
183B7A:  STR.W           R1, [R0,#0x83C]
183B7E:  B               loc_183AD8
183B80:  MOVS            R4, #0
183B82:  B.W             loc_1847EA
183B86:  LDR.W           R0, [R8]
183B8A:  MOVS            R1, #1
183B8C:  STRB.W          R1, [R8,#4]
183B90:  MOVS            R1, #0
183B92:  MOVS            R2, #0
183B94:  MOVS            R4, #0
183B96:  LDR             R3, [R0,#0x28]
183B98:  MOV             R0, R8
183B9A:  BLX             R3
183B9C:  B.W             loc_1847EA
183BA0:  MOVS            R0, #0
183BA2:  STR             R0, [SP,#0x310+var_298]
183BA4:  LDR.W           R6, [R8,#0x38C]
183BA8:  LDR.W           R0, [R8,#0x398]
183BAC:  CMP             R6, R0
183BAE:  ITT NE
183BB0:  LDRBNE.W        R0, [R6,#0x11C]
183BB4:  CMPNE           R0, #0
183BB6:  BNE             loc_183BD4
183BB8:  ADDW            R0, R8, #0x9B4
183BBC:  STR             R0, [SP,#0x310+var_2AC]
183BBE:  ADDW            R0, R8, #0x9BC
183BC2:  STR             R0, [SP,#0x310+var_2B0]
183BC4:  ADDW            R0, R8, #0x9A8
183BC8:  STR             R0, [SP,#0x310+var_2A8]
183BCA:  MOVS            R0, #0
183BCC:  MOV             R11, R4
183BCE:  STR             R0, [SP,#0x310+var_2A4]
183BD0:  LDR             R5, [SP,#0x310+var_298]
183BD2:  B               loc_183DD8
183BD4:  LDR.W           R0, [R6,#0x120]
183BD8:  CMP             R6, #0
183BDA:  STR.W           R0, [R8,#0x38C]
183BDE:  ADDW            R0, R8, #0x9B4
183BE2:  STR             R0, [SP,#0x310+var_2AC]
183BE4:  ADDW            R0, R8, #0x9BC
183BE8:  STR             R0, [SP,#0x310+var_2B0]
183BEA:  ADDW            R0, R8, #0x9A8
183BEE:  STR             R0, [SP,#0x310+var_2A8]
183BF0:  MOV.W           R0, #0
183BF4:  MOV             R11, R4
183BF6:  STR             R0, [SP,#0x310+var_2A4]
183BF8:  BEQ             loc_183BD0
183BFA:  ADD.W           R9, SP, #0x310+var_140
183BFE:  MOVS            R4, #0
183C00:  MOV             R0, R6
183C02:  STR             R6, [SP,#0x310+var_29C]
183C04:  LDR             R0, [SP,#0x310+var_298]
183C06:  ORRS.W          R0, R0, R11
183C0A:  BNE             loc_183C20
183C0C:  BL              sub_17E348
183C10:  MOV.W           R2, #0x3E8
183C14:  MOVS            R3, #0
183C16:  MOV             R11, R0
183C18:  STR             R1, [SP,#0x310+var_298]
183C1A:  BLX             sub_221404
183C1E:  MOV             R4, R0
183C20:  LDR             R0, [R6,#8]
183C22:  CMP             R0, R4
183C24:  BCS             loc_183CAC
183C26:  STR.W           R11, [SP,#0x310+var_290]
183C2A:  MOV             R0, R6
183C2C:  LDR             R1, =(unk_BE944 - 0x183C36)
183C2E:  LDRB.W          R11, [R6,#0xC]
183C32:  ADD             R1, PC; unk_BE944
183C34:  BL              sub_17E580
183C38:  MOV             R5, R0
183C3A:  CMP.W           R11, #6
183C3E:  BEQ             loc_183CD0
183C40:  CMP             R5, #0
183C42:  BNE             loc_183CD0
183C44:  LDR             R0, =(word_381C0C - 0x183C50)
183C46:  ADD.W           R2, R4, #0x3E8
183C4A:  LDRB            R1, [R6,#0xC]
183C4C:  ADD             R0, PC; word_381C0C
183C4E:  STR             R2, [R6,#8]
183C50:  ADDS            R1, #1
183C52:  STRB            R1, [R6,#0xC]
183C54:  MOVS            R1, #0x18
183C56:  LDRH            R0, [R0]
183C58:  STRB.W          R1, [SP,#0x310+var_140]
183C5C:  MOVW            R2, #0x6969
183C60:  LDR.W           R1, [R8,#0x384]
183C64:  EORS            R0, R2
183C66:  STR             R4, [SP,#0x310+var_294]
183C68:  STRH.W          R0, [SP,#0x310+var_140+1]
183C6C:  CBZ             R1, loc_183C92
183C6E:  MOVS            R5, #0
183C70:  LDR.W           R0, [R8,#0x380]
183C74:  LDRD.W          R3, R2, [R6]
183C78:  LDR.W           R0, [R0,R5,LSL#2]
183C7C:  LDR             R1, [R0]
183C7E:  LDR             R4, [R1,#0x1C]
183C80:  MOV             R1, R9
183C82:  STR             R2, [SP,#0x310+var_310]
183C84:  MOVS            R2, #0x18
183C86:  BLX             R4
183C88:  LDR.W           R0, [R8,#0x384]
183C8C:  ADDS            R5, #1
183C8E:  CMP             R5, R0
183C90:  BCC             loc_183C70
183C92:  LDRH            R2, [R6,#4]
183C94:  MOVS            R3, #3
183C96:  LDR.W           R1, [R8,#0x7EC]
183C9A:  LDR             R0, [R6]
183C9C:  STRD.W          R0, R2, [SP,#0x310+var_310]
183CA0:  MOV             R0, R10
183CA2:  MOV             R2, R9
183CA4:  BL              sub_18CCDC
183CA8:  LDRD.W          R4, R11, [SP,#0x310+var_294]
183CAC:  LDR.W           R6, [R8,#0x38C]
183CB0:  LDR.W           R0, [R8,#0x398]
183CB4:  CMP             R6, R0
183CB6:  ITT NE
183CB8:  LDRBNE.W        R0, [R6,#0x11C]
183CBC:  CMPNE           R0, #0
183CBE:  BEQ.W           loc_183DCC
183CC2:  LDR.W           R0, [R6,#0x120]
183CC6:  STR.W           R0, [R8,#0x38C]
183CCA:  CMP             R6, #0
183CCC:  BNE             loc_183C04
183CCE:  B               loc_183DCC
183CD0:  LDR             R0, [R6,#0x10]; void *
183CD2:  CBZ             R0, loc_183CDC
183CD4:  BLX             j__ZdaPv; operator delete[](void *)
183CD8:  MOVS            R0, #0
183CDA:  STR             R0, [R6,#0x10]
183CDC:  SUBS.W          R0, R11, #6
183CE0:  IT NE
183CE2:  MOVNE           R0, #1
183CE4:  ORRS            R0, R5
183CE6:  ITT EQ
183CE8:  LDREQ.W         R0, [R6,#0x118]
183CEC:  CMPEQ           R0, #1
183CEE:  BEQ             loc_183D5C
183CF0:  LDR             R0, [SP,#0x310+var_29C]
183CF2:  LDR.W           R11, [SP,#0x310+var_290]
183CF6:  CMP             R6, R0
183CF8:  BEQ             loc_183D22
183CFA:  LDR.W           R0, [R8,#0x38C]
183CFE:  MOV.W           R2, #0xFFFFFFFF
183D02:  LDR.W           R1, [R8,#0x398]
183D06:  STRH            R2, [R6,#4]
183D08:  STR             R2, [R6]
183D0A:  CMP             R0, R1
183D0C:  ITT NE
183D0E:  LDRBNE.W        R1, [R0,#0x11C]
183D12:  CMPNE           R1, #0
183D14:  BEQ             loc_183DCC
183D16:  LDR.W           R1, [R0,#0x120]
183D1A:  MOV             R6, R0
183D1C:  STR.W           R1, [R8,#0x38C]
183D20:  B               loc_183CCA
183D22:  ADD.W           R2, R8, #0x394
183D26:  MOVS            R3, #0
183D28:  LDR.W           R6, [R8,#0x38C]
183D2C:  LDM             R2, {R0-R2}
183D2E:  ADDS            R2, #1
183D30:  CMP             R6, R1
183D32:  STRB.W          R3, [R0,#0x11C]
183D36:  LDR.W           R0, [R0,#0x120]
183D3A:  STR.W           R2, [R8,#0x39C]
183D3E:  STR.W           R0, [R8,#0x394]
183D42:  ITT NE
183D44:  LDRBNE.W        R0, [R6,#0x11C]
183D48:  CMPNE           R0, #0
183D4A:  BEQ.W           loc_1847F6
183D4E:  LDR.W           R0, [R6,#0x120]
183D52:  STR.W           R0, [R8,#0x38C]
183D56:  MOV             R0, R6
183D58:  STR             R6, [SP,#0x310+var_29C]
183D5A:  B               loc_183CCA
183D5C:  MOVS            R0, #0x1D; size
183D5E:  BLX             malloc
183D62:  MOV             R5, R0
183D64:  MOVS            R1, #0x1D
183D66:  MOV             R2, R5
183D68:  LDR             R0, =(unk_381C10 - 0x183D80)
183D6A:  STRB.W          R1, [R2,#0x1C]!
183D6E:  MOVS            R1, #0
183D70:  STRB            R1, [R5,#0x18]
183D72:  MOVS            R1, #1
183D74:  STR             R1, [R5,#0xC]
183D76:  MOVS            R1, #8
183D78:  STRD.W          R1, R2, [R5,#0x10]
183D7C:  ADD             R0, PC; unk_381C10 ; mutex
183D7E:  LDR             R3, [R6]
183D80:  MOV.W           R2, #0xFFFFFFFF
183D84:  LDRH            R1, [R6,#4]
183D86:  MOV             R11, R0
183D88:  STRH            R2, [R5]
183D8A:  STRH            R1, [R5,#8]
183D8C:  STR             R3, [R5,#4]
183D8E:  BLX             EnterCriticalSection_0
183D92:  LDR             R0, [SP,#0x310+var_2A8]
183D94:  BL              sub_184892
183D98:  LDR             R2, [SP,#0x310+var_2AC]
183D9A:  STR             R5, [R0]
183D9C:  MOVS            R5, #1
183D9E:  LDR             R3, [SP,#0x310+var_2B0]
183DA0:  LDR             R0, [R2]
183DA2:  LDR             R1, [R3]
183DA4:  STRB            R5, [R0,#4]
183DA6:  LDR             R0, [R0,#8]
183DA8:  ADDS            R1, #1
183DAA:  STR             R0, [R2]
183DAC:  MOV             R0, R11; mutex
183DAE:  STR             R1, [R3]
183DB0:  BLX             LeaveCriticalSection_0
183DB4:  B               loc_183CF0
183DB6:  ALIGN 4
183DB8:  DCD off_234E88 - 0x183A76
183DBC:  DCD unk_BE944 - 0x183B5E
183DC0:  DCD unk_BE944 - 0x183C36
183DC4:  DCD word_381C0C - 0x183C50
183DC8:  DCD unk_381C10 - 0x183D80
183DCC:  LDR             R0, [SP,#0x310+var_29C]
183DCE:  LDR             R5, [SP,#0x310+var_298]
183DD0:  CBZ             R0, loc_183DD6
183DD2:  STR.W           R0, [R8,#0x38C]
183DD6:  STR             R4, [SP,#0x310+var_2A4]
183DD8:  LDRH.W          R0, [R8,#8]
183DDC:  CMP             R0, #0
183DDE:  BEQ.W           loc_1847E8
183DE2:  ADD             R0, SP, #0x310+var_254
183DE4:  MOVS            R1, #0
183DE6:  ADDS            R0, #4
183DE8:  STR             R0, [SP,#0x310+var_2C4]
183DEA:  ADD.W           R0, R8, #0x234
183DEE:  STR             R0, [SP,#0x310+var_2CC]
183DF0:  ADDW            R0, R8, #0x814
183DF4:  STR             R0, [SP,#0x310+var_2EC]
183DF6:  ADDW            R0, R8, #0x988
183DFA:  STR             R0, [SP,#0x310+var_2E8]
183DFC:  ADD             R0, SP, #0x310+var_288
183DFE:  ADDS            R0, #4
183E00:  STR             R0, [SP,#0x310+var_2F0]
183E02:  ADD             R0, SP, #0x310+var_2C
183E04:  ADDS            R0, #4
183E06:  STR             R0, [SP,#0x310+var_2E0]
183E08:  ADDW            R0, R8, #0x974
183E0C:  STR             R0, [SP,#0x310+var_2E4]
183E0E:  ADD.W           R0, R8, #0x380
183E12:  STR             R0, [SP,#0x310+var_2B4]
183E14:  STR             R1, [SP,#0x310+var_29C]
183E16:  ADD.W           R1, R1, R1,LSL#5
183E1A:  LDR.W           R0, [R8,#0x340]
183E1E:  LSLS            R2, R1, #6
183E20:  LDRB            R2, [R0,R2]
183E22:  CMP             R2, #0
183E24:  BEQ.W           loc_183F84
183E28:  ADD.W           R2, R0, R1,LSL#6
183E2C:  STR             R2, [SP,#0x310+var_290]
183E2E:  MOV             R4, R2
183E30:  MOV             R6, R2
183E32:  LDR.W           R0, [R4,#4]!
183E36:  LDRH.W          R1, [R6,#8]!
183E3A:  STR             R0, [SP,#0x310+var_2C]
183E3C:  ORRS.W          R0, R11, R5
183E40:  STRH.W          R1, [SP,#0x310+var_28]
183E44:  BNE             loc_183E5C
183E46:  BL              sub_17E348
183E4A:  MOV.W           R2, #0x3E8
183E4E:  MOVS            R3, #0
183E50:  MOV             R11, R0
183E52:  MOV             R5, R1
183E54:  BLX             sub_221404
183E58:  LDR             R2, [SP,#0x310+var_290]
183E5A:  STR             R0, [SP,#0x310+var_2A4]
183E5C:  LDR.W           R0, [R2,#0x700]
183E60:  LDR             R1, [SP,#0x310+var_2A4]
183E62:  SUBS            R0, R1, R0
183E64:  BLS             loc_183EC2
183E66:  MOVW            R1, #0x1389
183E6A:  CMP             R0, R1
183E6C:  BCC             loc_183EC2
183E6E:  LDR.W           R0, [R2,#0x83C]
183E72:  CMP             R0, #8
183E74:  BNE             loc_183EC2
183E76:  ADD.W           R10, R2, #0x18
183E7A:  MOV             R0, R10
183E7C:  BL              sub_18A0A4
183E80:  LDR             R0, [R0,#0x60]
183E82:  LDR             R1, [SP,#0x310+var_290]
183E84:  CBNZ            R0, loc_183EC2
183E86:  MOVS            R2, #0x17
183E88:  ADD.W           R9, R1, #0x700
183E8C:  LDR             R0, [R4]
183E8E:  MOVS            R3, #3
183E90:  LDR             R1, [R6]
183E92:  STRB.W          R2, [SP,#0x310+var_140]
183E96:  MOVS            R2, #8
183E98:  STR             R2, [SP,#0x310+var_310]
183E9A:  MOVS            R2, #0
183E9C:  STRD.W          R1, R2, [SP,#0x310+var_304]
183EA0:  ADD             R1, SP, #0x310+var_140
183EA2:  STRD.W          R2, R0, [SP,#0x310+var_30C]
183EA6:  MOV             R0, R8
183EA8:  STRD.W          R2, R11, [SP,#0x310+var_2FC]
183EAC:  MOVS            R2, #8
183EAE:  STR             R5, [SP,#0x310+var_2F4]
183EB0:  BL              sub_1825E8
183EB4:  MOV             R0, R10
183EB6:  BL              sub_1876DC
183EBA:  LDR             R1, [SP,#0x310+var_2A4]
183EBC:  ADD             R0, R1
183EBE:  STR.W           R0, [R9]
183EC2:  LDR.W           R0, [R8,#0x7E0]
183EC6:  LDR.W           R1, [R8,#0x7EC]
183ECA:  STR             R0, [SP,#0x310+var_310]
183ECC:  LDR             R0, [SP,#0x310+var_290]
183ECE:  LDRD.W          R2, R3, [SP,#0x310+var_2C]
183ED2:  ADD.W           R4, R0, #0x18
183ED6:  LDR             R6, [SP,#0x310+var_2B4]
183ED8:  STRD.W          R11, R5, [SP,#0x310+var_308]
183EDC:  MOV             R0, R4
183EDE:  STR             R6, [SP,#0x310+var_300]
183EE0:  BL              sub_188D78
183EE4:  MOV             R0, R4
183EE6:  STR             R4, [SP,#0x310+var_294]
183EE8:  BL              sub_18A09E
183EEC:  LDR             R2, [SP,#0x310+var_290]
183EEE:  CMP             R0, #0
183EF0:  STR             R5, [SP,#0x310+var_298]
183EF2:  BEQ             loc_183F9A
183EF4:  LDR.W           R4, [R2,#0x83C]
183EF8:  MOV.W           R9, #1
183EFC:  CMP             R4, #8
183EFE:  BHI             loc_183F6E
183F00:  LSL.W           R0, R9, R4
183F04:  TST.W           R0, #0x11A
183F08:  BEQ             loc_183F6E
183F0A:  MOVS            R0, #0x1D; size
183F0C:  BLX             malloc
183F10:  MOV             R6, R0
183F12:  LDR             R5, =(unk_381C10 - 0x183F1E)
183F14:  MOVS            R0, #0
183F16:  MOVS            R1, #0x20 ; ' '
183F18:  STRB            R0, [R6,#0x18]
183F1A:  ADD             R5, PC; unk_381C10
183F1C:  LDR             R0, [SP,#0x310+var_29C]
183F1E:  CMP             R4, #8
183F20:  STRH            R0, [R6]
183F22:  MOV             R3, R6
183F24:  LDRH.W          R0, [SP,#0x310+var_28]
183F28:  IT EQ
183F2A:  MOVEQ           R1, #0x21 ; '!'
183F2C:  LDR             R2, [SP,#0x310+var_2C]
183F2E:  CMP             R4, #4
183F30:  IT EQ
183F32:  MOVEQ           R1, #0x1D
183F34:  STRB.W          R1, [R3,#0x1C]!
183F38:  MOVS            R1, #8
183F3A:  STRH            R0, [R6,#8]
183F3C:  MOV             R0, R5; mutex
183F3E:  STR.W           R9, [R6,#0xC]
183F42:  STRD.W          R1, R3, [R6,#0x10]
183F46:  STR             R2, [R6,#4]
183F48:  BLX             EnterCriticalSection_0
183F4C:  LDR             R0, [SP,#0x310+var_2A8]
183F4E:  BL              sub_184892
183F52:  LDR             R2, [SP,#0x310+var_2AC]
183F54:  STR             R6, [R0]
183F56:  LDR             R3, [SP,#0x310+var_2B0]
183F58:  LDR             R0, [R2]
183F5A:  LDR             R1, [R3]
183F5C:  STRB.W          R9, [R0,#4]
183F60:  LDR             R0, [R0,#8]
183F62:  ADDS            R1, #1
183F64:  STR             R0, [R2]
183F66:  MOV             R0, R5; mutex
183F68:  STR             R1, [R3]
183F6A:  BLX             LeaveCriticalSection_0
183F6E:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
183F72:  MOVS            R0, #0
183F74:  STR             R0, [SP,#0x310+var_30C]
183F76:  MOV             R0, R8
183F78:  MOVS            R3, #0
183F7A:  STR.W           R9, [SP,#0x310+var_310]
183F7E:  BL              sub_181338
183F82:  B               loc_183F86
183F84:  STR             R5, [SP,#0x310+var_298]
183F86:  LDR             R1, [SP,#0x310+var_29C]
183F88:  LDRH.W          R0, [R8,#8]
183F8C:  LDR             R5, [SP,#0x310+var_298]
183F8E:  ADDS            R1, #1
183F90:  CMP             R1, R0
183F92:  BCC.W           loc_183E14
183F96:  B.W             loc_1847E8
183F9A:  LDR.W           R0, [R2,#0x83C]
183F9E:  ADDW            R1, R2, #0x83C
183FA2:  STR             R1, [SP,#0x310+var_2A0]
183FA4:  SUBS            R1, R0, #1
183FA6:  CMP             R1, #1
183FA8:  BHI             loc_183FBA
183FAA:  LDR             R0, [SP,#0x310+var_294]
183FAC:  BL              sub_189CCA
183FB0:  LDR             R2, [SP,#0x310+var_290]
183FB2:  CMP             R0, #0
183FB4:  BEQ             loc_183EF4
183FB6:  LDR             R0, [SP,#0x310+var_2A0]
183FB8:  LDR             R0, [R0]
183FBA:  CMP             R0, #3
183FBC:  BNE             loc_183FCE
183FBE:  LDR             R0, [SP,#0x310+var_294]
183FC0:  BL              sub_189D32
183FC4:  LDR             R2, [SP,#0x310+var_290]
183FC6:  CMP             R0, #0
183FC8:  BEQ             loc_183EF4
183FCA:  LDR             R0, [SP,#0x310+var_2A0]
183FCC:  LDR             R0, [R0]
183FCE:  BIC.W           R0, R0, #3
183FD2:  CMP             R0, #4
183FD4:  BNE             loc_183FEA
183FD6:  LDR.W           R0, [R2,#0x818]
183FDA:  LDR             R1, [SP,#0x310+var_2A4]
183FDC:  SUBS            R0, R1, R0
183FDE:  BLS             loc_183FEA
183FE0:  MOVW            R1, #0x2711
183FE4:  CMP             R0, R1
183FE6:  BCS.W           loc_183EF4
183FEA:  LDR             R0, [SP,#0x310+var_294]
183FEC:  BL              sub_18A098
183FF0:  CBZ             R0, loc_184048
183FF2:  MOVS            R0, #0x1D; size
183FF4:  BLX             malloc
183FF8:  LDR             R5, =(unk_381C10 - 0x184008)
183FFA:  MOVS            R1, #0x26 ; '&'
183FFC:  MOV             R6, R0
183FFE:  STRB.W          R1, [R0,#0x1C]!
184002:  MOVS            R2, #8
184004:  ADD             R5, PC; unk_381C10
184006:  STRD.W          R2, R0, [R6,#0x10]
18400A:  MOVS            R1, #0
18400C:  LDR             R0, [SP,#0x310+var_2C]
18400E:  MOVS            R4, #1
184010:  STRB            R1, [R6,#0x18]
184012:  LDRH.W          R1, [SP,#0x310+var_28]
184016:  LDR             R2, [SP,#0x310+var_29C]
184018:  STR             R0, [R6,#4]
18401A:  MOV             R0, R5; mutex
18401C:  STR             R4, [R6,#0xC]
18401E:  STRH            R2, [R6]
184020:  STRH            R1, [R6,#8]
184022:  BLX             EnterCriticalSection_0
184026:  LDR             R0, [SP,#0x310+var_2A8]
184028:  BL              sub_184892
18402C:  LDR             R2, [SP,#0x310+var_2AC]
18402E:  STR             R6, [R0]
184030:  LDR             R3, [SP,#0x310+var_2B0]
184032:  LDR             R0, [R2]
184034:  LDR             R1, [R3]
184036:  STRB            R4, [R0,#4]
184038:  LDR             R0, [R0,#8]
18403A:  ADDS            R1, #1
18403C:  STR             R0, [R2]
18403E:  MOV             R0, R5; mutex
184040:  STR             R1, [R3]
184042:  BLX             LeaveCriticalSection_0
184046:  B               loc_183F86
184048:  LDR             R0, [SP,#0x310+var_2A0]
18404A:  LDR             R0, [R0]
18404C:  CMP             R0, #8
18404E:  BNE             loc_18408C
184050:  LDR             R0, [SP,#0x310+var_290]
184052:  LDR             R1, [SP,#0x310+var_2A4]
184054:  LDR.W           R0, [R0,#0x6FC]
184058:  CMP             R1, R0
18405A:  BLS             loc_18408C
18405C:  LDRB.W          R0, [R8,#6]
184060:  CBNZ            R0, loc_184070
184062:  LDR             R0, [SP,#0x310+var_290]
184064:  MOVW            R1, #0xFFFF
184068:  LDRH.W          R0, [R0,#0x6F8]
18406C:  CMP             R0, R1
18406E:  BNE             loc_18408C
184070:  LDR             R0, [SP,#0x310+var_290]
184072:  MOVW            R2, #0x1388
184076:  LDR             R1, [SP,#0x310+var_2A4]
184078:  MOVS            R3, #1
18407A:  ADDW            R0, R0, #0x6FC
18407E:  ADD             R1, R2
184080:  STR             R1, [R0]
184082:  MOV             R0, R8
184084:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
184088:  BL              loc_1817A2
18408C:  LDR             R0, [SP,#0x310+var_294]
18408E:  ADD             R1, SP, #0x310+var_20
184090:  BL              sub_188832
184094:  CMP             R0, #1
184096:  BLT.W           loc_183F86
18409A:  LDR             R1, [SP,#0x310+var_290]
18409C:  MOV             R10, R0
18409E:  ADD.W           R0, R1, #0x6F8
1840A2:  STR             R0, [SP,#0x310+var_2C8]
1840A4:  ADDW            R0, R1, #0x6F4
1840A8:  STR             R0, [SP,#0x310+var_2B8]
1840AA:  ADDW            R0, R1, #0x81C
1840AE:  STR             R0, [SP,#0x310+var_2DC]
1840B0:  ADDW            R0, R1, #0x82C
1840B4:  STR             R0, [SP,#0x310+var_2D8]
1840B6:  ADD.W           R0, R1, #0x10
1840BA:  STR             R0, [SP,#0x310+var_2BC]
1840BC:  ADD.W           R0, R1, #0xC
1840C0:  STR             R0, [SP,#0x310+var_2C0]
1840C2:  ADD.W           R0, R1, #0x830
1840C6:  STR             R0, [SP,#0x310+var_2D4]
1840C8:  ADDW            R0, R1, #0x704
1840CC:  STR             R0, [SP,#0x310+var_2D0]
1840CE:  ADD             R0, SP, #0x310+var_140; int
1840D0:  LDR.W           R2, [R8,#0x7A4]
1840D4:  CMP             R2, #0
1840D6:  BEQ             loc_184170
1840D8:  MOV.W           R1, #0x230; size
1840DC:  MOV             R4, R0
1840DE:  BL              sub_17D4C0
1840E2:  BL              sub_17D55E
1840E6:  ADD.W           R0, R10, #7
1840EA:  LDR             R1, [SP,#0x310+var_20]
1840EC:  LSRS            R5, R0, #3
1840EE:  MOV             R0, R4
1840F0:  MOV             R2, R5
1840F2:  BL              sub_17D89E
1840F6:  LDR             R6, [SP,#0x310+var_140]
1840F8:  LDR.W           R1, [R8,#0x7B0]
1840FC:  ADDS            R0, R6, #7
1840FE:  ADD.W           R1, R1, R0,ASR#3
184102:  STR.W           R1, [R8,#0x7B0]
184106:  CBZ             R6, loc_184178
184108:  MOV             R4, R11
18410A:  MOV.W           R9, R0,ASR#3
18410E:  MOV             R0, R9; unsigned int
184110:  BLX             j__Znaj; operator new[](uint)
184114:  LDR             R1, [SP,#0x310+src]; src
184116:  MOV             R2, R9; n
184118:  MOV             R11, R0
18411A:  BLX             j_memcpy
18411E:  ADD             R0, SP, #0x310+var_140
184120:  BL              sub_17D55E
184124:  LDR.W           R0, [R8,#0x7A4]
184128:  ADD             R3, SP, #0x310+var_140
18412A:  MOV             R1, R11
18412C:  MOV             R2, R6
18412E:  BL              sub_17DEFA
184132:  LDR             R0, [SP,#0x310+var_140]
184134:  LDR.W           R1, [R8,#0x7B8]
184138:  ADDS            R0, #7
18413A:  ADD.W           R0, R1, R0,ASR#3
18413E:  STR.W           R0, [R8,#0x7B8]
184142:  MOV             R0, R11; void *
184144:  BLX             j__ZdaPv; operator delete[](void *)
184148:  LDR             R1, [SP,#0x310+var_140]
18414A:  LDR             R0, [SP,#0x310+var_20]; void *
18414C:  ADDS            R1, #7
18414E:  ASRS            R6, R1, #3
184150:  CMP.W           R5, R1,ASR#3
184154:  BGE             loc_184164
184156:  CBZ             R0, loc_18415C
184158:  BLX             j__ZdaPv; operator delete[](void *)
18415C:  MOV             R0, R6; unsigned int
18415E:  BLX             j__Znaj; operator new[](uint)
184162:  STR             R0, [SP,#0x310+var_20]
184164:  LDR             R1, [SP,#0x310+src]; src
184166:  MOV             R2, R6; n
184168:  MOV             R11, R4
18416A:  BLX             j_memcpy
18416E:  B               loc_18417A
184170:  ADD.W           R2, R10, #7
184174:  LSRS            R6, R2, #3
184176:  B               loc_184182
184178:  MOVS            R6, #0
18417A:  ADD             R0, SP, #0x310+var_140
18417C:  BL              sub_17D542
184180:  LDR             R1, [SP,#0x310+var_290]
184182:  LDR             R5, [SP,#0x310+var_20]
184184:  LDR             R2, [SP,#0x310+var_2A0]
184186:  LDRB            R4, [R5]
184188:  LDR.W           R9, [R2]
18418C:  CMP.W           R9, #6
184190:  BNE             loc_1841A8
184192:  LDRD.W          R2, R3, [SP,#0x310+var_2C]
184196:  CMP             R4, #0xB
184198:  BNE             loc_1841CC
18419A:  LDR             R1, [SP,#0x310+var_290]
18419C:  MOV             R0, R8
18419E:  STRD.W          R5, R6, [SP,#0x310+var_310]
1841A2:  BL              sub_182516
1841A6:  B               loc_184206
1841A8:  CMP             R4, #0xB
1841AA:  BNE             loc_184214
1841AC:  CMP.W           R9, #8
1841B0:  BEQ             loc_1841C8
1841B2:  LDRD.W          R2, R3, [SP,#0x310+var_2C]
1841B6:  MOV             R0, R8
1841B8:  STRD.W          R5, R6, [SP,#0x310+var_310]
1841BC:  BL              sub_182516
1841C0:  LDR             R5, [SP,#0x310+var_20]
1841C2:  CMP             R5, #0
1841C4:  BEQ.W           loc_18448E
1841C8:  MOV             R0, R5
1841CA:  B               loc_18420E
1841CC:  MOVS            R0, #1
1841CE:  MOV             R1, R2
1841D0:  STR             R0, [SP,#0x310+var_310]
1841D2:  MOVS            R0, #0
1841D4:  STR             R0, [SP,#0x310+var_30C]
1841D6:  MOV             R2, R3
1841D8:  MOV             R0, R8
1841DA:  MOVS            R3, #0
1841DC:  BL              sub_181338
1841E0:  LDR.W           R0, [R8]
1841E4:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
1841E8:  LDR.W           R3, [R0,#0xBC]
1841EC:  MOV             R0, R8
1841EE:  BLX             R3
1841F0:  MOV             R5, R0
1841F2:  LDR             R0, [SP,#0x310+var_294]
1841F4:  BL              sub_1876DC
1841F8:  MOV             R2, R0
1841FA:  LDR.W           R0, [R8]
1841FE:  MOV             R1, R5
184200:  LDR             R3, [R0,#0x68]
184202:  MOV             R0, R8
184204:  BLX             R3
184206:  LDR             R0, [SP,#0x310+var_20]; void *
184208:  CMP             R0, #0
18420A:  BEQ.W           loc_18448E
18420E:  BLX             j__ZdaPv; operator delete[](void *)
184212:  B               loc_18448E
184214:  CMP             R4, #0x1E
184216:  IT EQ
184218:  CMPEQ           R6, #7
18421A:  BEQ             loc_184280
18421C:  CMP             R4, #9
18421E:  IT EQ
184220:  CMPEQ           R6, #9
184222:  BEQ.W           loc_18433C
184226:  CMP             R4, #6
184228:  IT EQ
18422A:  CMPEQ           R6, #5
18422C:  BEQ.W           loc_1843F0
184230:  CMP             R4, #0x1F
184232:  BGT.W           loc_1844A4
184236:  CMP             R4, #0xA
184238:  BEQ.W           loc_1844E6
18423C:  CMP             R4, #0x11
18423E:  BNE.W           loc_18455C
184242:  MOV             R1, R5; src
184244:  MOV             R2, R6; size
184246:  MOVS            R3, #0
184248:  MOV             R4, R0
18424A:  BL              sub_17D4F2
18424E:  MOVS            R1, #8
184250:  BL              sub_17DA96
184254:  ADD             R0, SP, #0x310+var_140
184256:  ADD             R1, SP, #0x310+var_254
184258:  MOVS            R2, #8
18425A:  MOVS            R3, #1
18425C:  BL              sub_17D9C0
184260:  LDRB.W          R1, [SP,#0x310+var_254]
184264:  LDR             R0, [SP,#0x310+var_2D4]
184266:  BL              sub_17E75C
18426A:  LDR             R0, [SP,#0x310+var_20]; void *
18426C:  CMP             R0, #0
18426E:  BEQ.W           loc_184488
184272:  BLX             j__ZdaPv; operator delete[](void *)
184276:  B               loc_184488
184278:  DCD unk_381C10 - 0x183F1E
18427C:  DCD unk_381C10 - 0x184008
184280:  ORR.W           R0, R9, #2
184284:  CMP             R0, #7
184286:  BEQ             loc_184294
184288:  LDR             R1, [SP,#0x310+var_2CC]
18428A:  ADD             R0, SP, #0x310+var_2C
18428C:  BL              sub_17E580
184290:  CMP             R0, #0
184292:  BEQ             loc_184206
184294:  LDR             R1, [SP,#0x310+var_2A0]
184296:  MOVS            R0, #8
184298:  MOVS            R3, #1
18429A:  STR             R0, [R1]
18429C:  MOV             R0, R8
18429E:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
1842A2:  BL              loc_1817A2
1842A6:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
1842AA:  MOV             R0, R8
1842AC:  MOVS            R3, #1
1842AE:  BL              loc_181B30
1842B2:  LDR             R1, [SP,#0x310+var_20]; src
1842B4:  ADD             R0, SP, #0x310+var_140; int
1842B6:  MOVS            R2, #7; size
1842B8:  MOVS            R3, #0
1842BA:  BL              sub_17D4F2
1842BE:  MOVS            R1, #8
1842C0:  BL              sub_17DA96
1842C4:  ADD             R0, SP, #0x310+var_140; int
1842C6:  ADD             R1, SP, #0x310+var_254; int
1842C8:  MOVS            R2, #0x20 ; ' '
1842CA:  MOVS            R3, #1
1842CC:  BL              sub_17D786
1842D0:  LDR             R1, [SP,#0x310+var_2C4]; int
1842D2:  ADD             R0, SP, #0x310+var_140; int
1842D4:  MOVS            R2, #0x10
1842D6:  MOVS            R3, #1
1842D8:  BL              sub_17D786
1842DC:  LDR             R2, [SP,#0x310+var_2C0]
1842DE:  LDR             R1, [SP,#0x310+var_254]
1842E0:  LDRH.W          R0, [SP,#0x310+var_250]
1842E4:  LDR             R4, [SP,#0x310+var_20]
1842E6:  STR             R1, [R2]
1842E8:  LDR             R1, [SP,#0x310+var_2BC]
1842EA:  STRH            R0, [R1]
1842EC:  MOVS            R0, #0x1C; size
1842EE:  BLX             malloc
1842F2:  MOV             R5, R0
1842F4:  LDR             R0, =(unk_381C10 - 0x184300)
1842F6:  MOVS            R1, #1
1842F8:  MOVS            R2, #7
1842FA:  STRB            R1, [R5,#0x18]
1842FC:  ADD             R0, PC; unk_381C10 ; mutex
1842FE:  LDRH.W          R1, [SP,#0x310+var_28]
184302:  STRD.W          R2, R10, [R5,#0xC]
184306:  LDR             R2, [SP,#0x310+var_2C]
184308:  LDR             R3, [SP,#0x310+var_29C]
18430A:  STR             R4, [R5,#0x14]
18430C:  STRH            R3, [R5]
18430E:  STR             R2, [R5,#4]
184310:  STRH            R1, [R5,#8]
184312:  BLX             EnterCriticalSection_0
184316:  LDR             R0, [SP,#0x310+var_2A8]
184318:  BL              sub_184892
18431C:  LDR             R3, [SP,#0x310+var_2AC]
18431E:  STR             R5, [R0]
184320:  MOVS            R5, #1
184322:  LDR             R1, [R3]
184324:  LDR             R0, =(unk_381C10 - 0x18432C)
184326:  LDR             R6, [SP,#0x310+var_2B0]
184328:  ADD             R0, PC; unk_381C10 ; mutex
18432A:  LDR             R2, [R6]
18432C:  STRB            R5, [R1,#4]
18432E:  LDR             R1, [R1,#8]
184330:  ADDS            R2, #1
184332:  STR             R2, [R6]
184334:  STR             R1, [R3]
184336:  BLX             LeaveCriticalSection_0
18433A:  B               loc_184488
18433C:  MOV             R1, R5; src
18433E:  MOVS            R2, #9; size
184340:  MOVS            R3, #0
184342:  MOV             R4, R0
184344:  BL              sub_17D4F2
184348:  MOVS            R1, #8
18434A:  BL              sub_17DA96
18434E:  ADD             R0, SP, #0x310+var_140; int
184350:  ADD             R1, SP, #0x310+var_254; int
184352:  MOVS            R2, #0x20 ; ' '
184354:  MOVS            R3, #1
184356:  BL              sub_17D786
18435A:  ADD             R0, SP, #0x310+var_140; int
18435C:  ADD             R1, SP, #0x310+var_288; int
18435E:  MOVS            R2, #0x20 ; ' '
184360:  MOVS            R3, #1
184362:  BL              sub_17D786
184366:  BL              sub_17E348
18436A:  MOV.W           R2, #0x3E8
18436E:  MOVS            R3, #0
184370:  MOV             R11, R0
184372:  MOV             R4, R1
184374:  BLX             sub_221404
184378:  LDR             R1, [SP,#0x310+var_2B8]
18437A:  MOV             R2, R0
18437C:  LDR             R5, [SP,#0x310+var_254]
18437E:  STR             R0, [SP,#0x310+var_2A4]
184380:  SUBS            R2, R0, R5
184382:  LDR             R1, [R1]
184384:  MOV.W           R0, #0
184388:  IT CC
18438A:  MOVCC           R2, R0
18438C:  LDR             R0, [SP,#0x310+var_290]
18438E:  ADD.W           R1, R0, R1,LSL#3
184392:  LDRH.W          R3, [R1,#0x6CC]
184396:  CBZ             R3, loc_1843A6
184398:  LSRS            R6, R2, #4
18439A:  CMP             R6, #0x4A ; 'J'
18439C:  ITT LS
18439E:  ADDLS.W         R3, R3, R3,LSL#1
1843A2:  CMPLS           R2, R3
1843A4:  BCS             loc_1843E4
1843A6:  ADDW            R3, R1, #0x6CC
1843AA:  LDR             R0, [SP,#0x310+var_2A4]
1843AC:  LDR             R6, [SP,#0x310+var_288]
1843AE:  STRH            R2, [R3]
1843B0:  ADDS            R3, R5, R0
1843B2:  LDR             R0, [SP,#0x310+var_2C8]
1843B4:  SUB.W           R3, R6, R3,LSR#1
1843B8:  LDRH            R0, [R0]
1843BA:  STR.W           R3, [R1,#0x6D0]
1843BE:  MOVW            R1, #0xFFFF
1843C2:  CMP             R0, R1
1843C4:  BEQ             loc_1843CA
1843C6:  CMP             R2, R0
1843C8:  BGE             loc_1843CE
1843CA:  LDR             R0, [SP,#0x310+var_2C8]
1843CC:  STRH            R2, [R0]
1843CE:  LDR             R0, [SP,#0x310+var_294]
1843D0:  UXTH            R1, R2
1843D2:  BL              sub_1876E2
1843D6:  LDR             R2, [SP,#0x310+var_2B8]
1843D8:  LDR             R0, [R2]
1843DA:  ADDS            R0, #1
1843DC:  SUBS            R1, R0, #5
1843DE:  IT NE
1843E0:  MOVNE           R1, R0
1843E2:  STR             R1, [R2]
1843E4:  LDR             R0, [SP,#0x310+var_20]; void *
1843E6:  CBZ             R0, loc_1843EC
1843E8:  BLX             j__ZdaPv; operator delete[](void *)
1843EC:  STR             R4, [SP,#0x310+var_298]
1843EE:  B               loc_184488
1843F0:  MOV             R1, R5; src
1843F2:  MOVS            R2, #5; size
1843F4:  MOVS            R3, #0
1843F6:  MOV             R4, R0
1843F8:  BL              sub_17D4F2
1843FC:  MOVS            R1, #8
1843FE:  BL              sub_17DA96
184402:  ADD             R1, SP, #0x310+var_268; int
184404:  MOV             R0, R4; int
184406:  MOVS            R2, #0x20 ; ' '
184408:  MOVS            R3, #1
18440A:  BL              sub_17D786
18440E:  ADD             R0, SP, #0x310+var_254
184410:  BL              sub_17D4A8
184414:  MOVS            R1, #9
184416:  STRB.W          R1, [SP,#0x310+var_288]
18441A:  ADD             R1, SP, #0x310+var_288
18441C:  MOVS            R2, #8
18441E:  MOVS            R3, #1
184420:  BL              sub_17D628
184424:  LDR             R0, [SP,#0x310+var_268]
184426:  STR             R0, [SP,#0x310+var_288]
184428:  ADD             R0, SP, #0x310+var_254
18442A:  ADD             R1, SP, #0x310+var_288
18442C:  MOVS            R2, #0x20 ; ' '
18442E:  MOVS            R3, #1
184430:  BL              sub_17D628
184434:  BL              sub_17E2E4
184438:  STR             R0, [SP,#0x310+var_2A4]
18443A:  BL              sub_17E348
18443E:  MOV             R11, R0
184440:  LDR             R0, [SP,#0x310+var_2A4]
184442:  MOV             R4, R1
184444:  STR             R0, [SP,#0x310+var_288]
184446:  ADD             R0, SP, #0x310+var_254
184448:  ADD             R1, SP, #0x310+var_288
18444A:  MOVS            R2, #0x20 ; ' '
18444C:  MOVS            R3, #1
18444E:  BL              sub_17D628
184452:  LDR             R1, [SP,#0x310+var_248]
184454:  LDRD.W          R0, R3, [SP,#0x310+var_2C]
184458:  LDR             R2, [SP,#0x310+var_254]
18445A:  MOVS            R6, #6
18445C:  STR             R6, [SP,#0x310+var_310]
18445E:  MOVS            R6, #0
184460:  STRD.W          R6, R0, [SP,#0x310+var_30C]
184464:  LDR             R0, [SP,#0x310+var_2A4]
184466:  STRD.W          R3, R6, [SP,#0x310+var_304]
18446A:  MOVS            R3, #0
18446C:  STRD.W          R0, R6, [SP,#0x310+var_2F8]
184470:  MOV             R0, R8
184472:  STR             R6, [SP,#0x310+var_2FC]
184474:  BL              sub_1825E8
184478:  LDR             R0, [SP,#0x310+var_20]; void *
18447A:  STR             R4, [SP,#0x310+var_298]
18447C:  CBZ             R0, loc_184482
18447E:  BLX             j__ZdaPv; operator delete[](void *)
184482:  ADD             R0, SP, #0x310+var_254
184484:  BL              sub_17D542
184488:  ADD             R0, SP, #0x310+var_140
18448A:  BL              sub_17D542
18448E:  LDR             R0, [SP,#0x310+var_294]
184490:  ADD             R1, SP, #0x310+var_20
184492:  BL              sub_188832
184496:  LDR             R1, [SP,#0x310+var_290]
184498:  MOV             R10, R0
18449A:  CMP             R0, #0
18449C:  ADD             R0, SP, #0x310+var_140
18449E:  BGT.W           loc_1840D0
1844A2:  B               loc_183F86
1844A4:  CMP             R4, #0x29 ; ')'
1844A6:  BEQ             loc_1844F4
1844A8:  CMP             R4, #0x20 ; ' '
1844AA:  BNE             loc_18455C
1844AC:  LDR             R0, =(off_234930 - 0x1844B2)
1844AE:  ADD             R0, PC; off_234930
1844B0:  LDR             R0, [R0]; dword_23DF1C
1844B2:  LDR             R0, [R0]
1844B4:  CMP             R0, #4
1844B6:  BNE             loc_1844DE
1844B8:  LDR             R0, =(off_234C50 - 0x1844BE)
1844BA:  ADD             R0, PC; off_234C50
1844BC:  LDR             R0, [R0]; dword_239034
1844BE:  LDR             R1, [R0]
1844C0:  CBNZ            R1, loc_1844D6
1844C2:  LDRH            R1, [R0,#(word_239038 - 0x239034)]
1844C4:  MOVW            R2, #0x3838
1844C8:  SUBS            R2, R2, R1
1844CA:  EOR.W           R1, R2, R1,LSL#2
1844CE:  MOVW            R2, #0x7627
1844D2:  CMP             R1, R2
1844D4:  BEQ             loc_1844DE
1844D6:  LDRB            R0, [R0,#(byte_23903A - 0x239034)]
1844D8:  CMP             R0, #0
1844DA:  BEQ.W           loc_1841C8
1844DE:  LDR             R1, [SP,#0x310+var_2A0]
1844E0:  MOVS            R0, #3
1844E2:  STR             R0, [R1]
1844E4:  B               loc_1841C8
1844E6:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
1844EA:  MOV             R0, R8
1844EC:  MOVS            R3, #1
1844EE:  BL              loc_181B30
1844F2:  B               loc_184206
1844F4:  LDR             R4, [SP,#0x310+var_2D0]
1844F6:  MOV             R0, R4
1844F8:  BL              sub_17D55E
1844FC:  LDR             R0, [SP,#0x310+var_20]
1844FE:  SUBS            R2, R6, #1
184500:  ADDS            R1, R0, #1
184502:  MOV             R0, R4
184504:  BL              sub_17D566
184508:  MOVS            R0, #0x1C; size
18450A:  LDR             R4, [SP,#0x310+var_20]
18450C:  BLX             malloc
184510:  MOV             R5, R0
184512:  LDR             R0, =(unk_381C10 - 0x184520)
184514:  MOV.W           R9, #1
184518:  LDRH.W          R3, [SP,#0x310+var_28]
18451C:  ADD             R0, PC; unk_381C10 ; mutex
18451E:  LDR             R1, [SP,#0x310+var_2C]
184520:  LDR             R2, [SP,#0x310+var_29C]
184522:  STR             R4, [R5,#0x14]
184524:  MOV             R4, R0
184526:  STRB.W          R9, [R5,#0x18]
18452A:  STRD.W          R6, R10, [R5,#0xC]
18452E:  STRH            R2, [R5]
184530:  STR             R1, [R5,#4]
184532:  STRH            R3, [R5,#8]
184534:  BLX             EnterCriticalSection_0
184538:  LDR             R0, [SP,#0x310+var_2A8]
18453A:  BL              sub_184892
18453E:  LDR             R2, [SP,#0x310+var_2AC]
184540:  STR             R5, [R0]
184542:  LDR             R3, [SP,#0x310+var_2B0]
184544:  LDR             R0, [R2]
184546:  LDR             R1, [R3]
184548:  STRB.W          R9, [R0,#4]
18454C:  LDR             R0, [R0,#8]
18454E:  ADDS            R1, #1
184550:  STR             R0, [R2]
184552:  MOV             R0, R4; mutex
184554:  STR             R1, [R3]
184556:  BLX             LeaveCriticalSection_0
18455A:  B               loc_18448E
18455C:  CMP             R4, #0xF
18455E:  IT EQ
184560:  CMPEQ           R6, #0x39 ; '9'
184562:  BEQ             loc_1845B8
184564:  CMP             R4, #0x10
184566:  IT EQ
184568:  CMPEQ           R6, #0x35 ; '5'
18456A:  BEQ             loc_1845C2
18456C:  CMP             R4, #0x17
18456E:  IT EQ
184570:  CMPEQ           R6, #1
184572:  BEQ.W           loc_1841C8
184576:  CMP             R4, #0x22 ; '"'
184578:  IT EQ
18457A:  CMPEQ           R6, #0xD
18457C:  BEQ.W           loc_18469C
184580:  CMP             R6, #3
184582:  BCC             loc_184588
184584:  CMP             R4, #0xC
184586:  BEQ             loc_18458E
184588:  CMP             R4, #0x14
18458A:  BCC.W           loc_18448E
18458E:  MOVS            R0, #0x1C; size
184590:  BLX             malloc
184594:  MOV             R1, R0
184596:  MOVS            R0, #1
184598:  STRB            R0, [R1,#0x18]
18459A:  LDRH.W          R0, [SP,#0x310+var_28]
18459E:  LDR             R2, [SP,#0x310+var_2C]
1845A0:  LDR             R3, [SP,#0x310+var_29C]
1845A2:  STRH            R0, [R1,#8]
1845A4:  MOV             R0, R8
1845A6:  STR             R6, [R1,#0xC]
1845A8:  STR.W           R10, [R1,#0x10]
1845AC:  STR             R5, [R1,#0x14]
1845AE:  STRH            R3, [R1]
1845B0:  STR             R2, [R1,#4]
1845B2:  BL              sub_182DE8
1845B6:  B               loc_18448E
1845B8:  MOV             R0, R8
1845BA:  MOV             R2, R5
1845BC:  BL              sub_182C30
1845C0:  B               loc_184206
1845C2:  MOV             R4, R0
1845C4:  BL              sub_18BA18
1845C8:  BL              sub_18BA58
1845CC:  ADD             R1, SP, #0x310+var_2C; src
1845CE:  MOV             R0, R4; int
1845D0:  MOVS            R2, #4
1845D2:  BL              sub_18C9EC
1845D6:  LDR             R1, [SP,#0x310+var_2E0]; src
1845D8:  MOV             R0, R4; int
1845DA:  MOVS            R2, #2
1845DC:  BL              sub_18C9EC
1845E0:  LDR             R1, [SP,#0x310+var_2E4]; src
1845E2:  MOV             R0, R4; int
1845E4:  MOVS            R2, #0x14
1845E6:  BL              sub_18C9EC
1845EA:  MOV             R0, R4; int
1845EC:  BL              sub_18CA7C
1845F0:  MOV             R0, R4
1845F2:  BL              sub_18CB50
1845F6:  LDR             R5, [SP,#0x310+var_20]
1845F8:  MOVS            R2, #0x14; n
1845FA:  ADDS            R1, R5, #1; s2
1845FC:  BLX             memcmp
184600:  CBZ             R0, loc_184640
184602:  ADD             R4, SP, #0x310+var_140
184604:  MOV             R0, R4
184606:  BL              sub_18BA58
18460A:  ADD             R1, SP, #0x310+var_2C; src
18460C:  MOV             R0, R4; int
18460E:  MOVS            R2, #4
184610:  BL              sub_18C9EC
184614:  LDR             R1, [SP,#0x310+var_2E0]; src
184616:  MOV             R0, R4; int
184618:  MOVS            R2, #2
18461A:  BL              sub_18C9EC
18461E:  LDR             R1, [SP,#0x310+var_2E8]; src
184620:  MOV             R0, R4; int
184622:  MOVS            R2, #0x14
184624:  BL              sub_18C9EC
184628:  MOV             R0, R4; int
18462A:  BL              sub_18CA7C
18462E:  MOV             R0, R4
184630:  BL              sub_18CB50
184634:  LDR             R5, [SP,#0x310+var_20]
184636:  MOVS            R2, #0x14; n
184638:  ADDS            R1, R5, #1; s2
18463A:  BLX             memcmp
18463E:  CBNZ            R0, loc_184684
184640:  ADD.W           R0, R5, #0x15
184644:  ADD             R1, SP, #0x310+var_288
184646:  VLD1.8          {D16-D17}, [R0]!
18464A:  VLD1.8          {D18-D19}, [R0]
18464E:  MOV             R0, R1
184650:  VST1.64         {D16-D17}, [R0]!
184654:  VST1.64         {D18-D19}, [R0]
184658:  ADD             R4, SP, #0x310+var_254
18465A:  LDR             R0, [SP,#0x310+var_2EC]
18465C:  MOV             R2, R4
18465E:  BL              sub_18483C
184662:  LDR             R0, [SP,#0x310+var_20]
184664:  ADD             R2, SP, #0x310+var_268
184666:  VLD1.32         {D16-D17}, [R4]
18466A:  ADDS            R0, #1
18466C:  VLD1.8          {D18-D19}, [R0]
184670:  VEOR            Q8, Q8, Q9
184674:  VST1.64         {D16-D17}, [R2]
184678:  LDR             R1, [SP,#0x310+var_290]
18467A:  MOV             R0, R8
18467C:  MOVS            R3, #1
18467E:  BL              sub_1828B4
184682:  LDR             R5, [SP,#0x310+var_20]
184684:  CBZ             R5, loc_18468C
184686:  MOV             R0, R5; void *
184688:  BLX             j__ZdaPv; operator delete[](void *)
18468C:  ADD             R0, SP, #0x310+var_140
18468E:  BL              sub_18BA88
184692:  B               loc_18448E
184694:  DCD unk_381C10 - 0x184300
184698:  DCD unk_381C10 - 0x18432C
18469C:  BIC.W           R1, R9, #1
1846A0:  CMP             R1, #4
1846A2:  BEQ             loc_1846BC
1846A4:  LDRB.W          R1, [R8,#0x99C]
1846A8:  CBNZ            R1, loc_1846BC
1846AA:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
1846AE:  MOVS            R0, #0
1846B0:  STR             R0, [SP,#0x310+var_310]
1846B2:  MOV             R0, R8
1846B4:  MOVS            R3, #1
1846B6:  BL              sub_1804E8
1846BA:  B               loc_184206
1846BC:  MOV             R1, R5; src
1846BE:  MOVS            R2, #0xD; size
1846C0:  MOVS            R3, #0
1846C2:  MOV             R5, R0
1846C4:  BL              sub_17D4F2
1846C8:  MOVS            R1, #8
1846CA:  BL              sub_17DA96
1846CE:  ADD             R0, SP, #0x310+var_140; int
1846D0:  ADD             R1, SP, #0x310+var_288; int
1846D2:  MOVS            R2, #0x20 ; ' '
1846D4:  MOVS            R3, #1
1846D6:  BL              sub_17D786
1846DA:  LDR             R1, [SP,#0x310+var_2F0]; int
1846DC:  ADD             R0, SP, #0x310+var_140; int
1846DE:  MOVS            R2, #0x10
1846E0:  MOVS            R3, #1
1846E2:  BL              sub_17D786
1846E6:  ADD             R0, SP, #0x310+var_140; int
1846E8:  ADD.W           R1, SP, #0x310+var_28A; int
1846EC:  MOVS            R2, #0x10
1846EE:  MOVS            R3, #1
1846F0:  BL              sub_17D786
1846F4:  LDR             R2, [SP,#0x310+var_2C0]
1846F6:  CMP.W           R9, #5
1846FA:  LDR             R1, [SP,#0x310+var_288]
1846FC:  LDRH.W          R0, [SP,#0x310+var_284]
184700:  STR             R1, [R2]
184702:  LDR             R1, [SP,#0x310+var_2BC]
184704:  STRH            R0, [R1]
184706:  MOV.W           R0, #8
18470A:  LDR             R1, [SP,#0x310+var_2A0]
18470C:  STR             R0, [R1]
18470E:  BEQ             loc_184728
184710:  LDR             R0, [SP,#0x310+var_2D8]
184712:  LDRB            R0, [R0]
184714:  CBZ             R0, loc_184720
184716:  LDR             R0, [SP,#0x310+var_294]
184718:  LDR             R1, [SP,#0x310+var_2DC]
18471A:  BL              sub_1876C8
18471E:  B               loc_184728
184720:  LDR             R0, [SP,#0x310+var_294]
184722:  MOVS            R1, #0
184724:  BL              sub_1876C8
184728:  MOVS            R0, #0x1C; size
18472A:  LDR             R6, [SP,#0x310+var_20]
18472C:  BLX             malloc
184730:  MOV             R5, R0
184732:  MOVS            R0, #1
184734:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
184738:  MOVS            R3, #0xD
18473A:  STRB            R0, [R5,#0x18]
18473C:  LDRH.W          R0, [SP,#0x310+var_28]
184740:  STR             R3, [R5,#0xC]
184742:  MOVS            R3, #0x68 ; 'h'
184744:  STRD.W          R3, R6, [R5,#0x10]
184748:  STR             R1, [R5,#4]
18474A:  STRH            R0, [R5,#8]
18474C:  MOV             R0, R8
18474E:  MOVS            R3, #1
184750:  BL              sub_1811B4
184754:  STRH            R0, [R5]
184756:  MOV             R0, R8
184758:  MOV             R1, R5
18475A:  BL              sub_182DE8
18475E:  ADD             R0, SP, #0x310+var_254; int
184760:  MOVS            R1, #7; size
184762:  BL              sub_17D4C0
184766:  MOVS            R1, #0x1E
184768:  STRB.W          R1, [SP,#0x310+var_268]
18476C:  ADD             R1, SP, #0x310+var_268
18476E:  MOVS            R2, #8
184770:  MOVS            R3, #1
184772:  BL              sub_17D628
184776:  LDR             R0, [SP,#0x310+var_2C]
184778:  STR             R0, [SP,#0x310+var_268]
18477A:  ADD             R0, SP, #0x310+var_254
18477C:  ADD             R1, SP, #0x310+var_268
18477E:  MOVS            R2, #0x20 ; ' '
184780:  MOVS            R3, #1
184782:  BL              sub_17D628
184786:  LDRH.W          R0, [SP,#0x310+var_28]
18478A:  STRH.W          R0, [SP,#0x310+var_268]
18478E:  ADD             R0, SP, #0x310+var_254
184790:  ADD             R1, SP, #0x310+var_268
184792:  MOVS            R2, #0x10
184794:  MOVS            R3, #1
184796:  BL              sub_17D628
18479A:  LDRD.W          R5, R6, [SP,#0x310+var_2C]
18479E:  LDR             R4, [SP,#0x310+var_254]
1847A0:  LDR.W           R10, [SP,#0x310+var_248]
1847A4:  BL              sub_17E2E4
1847A8:  MOVS            R1, #8
1847AA:  ADD             R2, SP, #0x310+var_30C
1847AC:  STR             R1, [SP,#0x310+var_310]
1847AE:  MOVS            R1, #0
1847B0:  STM             R2!, {R1,R5,R6}
1847B2:  MOV             R2, R4
1847B4:  MOVS            R3, #0
1847B6:  STRD.W          R0, R1, [SP,#0x310+var_2F8]
1847BA:  MOV             R0, R8
1847BC:  STRD.W          R1, R1, [SP,#0x310+var_300]
1847C0:  MOV             R1, R10
1847C2:  BL              sub_1825E8
1847C6:  CMP.W           R9, #5
1847CA:  BEQ.W           loc_184482
1847CE:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
1847D2:  MOV             R0, R8
1847D4:  MOVS            R3, #1
1847D6:  BL              loc_1817A2
1847DA:  LDRD.W          R1, R2, [SP,#0x310+var_2C]
1847DE:  MOV             R0, R8
1847E0:  MOVS            R3, #1
1847E2:  BL              loc_181B30
1847E6:  B               loc_184482
1847E8:  MOVS            R4, #1
1847EA:  MOV             R0, R4
1847EC:  ADD.W           SP, SP, #0x2F4
1847F0:  POP.W           {R8-R11}
1847F4:  POP             {R4-R7,PC}
1847F6:  STR             R4, [SP,#0x310+var_2A4]
1847F8:  B.W             loc_183BD0
