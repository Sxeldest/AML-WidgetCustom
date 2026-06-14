; =========================================================
; Game Engine Function: sub_210B40
; Address            : 0x210B40 - 0x210EBE
; =========================================================

210B40:  PUSH            {R4-R7,LR}
210B42:  ADD             R7, SP, #0xC
210B44:  PUSH.W          {R8-R11}
210B48:  SUB             SP, SP, #0x14
210B4A:  MOV             R12, R2
210B4C:  MOVW            R2, #0x16B0
210B50:  ADD             R2, R0
210B52:  STR             R2, [SP,#0x30+var_20]
210B54:  MOVW            R2, #0x16B4
210B58:  LDRH.W          LR, [R1,#2]
210B5C:  ADD             R2, R0
210B5E:  STR             R2, [SP,#0x30+var_24]
210B60:  ADDS            R2, R1, #6
210B62:  MOVS            R5, #7
210B64:  CMP.W           LR, #0
210B68:  MOV.W           R8, #4
210B6C:  IT EQ
210B6E:  MOVEQ           R5, #0x8A
210B70:  IT EQ
210B72:  MOVEQ.W         R8, #3
210B76:  MOVS            R1, #0
210B78:  MOV.W           R11, #0xFFFFFFFF
210B7C:  STR             R2, [SP,#0x30+var_28]
210B7E:  B               loc_210E00
210B80:  ADD.W           R8, R4, #2
210B84:  CMP.W           R9, #0
210B88:  BEQ             loc_210B9E
210B8A:  CMP             R9, R11
210B8C:  BNE             loc_210BFE
210B8E:  LDR             R4, [SP,#0x30+var_20]
210B90:  MOV             R8, R6
210B92:  LDR.W           R11, [SP,#0x30+var_24]
210B96:  LDRH            R1, [R4]
210B98:  LDR.W           R3, [R11]
210B9C:  B               loc_210CB6
210B9E:  CMP.W           R8, #9
210BA2:  BGT             loc_210C56
210BA4:  LDR.W           R11, [SP,#0x30+var_24]
210BA8:  LDR             R5, [SP,#0x30+var_20]
210BAA:  LDRH.W          R8, [R0,#0xAB8]
210BAE:  LDR.W           R2, [R11]
210BB2:  LDRH            R1, [R5]
210BB4:  LDRH.W          R3, [R0,#0xABA]
210BB8:  LSL.W           R6, R8, R2
210BBC:  ORRS            R1, R6
210BBE:  RSB.W           R6, R3, #0x10
210BC2:  STRH            R1, [R5]
210BC4:  CMP             R2, R6
210BC6:  BLE.W           loc_210D42
210BCA:  LDR             R6, [R0,#0x14]
210BCC:  LDR.W           R12, [R0,#8]
210BD0:  ADDS            R2, R6, #1
210BD2:  STR             R2, [R0,#0x14]
210BD4:  STRB.W          R1, [R12,R6]
210BD8:  LDR             R2, [R0,#0x14]
210BDA:  LDR.W           R12, [R0,#8]
210BDE:  LDRB            R6, [R5,#1]
210BE0:  ADDS            R1, R2, #1
210BE2:  STR             R1, [R0,#0x14]
210BE4:  STRB.W          R6, [R12,R2]
210BE8:  LDR.W           R2, [R11]
210BEC:  RSB.W           R1, R2, #0x10
210BF0:  ADD             R2, R3
210BF2:  SUB.W           R3, R2, #0x10
210BF6:  LSR.W           R1, R8, R1
210BFA:  STRH            R1, [R5]
210BFC:  B               loc_210D44
210BFE:  LDR.W           R11, [SP,#0x30+var_24]
210C02:  ADD.W           R1, R0, R9,LSL#2
210C06:  LDR             R4, [SP,#0x30+var_20]
210C08:  LDRH.W          R5, [R1,#0xA74]
210C0C:  LDR.W           R2, [R11]
210C10:  LDRH.W          R3, [R1,#0xA76]
210C14:  LDRH            R6, [R4]
210C16:  LSL.W           R1, R5, R2
210C1A:  ORRS            R1, R6
210C1C:  RSB.W           R6, R3, #0x10
210C20:  CMP             R2, R6
210C22:  STRH            R1, [R4]
210C24:  BLE             loc_210CB0
210C26:  LDR             R6, [R0,#0x14]
210C28:  LDR             R2, [R0,#8]
210C2A:  ADDS            R4, R6, #1
210C2C:  STR             R4, [R0,#0x14]
210C2E:  STRB            R1, [R2,R6]
210C30:  LDR             R4, [SP,#0x30+var_20]
210C32:  LDR             R1, [R0,#8]
210C34:  LDR             R2, [R0,#0x14]
210C36:  LDRB            R6, [R4,#1]
210C38:  ADDS            R4, R2, #1
210C3A:  STR             R4, [R0,#0x14]
210C3C:  LDR             R4, [SP,#0x30+var_20]
210C3E:  STRB            R6, [R1,R2]
210C40:  LDR.W           R2, [R11]
210C44:  RSB.W           R1, R2, #0x10
210C48:  ADD             R2, R3
210C4A:  SUB.W           R3, R2, #0x10
210C4E:  LSR.W           R1, R5, R1
210C52:  STRH            R1, [R4]
210C54:  B               loc_210CB2
210C56:  LDR.W           R11, [SP,#0x30+var_24]
210C5A:  LDR             R5, [SP,#0x30+var_20]
210C5C:  LDRH.W          R8, [R0,#0xABC]
210C60:  LDR.W           R2, [R11]
210C64:  LDRH            R1, [R5]
210C66:  LDRH.W          R3, [R0,#0xABE]
210C6A:  LSL.W           R6, R8, R2
210C6E:  ORRS            R1, R6
210C70:  RSB.W           R6, R3, #0x10
210C74:  STRH            R1, [R5]
210C76:  CMP             R2, R6
210C78:  BLE.W           loc_210D80
210C7C:  LDR             R6, [R0,#0x14]
210C7E:  LDR.W           R12, [R0,#8]
210C82:  ADDS            R2, R6, #1
210C84:  STR             R2, [R0,#0x14]
210C86:  STRB.W          R1, [R12,R6]
210C8A:  LDR             R2, [R0,#0x14]
210C8C:  LDR.W           R12, [R0,#8]
210C90:  LDRB            R6, [R5,#1]
210C92:  ADDS            R1, R2, #1
210C94:  STR             R1, [R0,#0x14]
210C96:  STRB.W          R6, [R12,R2]
210C9A:  LDR.W           R2, [R11]
210C9E:  RSB.W           R1, R2, #0x10
210CA2:  ADD             R2, R3
210CA4:  SUB.W           R6, R2, #0x10
210CA8:  LSR.W           R1, R8, R1
210CAC:  STRH            R1, [R5]
210CAE:  B               loc_210D82
210CB0:  ADD             R3, R2
210CB2:  STR.W           R3, [R11]
210CB6:  LDRH.W          R6, [R0,#0xAB4]
210CBA:  UXTH            R1, R1
210CBC:  LDRH.W          R5, [R0,#0xAB6]
210CC0:  LSL.W           R2, R6, R3
210CC4:  ORRS            R1, R2
210CC6:  RSB.W           R2, R5, #0x10
210CCA:  STRH            R1, [R4]
210CCC:  CMP             R3, R2
210CCE:  BLE             loc_210D00
210CD0:  LDR             R3, [R0,#0x14]
210CD2:  LDR             R2, [R0,#8]
210CD4:  ADDS            R4, R3, #1
210CD6:  STR             R4, [R0,#0x14]
210CD8:  STRB            R1, [R2,R3]
210CDA:  LDR             R3, [SP,#0x30+var_20]
210CDC:  LDR             R2, [R0,#0x14]
210CDE:  LDR             R1, [R0,#8]
210CE0:  LDRB            R3, [R3,#1]
210CE2:  ADDS            R4, R2, #1
210CE4:  STR             R4, [R0,#0x14]
210CE6:  LDR             R4, [SP,#0x30+var_20]
210CE8:  STRB            R3, [R1,R2]
210CEA:  LDR.W           R2, [R11]
210CEE:  RSB.W           R1, R2, #0x10
210CF2:  ADD             R2, R5
210CF4:  LSR.W           R1, R6, R1
210CF8:  SUB.W           R6, R2, #0x10
210CFC:  STRH            R1, [R4]
210CFE:  B               loc_210D02
210D00:  ADDS            R6, R3, R5
210D02:  SUB.W           R3, R8, #3
210D06:  UXTH            R1, R1
210D08:  CMP             R6, #0xF
210D0A:  STR.W           R6, [R11]
210D0E:  LSL.W           R2, R3, R6
210D12:  ORR.W           R1, R1, R2
210D16:  STRH            R1, [R4]
210D18:  BLT             loc_210D3E
210D1A:  LDR             R6, [R0,#0x14]
210D1C:  UXTH            R3, R3
210D1E:  LDR             R2, [R0,#8]
210D20:  ADDS            R5, R6, #1
210D22:  STR             R5, [R0,#0x14]
210D24:  STRB            R1, [R2,R6]
210D26:  LDR             R2, [R0,#0x14]
210D28:  LDR             R1, [R0,#8]
210D2A:  LDRB            R6, [R4,#1]
210D2C:  ADDS            R5, R2, #1
210D2E:  STR             R5, [R0,#0x14]
210D30:  STRB            R6, [R1,R2]
210D32:  LDR.W           R1, [R11]
210D36:  RSB.W           R2, R1, #0x10
210D3A:  SUBS            R1, #0xE
210D3C:  B               loc_210DBE
210D3E:  ADDS            R1, R6, #2
210D40:  B               loc_210DCC
210D42:  ADD             R3, R2
210D44:  UXTH            R1, R1
210D46:  LSL.W           R2, R4, R3
210D4A:  ORRS            R1, R2
210D4C:  CMP             R3, #0xE
210D4E:  STR.W           R3, [R11]
210D52:  STRH            R1, [R5]
210D54:  BLT             loc_210DC6
210D56:  LDR             R3, [R0,#0x14]
210D58:  LDR             R2, [R0,#8]
210D5A:  ADDS            R6, R3, #1
210D5C:  STR             R6, [R0,#0x14]
210D5E:  STRB            R1, [R2,R3]
210D60:  LDR             R2, [R0,#0x14]
210D62:  LDR             R1, [R0,#8]
210D64:  LDRB            R3, [R5,#1]
210D66:  ADDS            R6, R2, #1
210D68:  STR             R6, [R0,#0x14]
210D6A:  STRB            R3, [R1,R2]
210D6C:  UXTH            R3, R4
210D6E:  LDR.W           R1, [R11]
210D72:  RSB.W           R2, R1, #0x10
210D76:  SUBS            R1, #0xD
210D78:  LSR.W           R2, R3, R2
210D7C:  STRH            R2, [R5]
210D7E:  B               loc_210DCC
210D80:  ADDS            R6, R2, R3
210D82:  SUB.W           R3, R4, #8
210D86:  UXTH            R1, R1
210D88:  CMP             R6, #0xA
210D8A:  MOV             R4, R5
210D8C:  LSL.W           R2, R3, R6
210D90:  ORR.W           R1, R1, R2
210D94:  STR.W           R6, [R11]
210D98:  STRH            R1, [R5]
210D9A:  BLT             loc_210DCA
210D9C:  LDR             R6, [R0,#0x14]
210D9E:  UXTH            R3, R3
210DA0:  LDR             R2, [R0,#8]
210DA2:  ADDS            R5, R6, #1
210DA4:  STR             R5, [R0,#0x14]
210DA6:  STRB            R1, [R2,R6]
210DA8:  LDR             R2, [R0,#0x14]
210DAA:  LDR             R1, [R0,#8]
210DAC:  LDRB            R6, [R4,#1]
210DAE:  ADDS            R5, R2, #1
210DB0:  STR             R5, [R0,#0x14]
210DB2:  STRB            R6, [R1,R2]
210DB4:  LDR.W           R1, [R11]
210DB8:  RSB.W           R2, R1, #0x10
210DBC:  SUBS            R1, #9
210DBE:  LSR.W           R2, R3, R2
210DC2:  STRH            R2, [R4]
210DC4:  B               loc_210DCC
210DC6:  ADDS            R1, R3, #3
210DC8:  B               loc_210DCC
210DCA:  ADDS            R1, R6, #7
210DCC:  STR.W           R1, [R11]
210DD0:  CMP             R9, LR
210DD2:  MOV.W           R5, #7
210DD6:  IT EQ
210DD8:  MOVEQ           R5, #6
210DDA:  CMP.W           LR, #0
210DDE:  IT EQ
210DE0:  MOVEQ           R5, #0x8A
210DE2:  CMP             R9, LR
210DE4:  MOV.W           R8, #4
210DE8:  MOV             R11, R9
210DEA:  IT EQ
210DEC:  MOVEQ.W         R8, #3
210DF0:  CMP.W           LR, #0
210DF4:  IT EQ
210DF6:  MOVEQ.W         R8, #3
210DFA:  LDR             R2, [SP,#0x30+var_28]
210DFC:  LDRD.W          R1, R12, [SP,#0x30+var_30]
210E00:  MOV             R10, R1
210E02:  ADD.W           R1, R2, R1,LSL#2
210E06:  MOV             R9, LR
210E08:  MOV             R6, #0xFFFFFFFD
210E0C:  MOV.W           R3, #0xFFFFFFFF
210E10:  MOV             R2, R3
210E12:  MOV             R3, R10
210E14:  ADD             R3, R6
210E16:  ADDS            R3, #3
210E18:  CMP             R3, R12
210E1A:  BGT             loc_210EB6
210E1C:  LDRH.W          LR, [R1],#4
210E20:  ADDS            R3, R6, #4
210E22:  ADDS            R4, R6, #1
210E24:  CMP             R3, R5
210E26:  BGE             loc_210E30
210E28:  SUBS            R3, R2, #1
210E2A:  CMP             R9, LR
210E2C:  MOV             R6, R4
210E2E:  BEQ             loc_210E10
210E30:  ADDS            R6, R4, #3
210E32:  ADD.W           R1, R10, R4
210E36:  CMP             R6, R8
210E38:  ADD.W           R1, R1, #3
210E3C:  STR             R1, [SP,#0x30+var_30]
210E3E:  STR.W           R12, [SP,#0x30+var_2C]
210E42:  BGE.W           loc_210B80
210E46:  LDR             R4, [SP,#0x30+var_20]
210E48:  ADD.W           R3, R0, R9,LSL#2
210E4C:  LDR             R6, [SP,#0x30+var_24]
210E4E:  ADDW            R8, R3, #0xA74
210E52:  ADDW            R11, R3, #0xA76
210E56:  LDRH            R1, [R4]
210E58:  LDR             R5, [R6]
210E5A:  LDRH.W          R12, [R8]
210E5E:  UXTH            R1, R1
210E60:  LDRH.W          R6, [R11]
210E64:  LSL.W           R3, R12, R5
210E68:  ORRS            R1, R3
210E6A:  RSB.W           R3, R6, #0x10
210E6E:  STRH            R1, [R4]
210E70:  CMP             R5, R3
210E72:  BLE             loc_210EA6
210E74:  LDR             R4, [R0,#0x14]
210E76:  LDR             R3, [R0,#8]
210E78:  ADDS            R5, R4, #1
210E7A:  STR             R5, [R0,#0x14]
210E7C:  STRB            R1, [R3,R4]
210E7E:  LDR             R4, [SP,#0x30+var_20]
210E80:  LDR             R3, [R0,#0x14]
210E82:  LDR             R1, [R0,#8]
210E84:  LDRB            R4, [R4,#1]
210E86:  ADDS            R5, R3, #1
210E88:  STR             R5, [R0,#0x14]
210E8A:  STRB            R4, [R1,R3]
210E8C:  LDRD.W          R10, R4, [SP,#0x30+var_24]
210E90:  LDR.W           R3, [R10]
210E94:  RSB.W           R1, R3, #0x10
210E98:  ADD             R3, R6
210E9A:  SUB.W           R5, R3, #0x10
210E9E:  LSR.W           R1, R12, R1
210EA2:  STRH            R1, [R4]
210EA4:  B               loc_210EAC
210EA6:  LDR.W           R10, [SP,#0x30+var_24]
210EAA:  ADD             R5, R6
210EAC:  ADDS            R2, #1
210EAE:  STR.W           R5, [R10]
210EB2:  BNE             loc_210E5A
210EB4:  B               loc_210DD0
210EB6:  ADD             SP, SP, #0x14
210EB8:  POP.W           {R8-R11}
210EBC:  POP             {R4-R7,PC}
