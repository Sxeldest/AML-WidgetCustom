; =========================================================
; Game Engine Function: sub_2309D2
; Address            : 0x2309D2 - 0x230C40
; =========================================================

2309D2:  PUSH            {R4-R7,LR}
2309D4:  ADD             R7, SP, #0xC
2309D6:  PUSH.W          {R8-R11}
2309DA:  SUB             SP, SP, #0x5C
2309DC:  MOV             R4, R0
2309DE:  MOVW            R0, #0x918C
2309E2:  ADD             R0, R4
2309E4:  STR             R0, [SP,#0x78+var_64]
2309E6:  MOVW            R0, #0x9188
2309EA:  ADD             R0, R4
2309EC:  STR             R0, [SP,#0x78+var_68]
2309EE:  MOVW            R0, #0x9190
2309F2:  ADD             R0, R4
2309F4:  STR             R0, [SP,#0x78+var_6C]
2309F6:  MOVW            R0, #0x92CC
2309FA:  ADD             R0, R4
2309FC:  STR             R0, [SP,#0x78+var_70]
2309FE:  MOVW            R0, #0x92C8
230A02:  ADD             R0, R4
230A04:  STR             R0, [SP,#0x78+var_74]
230A06:  MOVW            R0, #0x92D0
230A0A:  ADD             R0, R4
230A0C:  STR             R0, [SP,#0x78+var_58]
230A0E:  MOVW            R0, #0xB2A8
230A12:  ADD             R0, R4
230A14:  STR             R0, [SP,#0x78+var_5C]
230A16:  MOVW            R0, #0x92DC
230A1A:  ADD             R0, R4
230A1C:  STR             R0, [SP,#0x78+var_60]
230A1E:  MOVW            R0, #0xB350
230A22:  ADD             R0, R4
230A24:  STR             R0, [SP,#0x78+var_3C]
230A26:  MOVW            R0, #0xB2D8
230A2A:  ADD             R0, R4
230A2C:  STR             R0, [SP,#0x78+var_34]
230A2E:  MOVW            R0, #0x9330
230A32:  ADD             R0, R4
230A34:  STR             R0, [SP,#0x78+var_40]
230A36:  MOVW            R0, #0x937C
230A3A:  ADD             R0, R4
230A3C:  STR             R0, [SP,#0x78+var_44]
230A3E:  MOVW            R0, #0xB28C
230A42:  ADD             R0, R4
230A44:  STR             R0, [SP,#0x78+var_48]
230A46:  MOVW            R0, #0x9334
230A4A:  ADD             R0, R4
230A4C:  STR             R0, [SP,#0x78+var_4C]
230A4E:  MOVW            R0, #0x9380
230A52:  ADD             R0, R4
230A54:  STR             R0, [SP,#0x78+var_50]
230A56:  MOVW            R0, #0xB288
230A5A:  ADD             R0, R4
230A5C:  STR             R0, [SP,#0x78+var_54]
230A5E:  MOVW            R0, #0x92D8
230A62:  ADD             R0, R4
230A64:  STR             R0, [SP,#0x78+var_38]
230A66:  MOVW            R0, #0xB2D0
230A6A:  ADD             R0, R4
230A6C:  STR             R0, [SP,#0x78+var_24]
230A6E:  MOVW            R0, #0x9314
230A72:  ADD             R0, R4
230A74:  STR             R0, [SP,#0x78+var_20]
230A76:  MOVW            R0, #0x9318
230A7A:  ADD             R0, R4
230A7C:  STR             R0, [SP,#0x78+var_30]
230A7E:  MOVW            R0, #0x92D4
230A82:  ADD             R0, R4
230A84:  STR             R0, [SP,#0x78+var_2C]
230A86:  MOVW            R0, #0xB2C8
230A8A:  ADD             R0, R4
230A8C:  STR             R0, [SP,#0x78+var_28]
230A8E:  MOVW            R0, #0xB2CC
230A92:  ADD.W           R10, R4, R0
230A96:  MOVW            R0, #0xB46C
230A9A:  LDR.W           R8, [R4,R0]
230A9E:  ADD             R0, R4
230AA0:  STR             R0, [SP,#0x78+var_78]
230AA2:  B               loc_230B50
230AA4:  LDR             R0, [SP,#0x78+var_50]
230AA6:  LDR             R1, [SP,#0x78+var_54]
230AA8:  LDR             R0, [R0]
230AAA:  LDR             R1, [R1]
230AAC:  ADD             R0, R1
230AAE:  LDR             R1, [SP,#0x78+var_4C]
230AB0:  SUB.W           R0, R0, #0x200; void *
230AB4:  STR             R0, [R1]
230AB6:  LDR             R1, [SP,#0x78+var_44]
230AB8:  LDR             R2, [SP,#0x78+var_48]
230ABA:  LDR             R1, [R1]
230ABC:  LDR             R2, [R2]
230ABE:  ADD             R1, R2
230AC0:  MOV.W           R2, #0x200; size_t
230AC4:  SUB.W           R1, R1, #0x200; void *
230AC8:  BLX             memcpy_1
230ACC:  LDR             R0, [SP,#0x78+var_40]
230ACE:  STR             R5, [R0]
230AD0:  B               loc_230B50
230AD2:  MOV.W           R1, #0x4000
230AD6:  LDR             R0, [SP,#0x78+var_68]
230AD8:  STR             R1, [R0]
230ADA:  LDR             R0, [SP,#0x78+var_64]
230ADC:  STR             R1, [R0]
230ADE:  LDR             R0, [SP,#0x78+var_28]
230AE0:  STR.W           R9, [R0]
230AE4:  STR.W           R9, [R10]
230AE8:  LDR             R0, [SP,#0x78+var_28]
230AEA:  STR.W           R9, [R0]
230AEE:  MOV             R0, R4
230AF0:  BLX             j_INT123_read_frame
230AF4:  ADDS.W          R1, R0, #0xA
230AF8:  BEQ             loc_230BE6
230AFA:  CMP             R0, #0
230AFC:  BLE             loc_230BEC
230AFE:  LDR             R0, [SP,#0x78+var_30]
230B00:  MOVS            R5, #0
230B02:  LDR             R1, [SP,#0x78+var_2C]
230B04:  MOV             R2, R0
230B06:  LDR             R0, [R2]
230B08:  LDR             R1, [R1]
230B0A:  ADDS            R0, #1
230B0C:  STR             R0, [R2]
230B0E:  LDR             R2, [SP,#0x78+var_24]
230B10:  CMP             R1, #1
230B12:  LDR.W           R9, [R2]
230B16:  LDR             R2, [SP,#0x78+var_20]
230B18:  LDR.W           R11, [R2]
230B1C:  IT GT
230B1E:  MOVGT.W         R8, #1
230B22:  CMP             R11, R9
230B24:  BLT             loc_230B36
230B26:  LDR             R1, [SP,#0x78+var_3C]
230B28:  LDR             R1, [R1]
230B2A:  CMP             R1, #0
230B2C:  BEQ             loc_230C10
230B2E:  BLX             __aeabi_idivmod
230B32:  CMP             R1, #0
230B34:  BEQ             loc_230C10
230B36:  LDR.W           R0, [R10]
230B3A:  CBZ             R0, loc_230B48
230B3C:  CMP             R11, R9
230B3E:  BGE             loc_230B48
230B40:  LDR             R0, [SP,#0x78+var_34]
230B42:  LDR             R0, [R0]
230B44:  CMP             R11, R0
230B46:  BGE             loc_230B50
230B48:  LDR             R0, [SP,#0x78+var_38]
230B4A:  LDR             R0, [R0]
230B4C:  CMP             R0, #3
230B4E:  BEQ             loc_230AA4
230B50:  LDR.W           R0, [R10]
230B54:  MOV.W           R9, #0
230B58:  CMP             R0, #0
230B5A:  BEQ             loc_230AE8
230B5C:  LDR             R0, [SP,#0x78+var_20]
230B5E:  LDR             R1, [SP,#0x78+var_24]
230B60:  LDR             R0, [R0]
230B62:  LDR             R1, [R1]
230B64:  CMP             R0, R1
230B66:  BGE             loc_230AE8
230B68:  LDR             R1, [SP,#0x78+var_34]
230B6A:  LDR             R1, [R1]
230B6C:  CMP             R0, R1
230B6E:  BLT             loc_230AE8
230B70:  LDR             R0, [SP,#0x78+var_60]
230B72:  LDR             R1, [R0]
230B74:  MOV             R0, R4
230B76:  BLX             R1
230B78:  LDR             R0, [SP,#0x78+var_5C]
230B7A:  STR.W           R9, [R0]
230B7E:  LDR             R0, [SP,#0x78+var_58]
230B80:  LDR             R0, [R0]
230B82:  CMP             R0, #3
230B84:  BNE             loc_230ADE
230B86:  LDR             R0, [SP,#0x78+var_20]
230B88:  LDR             R0, [R0]
230B8A:  CMP             R0, #0
230B8C:  BLT             loc_230AD2
230B8E:  LDR             R1, [SP,#0x78+var_6C]
230B90:  ADDS            R0, #1
230B92:  MOVW            R5, #0x7FFF
230B96:  LDR             R2, [R1]
230B98:  LDR             R1, [SP,#0x78+var_38]
230B9A:  LDR             R3, [R1]
230B9C:  MOV.W           R1, #0x4000
230BA0:  LDRD.W          LR, R12, [SP,#0x78+var_74]
230BA4:  CMP             R3, #1
230BA6:  BEQ             loc_230BB2
230BA8:  CMP             R3, #2
230BAA:  BNE             loc_230BB8
230BAC:  MOV.W           R6, #0x480
230BB0:  B               loc_230BCC
230BB2:  MOV.W           R6, #0x180
230BB6:  B               loc_230BCC
230BB8:  LDR.W           R6, [LR]
230BBC:  CMP             R6, #0
230BBE:  ITT EQ
230BC0:  LDREQ.W         R6, [R12]
230BC4:  CMPEQ           R6, #0
230BC6:  BEQ             loc_230BAC
230BC8:  MOV.W           R6, #0x240
230BCC:  MLA.W           R1, R6, R2, R1
230BD0:  SUBS            R0, #1
230BD2:  MOV.W           R6, R1,ASR#31
230BD6:  ADD.W           R6, R1, R6,LSR#17
230BDA:  BIC.W           R6, R6, R5
230BDE:  SUB.W           R1, R1, R6
230BE2:  BNE             loc_230BA4
230BE4:  B               loc_230AD6
230BE6:  MOV             R0, #0xFFFFFFF6
230BEA:  B               loc_230C38
230BEC:  BEQ             loc_230BFE
230BEE:  MOVW            R0, #0xB2E4
230BF2:  MOVW            R1, #0xB2E8
230BF6:  LDR             R0, [R4,R0]
230BF8:  LDR             R1, [R4,R1]
230BFA:  CMP             R1, R0
230BFC:  BNE             loc_230C30
230BFE:  LDR             R0, [SP,#0x78+var_20]
230C00:  MOVW            R1, #0x9368
230C04:  LDR             R0, [R0]
230C06:  ADDS            R0, #1
230C08:  STR             R0, [R4,R1]
230C0A:  MOV             R0, #0xFFFFFFF4
230C0E:  B               loc_230C38
230C10:  CMP.W           R8, #0
230C14:  BEQ             loc_230C36
230C16:  MOV             R0, R4
230C18:  BLX             j_INT123_decode_update
230C1C:  CMP             R0, #0
230C1E:  BLT             loc_230C30
230C20:  LDR             R1, [SP,#0x78+var_78]
230C22:  MOVS            R0, #0
230C24:  STR             R0, [R1]
230C26:  LDR             R1, [R4]
230C28:  CMP             R1, #0
230C2A:  IT NE
230C2C:  STRNE           R0, [R4]
230C2E:  B               loc_230C38
230C30:  MOV.W           R0, #0xFFFFFFFF
230C34:  B               loc_230C38
230C36:  MOVS            R0, #0
230C38:  ADD             SP, SP, #0x5C ; '\'
230C3A:  POP.W           {R8-R11}
230C3E:  POP             {R4-R7,PC}
