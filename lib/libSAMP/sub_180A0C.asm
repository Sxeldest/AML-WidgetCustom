; =========================================================
; Game Engine Function: sub_180A0C
; Address            : 0x180A0C - 0x180BAE
; =========================================================

180A0C:  PUSH            {R4-R7,LR}
180A0E:  ADD             R7, SP, #0xC
180A10:  PUSH.W          {R8-R10}
180A14:  SUB             SP, SP, #8
180A16:  MOV             R4, R0
180A18:  LDR             R0, [R0]
180A1A:  LDR             R1, [R0,#0x2C]
180A1C:  MOV             R0, R4
180A1E:  BLX             R1
180A20:  CMP             R0, #0
180A22:  BEQ.W           loc_180BA2
180A26:  LDR.W           R0, [R4,#0x384]
180A2A:  CBZ             R0, loc_180A48
180A2C:  MOVS            R5, #0
180A2E:  LDR.W           R0, [R4,#0x380]
180A32:  LDR.W           R0, [R0,R5,LSL#2]
180A36:  LDR             R1, [R0]
180A38:  LDR             R2, [R1,#0xC]
180A3A:  MOV             R1, R4
180A3C:  BLX             R2
180A3E:  LDR.W           R0, [R4,#0x384]
180A42:  ADDS            R5, #1
180A44:  CMP             R5, R0
180A46:  BCC             loc_180A2E
180A48:  LDR             R6, =(unk_381C10 - 0x180A5A)
180A4A:  ADD.W           R9, R4, #0x9C0
180A4E:  ADD.W           R8, SP, #0x20+var_1C
180A52:  MOV.W           R10, #0
180A56:  ADD             R6, PC; unk_381C10
180A58:  MOV             R0, R6; mutex
180A5A:  BLX             EnterCriticalSection_0
180A5E:  LDR.W           R1, [R4,#0x9A8]
180A62:  LDR.W           R0, [R4,#0x9B4]
180A66:  CMP             R1, R0
180A68:  ITT NE
180A6A:  LDRBNE          R2, [R1,#4]
180A6C:  CMPNE           R2, #0
180A6E:  BNE             loc_180B2E
180A70:  MOV             R0, R6; mutex
180A72:  BLX             LeaveCriticalSection_0
180A76:  LDR.W           R1, [R4,#0x9C4]
180A7A:  MOVS            R5, #0
180A7C:  LDR.W           R3, [R4,#0x9C8]
180A80:  MOVS            R2, #0
180A82:  LDR.W           R0, [R4,#0x9CC]
180A86:  CMP             R3, R1
180A88:  SUB.W           R3, R3, R1
180A8C:  IT CC
180A8E:  NEGCC           R5, R0
180A90:  CMP             R3, R5
180A92:  BEQ.W           loc_180BA4
180A96:  ADDS            R1, #1
180A98:  LDR.W           R2, [R4,#0x9C0]
180A9C:  SUBS            R3, R1, R0
180A9E:  IT NE
180AA0:  MOVNE           R3, R1
180AA2:  STR.W           R3, [R4,#0x9C4]
180AA6:  CMP             R3, #0
180AA8:  IT EQ
180AAA:  MOVEQ           R3, R0
180AAC:  ADD.W           R0, R2, R3,LSL#2
180AB0:  LDR.W           R2, [R0,#-4]
180AB4:  STR             R2, [SP,#0x20+var_1C]
180AB6:  LDR             R0, [R2,#0xC]
180AB8:  CMP             R0, #5
180ABA:  BCC             loc_180AD4
180ABC:  LDR             R0, [R2,#0x14]
180ABE:  LDRB            R1, [R0]
180AC0:  CMP             R1, #0x28 ; '('
180AC2:  BNE             loc_180AD4
180AC4:  LDRD.W          R5, R3, [R2,#4]
180AC8:  ADDS            R1, R0, #1
180ACA:  MOV             R0, R4
180ACC:  MOV             R2, R5
180ACE:  BL              sub_180DEC
180AD2:  LDR             R2, [SP,#0x20+var_1C]
180AD4:  LDR             R1, [R2,#0x14]
180AD6:  LDRB            R0, [R1]
180AD8:  CMP             R0, #0x15
180ADA:  BNE             loc_180AFE
180ADC:  LDRD.W          R3, R0, [R2,#4]
180AE0:  LDR             R2, [R2,#0xC]
180AE2:  STR             R0, [SP,#0x20+var_20]
180AE4:  MOV             R0, R4
180AE6:  BL              sub_180E50
180AEA:  LDR             R0, [R4]
180AEC:  LDR             R1, [SP,#0x20+var_1C]
180AEE:  LDR             R2, [R0,#0x40]
180AF0:  MOV             R0, R4
180AF2:  BLX             R2
180AF4:  MOVS            R2, #0
180AF6:  STR             R2, [SP,#0x20+var_1C]
180AF8:  CMP             R2, #0
180AFA:  BEQ             loc_180A58
180AFC:  B               loc_180BA4
180AFE:  LDR.W           R0, [R4,#0x384]
180B02:  CMP             R0, #0
180B04:  BEQ             loc_180BA4
180B06:  MOVS            R5, #0
180B08:  LDR.W           R0, [R4,#0x380]
180B0C:  LDR.W           R0, [R0,R5,LSL#2]
180B10:  LDR             R1, [R0]
180B12:  LDR             R3, [R1,#0x10]
180B14:  MOV             R1, R4
180B16:  BLX             R3
180B18:  CMP             R0, #2
180B1A:  BEQ             loc_180AF4
180B1C:  CMP             R0, #0
180B1E:  BEQ             loc_180AEA
180B20:  LDR             R2, [SP,#0x20+var_1C]
180B22:  ADDS            R5, #1
180B24:  LDR.W           R0, [R4,#0x384]
180B28:  CMP             R5, R0
180B2A:  BCC             loc_180B08
180B2C:  B               loc_180AF8
180B2E:  LDR             R5, [R1,#8]
180B30:  CMP             R1, #0
180B32:  STR.W           R5, [R4,#0x9A8]
180B36:  BEQ             loc_180A70
180B38:  LDR.W           R2, [R4,#0x9B0]
180B3C:  CMP             R5, R0
180B3E:  LDR.W           R3, [R4,#0x9B8]
180B42:  LDR             R1, [R1]
180B44:  STRB.W          R10, [R2,#4]
180B48:  ADD.W           R3, R3, #1
180B4C:  LDR             R2, [R2,#8]
180B4E:  STR.W           R3, [R4,#0x9B8]
180B52:  STR.W           R2, [R4,#0x9B0]
180B56:  STR             R1, [SP,#0x20+var_1C]
180B58:  BEQ             loc_180B98
180B5A:  LDRB            R0, [R5,#4]
180B5C:  CBZ             R0, loc_180B98
180B5E:  LDR             R0, [R5,#8]
180B60:  MOV             R1, R8
180B62:  STR.W           R0, [R4,#0x9A8]
180B66:  MOV             R0, R9
180B68:  BL              sub_180D28
180B6C:  CMP             R5, #0
180B6E:  BEQ.W           loc_180A70
180B72:  ADD.W           R3, R4, #0x9B0
180B76:  LDR.W           R0, [R4,#0x9A8]
180B7A:  LDR             R5, [R5]
180B7C:  LDM             R3, {R1-R3}
180B7E:  CMP             R0, R2
180B80:  ADD.W           R3, R3, #1
180B84:  STRB.W          R10, [R1,#4]
180B88:  LDR             R1, [R1,#8]
180B8A:  STR             R5, [SP,#0x20+var_1C]
180B8C:  MOV             R5, R0
180B8E:  STR.W           R3, [R4,#0x9B8]
180B92:  STR.W           R1, [R4,#0x9B0]
180B96:  BNE             loc_180B5A
180B98:  MOV             R0, R9
180B9A:  MOV             R1, R8
180B9C:  BL              sub_180D28
180BA0:  B               loc_180A70
180BA2:  MOVS            R2, #0
180BA4:  MOV             R0, R2
180BA6:  ADD             SP, SP, #8
180BA8:  POP.W           {R8-R10}
180BAC:  POP             {R4-R7,PC}
