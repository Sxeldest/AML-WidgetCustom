; =========================================================
; Game Engine Function: opus_packet_parse_impl
; Address            : 0x1A29EA - 0x1A2D48
; =========================================================

1A29EA:  PUSH            {R4-R7,LR}
1A29EC:  ADD             R7, SP, #0xC
1A29EE:  PUSH.W          {R8-R11}
1A29F2:  SUB             SP, SP, #0x14
1A29F4:  MOV             R4, R1
1A29F6:  MOV             R10, R2
1A29F8:  MOV             R11, R0
1A29FA:  MOV.W           R1, #0xFFFFFFFF
1A29FE:  CMP             R4, #0
1A2A00:  BLT.W           loc_1A2CEA
1A2A04:  LDR             R5, [R7,#arg_4]
1A2A06:  CMP             R5, #0
1A2A08:  BEQ.W           loc_1A2CEA
1A2A0C:  CMP             R4, #0
1A2A0E:  BEQ.W           loc_1A2CE6
1A2A12:  LDRB.W          LR, [R11]
1A2A16:  TST.W           LR, #0x80
1A2A1A:  BNE             loc_1A2A42
1A2A1C:  AND.W           R0, LR, #0x60 ; '`'
1A2A20:  CMP             R0, #0x60 ; '`'
1A2A22:  BNE             loc_1A2A5E
1A2A24:  MOVS.W          R0, LR,LSL#28
1A2A28:  MOV.W           R1, #0x64 ; 'd'
1A2A2C:  IT MI
1A2A2E:  MOVMI           R1, #0x32 ; '2'
1A2A30:  MOVW            R0, #0xBB80
1A2A34:  MOV             R8, R3
1A2A36:  MOV             R6, LR
1A2A38:  BLX             sub_220A6C
1A2A3C:  MOV             LR, R6
1A2A3E:  MOV             R3, R8
1A2A40:  B               loc_1A2A82
1A2A42:  UBFX.W          R0, LR, #3, #2
1A2A46:  MOVW            R1, #0xBB80
1A2A4A:  LSL.W           R0, R1, R0
1A2A4E:  MOV             R1, #0x51EB851F
1A2A56:  UMULL.W         R0, R1, R0, R1
1A2A5A:  LSRS            R0, R1, #7
1A2A5C:  B               loc_1A2A82
1A2A5E:  UBFX.W          R0, LR, #3, #2
1A2A62:  CMP             R0, #3
1A2A64:  BNE             loc_1A2A6C
1A2A66:  MOV.W           R0, #0xB40
1A2A6A:  B               loc_1A2A82
1A2A6C:  MOVW            R1, #0xBB80
1A2A70:  LSL.W           R0, R1, R0
1A2A74:  MOV             R1, #0x51EB851F
1A2A7C:  UMULL.W         R0, R1, R0, R1
1A2A80:  LSRS            R0, R1, #5
1A2A82:  ANDS.W          R1, LR, #3
1A2A86:  SUB.W           R2, R4, #1
1A2A8A:  ADD.W           R8, R11, #1
1A2A8E:  MOVW            R6, #0xFFFF
1A2A92:  BEQ             loc_1A2AAE
1A2A94:  CMP             R1, #2
1A2A96:  BEQ             loc_1A2ADA
1A2A98:  CMP             R1, #1
1A2A9A:  BNE             loc_1A2AEA
1A2A9C:  CMP.W           R10, #0
1A2AA0:  BEQ             loc_1A2B72
1A2AA2:  MOVS            R4, #2
1A2AA4:  MOVS            R1, #1
1A2AA6:  MOV.W           R9, #0
1A2AAA:  MOV             R0, R2
1A2AAC:  B               loc_1A2AC0
1A2AAE:  MOVS            R1, #0
1A2AB0:  MOVS            R4, #1
1A2AB2:  MOV             R0, R2
1A2AB4:  MOV.W           R9, #0
1A2AB8:  CMP.W           R10, #0
1A2ABC:  BEQ.W           loc_1A2CDE
1A2AC0:  STR             R0, [SP,#0x30+var_20]
1A2AC2:  MOV             R0, R1
1A2AC4:  ADD.W           R1, R5, R4,LSL#1
1A2AC8:  CMP             R2, #1
1A2ACA:  BLT             loc_1A2B60
1A2ACC:  LDRB.W          R6, [R8]
1A2AD0:  MOV             R12, R4
1A2AD2:  CMP             R6, #0xFB
1A2AD4:  BHI             loc_1A2B64
1A2AD6:  MOVS            R4, #1
1A2AD8:  B               loc_1A2B9E
1A2ADA:  CMP             R4, #2
1A2ADC:  BLT             loc_1A2B8C
1A2ADE:  LDRB.W          R0, [R8]
1A2AE2:  CMP             R0, #0xFB
1A2AE4:  BHI             loc_1A2B88
1A2AE6:  MOVS            R1, #1
1A2AE8:  B               loc_1A2C08
1A2AEA:  CMP             R4, #2
1A2AEC:  BLT.W           loc_1A2CE6
1A2AF0:  LDRB.W          R12, [R11,#1]
1A2AF4:  MOV             R1, #0xFFFFFFFC
1A2AF8:  ANDS.W          R6, R12, #0x3F ; '?'
1A2AFC:  BEQ.W           loc_1A2CEA
1A2B00:  MULS            R0, R6
1A2B02:  STR             R6, [SP,#0x30+var_20]
1A2B04:  CMP.W           R0, #0x1680
1A2B08:  BHI.W           loc_1A2CEA
1A2B0C:  ADD.W           R8, R11, #2
1A2B10:  SUBS            R4, #2
1A2B12:  MOV.W           R9, #0
1A2B16:  MOVW            R6, #0xFFFF
1A2B1A:  MOVS.W          R0, R12,LSL#25
1A2B1E:  BPL             loc_1A2B44
1A2B20:  CMP             R4, #1
1A2B22:  BLT.W           loc_1A2CE6
1A2B26:  LDRB.W          R0, [R8],#1
1A2B2A:  SUBS            R4, #1
1A2B2C:  CMP             R0, #0xFF
1A2B2E:  MOV             R1, R0
1A2B30:  IT EQ
1A2B32:  MOVEQ           R1, #0xFE
1A2B34:  CMP             R0, #0xFF
1A2B36:  ADD             R9, R1
1A2B38:  SUB.W           R4, R4, R1
1A2B3C:  BEQ             loc_1A2B20
1A2B3E:  CMP             R4, #0
1A2B40:  BLT.W           loc_1A2CE6
1A2B44:  MOVS            R0, #1
1A2B46:  EOR.W           R1, R0, R12,LSR#7
1A2B4A:  TST.W           R12, #0x80
1A2B4E:  BNE             loc_1A2C26
1A2B50:  CMP.W           R10, #0
1A2B54:  BEQ.W           loc_1A2C9E
1A2B58:  MOV             R0, R2
1A2B5A:  MOV             R2, R4
1A2B5C:  LDR             R4, [SP,#0x30+var_20]
1A2B5E:  B               loc_1A2AC0
1A2B60:  MOV             R12, R4
1A2B62:  B               loc_1A2B68
1A2B64:  CMP             R2, #2
1A2B66:  BGE             loc_1A2B94
1A2B68:  MOV.W           R4, #0xFFFFFFFF
1A2B6C:  MOVW            R6, #0xFFFF
1A2B70:  B               loc_1A2B9E
1A2B72:  LSLS            R0, R2, #0x1F
1A2B74:  BNE.W           loc_1A2CE6
1A2B78:  ADD.W           R0, R2, R2,LSR#31
1A2B7C:  MOVS            R4, #2
1A2B7E:  MOV.W           R9, #0
1A2B82:  ASRS            R0, R0, #1
1A2B84:  STRH            R0, [R5]
1A2B86:  B               loc_1A2CDE
1A2B88:  CMP             R4, #3
1A2B8A:  BGE             loc_1A2BFE
1A2B8C:  STRH            R6, [R5]
1A2B8E:  MOV             R1, #0xFFFFFFFC
1A2B92:  B               loc_1A2CEA
1A2B94:  LDRB.W          R4, [R8,#1]
1A2B98:  ADD.W           R6, R6, R4,LSL#2
1A2B9C:  MOVS            R4, #2
1A2B9E:  STRH.W          R6, [R1,#-2]
1A2BA2:  MOV             R10, R6
1A2BA4:  SXTH            R6, R6
1A2BA6:  CMP             R6, #0
1A2BA8:  MOV             R1, #0xFFFFFFFC
1A2BAC:  ITT GE
1A2BAE:  SUBGE           R2, R2, R4
1A2BB0:  CMPGE           R2, R6
1A2BB2:  BLT.W           loc_1A2CEA
1A2BB6:  ADD             R8, R4
1A2BB8:  CBZ             R0, loc_1A2BF2
1A2BBA:  MOV             R4, R12
1A2BBC:  SMULBB.W        R0, R4, R6
1A2BC0:  CMP             R0, R2
1A2BC2:  BGT.W           loc_1A2CE6
1A2BC6:  CMP             R4, #2
1A2BC8:  BLT.W           loc_1A2CFC
1A2BCC:  SUBS            R0, R4, #1
1A2BCE:  STRH.W          R10, [R5]
1A2BD2:  CMP             R0, #1
1A2BD4:  BEQ.W           loc_1A2CFC
1A2BD8:  ADDS            R1, R5, #2
1A2BDA:  SUBS            R2, R4, #2
1A2BDC:  MOV             R12, R4
1A2BDE:  MOVS            R4, #0
1A2BE0:  LDRH.W          R6, [R5,R0,LSL#1]
1A2BE4:  STRH.W          R6, [R1,R4,LSL#1]
1A2BE8:  ADDS            R4, #1
1A2BEA:  CMP             R2, R4
1A2BEC:  BNE             loc_1A2BE0
1A2BEE:  MOV             R4, R12
1A2BF0:  B               loc_1A2CFC
1A2BF2:  LDR             R0, [SP,#0x30+var_20]
1A2BF4:  ADDS            R1, R4, R6
1A2BF6:  MOV             R4, R12
1A2BF8:  CMP             R1, R0
1A2BFA:  BGT             loc_1A2CE6
1A2BFC:  B               loc_1A2CFC
1A2BFE:  LDRB.W          R1, [R11,#2]
1A2C02:  ADD.W           R0, R0, R1,LSL#2
1A2C06:  MOVS            R1, #2
1A2C08:  SUBS            R2, R2, R1
1A2C0A:  STRH            R0, [R5]
1A2C0C:  CMP             R2, R0
1A2C0E:  BLT             loc_1A2CE6
1A2C10:  ADD             R8, R1
1A2C12:  SUBS            R0, R2, R0
1A2C14:  MOVS            R1, #0
1A2C16:  MOVS            R4, #2
1A2C18:  MOV.W           R9, #0
1A2C1C:  CMP.W           R10, #0
1A2C20:  BNE.W           loc_1A2AC0
1A2C24:  B               loc_1A2CDE
1A2C26:  STR             R1, [SP,#0x30+var_28]
1A2C28:  LDR             R1, [SP,#0x30+var_20]
1A2C2A:  CMP             R1, #2
1A2C2C:  BCC             loc_1A2C8C
1A2C2E:  SUBS            R0, R1, #1
1A2C30:  STR             R0, [SP,#0x30+var_24]
1A2C32:  MOVS            R1, #0
1A2C34:  MOV             R0, R4
1A2C36:  MOV             R2, R4
1A2C38:  CMP             R2, #1
1A2C3A:  BLT             loc_1A2CD4
1A2C3C:  LDRB.W          R4, [R8]
1A2C40:  CMP             R4, #0xFB
1A2C42:  BHI             loc_1A2C4C
1A2C44:  MOV             R12, LR
1A2C46:  MOV.W           LR, #1
1A2C4A:  B               loc_1A2C62
1A2C4C:  CMP             R2, #2
1A2C4E:  BLT             loc_1A2CD4
1A2C50:  LDRB.W          R6, [R8,#1]
1A2C54:  MOV             R12, LR
1A2C56:  MOV.W           LR, #2
1A2C5A:  ADD.W           R4, R4, R6,LSL#2
1A2C5E:  MOVW            R6, #0xFFFF
1A2C62:  SUB.W           R2, R2, LR
1A2C66:  STRH.W          R4, [R5,R1,LSL#1]
1A2C6A:  CMP             R2, R4
1A2C6C:  BLT             loc_1A2CE6
1A2C6E:  SUBS            R0, R0, R4
1A2C70:  LDR             R4, [SP,#0x30+var_24]
1A2C72:  ADDS            R1, #1
1A2C74:  ADD             R8, LR
1A2C76:  SUB.W           R0, R0, LR
1A2C7A:  CMP             R1, R4
1A2C7C:  MOV             LR, R12
1A2C7E:  BLT             loc_1A2C38
1A2C80:  LDR             R4, [SP,#0x30+var_20]
1A2C82:  CMP             R0, #0
1A2C84:  LDR             R1, [SP,#0x30+var_28]
1A2C86:  BGE.W           loc_1A2AB8
1A2C8A:  B               loc_1A2CE6
1A2C8C:  MOV             R2, R4
1A2C8E:  MOV             R0, R4
1A2C90:  MOV             R4, R1
1A2C92:  LDR             R1, [SP,#0x30+var_28]
1A2C94:  CMP.W           R10, #0
1A2C98:  BNE.W           loc_1A2AC0
1A2C9C:  B               loc_1A2CDE
1A2C9E:  STR.W           LR, [SP,#0x30+var_24]
1A2CA2:  MOV             R0, R4
1A2CA4:  STRD.W          R3, R1, [SP,#0x30+var_2C]
1A2CA8:  LDR             R6, [SP,#0x30+var_20]
1A2CAA:  MOV             R1, R6
1A2CAC:  BLX             sub_220A40
1A2CB0:  MUL.W           R1, R0, R6
1A2CB4:  CMP             R1, R4
1A2CB6:  BNE             loc_1A2CE6
1A2CB8:  LDR.W           LR, [SP,#0x30+var_24]
1A2CBC:  CMP             R6, #2
1A2CBE:  BCC             loc_1A2CDA
1A2CC0:  LDR             R3, [SP,#0x30+var_2C]
1A2CC2:  SUBS            R1, R6, #1
1A2CC4:  MOV             R2, R5
1A2CC6:  STRH.W          R0, [R2],#2
1A2CCA:  SUBS            R1, #1
1A2CCC:  BNE             loc_1A2CC6
1A2CCE:  MOV             R2, R4
1A2CD0:  LDR             R4, [SP,#0x30+var_20]
1A2CD2:  B               loc_1A2C92
1A2CD4:  STRH.W          R6, [R5,R1,LSL#1]
1A2CD8:  B               loc_1A2CE6
1A2CDA:  LDR             R3, [SP,#0x30+var_2C]
1A2CDC:  MOV             R4, R6
1A2CDE:  MOVW            R1, #0x4FB
1A2CE2:  CMP             R0, R1
1A2CE4:  BLE             loc_1A2CF4
1A2CE6:  MOV             R1, #0xFFFFFFFC
1A2CEA:  MOV             R0, R1
1A2CEC:  ADD             SP, SP, #0x14
1A2CEE:  POP.W           {R8-R11}
1A2CF2:  POP             {R4-R7,PC}
1A2CF4:  ADD.W           R1, R5, R4,LSL#1
1A2CF8:  STRH.W          R0, [R1,#-2]
1A2CFC:  LDR             R0, [R7,#arg_8]
1A2CFE:  CMP             R0, #0
1A2D00:  ITT NE
1A2D02:  SUBNE.W         R1, R8, R11
1A2D06:  STRNE           R1, [R0]
1A2D08:  LDR             R0, [R7,#arg_C]
1A2D0A:  CMP             R4, #1
1A2D0C:  BLT             loc_1A2D30
1A2D0E:  LDR             R1, [R7,#arg_0]
1A2D10:  CBZ             R1, loc_1A2D24
1A2D12:  MOV             R2, R4
1A2D14:  STR.W           R8, [R1],#4
1A2D18:  SUBS            R2, #1
1A2D1A:  LDRSH.W         R6, [R5],#2
1A2D1E:  ADD             R8, R6
1A2D20:  BNE             loc_1A2D14
1A2D22:  B               loc_1A2D30
1A2D24:  MOV             R1, R4
1A2D26:  LDRSH.W         R2, [R5],#2
1A2D2A:  SUBS            R1, #1
1A2D2C:  ADD             R8, R2
1A2D2E:  BNE             loc_1A2D26
1A2D30:  CMP             R0, #0
1A2D32:  ITTT NE
1A2D34:  SUBNE.W         R1, R9, R11
1A2D38:  ADDNE           R1, R8
1A2D3A:  STRNE           R1, [R0]
1A2D3C:  CMP             R3, #0
1A2D3E:  MOV             R1, R4
1A2D40:  IT NE
1A2D42:  STRBNE.W        LR, [R3]
1A2D46:  B               loc_1A2CEA
