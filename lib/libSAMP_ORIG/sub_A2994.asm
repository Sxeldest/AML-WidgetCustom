; =========================================================
; Game Engine Function: sub_A2994
; Address            : 0xA2994 - 0xA2D48
; =========================================================

A2994:  PUSH            {R4-R7,LR}
A2996:  ADD             R7, SP, #0xC
A2998:  PUSH.W          {R8-R11}
A299C:  SUB             SP, SP, #0x44
A299E:  MOV             R4, R2
A29A0:  MOV             R8, R1
A29A2:  CMP             R2, #1
A29A4:  STR             R0, [SP,#0x60+var_40]
A29A6:  BLT.W           loc_A2CD8
A29AA:  ADD.W           R0, R8, #0xC
A29AE:  MOVS            R1, #0
A29B0:  STR.W           R1, [R0],#0x10
A29B4:  ADDS            R1, #1
A29B6:  CMP             R4, R1
A29B8:  BNE             loc_A29B0
A29BA:  LDR             R3, =(sub_A52C8+1 - 0xA29C6)
A29BC:  MOV             R0, R8; base
A29BE:  MOV             R1, R4; nmemb
A29C0:  MOVS            R2, #0x10; size
A29C2:  ADD             R3, PC; sub_A52C8 ; compar
A29C4:  BLX             qsort
A29C8:  CMP             R4, #1
A29CA:  BLT.W           loc_A2CE6
A29CE:  LDR             R0, [SP,#0x60+var_40]
A29D0:  MOVW            R9, #0xFFFF
A29D4:  MOVS            R1, #0
A29D6:  ADDS            R0, #0x18
A29D8:  STR             R0, [SP,#0x60+var_60]
A29DA:  STRD.W          R8, R4, [SP,#0x60+var_5C]
A29DE:  B               loc_A29EC
A29E0:  MOVS            R0, #0
A29E2:  STR             R0, [R2,#8]
A29E4:  ADDS            R1, #1
A29E6:  CMP             R1, R4
A29E8:  BEQ.W           loc_A2CFE
A29EC:  ADD.W           R2, R8, R1,LSL#4
A29F0:  LDRH            R3, [R2,#4]
A29F2:  CMP             R3, #0
A29F4:  BEQ             loc_A29E0
A29F6:  LDRH            R6, [R2,#6]
A29F8:  STR             R6, [SP,#0x60+var_34]
A29FA:  CMP             R6, #0
A29FC:  MOV             R0, R6
A29FE:  BEQ             loc_A29E0
A2A00:  STRD.W          R2, R1, [SP,#0x60+var_50]
A2A04:  LDR             R0, [SP,#0x60+var_40]
A2A06:  LDR             R1, [R0,#8]
A2A08:  LDR             R2, [R0,#0x10]
A2A0A:  LDR.W           R8, [R0]
A2A0E:  LDR             R4, [R0,#0x18]
A2A10:  ADDS            R0, R3, R1
A2A12:  SUBS            R5, R0, #1
A2A14:  STR             R2, [SP,#0x60+var_24]
A2A16:  STR             R3, [SP,#0x60+var_54]
A2A18:  MOV             R0, R5
A2A1A:  BLX             sub_1090B0
A2A1E:  LDRH            R6, [R4]
A2A20:  SUBS            R1, R5, R1
A2A22:  MOVS            R0, #0
A2A24:  STR             R1, [SP,#0x60+var_20]
A2A26:  ADDS            R5, R1, R6
A2A28:  CMP             R5, R8
A2A2A:  BLE             loc_A2A3E
A2A2C:  STR             R0, [SP,#0x60+var_38]
A2A2E:  MOV.W           R0, #0x40000000
A2A32:  STR             R0, [SP,#0x60+var_3C]
A2A34:  MOVS            R0, #0
A2A36:  MOV.W           R2, #0x40000000
A2A3A:  STR             R0, [SP,#0x60+var_48]
A2A3C:  B               loc_A2B30
A2A3E:  STR             R0, [SP,#0x60+var_38]
A2A40:  MOV.W           R0, #0x40000000
A2A44:  STR             R0, [SP,#0x60+var_3C]
A2A46:  MOV             R0, R4
A2A48:  STR             R6, [SP,#0x60+var_44]
A2A4A:  MOV.W           R2, #0x40000000
A2A4E:  STR             R4, [SP,#0x60+var_2C]
A2A50:  LDR.W           R9, [SP,#0x60+var_60]
A2A54:  STR             R2, [SP,#0x60+var_28]
A2A56:  STR.W           R8, [SP,#0x60+var_30]
A2A5A:  B               loc_A2A7E
A2A5C:  LDR             R1, [SP,#0x60+var_28]
A2A5E:  LDR             R0, [SP,#0x60+var_38]
A2A60:  CMP             R8, R1
A2A62:  IT LT
A2A64:  MOVLT           R0, R10
A2A66:  STR             R0, [SP,#0x60+var_38]
A2A68:  IT LT
A2A6A:  MOVLT           R1, R8
A2A6C:  STR             R1, [SP,#0x60+var_28]
A2A6E:  LDR             R1, [SP,#0x60+var_20]
A2A70:  LDR.W           R0, [R9,#4]!
A2A74:  LDR             R2, [SP,#0x60+var_30]
A2A76:  LDRH            R6, [R0]
A2A78:  ADDS            R5, R1, R6
A2A7A:  CMP             R5, R2
A2A7C:  BGT             loc_A2B18
A2A7E:  MOV             R10, R9
A2A80:  CMP             R1, #1
A2A82:  BLT             loc_A2AE2
A2A84:  MOV.W           LR, #0
A2A88:  MOV             R1, R0
A2A8A:  MOV             R3, R6
A2A8C:  MOV.W           R12, #0
A2A90:  MOV.W           R8, #0
A2A94:  MOV             R9, R0
A2A96:  B               loc_A2AC0
A2A98:  LDR             R1, [R1,#4]
A2A9A:  SUB.W           R0, R8, R0
A2A9E:  LDR             R4, [SP,#0x60+var_20]
A2AA0:  LDRH            R2, [R1]
A2AA2:  SUB.W           R11, R2, R3
A2AA6:  ADD.W           R3, R11, R12
A2AAA:  CMP             R3, R4
A2AAC:  IT GT
A2AAE:  SUBGT.W         R11, R4, R12
A2AB2:  MUL.W           R4, R11, R0
A2AB6:  MOV             R3, R2
A2AB8:  ADD             R12, R11
A2ABA:  ADD             LR, R4
A2ABC:  CMP             R5, R3
A2ABE:  BLE             loc_A2AEC
A2AC0:  LDRH            R0, [R1,#2]
A2AC2:  CMP             R8, R0
A2AC4:  BGE             loc_A2A98
A2AC6:  LDR             R1, [R1,#4]
A2AC8:  SUB.W           R2, R0, R8
A2ACC:  CMP             R3, R6
A2ACE:  MOV             R8, R0
A2AD0:  MUL.W           R4, R2, R12
A2AD4:  LDRH            R2, [R1]
A2AD6:  ITE CC
A2AD8:  SUBCC.W         R11, R2, R6
A2ADC:  SUBCS.W         R11, R2, R3
A2AE0:  B               loc_A2AB6
A2AE2:  MOV             R9, R0
A2AE4:  MOV.W           R8, #0
A2AE8:  MOV.W           LR, #0
A2AEC:  LDR             R0, [SP,#0x60+var_24]
A2AEE:  CMP             R0, #0
A2AF0:  BEQ             loc_A2A5C
A2AF2:  LDR             R0, [SP,#0x60+var_40]
A2AF4:  LDR             R1, [SP,#0x60+var_34]
A2AF6:  LDR             R0, [R0,#4]
A2AF8:  ADD             R1, R8
A2AFA:  CMP             R1, R0
A2AFC:  BGT             loc_A2A6E
A2AFE:  LDR             R0, [SP,#0x60+var_28]
A2B00:  LDR             R1, [SP,#0x60+var_20]
A2B02:  CMP             R8, R0
A2B04:  BLT             loc_A2B0E
A2B06:  BNE             loc_A2A70
A2B08:  LDR             R0, [SP,#0x60+var_3C]
A2B0A:  CMP             LR, R0
A2B0C:  BGE             loc_A2A70
A2B0E:  STR.W           R8, [SP,#0x60+var_28]
A2B12:  STRD.W          LR, R10, [SP,#0x60+var_3C]
A2B16:  B               loc_A2A70
A2B18:  LDR             R0, [SP,#0x60+var_38]
A2B1A:  CBZ             R0, loc_A2B22
A2B1C:  LDR             R0, [R0]
A2B1E:  LDRH            R0, [R0]
A2B20:  B               loc_A2B28
A2B22:  MOVS            R0, #0
A2B24:  STR             R0, [SP,#0x60+var_38]
A2B26:  MOVS            R0, #0
A2B28:  STR             R0, [SP,#0x60+var_48]
A2B2A:  LDR             R6, [SP,#0x60+var_44]
A2B2C:  LDRD.W          R4, R2, [SP,#0x60+var_2C]
A2B30:  LDR             R0, [SP,#0x60+var_24]
A2B32:  CMP             R0, #1
A2B34:  BNE             loc_A2C2C
A2B36:  CMP             R1, R6
A2B38:  MOV             R5, R4
A2B3A:  BLE             loc_A2B46
A2B3C:  LDR             R5, [R5,#4]
A2B3E:  LDRH            R0, [R5]
A2B40:  CMP             R1, R0
A2B42:  BGT             loc_A2B3C
A2B44:  B               loc_A2B4C
A2B46:  CMP             R4, #0
A2B48:  MOV             R5, R4
A2B4A:  BEQ             loc_A2C2C
A2B4C:  LDR             R0, [SP,#0x60+var_40]
A2B4E:  LDR             R0, [R0,#4]
A2B50:  STR             R0, [SP,#0x60+var_44]
A2B52:  LDR.W           R8, [SP,#0x60+var_60]
A2B56:  B               loc_A2B62
A2B58:  LDR             R4, [SP,#0x60+var_2C]
A2B5A:  LDR             R5, [SP,#0x60+var_30]
A2B5C:  LDR             R5, [R5,#4]
A2B5E:  CMP             R5, #0
A2B60:  BEQ             loc_A2C2C
A2B62:  LDRH            R0, [R5]
A2B64:  STR             R2, [SP,#0x60+var_28]
A2B66:  MOV             R2, R4
A2B68:  SUB.W           R11, R0, R1
A2B6C:  STR             R0, [SP,#0x60+var_24]
A2B6E:  MOV             R0, R8
A2B70:  MOV             R8, R0
A2B72:  MOV             R0, R2
A2B74:  MOV             R9, R2
A2B76:  LDR.W           R2, [R0,#4]!
A2B7A:  LDRH            R3, [R2]
A2B7C:  CMP             R11, R3
A2B7E:  BGE             loc_A2B70
A2B80:  LDR             R2, [SP,#0x60+var_24]
A2B82:  LDRH.W          R10, [R9]
A2B86:  STRD.W          R5, R9, [SP,#0x60+var_30]
A2B8A:  CMP             R2, R10
A2B8C:  BLS             loc_A2BEE
A2B8E:  MOVS            R3, #0
A2B90:  MOVS            R4, #0
A2B92:  MOV.W           R12, #0
A2B96:  B               loc_A2BC4
A2B98:  LDR.W           R9, [R9,#4]
A2B9C:  SUB.W           R0, R12, R0
A2BA0:  LDR             R2, [SP,#0x60+var_20]
A2BA2:  LDRH.W          R5, [R9]
A2BA6:  SUB.W           R6, R5, R10
A2BAA:  ADDS            R1, R6, R4
A2BAC:  MOV             R10, R5
A2BAE:  CMP             R1, R2
A2BB0:  LDRD.W          R2, R1, [SP,#0x60+var_24]
A2BB4:  IT GT
A2BB6:  SUBGT           R6, R1, R4
A2BB8:  MUL.W           LR, R6, R0
A2BBC:  ADD             R4, R6
A2BBE:  ADD             R3, LR
A2BC0:  CMP             R10, R2
A2BC2:  BCS             loc_A2BF4
A2BC4:  LDRH.W          R0, [R9,#2]
A2BC8:  CMP             R12, R0
A2BCA:  BGE             loc_A2B98
A2BCC:  LDR.W           R9, [R9,#4]
A2BD0:  SUB.W           R6, R0, R12
A2BD4:  CMP             R10, R11
A2BD6:  MOV             R12, R0
A2BD8:  MUL.W           LR, R6, R4
A2BDC:  LDRH.W          R5, [R9]
A2BE0:  ITE LT
A2BE2:  SUBLT.W         R6, R5, R11
A2BE6:  SUBGE.W         R6, R5, R10
A2BEA:  MOV             R10, R5
A2BEC:  B               loc_A2BBC
A2BEE:  MOV.W           R12, #0
A2BF2:  MOVS            R3, #0
A2BF4:  LDR             R0, [SP,#0x60+var_34]
A2BF6:  LDR             R2, [SP,#0x60+var_44]
A2BF8:  ADD             R0, R12
A2BFA:  CMP             R0, R2
A2BFC:  BGE             loc_A2C1C
A2BFE:  LDR             R2, [SP,#0x60+var_28]
A2C00:  CMP             R12, R2
A2C02:  BGT             loc_A2B58
A2C04:  LDR             R4, [SP,#0x60+var_2C]
A2C06:  ITT GE
A2C08:  LDRGE           R0, [SP,#0x60+var_3C]
A2C0A:  CMPGE           R3, R0
A2C0C:  BGE             loc_A2C22
A2C0E:  MOV             R2, R12
A2C10:  STR.W           R11, [SP,#0x60+var_48]
A2C14:  MOV             R0, R8
A2C16:  STRD.W          R3, R8, [SP,#0x60+var_3C]
A2C1A:  B               loc_A2B5A
A2C1C:  LDRD.W          R4, R2, [SP,#0x60+var_2C]
A2C20:  B               loc_A2B5A
A2C22:  BNE             loc_A2B5A
A2C24:  LDR             R0, [SP,#0x60+var_48]
A2C26:  CMP             R11, R0
A2C28:  BLT             loc_A2C0E
A2C2A:  B               loc_A2B5A
A2C2C:  LDR             R6, [SP,#0x60+var_38]
A2C2E:  CBZ             R6, loc_A2C74
A2C30:  LDR             R0, [SP,#0x60+var_40]
A2C32:  LDR             R1, [SP,#0x60+var_34]
A2C34:  LDR             R0, [R0,#4]
A2C36:  ADD             R1, R2
A2C38:  CMP             R1, R0
A2C3A:  BGT             loc_A2C74
A2C3C:  LDR             R0, [SP,#0x60+var_40]
A2C3E:  LDR.W           R12, [R0,#0x1C]
A2C42:  CMP.W           R12, #0
A2C46:  BEQ             loc_A2C74
A2C48:  LDR             R3, [SP,#0x60+var_40]
A2C4A:  MOV             LR, R2
A2C4C:  LDR.W           R2, [R12,#4]
A2C50:  MOVW            R9, #0xFFFF
A2C54:  LDR             R0, [SP,#0x60+var_48]
A2C56:  STR             R2, [R3,#0x1C]
A2C58:  LDR             R2, [R6]
A2C5A:  STRH.W          R0, [R12]
A2C5E:  LDRD.W          R8, R4, [SP,#0x60+var_5C]
A2C62:  LDRH            R3, [R2]
A2C64:  STRH.W          R1, [R12,#2]
A2C68:  CMP             R0, R3
A2C6A:  BLE             loc_A2C8A
A2C6C:  LDR.W           R6, [R2,#4]!
A2C70:  MOV             R0, R2
A2C72:  B               loc_A2C8E
A2C74:  LDR             R0, [SP,#0x60+var_50]
A2C76:  MOVW            R9, #0xFFFF
A2C7A:  LDRD.W          R8, R4, [SP,#0x60+var_5C]
A2C7E:  STRH.W          R9, [R0,#8]
A2C82:  STRH.W          R9, [R0,#0xA]
A2C86:  LDR             R1, [SP,#0x60+var_4C]
A2C88:  B               loc_A29E4
A2C8A:  MOV             R0, R6
A2C8C:  MOV             R6, R2
A2C8E:  STR.W           R12, [R0]
A2C92:  MOV             R3, R6
A2C94:  LDR             R0, [SP,#0x60+var_54]
A2C96:  LDR             R1, [SP,#0x60+var_48]
A2C98:  LDR.W           R5, [R3,#4]!
A2C9C:  ADD             R1, R0
A2C9E:  CBZ             R5, loc_A2CBE
A2CA0:  MOV             R2, R5
A2CA2:  LDRH            R5, [R5]
A2CA4:  CMP             R1, R5
A2CA6:  BLT             loc_A2CBE
A2CA8:  LDR             R0, [SP,#0x60+var_40]
A2CAA:  LDR             R5, [R0,#0x1C]
A2CAC:  STR             R5, [R3]
A2CAE:  MOV             R3, R2
A2CB0:  LDR.W           R5, [R3,#4]!
A2CB4:  STR             R6, [R0,#0x1C]
A2CB6:  MOV             R6, R2
A2CB8:  CMP             R5, #0
A2CBA:  BNE             loc_A2CA0
A2CBC:  B               loc_A2CC0
A2CBE:  MOV             R2, R6
A2CC0:  LDRH            R3, [R2]
A2CC2:  STR.W           R2, [R12,#4]
A2CC6:  CMP             R1, R3
A2CC8:  IT GT
A2CCA:  STRHGT          R1, [R2]
A2CCC:  LDR             R0, [SP,#0x60+var_50]
A2CCE:  LDR             R1, [SP,#0x60+var_48]
A2CD0:  STRH.W          LR, [R0,#0xA]
A2CD4:  STRH            R1, [R0,#8]
A2CD6:  B               loc_A2C86
A2CD8:  LDR             R3, =(sub_A52C8+1 - 0xA2CE4)
A2CDA:  MOV             R0, R8; base
A2CDC:  MOV             R1, R4; nmemb
A2CDE:  MOVS            R2, #0x10; size
A2CE0:  ADD             R3, PC; sub_A52C8 ; compar
A2CE2:  BLX             qsort
A2CE6:  LDR             R3, =(sub_A52F0+1 - 0xA2CF2)
A2CE8:  MOV             R0, R8
A2CEA:  MOV             R1, R4
A2CEC:  MOVS            R2, #0x10
A2CEE:  ADD             R3, PC; sub_A52F0
A2CF0:  ADD             SP, SP, #0x44 ; 'D'
A2CF2:  POP.W           {R8-R11}
A2CF6:  POP.W           {R4-R7,LR}
A2CFA:  B.W             sub_10C1B8
A2CFE:  LDR             R3, =(sub_A52F0+1 - 0xA2D0A)
A2D00:  MOV             R0, R8; base
A2D02:  MOV             R1, R4; nmemb
A2D04:  MOVS            R2, #0x10; size
A2D06:  ADD             R3, PC; sub_A52F0 ; compar
A2D08:  BLX             qsort
A2D0C:  CMP             R4, #1
A2D0E:  BLT             loc_A2D40
A2D10:  ADD.W           R0, R8, #8
A2D14:  B               loc_A2D30
A2D16:  LDRH            R1, [R0,#2]
A2D18:  SUB.W           R1, R1, R9
A2D1C:  CLZ.W           R1, R1
A2D20:  LSRS            R1, R1, #5
A2D22:  EOR.W           R1, R1, #1
A2D26:  STR             R1, [R0,#4]
A2D28:  SUBS            R4, #1
A2D2A:  ADD.W           R0, R0, #0x10
A2D2E:  BEQ             loc_A2D40
A2D30:  LDRH            R1, [R0]
A2D32:  CMP             R1, R9
A2D34:  BEQ             loc_A2D16
A2D36:  MOVS            R1, #0
A2D38:  B               loc_A2D22
A2D3A:  ALIGN 4
A2D3C:  DCD sub_A52C8+1 - 0xA29C6
A2D40:  ADD             SP, SP, #0x44 ; 'D'
A2D42:  POP.W           {R8-R11}
A2D46:  POP             {R4-R7,PC}
