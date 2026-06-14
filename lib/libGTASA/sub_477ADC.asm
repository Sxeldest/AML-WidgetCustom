; =========================================================
; Game Engine Function: sub_477ADC
; Address            : 0x477ADC - 0x478204
; =========================================================

477ADC:  PUSH            {R4-R7,LR}
477ADE:  ADD             R7, SP, #0xC
477AE0:  PUSH.W          {R8-R11}
477AE4:  SUB             SP, SP, #0x5C
477AE6:  MOV             R4, R0
477AE8:  MOV             R9, R1
477AEA:  LDR             R1, [R4,#0x18]
477AEC:  LDR.W           R5, [R4,#0x15C]
477AF0:  LDR             R0, [R1]
477AF2:  ADD.W           R8, R5, #0xC
477AF6:  STR             R0, [SP,#0x78+var_40]
477AF8:  LDR             R1, [R1,#4]
477AFA:  STR             R1, [SP,#0x78+var_3C]
477AFC:  ADD             R1, SP, #0x78+var_40
477AFE:  VLD1.32         {D16-D17}, [R8]
477B02:  ADD.W           R6, R1, #8
477B06:  VLDR            D18, [R5,#0x1C]
477B0A:  VST1.64         {D16-D17}, [R6]
477B0E:  STR             R4, [SP,#0x78+var_20]
477B10:  VSTR            D18, [SP,#0x78+var_28]
477B14:  LDR.W           R1, [R4,#0xBC]
477B18:  CBZ             R1, loc_477B22
477B1A:  LDR             R1, [R5,#0x24]
477B1C:  CMP             R1, #0
477B1E:  BEQ.W           loc_4780CC
477B22:  LDR.W           R0, [R4,#0x100]
477B26:  CMP             R0, #1
477B28:  BLT.W           loc_478090
477B2C:  LDR.W           R0, =(jpeg_natural_order_ptr - 0x477B38)
477B30:  MOV.W           R11, #0
477B34:  ADD             R0, PC; jpeg_natural_order_ptr
477B36:  LDR             R0, [R0]; jpeg_natural_order
477B38:  STR             R0, [SP,#0x78+var_4C]
477B3A:  MOVS            R0, #0
477B3C:  STRD.W          R4, R5, [SP,#0x78+var_78]
477B40:  STRD.W          R9, R8, [SP,#0x78+var_5C]
477B44:  STR             R6, [SP,#0x78+var_54]
477B46:  LDR.W           R2, [R9,R0,LSL#2]
477B4A:  ADD             R3, SP, #0x78+var_40
477B4C:  STR             R0, [SP,#0x78+var_6C]
477B4E:  ADD.W           R0, R4, R0,LSL#2
477B52:  MOV             R1, R2
477B54:  LDR.W           R0, [R0,#0x104]
477B58:  STR             R1, [SP,#0x78+var_48]
477B5A:  LDRSH.W         R1, [R2]
477B5E:  ADD.W           R2, R4, R0,LSL#2
477B62:  ADD.W           R12, R3, R0,LSL#2
477B66:  LDR.W           R2, [R2,#0xE8]
477B6A:  LDR.W           R0, [R12,#0x10]!
477B6E:  LDRD.W          R3, R2, [R2,#0x14]
477B72:  ADD.W           R2, R5, R2,LSL#2
477B76:  SUBS            R0, R1, R0
477B78:  LDR             R2, [R2,#0x3C]
477B7A:  ADD.W           R1, R5, R3,LSL#2
477B7E:  STR             R2, [SP,#0x78+var_44]
477B80:  ADD.W           R6, R0, R0,ASR#31
477B84:  LDR             R5, [R1,#0x2C]
477B86:  EOR.W           R0, R6, R0,ASR#31
477B8A:  CMP             R0, #0
477B8C:  STR.W           R12, [SP,#0x78+var_70]
477B90:  STR             R6, [SP,#0x78+var_50]
477B92:  BEQ             loc_477BBE
477B94:  MOV.W           R1, #0xFFFFFFFF
477B98:  ADDS            R1, #1
477B9A:  ASRS            R2, R0, #1
477B9C:  CMP.W           R11, R0,ASR#1
477BA0:  MOV             R0, R2
477BA2:  BNE             loc_477B98
477BA4:  ADD.W           R10, R1, #1
477BA8:  CMP             R1, #0xB
477BAA:  BLT             loc_477BC2
477BAC:  LDR             R0, [SP,#0x78+var_20]
477BAE:  MOVS            R1, #6
477BB0:  LDR             R0, [R0]
477BB2:  STR             R1, [R0,#0x14]
477BB4:  LDR             R0, [SP,#0x78+var_20]
477BB6:  LDR             R1, [R0]
477BB8:  LDR             R1, [R1]
477BBA:  BLX             R1
477BBC:  B               loc_477BC2
477BBE:  MOV.W           R10, #0
477BC2:  ADD.W           R0, R5, R10
477BC6:  LDR.W           R4, [R5,R10,LSL#2]
477BCA:  LDR             R6, [SP,#0x78+var_34]
477BCC:  LDRB.W          R5, [R0,#0x400]
477BD0:  CBNZ            R5, loc_477BE2
477BD2:  LDR             R0, [SP,#0x78+var_20]
477BD4:  MOVS            R1, #0x28 ; '('
477BD6:  LDR             R0, [R0]
477BD8:  STR             R1, [R0,#0x14]
477BDA:  LDR             R0, [SP,#0x78+var_20]
477BDC:  LDR             R1, [R0]
477BDE:  LDR             R1, [R1]
477BE0:  BLX             R1
477BE2:  MOVS            R1, #1
477BE4:  LDR             R0, [SP,#0x78+var_38]
477BE6:  LSLS            R1, R5
477BE8:  ADD             R5, R6
477BEA:  SUBS            R1, #1
477BEC:  RSB.W           R2, R5, #0x18
477BF0:  ANDS            R1, R4
477BF2:  CMP             R5, #8
477BF4:  LSL.W           R1, R1, R2
477BF8:  ORR.W           R9, R0, R1
477BFC:  BLT             loc_477C6C
477BFE:  ADDS            R5, #8
477C00:  LDR             R0, [SP,#0x78+var_40]
477C02:  ADDS            R1, R0, #1
477C04:  STR             R1, [SP,#0x78+var_40]
477C06:  MOV.W           R1, R9,LSR#16
477C0A:  STRB            R1, [R0]
477C0C:  LDR             R0, [SP,#0x78+var_3C]
477C0E:  SUBS            R0, #1
477C10:  STR             R0, [SP,#0x78+var_3C]
477C12:  UBFX.W          R4, R9, #0x10, #8
477C16:  BEQ             loc_477C1E
477C18:  CMP             R4, #0xFF
477C1A:  BEQ             loc_477C38
477C1C:  B               loc_477C60
477C1E:  LDR             R0, [SP,#0x78+var_20]
477C20:  LDR             R6, [R0,#0x18]
477C22:  LDR             R1, [R6,#0xC]
477C24:  BLX             R1
477C26:  CMP             R0, #0
477C28:  BEQ.W           loc_4781FA
477C2C:  LDR             R0, [R6]
477C2E:  STR             R0, [SP,#0x78+var_40]
477C30:  LDR             R0, [R6,#4]
477C32:  STR             R0, [SP,#0x78+var_3C]
477C34:  CMP             R4, #0xFF
477C36:  BNE             loc_477C60
477C38:  LDR             R0, [SP,#0x78+var_40]
477C3A:  ADDS            R1, R0, #1
477C3C:  STR             R1, [SP,#0x78+var_40]
477C3E:  STRB.W          R11, [R0]
477C42:  LDR             R0, [SP,#0x78+var_3C]
477C44:  SUBS            R0, #1
477C46:  STR             R0, [SP,#0x78+var_3C]
477C48:  BNE             loc_477C60
477C4A:  LDR             R0, [SP,#0x78+var_20]
477C4C:  LDR             R4, [R0,#0x18]
477C4E:  LDR             R1, [R4,#0xC]
477C50:  BLX             R1
477C52:  CMP             R0, #0
477C54:  BEQ.W           loc_4781FA
477C58:  LDR             R0, [R4]
477C5A:  STR             R0, [SP,#0x78+var_40]
477C5C:  LDR             R0, [R4,#4]
477C5E:  STR             R0, [SP,#0x78+var_3C]
477C60:  SUBS            R5, #8
477C62:  MOV.W           R9, R9,LSL#8
477C66:  CMP             R5, #0xF
477C68:  BGT             loc_477C00
477C6A:  SUBS            R5, #8
477C6C:  CMP.W           R10, #0
477C70:  STRD.W          R9, R5, [SP,#0x78+var_38]
477C74:  BEQ             loc_477D0E
477C76:  MOVS            R0, #1
477C78:  LDR             R1, [SP,#0x78+var_50]
477C7A:  LSL.W           R0, R0, R10
477C7E:  ADD             R5, R10
477C80:  SUBS            R0, #1
477C82:  CMP             R5, #8
477C84:  AND.W           R0, R0, R1
477C88:  RSB.W           R1, R5, #0x18
477C8C:  LSL.W           R0, R0, R1
477C90:  ORR.W           R9, R9, R0
477C94:  BLT             loc_477D14
477C96:  LDR.W           R10, [SP,#0x78+var_44]
477C9A:  ADD.W           R4, R5, #8
477C9E:  LDR             R0, [SP,#0x78+var_40]
477CA0:  ADDS            R1, R0, #1
477CA2:  STR             R1, [SP,#0x78+var_40]
477CA4:  MOV.W           R1, R9,LSR#16
477CA8:  STRB            R1, [R0]
477CAA:  LDR             R0, [SP,#0x78+var_3C]
477CAC:  SUBS            R0, #1
477CAE:  STR             R0, [SP,#0x78+var_3C]
477CB0:  UBFX.W          R5, R9, #0x10, #8
477CB4:  BEQ             loc_477CBC
477CB6:  CMP             R5, #0xFF
477CB8:  BEQ             loc_477CD6
477CBA:  B               loc_477CFE
477CBC:  LDR             R0, [SP,#0x78+var_20]
477CBE:  LDR             R6, [R0,#0x18]
477CC0:  LDR             R1, [R6,#0xC]
477CC2:  BLX             R1
477CC4:  CMP             R0, #0
477CC6:  BEQ.W           loc_4781FA
477CCA:  LDR             R0, [R6]
477CCC:  STR             R0, [SP,#0x78+var_40]
477CCE:  LDR             R0, [R6,#4]
477CD0:  STR             R0, [SP,#0x78+var_3C]
477CD2:  CMP             R5, #0xFF
477CD4:  BNE             loc_477CFE
477CD6:  LDR             R0, [SP,#0x78+var_40]
477CD8:  ADDS            R1, R0, #1
477CDA:  STR             R1, [SP,#0x78+var_40]
477CDC:  STRB.W          R11, [R0]
477CE0:  LDR             R0, [SP,#0x78+var_3C]
477CE2:  SUBS            R0, #1
477CE4:  STR             R0, [SP,#0x78+var_3C]
477CE6:  BNE             loc_477CFE
477CE8:  LDR             R0, [SP,#0x78+var_20]
477CEA:  LDR             R5, [R0,#0x18]
477CEC:  LDR             R1, [R5,#0xC]
477CEE:  BLX             R1
477CF0:  CMP             R0, #0
477CF2:  BEQ.W           loc_4781FA
477CF6:  LDR             R0, [R5]
477CF8:  STR             R0, [SP,#0x78+var_40]
477CFA:  LDR             R0, [R5,#4]
477CFC:  STR             R0, [SP,#0x78+var_3C]
477CFE:  SUBS            R4, #8
477D00:  MOV.W           R9, R9,LSL#8
477D04:  CMP             R4, #0xF
477D06:  BGT             loc_477C9E
477D08:  SUB.W           R5, R4, #8
477D0C:  B               loc_477D18
477D0E:  LDR.W           R10, [SP,#0x78+var_44]
477D12:  B               loc_477D1C
477D14:  LDR.W           R10, [SP,#0x78+var_44]
477D18:  STRD.W          R9, R5, [SP,#0x78+var_38]
477D1C:  MOVS            R2, #1
477D1E:  MOV.W           R8, #0
477D22:  ADD.W           R0, R10, #0x400
477D26:  STR             R0, [SP,#0x78+var_64]
477D28:  LDR             R0, [SP,#0x78+var_4C]
477D2A:  LDR             R1, [SP,#0x78+var_48]
477D2C:  LDR.W           R0, [R0,R2,LSL#2]
477D30:  LDRSH.W         R0, [R1,R0,LSL#1]
477D34:  CMP             R0, #0
477D36:  BEQ.W           loc_477F94
477D3A:  CMP.W           R8, #0x10
477D3E:  STR             R0, [SP,#0x78+var_50]
477D40:  STR             R2, [SP,#0x78+var_60]
477D42:  BLT             loc_477DFC
477D44:  LDRB.W          R4, [R10,#0x4F0]
477D48:  LDR.W           R6, [R10,#0x3C0]
477D4C:  CBNZ            R4, loc_477D5E
477D4E:  LDR             R0, [SP,#0x78+var_20]
477D50:  MOVS            R1, #0x28 ; '('
477D52:  LDR             R0, [R0]
477D54:  STR             R1, [R0,#0x14]
477D56:  LDR             R0, [SP,#0x78+var_20]
477D58:  LDR             R1, [R0]
477D5A:  LDR             R1, [R1]
477D5C:  BLX             R1
477D5E:  MOVS            R0, #1
477D60:  ADD             R5, R4
477D62:  LSLS            R0, R4
477D64:  RSB.W           R1, R5, #0x18
477D68:  SUBS            R0, #1
477D6A:  CMP             R5, #8
477D6C:  AND.W           R0, R0, R6
477D70:  LSL.W           R0, R0, R1
477D74:  ORR.W           R9, R9, R0
477D78:  BLT             loc_477DEC
477D7A:  ADD.W           R4, R5, #8
477D7E:  LDR             R0, [SP,#0x78+var_40]
477D80:  ADDS            R1, R0, #1
477D82:  STR             R1, [SP,#0x78+var_40]
477D84:  MOV.W           R1, R9,LSR#16
477D88:  STRB            R1, [R0]
477D8A:  LDR             R0, [SP,#0x78+var_3C]
477D8C:  SUBS            R0, #1
477D8E:  STR             R0, [SP,#0x78+var_3C]
477D90:  UBFX.W          R5, R9, #0x10, #8
477D94:  BEQ             loc_477D9C
477D96:  CMP             R5, #0xFF
477D98:  BEQ             loc_477DB6
477D9A:  B               loc_477DDE
477D9C:  LDR             R0, [SP,#0x78+var_20]
477D9E:  LDR             R6, [R0,#0x18]
477DA0:  LDR             R1, [R6,#0xC]
477DA2:  BLX             R1
477DA4:  CMP             R0, #0
477DA6:  BEQ.W           loc_4781FA
477DAA:  LDR             R0, [R6]
477DAC:  STR             R0, [SP,#0x78+var_40]
477DAE:  LDR             R0, [R6,#4]
477DB0:  STR             R0, [SP,#0x78+var_3C]
477DB2:  CMP             R5, #0xFF
477DB4:  BNE             loc_477DDE
477DB6:  LDR             R0, [SP,#0x78+var_40]
477DB8:  ADDS            R1, R0, #1
477DBA:  STR             R1, [SP,#0x78+var_40]
477DBC:  STRB.W          R11, [R0]
477DC0:  LDR             R0, [SP,#0x78+var_3C]
477DC2:  SUBS            R0, #1
477DC4:  STR             R0, [SP,#0x78+var_3C]
477DC6:  BNE             loc_477DDE
477DC8:  LDR             R0, [SP,#0x78+var_20]
477DCA:  LDR             R5, [R0,#0x18]
477DCC:  LDR             R1, [R5,#0xC]
477DCE:  BLX             R1
477DD0:  CMP             R0, #0
477DD2:  BEQ.W           loc_4781FA
477DD6:  LDR             R0, [R5]
477DD8:  STR             R0, [SP,#0x78+var_40]
477DDA:  LDR             R0, [R5,#4]
477DDC:  STR             R0, [SP,#0x78+var_3C]
477DDE:  SUBS            R4, #8
477DE0:  MOV.W           R9, R9,LSL#8
477DE4:  CMP             R4, #0xF
477DE6:  BGT             loc_477D7E
477DE8:  SUB.W           R5, R4, #8
477DEC:  SUB.W           R0, R8, #0x10
477DF0:  CMP.W           R8, #0x1F
477DF4:  STRD.W          R9, R5, [SP,#0x78+var_38]
477DF8:  MOV             R8, R0
477DFA:  BGT             loc_477D44
477DFC:  LDR             R1, [SP,#0x78+var_50]
477DFE:  MOVS            R4, #0
477E00:  CMP             R1, #0
477E02:  MOV             R0, R1
477E04:  MOV.W           R1, R1,ASR#15
477E08:  IT LT
477E0A:  NEGLT           R0, R0
477E0C:  STR             R1, [SP,#0x78+var_68]
477E0E:  MOV             R10, R4
477E10:  ADD.W           R4, R10, #1
477E14:  ASRS            R1, R0, #1
477E16:  CMP.W           R11, R0,ASR#1
477E1A:  MOV             R0, R1
477E1C:  BNE             loc_477E0E
477E1E:  CMP             R4, #0xB
477E20:  BLT             loc_477E32
477E22:  LDR             R0, [SP,#0x78+var_20]
477E24:  MOVS            R1, #6
477E26:  LDR             R0, [R0]
477E28:  STR             R1, [R0,#0x14]
477E2A:  LDR             R0, [SP,#0x78+var_20]
477E2C:  LDR             R1, [R0]
477E2E:  LDR             R1, [R1]
477E30:  BLX             R1
477E32:  LDR             R0, [SP,#0x78+var_64]
477E34:  ADD.W           R0, R0, R8,LSL#4
477E38:  LDRB            R6, [R0,R4]
477E3A:  LDR             R0, [SP,#0x78+var_44]
477E3C:  CMP             R6, #0
477E3E:  ADD.W           R0, R0, R8,LSL#6
477E42:  LDR.W           R8, [R0,R4,LSL#2]
477E46:  BNE             loc_477E58
477E48:  LDR             R0, [SP,#0x78+var_20]
477E4A:  MOVS            R1, #0x28 ; '('
477E4C:  LDR             R0, [R0]
477E4E:  STR             R1, [R0,#0x14]
477E50:  LDR             R0, [SP,#0x78+var_20]
477E52:  LDR             R1, [R0]
477E54:  LDR             R1, [R1]
477E56:  BLX             R1
477E58:  MOVS            R0, #1
477E5A:  LSLS            R0, R6
477E5C:  SUBS            R0, #1
477E5E:  AND.W           R1, R0, R8
477E62:  ADDS            R0, R5, R6
477E64:  RSB.W           R2, R0, #0x18
477E68:  CMP             R0, #8
477E6A:  LSL.W           R1, R1, R2
477E6E:  ORR.W           R5, R9, R1
477E72:  BLT             loc_477EF6
477E74:  ADD.W           R6, R0, #8
477E78:  LDR             R0, [SP,#0x78+var_40]
477E7A:  ADDS            R1, R0, #1
477E7C:  STR             R1, [SP,#0x78+var_40]
477E7E:  LSRS            R1, R5, #0x10
477E80:  STRB            R1, [R0]
477E82:  LDR             R0, [SP,#0x78+var_3C]
477E84:  SUBS            R0, #1
477E86:  STR             R0, [SP,#0x78+var_3C]
477E88:  UBFX.W          R8, R5, #0x10, #8
477E8C:  BEQ             loc_477E96
477E8E:  CMP.W           R8, #0xFF
477E92:  BEQ             loc_477EBA
477E94:  B               loc_477EEA
477E96:  LDR             R0, [SP,#0x78+var_20]
477E98:  LDR.W           R9, [R0,#0x18]
477E9C:  LDR.W           R1, [R9,#0xC]
477EA0:  BLX             R1
477EA2:  CMP             R0, #0
477EA4:  BEQ.W           loc_4781FA
477EA8:  LDR.W           R0, [R9]
477EAC:  STR             R0, [SP,#0x78+var_40]
477EAE:  LDR.W           R0, [R9,#4]
477EB2:  STR             R0, [SP,#0x78+var_3C]
477EB4:  CMP.W           R8, #0xFF
477EB8:  BNE             loc_477EEA
477EBA:  LDR             R0, [SP,#0x78+var_40]
477EBC:  ADDS            R1, R0, #1
477EBE:  STR             R1, [SP,#0x78+var_40]
477EC0:  STRB.W          R11, [R0]
477EC4:  LDR             R0, [SP,#0x78+var_3C]
477EC6:  SUBS            R0, #1
477EC8:  STR             R0, [SP,#0x78+var_3C]
477ECA:  BNE             loc_477EEA
477ECC:  LDR             R0, [SP,#0x78+var_20]
477ECE:  LDR.W           R8, [R0,#0x18]
477ED2:  LDR.W           R1, [R8,#0xC]
477ED6:  BLX             R1
477ED8:  CMP             R0, #0
477EDA:  BEQ.W           loc_4781FA
477EDE:  LDR.W           R0, [R8]
477EE2:  STR             R0, [SP,#0x78+var_40]
477EE4:  LDR.W           R0, [R8,#4]
477EE8:  STR             R0, [SP,#0x78+var_3C]
477EEA:  SUBS            R6, #8
477EEC:  LSLS            R5, R5, #8
477EEE:  CMP             R6, #0xF
477EF0:  BGT             loc_477E78
477EF2:  SUB.W           R0, R6, #8
477EF6:  LDR             R1, [SP,#0x78+var_50]
477EF8:  LDR             R2, [SP,#0x78+var_68]
477EFA:  STRD.W          R5, R0, [SP,#0x78+var_38]
477EFE:  ADD             R1, R2
477F00:  MOVS            R2, #1
477F02:  LSLS            R2, R4
477F04:  SUBS            R2, #1
477F06:  ANDS            R1, R2
477F08:  NEGS            R2, R0
477F0A:  SUBS            R2, R2, R4
477F0C:  ADDS            R2, #0x18
477F0E:  LSLS            R1, R2
477F10:  ORR.W           R9, R5, R1
477F14:  ADDS            R5, R0, R4
477F16:  CMP             R5, #8
477F18:  BLT             loc_477F9A
477F1A:  ADD             R0, R10
477F1C:  LDR.W           R10, [SP,#0x78+var_44]
477F20:  ADD.W           R4, R0, #9
477F24:  LDR             R0, [SP,#0x78+var_40]
477F26:  ADDS            R1, R0, #1
477F28:  STR             R1, [SP,#0x78+var_40]
477F2A:  MOV.W           R1, R9,LSR#16
477F2E:  STRB            R1, [R0]
477F30:  LDR             R0, [SP,#0x78+var_3C]
477F32:  SUBS            R0, #1
477F34:  STR             R0, [SP,#0x78+var_3C]
477F36:  UBFX.W          R5, R9, #0x10, #8
477F3A:  BEQ             loc_477F42
477F3C:  CMP             R5, #0xFF
477F3E:  BEQ             loc_477F5C
477F40:  B               loc_477F84
477F42:  LDR             R0, [SP,#0x78+var_20]
477F44:  LDR             R6, [R0,#0x18]
477F46:  LDR             R1, [R6,#0xC]
477F48:  BLX             R1
477F4A:  CMP             R0, #0
477F4C:  BEQ.W           loc_4781FA
477F50:  LDR             R0, [R6]
477F52:  STR             R0, [SP,#0x78+var_40]
477F54:  LDR             R0, [R6,#4]
477F56:  STR             R0, [SP,#0x78+var_3C]
477F58:  CMP             R5, #0xFF
477F5A:  BNE             loc_477F84
477F5C:  LDR             R0, [SP,#0x78+var_40]
477F5E:  ADDS            R1, R0, #1
477F60:  STR             R1, [SP,#0x78+var_40]
477F62:  STRB.W          R11, [R0]
477F66:  LDR             R0, [SP,#0x78+var_3C]
477F68:  SUBS            R0, #1
477F6A:  STR             R0, [SP,#0x78+var_3C]
477F6C:  BNE             loc_477F84
477F6E:  LDR             R0, [SP,#0x78+var_20]
477F70:  LDR             R5, [R0,#0x18]
477F72:  LDR             R1, [R5,#0xC]
477F74:  BLX             R1
477F76:  CMP             R0, #0
477F78:  BEQ.W           loc_4781FA
477F7C:  LDR             R0, [R5]
477F7E:  STR             R0, [SP,#0x78+var_40]
477F80:  LDR             R0, [R5,#4]
477F82:  STR             R0, [SP,#0x78+var_3C]
477F84:  SUBS            R4, #8
477F86:  MOV.W           R9, R9,LSL#8
477F8A:  CMP             R4, #0xF
477F8C:  BGT             loc_477F24
477F8E:  SUB.W           R5, R4, #8
477F92:  B               loc_477F9E
477F94:  ADD.W           R8, R8, #1
477F98:  B               loc_477FA8
477F9A:  LDR.W           R10, [SP,#0x78+var_44]
477F9E:  LDR             R2, [SP,#0x78+var_60]
477FA0:  MOV.W           R8, #0
477FA4:  STRD.W          R9, R5, [SP,#0x78+var_38]
477FA8:  ADDS            R0, R2, #1
477FAA:  CMP             R2, #0x3F ; '?'
477FAC:  MOV             R2, R0
477FAE:  BLT.W           loc_477D28
477FB2:  LDR             R6, [SP,#0x78+var_54]
477FB4:  CMP.W           R8, #1
477FB8:  BLT             loc_478068
477FBA:  LDRB.W          R4, [R10,#0x400]
477FBE:  LDR.W           R8, [R10]
477FC2:  CBNZ            R4, loc_477FD4
477FC4:  LDR             R0, [SP,#0x78+var_20]
477FC6:  MOVS            R1, #0x28 ; '('
477FC8:  LDR             R0, [R0]
477FCA:  STR             R1, [R0,#0x14]
477FCC:  LDR             R0, [SP,#0x78+var_20]
477FCE:  LDR             R1, [R0]
477FD0:  LDR             R1, [R1]
477FD2:  BLX             R1
477FD4:  MOVS            R0, #1
477FD6:  LSLS            R0, R4
477FD8:  SUBS            R0, #1
477FDA:  AND.W           R1, R0, R8
477FDE:  ADDS            R0, R5, R4
477FE0:  RSB.W           R2, R0, #0x18
477FE4:  CMP             R0, #8
477FE6:  LSL.W           R1, R1, R2
477FEA:  ORR.W           R4, R9, R1
477FEE:  BLT             loc_478064
477FF0:  ADD.W           R5, R0, #8
477FF4:  LDR             R0, [SP,#0x78+var_40]
477FF6:  ADDS            R1, R0, #1
477FF8:  STR             R1, [SP,#0x78+var_40]
477FFA:  LSRS            R1, R4, #0x10
477FFC:  STRB            R1, [R0]
477FFE:  LDR             R0, [SP,#0x78+var_3C]
478000:  SUBS            R0, #1
478002:  STR             R0, [SP,#0x78+var_3C]
478004:  UBFX.W          R8, R4, #0x10, #8
478008:  BNE             loc_478020
47800A:  LDR             R0, [SP,#0x78+var_20]
47800C:  LDR             R6, [R0,#0x18]
47800E:  LDR             R1, [R6,#0xC]
478010:  BLX             R1
478012:  CMP             R0, #0
478014:  BEQ.W           loc_4781FA
478018:  LDR             R0, [R6]
47801A:  STR             R0, [SP,#0x78+var_40]
47801C:  LDR             R0, [R6,#4]
47801E:  STR             R0, [SP,#0x78+var_3C]
478020:  LDR             R6, [SP,#0x78+var_54]
478022:  CMP.W           R8, #0xFF
478026:  BNE             loc_478058
478028:  LDR             R0, [SP,#0x78+var_40]
47802A:  ADDS            R1, R0, #1
47802C:  STR             R1, [SP,#0x78+var_40]
47802E:  STRB.W          R11, [R0]
478032:  LDR             R0, [SP,#0x78+var_3C]
478034:  SUBS            R0, #1
478036:  STR             R0, [SP,#0x78+var_3C]
478038:  BNE             loc_478058
47803A:  LDR             R0, [SP,#0x78+var_20]
47803C:  LDR.W           R8, [R0,#0x18]
478040:  LDR.W           R1, [R8,#0xC]
478044:  BLX             R1
478046:  CMP             R0, #0
478048:  BEQ.W           loc_4781FA
47804C:  LDR.W           R0, [R8]
478050:  STR             R0, [SP,#0x78+var_40]
478052:  LDR.W           R0, [R8,#4]
478056:  STR             R0, [SP,#0x78+var_3C]
478058:  SUBS            R5, #8
47805A:  LSLS            R4, R4, #8
47805C:  CMP             R5, #0xF
47805E:  BGT             loc_477FF4
478060:  SUB.W           R0, R5, #8
478064:  STRD.W          R4, R0, [SP,#0x78+var_38]
478068:  LDR.W           R9, [SP,#0x78+var_5C]
47806C:  LDR             R1, [SP,#0x78+var_6C]
47806E:  LDR             R2, [SP,#0x78+var_70]
478070:  LDR             R4, [SP,#0x78+var_78]
478072:  LDR.W           R0, [R9,R1,LSL#2]
478076:  ADDS            R1, #1
478078:  LDR             R5, [SP,#0x78+var_74]
47807A:  LDR.W           R8, [SP,#0x78+var_58]
47807E:  LDRSH.W         R0, [R0]
478082:  STR             R0, [R2]
478084:  LDR.W           R0, [R4,#0x100]
478088:  CMP             R1, R0
47808A:  MOV             R0, R1
47808C:  BLT.W           loc_477B46
478090:  LDR             R0, [R4,#0x18]
478092:  LDR             R1, [SP,#0x78+var_40]
478094:  STR             R1, [R0]
478096:  LDR             R0, [R4,#0x18]
478098:  LDR             R1, [SP,#0x78+var_3C]
47809A:  STR             R1, [R0,#4]
47809C:  VLD1.32         {D16-D17}, [R6]!
4780A0:  VLDR            D18, [R6]
4780A4:  VST1.32         {D16-D17}, [R8]!
4780A8:  VSTR            D18, [R8]
4780AC:  LDR.W           R0, [R4,#0xBC]
4780B0:  CBZ             R0, loc_4780C8
4780B2:  LDR             R1, [R5,#0x24]
4780B4:  CBNZ            R1, loc_4780C4
4780B6:  LDR             R1, [R5,#0x28]
4780B8:  ADDS            R1, #1
4780BA:  AND.W           R1, R1, #7
4780BE:  STRD.W          R0, R1, [R5,#0x24]
4780C2:  MOV             R1, R0
4780C4:  SUBS            R0, R1, #1
4780C6:  STR             R0, [R5,#0x24]
4780C8:  MOVS            R0, #1
4780CA:  B               loc_4781FC
4780CC:  STR             R6, [SP,#0x78+var_54]
4780CE:  MOV             R11, R5
4780D0:  STRD.W          R9, R8, [SP,#0x78+var_5C]
4780D4:  MOV             R8, R4
4780D6:  LDR             R1, [SP,#0x78+var_34]
4780D8:  LDR             R2, [R5,#0x28]
4780DA:  CMP             R1, #1
4780DC:  STR             R2, [SP,#0x78+var_44]
4780DE:  BLT             loc_47815E
4780E0:  LDR             R2, [SP,#0x78+var_38]
4780E2:  RSB.W           R3, R1, #0x11
4780E6:  MOVS            R6, #0x7F
4780E8:  MOV.W           R9, #0
4780EC:  LSL.W           R3, R6, R3
4780F0:  ORR.W           R5, R3, R2
4780F4:  ADD.W           R6, R1, #0xF
4780F8:  ADDS            R1, R0, #1
4780FA:  STR             R1, [SP,#0x78+var_40]
4780FC:  LSRS            R1, R5, #0x10
4780FE:  STRB            R1, [R0]
478100:  LDR             R0, [SP,#0x78+var_3C]
478102:  SUBS            R0, #1
478104:  STR             R0, [SP,#0x78+var_3C]
478106:  UBFX.W          R10, R5, #0x10, #8
47810A:  BEQ             loc_478114
47810C:  CMP.W           R10, #0xFF
478110:  BEQ             loc_47812E
478112:  B               loc_478154
478114:  LDR             R0, [SP,#0x78+var_20]
478116:  LDR             R4, [R0,#0x18]
478118:  LDR             R1, [R4,#0xC]
47811A:  BLX             R1
47811C:  CMP             R0, #0
47811E:  BEQ             loc_4781FA
478120:  LDR             R0, [R4]
478122:  STR             R0, [SP,#0x78+var_40]
478124:  LDR             R0, [R4,#4]
478126:  STR             R0, [SP,#0x78+var_3C]
478128:  CMP.W           R10, #0xFF
47812C:  BNE             loc_478154
47812E:  LDR             R0, [SP,#0x78+var_40]
478130:  ADDS            R1, R0, #1
478132:  STR             R1, [SP,#0x78+var_40]
478134:  STRB.W          R9, [R0]
478138:  LDR             R0, [SP,#0x78+var_3C]
47813A:  SUBS            R0, #1
47813C:  STR             R0, [SP,#0x78+var_3C]
47813E:  BNE             loc_478154
478140:  LDR             R0, [SP,#0x78+var_20]
478142:  LDR             R4, [R0,#0x18]
478144:  LDR             R1, [R4,#0xC]
478146:  BLX             R1
478148:  CMP             R0, #0
47814A:  BEQ             loc_4781FA
47814C:  LDR             R0, [R4]
47814E:  STR             R0, [SP,#0x78+var_40]
478150:  LDR             R0, [R4,#4]
478152:  STR             R0, [SP,#0x78+var_3C]
478154:  LDR             R0, [SP,#0x78+var_40]
478156:  SUBS            R6, #8
478158:  LSLS            R5, R5, #8
47815A:  CMP             R6, #0xF
47815C:  BGT             loc_4780F8
47815E:  ADDS            R1, R0, #1
478160:  STR             R1, [SP,#0x78+var_40]
478162:  MOVS            R1, #0
478164:  STRD.W          R1, R1, [SP,#0x78+var_38]
478168:  MOVS            R1, #0xFF
47816A:  STRB            R1, [R0]
47816C:  LDR             R0, [SP,#0x78+var_3C]
47816E:  SUBS            R0, #1
478170:  STR             R0, [SP,#0x78+var_3C]
478172:  BEQ             loc_478180
478174:  MOV             R4, R8
478176:  LDR             R0, [SP,#0x78+var_40]
478178:  MOV             R5, R11
47817A:  LDR.W           R8, [SP,#0x78+var_58]
47817E:  B               loc_4781A4
478180:  LDR             R0, [SP,#0x78+var_20]
478182:  LDR.W           R9, [R0,#0x18]
478186:  LDR.W           R1, [R9,#0xC]
47818A:  BLX             R1
47818C:  MOV             R4, R8
47818E:  LDR.W           R8, [SP,#0x78+var_58]
478192:  CMP             R0, #0
478194:  MOV             R5, R11
478196:  BEQ             loc_4781FA
478198:  LDR.W           R0, [R9]
47819C:  STR             R0, [SP,#0x78+var_40]
47819E:  LDR.W           R1, [R9,#4]
4781A2:  STR             R1, [SP,#0x78+var_3C]
4781A4:  ADDS            R1, R0, #1
4781A6:  STR             R1, [SP,#0x78+var_40]
4781A8:  LDR             R1, [SP,#0x78+var_44]
4781AA:  ADDS            R1, #0xD0
4781AC:  STRB            R1, [R0]
4781AE:  LDR             R0, [SP,#0x78+var_3C]
4781B0:  LDR.W           R9, [SP,#0x78+var_20]
4781B4:  LDR             R6, [SP,#0x78+var_54]
4781B6:  SUBS            R0, #1
4781B8:  STR             R0, [SP,#0x78+var_3C]
4781BA:  BNE             loc_4781D2
4781BC:  LDR.W           R6, [R9,#0x18]
4781C0:  MOV             R0, R9
4781C2:  LDR             R1, [R6,#0xC]
4781C4:  BLX             R1
4781C6:  CBZ             R0, loc_4781FA
4781C8:  LDR             R0, [R6]
4781CA:  STR             R0, [SP,#0x78+var_40]
4781CC:  LDR             R0, [R6,#4]
4781CE:  LDR             R6, [SP,#0x78+var_54]
4781D0:  STR             R0, [SP,#0x78+var_3C]
4781D2:  LDR.W           R0, [R9,#0xE4]
4781D6:  LDR.W           R9, [SP,#0x78+var_5C]
4781DA:  CMP             R0, #1
4781DC:  BLT.W           loc_477B22
4781E0:  ADD             R0, SP, #0x78+var_40
4781E2:  MOVS            R1, #0
4781E4:  ADDS            R0, #0x10
4781E6:  MOVS            R2, #0
4781E8:  STR.W           R1, [R0,R2,LSL#2]
4781EC:  ADDS            R2, #1
4781EE:  LDR             R3, [SP,#0x78+var_20]
4781F0:  LDR.W           R3, [R3,#0xE4]
4781F4:  CMP             R2, R3
4781F6:  BLT             loc_4781E8
4781F8:  B               loc_477B22
4781FA:  MOVS            R0, #0
4781FC:  ADD             SP, SP, #0x5C ; '\'
4781FE:  POP.W           {R8-R11}
478202:  POP             {R4-R7,PC}
