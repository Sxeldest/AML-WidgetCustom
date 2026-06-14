; =========================================================
; Game Engine Function: sub_17598C
; Address            : 0x17598C - 0x177AE6
; =========================================================

17598C:  PUSH            {R4-R7,LR}
17598E:  ADD             R7, SP, #0xC
175990:  PUSH.W          {R8-R11}
175994:  SUB             SP, SP, #4
175996:  VPUSH           {D8-D15}
17599A:  SUB.W           SP, SP, #0x348
17599E:  MOV             R6, R0
1759A0:  BL              sub_177B4C
1759A4:  VMOV.I32        Q8, #0
1759A8:  ADD.W           R0, R6, #0x1C
1759AC:  STR             R0, [SP,#0x3A8+var_32C]
1759AE:  MOVS            R1, #0
1759B0:  STR             R1, [R6,#8]
1759B2:  VST1.32         {D16-D17}, [R0]!
1759B6:  STR             R1, [R0]
1759B8:  MOV             R0, R6
1759BA:  STR             R1, [R6,#0x30]
1759BC:  BL              sub_175046
1759C0:  LDR             R0, [R6,#0x4C]
1759C2:  STR             R0, [SP,#0x3A8+var_2DC]
1759C4:  CMP             R0, #1
1759C6:  BLT             loc_1759DC
1759C8:  CMP             R0, #8
1759CA:  IT LS
1759CC:  MOVLS           R0, #8
1759CE:  MOVS            R1, #0xC4
1759D0:  MULS            R0, R1
1759D2:  MOVS            R1, #0
1759D4:  STR             R1, [SP,#0x3A8+var_2E4]
1759D6:  BL              sub_1654B0
1759DA:  B               loc_1759DE
1759DC:  MOVS            R0, #0
1759DE:  STR             R0, [SP,#0x3A8+var_2E4]
1759E0:  LDR             R0, [R6,#0x34]
1759E2:  STR             R0, [SP,#0x3A8+var_2CC]
1759E4:  CMP             R0, #1
1759E6:  BLT             loc_1759FC
1759E8:  CMP             R0, #8
1759EA:  IT LS
1759EC:  MOVLS           R0, #8
1759EE:  ADD.W           R0, R0, R0,LSL#1
1759F2:  LSLS            R0, R0, #3
1759F4:  BL              sub_1654B0
1759F8:  MOV             R4, R0
1759FA:  B               loc_1759FE
1759FC:  MOVS            R4, #0
1759FE:  LDR             R0, [SP,#0x3A8+var_2DC]
175A00:  MOVS            R5, #0xC4
175A02:  MUL.W           R1, R0, R5; n
175A06:  LDR             R0, [SP,#0x3A8+var_2E4]; int
175A08:  BLX             sub_22178C
175A0C:  LDR             R0, [SP,#0x3A8+var_2CC]
175A0E:  STR             R4, [SP,#0x3A8+var_2C0]
175A10:  ADD.W           R0, R0, R0,LSL#1
175A14:  LSLS            R1, R0, #3; n
175A16:  MOV             R0, R4; int
175A18:  BLX             sub_22178C
175A1C:  LDR             R0, [R6,#0x4C]
175A1E:  STR             R6, [SP,#0x3A8+var_2B8]
175A20:  CMP             R0, #1
175A22:  BLT.W           loc_175F2E
175A26:  VMOV.I32        Q4, #0
175A2A:  MOV.W           R2, #0xFFFFFFFF
175A2E:  MOV.W           LR, #0
175A32:  LDR             R0, [SP,#0x3A8+var_2E4]
175A34:  MLA.W           R3, LR, R5, R0
175A38:  LDR             R1, [R6,#0x34]
175A3A:  LDR             R0, [R6,#0x54]
175A3C:  CMP             R1, #1
175A3E:  STR             R3, [SP,#0x3A8+var_2A4]
175A40:  STR.W           R2, [R3,#0xA0]!
175A44:  STR             R3, [SP,#0x3A8+var_2A8]
175A46:  BLT.W           loc_175F20
175A4A:  MOVS            R2, #0x74 ; 't'
175A4C:  MLA.W           R6, LR, R2, R0
175A50:  LDR             R2, [SP,#0x3A8+var_2B8]
175A52:  LDR             R3, [R2,#0x3C]
175A54:  MOVS            R2, #0
175A56:  STR             R6, [SP,#0x3A8+var_2AC]
175A58:  LDR             R6, [R6,#0x70]
175A5A:  LDR.W           R5, [R3,R2,LSL#2]
175A5E:  CMP             R6, R5
175A60:  BEQ             loc_175A6A
175A62:  ADDS            R2, #1
175A64:  CMP             R2, R1
175A66:  BLT             loc_175A5A
175A68:  B               loc_175F20
175A6A:  MOVS            R1, #0x74 ; 't'
175A6C:  MOV.W           R11, #0xFFFFFFFF
175A70:  MUL.W           R1, LR, R1
175A74:  LDR.W           R10, [R0,R1]
175A78:  LDR             R0, [SP,#0x3A8+var_2A8]
175A7A:  STR             R2, [R0]
175A7C:  LDR             R0, [SP,#0x3A8+var_2AC]
175A7E:  LDRB.W          R1, [R10]
175A82:  LDR             R0, [R0,#0xC]
175A84:  CMP             R1, #0x4E ; 'N'
175A86:  BGT             loc_175A96
175A88:  CBZ             R1, loc_175AC4
175A8A:  CMP             R1, #0x31 ; '1'
175A8C:  BNE             loc_175AF0
175A8E:  LDRB.W          R1, [R10,#1]
175A92:  CBNZ            R1, loc_175AEC
175A94:  B               loc_175ACC
175A96:  CMP             R1, #0x4F ; 'O'
175A98:  BEQ             loc_175ADA
175A9A:  CMP             R1, #0x74 ; 't'
175A9C:  BNE             loc_175AF0
175A9E:  LDRB.W          R1, [R10,#1]
175AA2:  CMP             R1, #0x72 ; 'r'
175AA4:  BEQ.W           loc_175E8C
175AA8:  CMP             R1, #0x74 ; 't'
175AAA:  BEQ.W           loc_175ECC
175AAE:  CMP             R1, #0x79 ; 'y'
175AB0:  ITT EQ
175AB2:  LDRBEQ.W        R1, [R10,#2]
175AB6:  CMPEQ           R1, #0x70 ; 'p'
175AB8:  BNE             loc_175AEC
175ABA:  LDRB.W          R1, [R10,#3]
175ABE:  CMP             R1, #0x31 ; '1'
175AC0:  BNE             loc_175AEC
175AC2:  B               loc_175F14
175AC4:  LDRB.W          R1, [R10,#1]
175AC8:  CMP             R1, #1
175ACA:  BNE             loc_175AEC
175ACC:  LDRB.W          R1, [R10,#2]
175AD0:  CBNZ            R1, loc_175AEC
175AD2:  LDRB.W          R1, [R10,#3]
175AD6:  CBNZ            R1, loc_175AEC
175AD8:  B               loc_175F14
175ADA:  LDRB.W          R1, [R10,#1]
175ADE:  CMP             R1, #0x54 ; 'T'
175AE0:  ITT EQ
175AE2:  LDRBEQ.W        R1, [R10,#2]
175AE6:  CMPEQ           R1, #0x54 ; 'T'
175AE8:  BEQ.W           loc_175F0A
175AEC:  MOV.W           R11, #0xFFFFFFFF
175AF0:  LDR             R2, =(aCmap - 0x175AFA); "cmap" ...
175AF2:  MOVS            R0, #0
175AF4:  LDR             R6, [SP,#0x3A8+var_2A4]
175AF6:  ADD             R2, PC; "cmap"
175AF8:  STR.W           LR, [SP,#0x3A8+var_2D0]
175AFC:  MOV             R1, R6
175AFE:  MOV             R9, R6
175B00:  MOV             R8, R6
175B02:  STR.W           R0, [R1,#0x3C]!
175B06:  STR             R1, [SP,#0x3A8+var_2D8]
175B08:  MOV             R1, R11
175B0A:  STR.W           R0, [R9,#0x38]!
175B0E:  STR.W           R0, [R8,#0x34]!
175B12:  MOV             R0, R10
175B14:  STRD.W          R10, R11, [R6,#4]
175B18:  BL              sub_178E38
175B1C:  STR             R0, [SP,#0x3A8+var_2BC]
175B1E:  MOV             R0, R10
175B20:  LDR             R2, =(aLoca - 0x175B28); "loca" ...
175B22:  MOV             R1, R11
175B24:  ADD             R2, PC; "loca"
175B26:  BL              sub_178E38
175B2A:  LDR             R2, =(aHead - 0x175B34); "head" ...
175B2C:  MOV             R1, R11
175B2E:  STR             R0, [SP,#0x3A8+var_2D4]
175B30:  ADD             R2, PC; "head"
175B32:  STR             R0, [R6,#0x10]
175B34:  MOV             R0, R10
175B36:  BL              sub_178E38
175B3A:  STR             R0, [SP,#0x3A8+var_2C4]
175B3C:  MOV             R1, R11
175B3E:  STR.W           R0, [R6,#0x14]!
175B42:  MOV             R0, R10
175B44:  LDR             R2, =(aGlyf - 0x175B4A); "glyf" ...
175B46:  ADD             R2, PC; "glyf"
175B48:  BL              sub_178E38
175B4C:  LDR             R2, =(aHhea - 0x175B56); "hhea" ...
175B4E:  MOV             R1, R11
175B50:  STR             R0, [SP,#0x3A8+var_2C8]
175B52:  ADD             R2, PC; "hhea"
175B54:  STR             R0, [R6,#4]
175B56:  MOV             R0, R10
175B58:  BL              sub_178E38
175B5C:  LDR             R2, =(aHmtx - 0x175B68); "hmtx" ...
175B5E:  MOV             R4, R0
175B60:  STR             R0, [R6,#8]
175B62:  MOV             R0, R10
175B64:  ADD             R2, PC; "hmtx"
175B66:  MOV             R1, R11
175B68:  BL              sub_178E38
175B6C:  LDR             R2, =(aKern - 0x175B78); "kern" ...
175B6E:  MOV             R5, R0
175B70:  STR             R0, [R6,#0xC]
175B72:  MOV             R0, R10
175B74:  ADD             R2, PC; "kern"
175B76:  MOV             R1, R11
175B78:  BL              sub_178E38
175B7C:  STR             R0, [R6,#0x10]
175B7E:  MOV             R0, R10
175B80:  LDR             R2, =(aGpos - 0x175B8E); "GPOS" ...
175B82:  MOV             R1, R11
175B84:  STR.W           R10, [SP,#0x3A8+var_2B0]
175B88:  MOV             R10, R6
175B8A:  ADD             R2, PC; "GPOS"
175B8C:  STR.W           R11, [SP,#0x3A8+var_2B4]
175B90:  LDR.W           R11, [SP,#0x3A8+var_2BC]
175B94:  BL              sub_178E38
175B98:  STR             R0, [R6,#0x14]
175B9A:  CMP.W           R11, #0
175B9E:  ITT NE
175BA0:  LDRNE           R0, [SP,#0x3A8+var_2C4]
175BA2:  CMPNE           R0, #0
175BA4:  BEQ.W           loc_175F20
175BA8:  CMP             R4, #0
175BAA:  BEQ.W           loc_175F20
175BAE:  CMP             R5, #0
175BB0:  BEQ.W           loc_175F20
175BB4:  LDR             R0, [SP,#0x3A8+var_2C8]
175BB6:  CBZ             R0, loc_175BC2
175BB8:  LDR             R0, [SP,#0x3A8+var_2D4]
175BBA:  CMP             R0, #0
175BBC:  BNE.W           loc_175D96
175BC0:  B               loc_175F20
175BC2:  STR.W           R10, [SP,#0x3A8+var_2C4]
175BC6:  MOVS            R0, #2
175BC8:  LDR             R2, =(aCff - 0x175BD2); "CFF " ...
175BCA:  LDR             R6, [SP,#0x3A8+var_2B0]
175BCC:  LDR             R1, [SP,#0x3A8+var_2B4]
175BCE:  ADD             R2, PC; "CFF "
175BD0:  STR             R0, [SP,#0x3A8+var_64]
175BD2:  MOVS            R0, #0
175BD4:  STR             R0, [SP,#0x3A8+var_26C]
175BD6:  STRD.W          R0, R0, [SP,#0x3A8+var_274]
175BDA:  MOV             R0, R6
175BDC:  BL              sub_178E38
175BE0:  ADD             R4, SP, #0x3A8+var_2A0
175BE2:  ADD.W           R10, SP, #0x3A8+var_268
175BE6:  CMP             R0, #0
175BE8:  BEQ.W           loc_175F20
175BEC:  ADD             R0, R6
175BEE:  STR.W           R0, [R8]
175BF2:  MOVS            R0, #0
175BF4:  LDR             R2, [SP,#0x3A8+var_2D8]
175BF6:  STR.W           R0, [R9]
175BFA:  MOV.W           R1, #0x20000000
175BFE:  VLDR            D16, [R8]
175C02:  LDR.W           R9, [SP,#0x3A8+var_2A4]
175C06:  STR             R1, [R2]
175C08:  LDR.W           R1, [R8,#8]
175C0C:  VSTR            D16, [SP,#0x3A8+var_268]
175C10:  LDR             R3, [SP,#0x3A8+var_268+4]
175C12:  STR.W           R0, [R9,#0x78]!
175C16:  SUB.W           R2, R9, #0x14
175C1A:  STR             R2, [SP,#0x3A8+var_2C8]
175C1C:  VST1.32         {D8-D9}, [R2]!
175C20:  STR             R0, [R2]
175C22:  ADDS            R2, R3, #2
175C24:  CMP             R1, R2
175C26:  STR             R1, [SP,#0x3A8+var_260]
175C28:  IT LT
175C2A:  MOVLT           R2, R1
175C2C:  CMN.W           R3, #2
175C30:  IT LT
175C32:  MOVLT           R2, R1
175C34:  CMP             R2, R1
175C36:  ITT LT
175C38:  LDRLT           R0, [SP,#0x3A8+var_268]
175C3A:  LDRBLT          R0, [R0,R2]
175C3C:  CMP             R1, R0
175C3E:  IT LT
175C40:  MOVLT           R0, R1
175C42:  STR             R0, [SP,#0x3A8+var_268+4]
175C44:  MOV             R0, R4
175C46:  MOV             R1, R10
175C48:  BL              sub_178E84
175C4C:  MOV             R0, R4
175C4E:  MOV             R1, R10
175C50:  BL              sub_178E84
175C54:  ADD             R3, SP, #0x3A8+var_2A0
175C56:  ADD             R6, SP, #0x3A8+var_290
175C58:  MOVS            R0, #0
175C5A:  LDM             R3, {R1-R3}
175C5C:  STR             R0, [SP,#0x3A8+var_3A8]
175C5E:  MOV             R0, R6
175C60:  BL              sub_178F3A
175C64:  MOV             R0, R4
175C66:  MOV             R1, R10
175C68:  BL              sub_178E84
175C6C:  MOV             R0, R4
175C6E:  MOV             R1, R10
175C70:  BL              sub_178E84
175C74:  LDR             R5, [SP,#0x3A8+var_2A4]
175C76:  ADD             R3, SP, #0x3A8+var_26C
175C78:  VLDR            D16, [SP,#0x3A8+var_2A0]
175C7C:  MOVS            R1, #0x11
175C7E:  LDR             R0, [SP,#0x3A8+var_298]
175C80:  MOVS            R2, #1
175C82:  STR             R0, [R5,#0x54]
175C84:  MOV             R0, R6
175C86:  VSTR            D16, [R5,#0x4C]
175C8A:  BL              sub_178FFE
175C8E:  ADD             R3, SP, #0x3A8+var_64
175C90:  MOV             R0, R6
175C92:  MOV.W           R1, #0x106
175C96:  MOVS            R2, #1
175C98:  BL              sub_178FFE
175C9C:  ADD             R3, SP, #0x3A8+var_270
175C9E:  MOV             R0, R6
175CA0:  MOV.W           R1, #0x124
175CA4:  MOVS            R2, #1
175CA6:  BL              sub_178FFE
175CAA:  ADD             R3, SP, #0x3A8+var_274
175CAC:  MOV             R0, R6
175CAE:  MOVW            R1, #0x125
175CB2:  MOVS            R2, #1
175CB4:  BL              sub_178FFE
175CB8:  ADD             R6, SP, #0x3A8+var_290
175CBA:  ADD.W           R8, SP, #0x3A8+var_268
175CBE:  LDM             R6, {R0,R3,R6}
175CC0:  LDM.W           R8, {R1,R2,R8}
175CC4:  STMEA.W         SP, {R0,R3,R6}
175CC8:  MOV             R0, R4
175CCA:  MOV             R3, R8
175CCC:  BL              sub_1790EC
175CD0:  LDR             R1, [SP,#0x3A8+var_64]
175CD2:  LDR             R6, [SP,#0x3A8+var_26C]
175CD4:  VLDR            D16, [SP,#0x3A8+var_2A0]
175CD8:  CMP             R1, #2
175CDA:  LDR             R0, [SP,#0x3A8+var_298]
175CDC:  STR             R0, [R5,#0x60]
175CDE:  VSTR            D16, [R5,#0x58]
175CE2:  BNE.W           loc_175F20
175CE6:  CMP             R6, #0
175CE8:  BEQ.W           loc_175F20
175CEC:  LDR             R0, [SP,#0x3A8+var_270]
175CEE:  CBZ             R0, loc_175D6C
175CF0:  LDR             R5, [SP,#0x3A8+var_274]
175CF2:  CMP             R5, #0
175CF4:  BEQ.W           loc_175F20
175CF8:  MOV             R1, R0
175CFA:  CMP             R8, R0
175CFC:  IT LT
175CFE:  MOVLT           R1, R8
175D00:  CMP             R0, #0
175D02:  IT MI
175D04:  MOVMI           R1, R8
175D06:  STR             R1, [SP,#0x3A8+var_268+4]
175D08:  ADD             R0, SP, #0x3A8+var_2A0
175D0A:  ADD             R1, SP, #0x3A8+var_268
175D0C:  MOV             R4, R11
175D0E:  SUB.W           R11, R9, #4
175D12:  SUB.W           R10, R9, #8
175D16:  BL              sub_178E84
175D1A:  LDR             R2, [SP,#0x3A8+var_2C8]
175D1C:  LDR.W           R8, [SP,#0x3A8+var_260]
175D20:  VLDR            D16, [SP,#0x3A8+var_2A0]
175D24:  LDR             R1, [SP,#0x3A8+var_298]
175D26:  CMP             R8, R5
175D28:  LDR             R0, [SP,#0x3A8+var_268]
175D2A:  STR             R1, [R2,#8]
175D2C:  MOV.W           R1, #0
175D30:  STR.W           R1, [R11]
175D34:  MOV.W           R1, #0
175D38:  VSTR            D16, [R2]
175D3C:  SUB.W           R2, R8, R5
175D40:  IT LT
175D42:  MOVLT           R1, #1
175D44:  ORRS.W          R3, R2, R5
175D48:  MOV.W           R3, #0
175D4C:  ADD             R0, R5
175D4E:  IT MI
175D50:  MOVMI           R3, #1
175D52:  MOV             R11, R4
175D54:  ORRS            R1, R3
175D56:  IT NE
175D58:  MOVNE           R0, #0
175D5A:  STR.W           R0, [R10]
175D5E:  ADD.W           R10, SP, #0x3A8+var_268
175D62:  ADD             R4, SP, #0x3A8+var_2A0
175D64:  IT NE
175D66:  MOVNE           R2, #0
175D68:  STR.W           R2, [R9]
175D6C:  MOV             R0, R6
175D6E:  CMP             R8, R6
175D70:  IT LT
175D72:  MOVLT           R0, R8
175D74:  CMP             R6, #0
175D76:  IT MI
175D78:  MOVMI           R0, R8
175D7A:  STR             R0, [SP,#0x3A8+var_268+4]
175D7C:  MOV             R0, R4
175D7E:  MOV             R1, R10
175D80:  BL              sub_178E84
175D84:  LDR.W           R10, [SP,#0x3A8+var_2C4]
175D88:  LDR             R1, [SP,#0x3A8+var_2A4]
175D8A:  VLDR            D16, [SP,#0x3A8+var_2A0]
175D8E:  LDR             R0, [SP,#0x3A8+var_298]
175D90:  STR             R0, [R1,#0x48]
175D92:  VSTR            D16, [R1,#0x40]
175D96:  LDR             R2, =(aMaxp - 0x175DA0); "maxp" ...
175D98:  LDR             R4, [SP,#0x3A8+var_2B0]
175D9A:  LDR             R1, [SP,#0x3A8+var_2B4]
175D9C:  ADD             R2, PC; "maxp"
175D9E:  MOV             R0, R4
175DA0:  BL              sub_178E38
175DA4:  CBZ             R0, loc_175DB0
175DA6:  ADD             R0, R4
175DA8:  LDRH            R0, [R0,#4]
175DAA:  LSLS            R0, R0, #0x10
175DAC:  REV             R0, R0
175DAE:  B               loc_175DB4
175DB0:  MOVW            R0, #0xFFFF
175DB4:  LDR             R1, [SP,#0x3A8+var_2A4]
175DB6:  MOVS            R3, #0
175DB8:  LDR.W           LR, [SP,#0x3A8+var_2D0]
175DBC:  STR             R0, [R1,#0xC]
175DBE:  ADD.W           R0, R4, R11
175DC2:  LDRH            R2, [R0,#2]
175DC4:  STR.W           R3, [R1,#0x2C]!
175DC8:  LSLS            R2, R2, #0x10
175DCA:  REV             R2, R2
175DCC:  CMP             R2, #0
175DCE:  BEQ.W           loc_175F20
175DD2:  LSLS            R2, R2, #3
175DD4:  MOVS            R3, #0
175DD6:  MOVS            R6, #0
175DD8:  ADDS            R5, R0, R3
175DDA:  LDRH            R4, [R5,#4]
175DDC:  REV             R4, R4
175DDE:  LSRS            R4, R4, #0x10
175DE0:  BEQ             loc_175DF4
175DE2:  CMP             R4, #3
175DE4:  BNE             loc_175DFC
175DE6:  LDRH            R4, [R5,#6]
175DE8:  REV             R4, R4
175DEA:  LSRS            R4, R4, #0x10
175DEC:  CMP             R4, #0xA
175DEE:  IT NE
175DF0:  CMPNE           R4, #1
175DF2:  BNE             loc_175DFC
175DF4:  LDR             R6, [R5,#8]
175DF6:  REV             R6, R6
175DF8:  ADD             R6, R11
175DFA:  STR             R6, [R1]
175DFC:  ADDS            R3, #8
175DFE:  CMP             R2, R3
175E00:  BNE             loc_175DD8
175E02:  CMP             R6, #0
175E04:  BEQ.W           loc_175F20
175E08:  LDR.W           R0, [R10]
175E0C:  LDR             R1, [SP,#0x3A8+var_2B0]
175E0E:  ADD             R0, R1
175E10:  LDRH            R1, [R0,#0x32]
175E12:  LDR             R2, =(unk_BBA30 - 0x175E1E)
175E14:  LDR             R0, [SP,#0x3A8+var_2AC]
175E16:  LDR             R6, [SP,#0x3A8+var_2A4]
175E18:  LSLS            R1, R1, #0x10
175E1A:  ADD             R2, PC; unk_BBA30
175E1C:  REV             R1, R1
175E1E:  LDR             R3, [R0,#0x30]
175E20:  LDR             R0, [SP,#0x3A8+var_2A8]
175E22:  STR             R1, [R6,#0x30]
175E24:  CMP             R3, #0
175E26:  ADD.W           R1, R6, #0xA4
175E2A:  LDR             R0, [R0]
175E2C:  IT NE
175E2E:  MOVNE           R2, R3
175E30:  STR.W           R2, [R6,#0x9C]
175E34:  LDRH            R3, [R2]
175E36:  CBZ             R3, loc_175E50
175E38:  ADDS            R2, #2
175E3A:  LDRH            R3, [R2]
175E3C:  CBZ             R3, loc_175E50
175E3E:  LDR             R6, [R1]
175E40:  LDRH            R5, [R2,#2]
175E42:  ADDS            R2, #4
175E44:  CMP             R6, R3
175E46:  IT LT
175E48:  MOVLT           R6, R3
175E4A:  CMP             R5, #0
175E4C:  STR             R6, [R1]
175E4E:  BNE             loc_175E3A
175E50:  ADD.W           R0, R0, R0,LSL#1
175E54:  LDR             R2, [SP,#0x3A8+var_2C0]
175E56:  LDR             R4, [SP,#0x3A8+var_2B8]
175E58:  ADD.W           LR, LR, #1
175E5C:  ADD.W           R6, R2, R0,LSL#3
175E60:  LDR             R1, [R1]
175E62:  LDR.W           R3, [R2,R0,LSL#3]
175E66:  LDR             R5, [R6,#4]
175E68:  LDR.W           R12, [R4,#0x4C]
175E6C:  ADDS            R3, #1
175E6E:  STR.W           R3, [R2,R0,LSL#3]
175E72:  CMP             R5, R1
175E74:  IT LT
175E76:  MOVLT           R5, R1
175E78:  STR             R5, [R6,#4]
175E7A:  MOV             R6, R4
175E7C:  CMP             LR, R12
175E7E:  MOV.W           R5, #0xC4
175E82:  MOV.W           R2, #0xFFFFFFFF
175E86:  BLT.W           loc_175A32
175E8A:  B               loc_175F2E
175E8C:  LDRB.W          R1, [R10,#2]
175E90:  CMP             R1, #0x75 ; 'u'
175E92:  ITT EQ
175E94:  LDRBEQ.W        R1, [R10,#3]
175E98:  CMPEQ           R1, #0x65 ; 'e'
175E9A:  BNE.W           loc_175AEC
175E9E:  B               loc_175F14
175EA0:  DCD aCmap - 0x175AFA
175EA4:  DCD aLoca - 0x175B28
175EA8:  DCD aHead - 0x175B34
175EAC:  DCD aGlyf - 0x175B4A
175EB0:  DCD aHhea - 0x175B56
175EB4:  DCD aHmtx - 0x175B68
175EB8:  DCD aKern - 0x175B78
175EBC:  DCD aGpos - 0x175B8E
175EC0:  DCD aCff - 0x175BD2
175EC4:  DCD aMaxp - 0x175DA0
175EC8:  DCD unk_BBA30 - 0x175E1E
175ECC:  LDRB.W          R1, [R10,#2]
175ED0:  CMP             R1, #0x63 ; 'c'
175ED2:  ITT EQ
175ED4:  LDRBEQ.W        R1, [R10,#3]
175ED8:  CMPEQ           R1, #0x66 ; 'f'
175EDA:  BNE.W           loc_175AEC
175EDE:  LDR.W           R1, [R10,#4]
175EE2:  REV             R1, R1
175EE4:  CMP.W           R1, #0x20000
175EE8:  IT NE
175EEA:  CMPNE.W         R1, #0x10000
175EEE:  BNE.W           loc_175AEC
175EF2:  LDR.W           R1, [R10,#8]
175EF6:  REV             R1, R1
175EF8:  CMP             R1, R0
175EFA:  BLE.W           loc_175AEC
175EFE:  ADD.W           R0, R10, R0,LSL#2
175F02:  LDR             R0, [R0,#0xC]
175F04:  REV.W           R11, R0
175F08:  B               loc_175AF0
175F0A:  LDRB.W          R1, [R10,#3]
175F0E:  CMP             R1, #0x4F ; 'O'
175F10:  BNE.W           loc_175AEC
175F14:  CMP             R0, #0
175F16:  IT NE
175F18:  MOVNE.W         R0, #0xFFFFFFFF
175F1C:  MOV             R11, R0
175F1E:  B               loc_175AF0
175F20:  LDR             R0, [SP,#0x3A8+var_2C0]
175F22:  CBZ             R0, loc_175F28
175F24:  BL              sub_165578
175F28:  MOVS            R4, #0
175F2A:  B.W             loc_177ACC
175F2E:  LDR             R0, [SP,#0x3A8+var_2DC]
175F30:  CMP             R0, #1
175F32:  BLT.W           loc_176154
175F36:  MOVS            R0, #0
175F38:  MOVS            R5, #0
175F3A:  STR             R0, [SP,#0x3A8+var_2A8]
175F3C:  MOVS            R1, #0xC4
175F3E:  LDR             R0, [SP,#0x3A8+var_2E4]
175F40:  MLA.W           R4, R5, R1, R0
175F44:  LDRD.W          R6, R1, [R4,#0xA0]
175F48:  ADDS            R1, #1
175F4A:  ADD.W           R0, R4, #0xAC
175F4E:  BL              sub_177B80
175F52:  ADD.W           R0, R6, R6,LSL#1
175F56:  LDR             R1, [SP,#0x3A8+var_2C0]
175F58:  ADD.W           R10, R1, R0,LSL#3
175F5C:  MOV             R0, R10
175F5E:  LDR.W           R1, [R0,#0xC]!
175F62:  CBNZ            R1, loc_175F6E
175F64:  LDR.W           R1, [R10,#4]
175F68:  ADDS            R1, #1
175F6A:  BL              sub_177B80
175F6E:  LDR.W           R1, [R4,#0x9C]
175F72:  STR             R5, [SP,#0x3A8+var_2BC]
175F74:  LDRH            R6, [R1]
175F76:  CMP             R6, #0
175F78:  BEQ             loc_176006
175F7A:  ADD.W           R8, R4, #0xA8
175F7E:  ADD.W           R9, R10, #8
175F82:  ADD.W           R0, R4, #0xB4
175F86:  MOVS            R2, #1
175F88:  STR             R0, [SP,#0x3A8+var_2AC]
175F8A:  ADD.W           R0, R10, #0x14
175F8E:  STR             R4, [SP,#0x3A8+var_2A4]
175F90:  STR             R0, [SP,#0x3A8+var_2B4]
175F92:  LDRH            R0, [R1,#2]
175F94:  CBZ             R0, loc_176006
175F96:  CMP             R6, R0
175F98:  STR             R1, [SP,#0x3A8+var_2B0]
175F9A:  BHI             loc_175FFC
175F9C:  LDR             R1, [SP,#0x3A8+var_2B4]
175F9E:  ADD.W           R10, R0, #1
175FA2:  LDR.W           R11, [R1]
175FA6:  LSRS            R4, R6, #5
175FA8:  AND.W           R0, R6, #0x1F
175FAC:  LDR.W           R1, [R11,R4,LSL#2]
175FB0:  LSL.W           R5, R2, R0
175FB4:  TST             R1, R5
175FB6:  BNE             loc_175FF6
175FB8:  LDR             R0, [SP,#0x3A8+var_2A4]
175FBA:  MOV             R1, R6
175FBC:  BL              sub_177BE0
175FC0:  CBZ             R0, loc_175FF4
175FC2:  LDR             R0, [SP,#0x3A8+var_2AC]
175FC4:  LDR.W           R1, [R8]
175FC8:  LDR.W           R2, [R9]
175FCC:  LDR             R0, [R0]
175FCE:  ADDS            R1, #1
175FD0:  STR.W           R1, [R8]
175FD4:  ADDS            R1, R2, #1
175FD6:  STR.W           R1, [R9]
175FDA:  LDR.W           R1, [R0,R4,LSL#2]
175FDE:  ORRS            R1, R5
175FE0:  STR.W           R1, [R0,R4,LSL#2]
175FE4:  LDR.W           R0, [R11,R4,LSL#2]
175FE8:  ORRS            R0, R5
175FEA:  STR.W           R0, [R11,R4,LSL#2]
175FEE:  LDR             R0, [SP,#0x3A8+var_2A8]
175FF0:  ADDS            R0, #1
175FF2:  STR             R0, [SP,#0x3A8+var_2A8]
175FF4:  MOVS            R2, #1
175FF6:  ADDS            R6, #1
175FF8:  CMP             R10, R6
175FFA:  BNE             loc_175FA6
175FFC:  LDR             R1, [SP,#0x3A8+var_2B0]
175FFE:  LDRH.W          R6, [R1,#4]!
176002:  CMP             R6, #0
176004:  BNE             loc_175F92
176006:  LDR             R5, [SP,#0x3A8+var_2BC]
176008:  LDR             R0, [SP,#0x3A8+var_2DC]
17600A:  ADDS            R5, #1
17600C:  CMP             R5, R0
17600E:  BNE             loc_175F3C
176010:  LDR             R0, [SP,#0x3A8+var_2DC]
176012:  CMP             R0, #1
176014:  BLT.W           loc_17614E
176018:  MOV.W           R8, #0
17601C:  MOVS            R4, #0
17601E:  MOVS            R1, #0xC4
176020:  LDR             R0, [SP,#0x3A8+var_2E4]
176022:  MLA.W           R6, R4, R1, R0
176026:  MOV             R1, R6
176028:  LDR.W           R0, [R1,#0xBC]!
17602C:  SUB.W           R11, R1, #4
176030:  STR             R1, [SP,#0x3A8+var_2A4]
176032:  LDR.W           R10, [R1,#-0x14]
176036:  CMP             R0, R10
176038:  BGE             loc_176068
17603A:  MOV.W           R0, R10,LSL#2
17603E:  BL              sub_1654B0
176042:  MOV             R5, R6
176044:  MOV             R9, R0
176046:  LDR.W           R1, [R5,#0xC0]!; src
17604A:  CBZ             R1, loc_17605E
17604C:  LDR.W           R0, [R11]
176050:  LSLS            R2, R0, #2; n
176052:  MOV             R0, R9; dest
176054:  BLX             j_memcpy
176058:  LDR             R0, [R5]
17605A:  BL              sub_165578
17605E:  LDR             R0, [SP,#0x3A8+var_2A4]
176060:  STR.W           R9, [R5]
176064:  STR.W           R10, [R0]
176068:  MOV             R1, R6
17606A:  LDR.W           R2, [R1,#0xAC]!
17606E:  MOV             R5, R1
176070:  CMP             R2, #1
176072:  LDR.W           R0, [R5,#8]!
176076:  BLT             loc_176132
176078:  STR             R6, [SP,#0x3A8+var_2BC]
17607A:  ADD.W           R6, R1, #0x14
17607E:  MOV.W           R9, #0
176082:  ADD.W           R2, R0, R2,LSL#2
176086:  STR             R5, [SP,#0x3A8+var_2C4]
176088:  STR             R4, [SP,#0x3A8+var_2B4]
17608A:  STR             R2, [SP,#0x3A8+var_2B0]
17608C:  STR             R1, [SP,#0x3A8+var_2C8]
17608E:  LDR.W           R10, [R0]
176092:  STR             R0, [SP,#0x3A8+var_2AC]
176094:  CMP.W           R10, #0
176098:  BEQ             loc_176116
17609A:  MOVS            R5, #0
17609C:  LSR.W           R0, R10, R5
1760A0:  LSLS            R0, R0, #0x1F
1760A2:  BEQ             loc_176110
1760A4:  LDR             R1, [SP,#0x3A8+var_2A4]
1760A6:  ADD.W           R2, R9, R5
1760AA:  LDR.W           R0, [R11]
1760AE:  LDR             R1, [R1]
1760B0:  STR             R2, [SP,#0x3A8+var_268]
1760B2:  CMP             R0, R1
1760B4:  BNE             loc_1760FE
1760B6:  CMP             R0, #0
1760B8:  ADD.W           R8, R0, #1
1760BC:  ITTE NE
1760BE:  ADDNE.W         R1, R0, R0,LSR#31
1760C2:  ADDNE.W         R1, R0, R1,ASR#1
1760C6:  MOVEQ           R1, #8
1760C8:  CMP             R1, R8
1760CA:  IT GT
1760CC:  MOVGT           R8, R1
1760CE:  CMP             R0, R8
1760D0:  BGE             loc_1760FE
1760D2:  MOV.W           R0, R8,LSL#2
1760D6:  BL              sub_1654B0
1760DA:  LDR             R1, [R6]; src
1760DC:  MOV             R4, R0
1760DE:  CBZ             R1, loc_1760F2
1760E0:  LDR.W           R0, [R11]
1760E4:  LSLS            R2, R0, #2; n
1760E6:  MOV             R0, R4; dest
1760E8:  BLX             j_memcpy
1760EC:  LDR             R0, [R6]
1760EE:  BL              sub_165578
1760F2:  LDR             R0, [SP,#0x3A8+var_2A4]
1760F4:  STR             R4, [R6]
1760F6:  STR.W           R8, [R0]
1760FA:  LDR.W           R0, [R11]
1760FE:  LDR             R1, [R6]
176100:  LDR             R2, [SP,#0x3A8+var_268]
176102:  STR.W           R2, [R1,R0,LSL#2]
176106:  LDR.W           R0, [R11]
17610A:  ADDS            R0, #1
17610C:  STR.W           R0, [R11]
176110:  ADDS            R5, #1
176112:  CMP             R5, #0x20 ; ' '
176114:  BNE             loc_17609C
176116:  LDR             R0, [SP,#0x3A8+var_2AC]
176118:  ADD.W           R9, R9, #0x20 ; ' '
17611C:  LDR             R1, [SP,#0x3A8+var_2B0]
17611E:  ADDS            R0, #4
176120:  CMP             R0, R1
176122:  BCC             loc_17608E
176124:  LDR             R5, [SP,#0x3A8+var_2C4]
176126:  MOV.W           R8, #0
17612A:  LDR             R4, [SP,#0x3A8+var_2B4]
17612C:  LDR             R6, [SP,#0x3A8+var_2BC]
17612E:  LDR             R0, [R5]
176130:  LDR             R1, [SP,#0x3A8+var_2C8]
176132:  CBZ             R0, loc_176144
176134:  STR.W           R8, [R1]
176138:  STR.W           R8, [R6,#0xB0]
17613C:  BL              sub_165578
176140:  STR.W           R8, [R5]
176144:  LDR             R0, [SP,#0x3A8+var_2DC]
176146:  ADDS            R4, #1
176148:  CMP             R4, R0
17614A:  BNE.W           loc_17601E
17614E:  LDR.W           R8, [SP,#0x3A8+var_2B8]
176152:  B               loc_17615A
176154:  MOV             R8, R6
176156:  MOVS            R0, #0
176158:  STR             R0, [SP,#0x3A8+var_2A8]
17615A:  LDR             R6, [SP,#0x3A8+var_2CC]
17615C:  CMP             R6, #1
17615E:  BLT             loc_17617E
176160:  LDR             R0, [SP,#0x3A8+var_2C0]
176162:  MOVS            R5, #0
176164:  ADD.W           R4, R0, #0x14
176168:  LDR             R0, [R4]
17616A:  CBZ             R0, loc_176176
17616C:  STRD.W          R5, R5, [R4,#-8]
176170:  BL              sub_165578
176174:  STR             R5, [R4]
176176:  ADDS            R4, #0x18
176178:  SUBS            R6, #1
17617A:  BNE             loc_176168
17617C:  B               loc_176182
17617E:  LDR             R0, [SP,#0x3A8+var_2C0]
176180:  CBZ             R0, loc_176188
176182:  LDR             R0, [SP,#0x3A8+var_2C0]
176184:  BL              sub_165578
176188:  LDR             R6, [SP,#0x3A8+var_2A8]
17618A:  MOVS            R0, #0
17618C:  STR             R0, [SP,#0x3A8+var_288]
17618E:  CMP             R6, #1
176190:  STRD.W          R0, R0, [SP,#0x3A8+var_290]
176194:  STR             R0, [SP,#0x3A8+var_298]
176196:  STRD.W          R0, R0, [SP,#0x3A8+var_2A0]
17619A:  BLT             loc_1761D4
17619C:  MOVS            R5, #8
17619E:  CMP             R6, #8
1761A0:  IT HI
1761A2:  MOVHI           R5, R6
1761A4:  MOV.W           R9, #8
1761A8:  LSLS            R0, R5, #4
1761AA:  BL              sub_1654B0
1761AE:  MOV             R1, R0
1761B0:  STR             R1, [SP,#0x3A8+var_288]
1761B2:  CMP             R6, #8
1761B4:  STRD.W          R6, R5, [SP,#0x3A8+var_290]
1761B8:  IT HI
1761BA:  MOVHI           R9, R6
1761BC:  RSB.W           R0, R9, R9,LSL#3
1761C0:  LSLS            R0, R0, #2
1761C2:  MOV             R5, R1
1761C4:  BL              sub_1654B0
1761C8:  MOV             R2, R5
1761CA:  MOV             R4, R0
1761CC:  MOV             R5, R0
1761CE:  STRD.W          R9, R0, [SP,#0x3A8+var_2A0+4]
1761D2:  B               loc_1761DC
1761D4:  STR             R6, [SP,#0x3A8+var_290]
1761D6:  MOVS            R2, #0
1761D8:  MOVS            R4, #0
1761DA:  MOVS            R5, #0
1761DC:  LSLS            R1, R6, #4; n
1761DE:  MOV             R0, R2; int
1761E0:  STR             R6, [SP,#0x3A8+var_2A0]
1761E2:  MOV             R11, R2
1761E4:  BLX             sub_22178C
1761E8:  RSB.W           R0, R6, R6,LSL#3
1761EC:  LSLS            R1, R0, #2; n
1761EE:  MOV             R0, R5; int
1761F0:  BLX             sub_22178C
1761F4:  LDR             R0, [SP,#0x3A8+var_2DC]
1761F6:  CMP             R0, #1
1761F8:  BLT.W           loc_1763B0
1761FC:  MOVS            R0, #0
1761FE:  MOV.W           R10, #0xC4
176202:  STR             R0, [SP,#0x3A8+var_2A4]
176204:  MOVS            R0, #0
176206:  MOV.W           LR, #0
17620A:  MOVS            R1, #0
17620C:  MOV             R2, R8
17620E:  MOV             R6, R11
176210:  STR             R0, [SP,#0x3A8+var_2C0]
176212:  STRD.W          R4, R11, [SP,#0x3A8+var_2D8]
176216:  LDR             R0, [SP,#0x3A8+var_2E4]
176218:  MLA.W           R12, R1, R10, R0
17621C:  LDR.W           R8, [R12,#0xA8]
176220:  CMP.W           R8, #0
176224:  BEQ.W           loc_1763A4
176228:  LDR             R0, [R2,#0x54]
17622A:  MOVS            R2, #0x74 ; 't'
17622C:  MLA.W           R3, R1, R2, R0
176230:  STR             R1, [SP,#0x3A8+var_2C4]
176232:  LDR             R1, [SP,#0x3A8+var_2C0]
176234:  MOV             R5, R12
176236:  MOV             R9, R4
176238:  ADD.W           R2, R6, LR,LSL#4
17623C:  MOV             R11, R6
17623E:  RSB.W           R0, R1, R1,LSL#3
176242:  STR.W           R12, [SP,#0x3A8+var_2A8]
176246:  ADD.W           R0, R4, R0,LSL#2
17624A:  LDR.W           R4, [R3,#0x14]!
17624E:  STR.W           R2, [R5,#0x94]!
176252:  MOVS            R2, #0
176254:  STR             R3, [SP,#0x3A8+var_2C8]
176256:  STR.W           R2, [R5,#-0x14]
17625A:  MOV             R2, R5
17625C:  STR             R0, [R5,#4]
17625E:  STR.W           R0, [R5,#-8]
176262:  VLDR            S0, [R3,#-4]
176266:  LDR.W           R6, [R3,#4]!
17626A:  LDR.W           R0, [R2,#0x2C]!
17626E:  VCMP.F32        S0, #0.0
176272:  STR             R3, [SP,#0x3A8+var_2CC]
176274:  MOV             R3, R5
176276:  STR             R2, [SP,#0x3A8+var_2BC]
176278:  VMRS            APSR_nzcv, FPSCR
17627C:  LDR.W           R2, [R3,#0x24]!
176280:  STRB.W          R4, [R5,#-4]
176284:  STR             R3, [SP,#0x3A8+var_2B0]
176286:  STRD.W          R0, R2, [R5,#-0x10]
17628A:  STRB.W          R6, [R5,#-3]
17628E:  STR             R5, [SP,#0x3A8+var_2AC]
176290:  VSTR            S0, [R5,#-0x18]
176294:  BLE             loc_1762B6
176296:  LDR.W           R3, [R12,#4]
17629A:  LDR.W           R5, [R12,#0x1C]
17629E:  ADD             R3, R5
1762A0:  LDRH            R5, [R3,#6]
1762A2:  LDRH            R3, [R3,#4]
1762A4:  REV             R5, R5
1762A6:  REVSH           R3, R3
1762A8:  SUB.W           R3, R3, R5,ASR#16
1762AC:  VMOV            S2, R3
1762B0:  VCVT.F32.S32    S2, S2
1762B4:  B               loc_1762D2
1762B6:  LDR.W           R3, [R12,#4]
1762BA:  VNEG.F32        S0, S0
1762BE:  LDR.W           R5, [R12,#0x14]
1762C2:  ADD             R3, R5
1762C4:  LDRH            R3, [R3,#0x12]
1762C6:  REV             R3, R3
1762C8:  LSRS            R3, R3, #0x10
1762CA:  VMOV            S2, R3
1762CE:  VCVT.F32.U32    S2, S2
1762D2:  VDIV.F32        S16, S0, S2
1762D6:  ADD             LR, R8
1762D8:  CMP             R2, #1
1762DA:  ADD             R1, R8
1762DC:  STR             R1, [SP,#0x3A8+var_2C0]
1762DE:  BLT             loc_17639C
1762E0:  LDR             R1, [SP,#0x3A8+var_2B8]
1762E2:  MOV.W           R11, #1
1762E6:  LDRD.W          R10, R8, [SP,#0x3A8+var_2CC]
1762EA:  MOV.W           R9, #0
1762EE:  STR.W           LR, [SP,#0x3A8+var_2D0]
1762F2:  LDR             R1, [R1,#0x10]
1762F4:  STR             R1, [SP,#0x3A8+var_2B4]
1762F6:  LDR.W           R1, [R0,R9]
1762FA:  LDR             R5, [SP,#0x3A8+var_2A8]
1762FC:  MOV             R0, R5
1762FE:  BL              sub_177BE0
176302:  VMOV            S0, R4
176306:  MOV             R1, R0
176308:  VMOV            S2, R6
17630C:  ADD             R0, SP, #0x3A8+var_26C
17630E:  VCVT.F32.S32    S0, S0
176312:  STR             R0, [SP,#0x3A8+var_3A8]
176314:  VCVT.F32.S32    S2, S2
176318:  ADD             R0, SP, #0x3A8+var_270
17631A:  ADD             R2, SP, #0x3A8+var_268
17631C:  ADD             R3, SP, #0x3A8+var_64
17631E:  STR             R0, [SP,#0x3A8+var_3A4]
176320:  MOV             R0, R5
176322:  VMUL.F32        S0, S16, S0
176326:  VMUL.F32        S1, S16, S2
17632A:  BL              sub_177D7C
17632E:  LDRD.W          R6, R4, [SP,#0x3A8+var_26C]
176332:  LDR             R2, [SP,#0x3A8+var_2B4]
176334:  LDR             R0, [SP,#0x3A8+var_2AC]
176336:  ADD             R6, R2
176338:  LDR.W           R1, [R8]
17633C:  LDR             R5, [SP,#0x3A8+var_270]
17633E:  SUBS            R6, R6, R4
176340:  LDR.W           R12, [SP,#0x3A8+var_64]
176344:  ADD             R1, R6
176346:  ADDS            R6, R5, R2
176348:  LDR.W           R3, [R10]
17634C:  LDR             R0, [R0]
17634E:  SUB.W           R2, R6, R12
176352:  ADD             R2, R3
176354:  SUBS            R1, #1
176356:  ADD.W           R0, R0, R9,LSL#2
17635A:  SUBS            R2, #1
17635C:  STRH            R1, [R0,#4]
17635E:  STRH            R2, [R0,#6]
176360:  UXTH            R0, R1
176362:  UXTH            R1, R2
176364:  LDR             R2, [SP,#0x3A8+var_2A4]
176366:  MLA.W           R2, R1, R0, R2
17636A:  LDR             R0, [SP,#0x3A8+var_2B0]
17636C:  LDR             R0, [R0]
17636E:  STR             R2, [SP,#0x3A8+var_2A4]
176370:  CMP             R11, R0
176372:  BGE             loc_17638A
176374:  LDR             R0, [SP,#0x3A8+var_2BC]
176376:  ADD.W           R9, R9, #4
17637A:  LDR.W           R6, [R10]
17637E:  ADD.W           R11, R11, #1
176382:  LDR.W           R4, [R8]
176386:  LDR             R0, [R0]
176388:  B               loc_1762F6
17638A:  LDR             R2, [SP,#0x3A8+var_2B8]
17638C:  MOV.W           R10, #0xC4
176390:  LDRD.W          R4, R6, [SP,#0x3A8+var_2D8]
176394:  LDR.W           LR, [SP,#0x3A8+var_2D0]
176398:  LDR             R1, [SP,#0x3A8+var_2C4]
17639A:  B               loc_1763A4
17639C:  LDR             R2, [SP,#0x3A8+var_2B8]
17639E:  MOV             R6, R11
1763A0:  LDR             R1, [SP,#0x3A8+var_2C4]
1763A2:  MOV             R4, R9
1763A4:  LDR             R0, [SP,#0x3A8+var_2DC]
1763A6:  ADDS            R1, #1
1763A8:  CMP             R1, R0
1763AA:  BNE.W           loc_176216
1763AE:  B               loc_1763B6
1763B0:  MOVS            R0, #0
1763B2:  MOV             R2, R8
1763B4:  STR             R0, [SP,#0x3A8+var_2A4]
1763B6:  LDR.W           R11, [R2,#0xC]
1763BA:  MOVS            R0, #0
1763BC:  STR             R0, [R2,#0x20]
1763BE:  CMP.W           R11, #0
1763C2:  BGT             loc_176402
1763C4:  LDR             R0, [SP,#0x3A8+var_2A4]
1763C6:  MOVW            R1, #0xB32
1763CA:  VMOV            S0, R0
1763CE:  VCVT.F32.S32    S0, S0
1763D2:  VSQRT.F32       S0, S0
1763D6:  VCVT.S32.F32    S0, S0
1763DA:  VMOV            R0, S0
1763DE:  CMP             R0, R1
1763E0:  BLE             loc_1763E8
1763E2:  MOV.W           R11, #0x1000
1763E6:  B               loc_176402
1763E8:  CMP.W           R0, #0x598
1763EC:  BLE             loc_1763F4
1763EE:  MOV.W           R11, #0x800
1763F2:  B               loc_176402
1763F4:  MOV.W           R11, #0x200
1763F8:  CMP.W           R0, #0x2CC
1763FC:  IT GE
1763FE:  MOVGE.W         R11, #0x400
176402:  LDR             R0, [R2,#0x10]
176404:  MOV             R4, R2
176406:  STR             R0, [SP,#0x3A8+var_328]
176408:  STR.W           R11, [R2,#0x1C]
17640C:  MOVS            R0, #0x30 ; '0'
17640E:  BL              sub_1654B0
176412:  MOV             R9, R0
176414:  LDR             R0, [SP,#0x3A8+var_328]
176416:  SUB.W           R5, R11, R0
17641A:  LSLS            R0, R5, #3
17641C:  BL              sub_1654B0
176420:  STR             R0, [SP,#0x3A8+var_374]
176422:  CMP.W           R9, #0
176426:  ITT NE
176428:  LDRNE           R0, [SP,#0x3A8+var_374]
17642A:  CMPNE           R0, #0
17642C:  BNE             loc_176454
17642E:  CMP.W           R9, #0
176432:  BEQ             loc_17643A
176434:  MOV             R0, R9
176436:  BL              sub_165578
17643A:  LDR             R0, [SP,#0x3A8+var_374]
17643C:  CBZ             R0, loc_176442
17643E:  BL              sub_165578
176442:  MOVS            R0, #0
176444:  MOV.W           R11, #0
176448:  STR             R0, [SP,#0x3A8+var_374]
17644A:  MOVS            R0, #0
17644C:  STR             R0, [SP,#0x3A8+var_328]
17644E:  MOVS            R1, #0
176450:  MOV             R0, R4
176452:  B               loc_1764C2
176454:  LDR             R1, [SP,#0x3A8+var_328]
176456:  SUBS            R0, R5, #1
176458:  MOV.W           R8, #0
17645C:  CMP             R5, #2
17645E:  RSB.W           R1, R1, #0x8000
176462:  MOV.W           R2, #0
176466:  BLT             loc_17647A
176468:  LDR             R2, [SP,#0x3A8+var_374]
17646A:  MOV             R3, R0
17646C:  ADDS            R2, #4
17646E:  ADDS            R6, R2, #4
176470:  STR.W           R6, [R2],#8
176474:  SUBS            R3, #1
176476:  BNE             loc_17646E
176478:  MOV             R2, R0
17647A:  MOVS            R3, #1
17647C:  MOV             R6, R9
17647E:  STRD.W          R3, R8, [R9,#0xC]
176482:  ADD             R0, R5
176484:  LDR             R3, [SP,#0x3A8+var_374]
176486:  STRD.W          R5, R1, [R9]
17648A:  MOVW            R1, #0xFFFF
17648E:  STR.W           R8, [R6,#0x20]!
176492:  STRH.W          R1, [R9,#0x2A]
176496:  ADD.W           R1, R3, R2,LSL#3
17649A:  STRD.W          R5, R6, [R9,#0x14]
17649E:  STR.W           R3, [R9,#0x1C]
1764A2:  STR.W           R8, [R1,#4]
1764A6:  MOV             R1, R5
1764A8:  BLX             sub_220A40
1764AC:  STR.W           R0, [R9,#8]
1764B0:  MOV             R0, R9
1764B2:  STRH.W          R5, [R0,#0x28]!
1764B6:  MOV             R1, R9
1764B8:  STR.W           R0, [R9,#0x24]
1764BC:  LDR             R0, [SP,#0x3A8+var_2B8]
1764BE:  STR.W           R8, [R9,#0x2C]
1764C2:  STR             R1, [SP,#0x3A8+var_36C]
1764C4:  BL              sub_177EE8
1764C8:  LDR             R0, [SP,#0x3A8+var_2DC]
1764CA:  STR.W           R11, [SP,#0x3A8+var_2A8]
1764CE:  CMP             R0, #1
1764D0:  BLT             loc_176520
1764D2:  MOVS            R4, #0
1764D4:  MOV.W           R8, #0xC4
1764D8:  LDR             R0, [SP,#0x3A8+var_2E4]
1764DA:  MLA.W           R6, R4, R8, R0
1764DE:  MOV             R5, R6
1764E0:  LDR.W           R2, [R5,#0xA8]!; nmemb
1764E4:  CBZ             R2, loc_176518
1764E6:  LDR.W           R1, [R6,#0x94]!; base
1764EA:  LDR             R0, [SP,#0x3A8+var_36C]; int
1764EC:  BL              sub_177FA4
1764F0:  LDR             R0, [R5]
1764F2:  CMP             R0, #1
1764F4:  BLT             loc_176518
1764F6:  LDR             R1, [R6]
1764F8:  ADDS            R1, #6
1764FA:  LDR.W           R2, [R1,#6]
1764FE:  CBZ             R2, loc_176512
176500:  LDR             R5, [SP,#0x3A8+var_2B8]
176502:  LDRH            R3, [R1,#4]
176504:  LDRH            R6, [R1]
176506:  LDR             R2, [R5,#0x20]
176508:  ADD             R3, R6
17650A:  CMP             R2, R3
17650C:  IT LT
17650E:  MOVLT           R2, R3
176510:  STR             R2, [R5,#0x20]
176512:  ADDS            R1, #0x10
176514:  SUBS            R0, #1
176516:  BNE             loc_1764FA
176518:  LDR             R0, [SP,#0x3A8+var_2DC]
17651A:  ADDS            R4, #1
17651C:  CMP             R4, R0
17651E:  BNE             loc_1764D8
176520:  LDR             R5, [SP,#0x3A8+var_2B8]
176522:  LDRB            R1, [R5,#4]
176524:  LDR             R0, [R5,#0x20]
176526:  LSLS            R1, R1, #0x1F
176528:  BNE             loc_176540
17652A:  SUBS            R0, #1
17652C:  ORR.W           R0, R0, R0,ASR#1
176530:  ORR.W           R0, R0, R0,ASR#2
176534:  ORR.W           R0, R0, R0,ASR#4
176538:  ORR.W           R0, R0, R0,ASR#8
17653C:  ORR.W           R0, R0, R0,ASR#16
176540:  LDR             R1, [R5,#0x1C]
176542:  ADDS            R0, #1
176544:  VMOV.F32        S23, #1.0
176548:  STR             R0, [R5,#0x20]
17654A:  VMOV            S0, R0
17654E:  VMOV            S2, R1
176552:  MULS            R0, R1
176554:  VCVT.F32.S32    S0, S0
176558:  VCVT.F32.S32    S2, S2
17655C:  VDIV.F32        S0, S23, S0
176560:  VDIV.F32        S2, S23, S2
176564:  VSTR            S2, [R5,#0x24]
176568:  VSTR            S0, [R5,#0x28]
17656C:  BL              sub_1654B0
176570:  LDRD.W          R1, R2, [R5,#0x1C]
176574:  STR             R0, [R5,#0x14]
176576:  MULS            R1, R2; n
176578:  BLX             sub_22178C
17657C:  LDR             R0, [SP,#0x3A8+var_2DC]
17657E:  CMP             R0, #1
176580:  BLT.W           loc_17780E
176584:  VMOV.F32        S26, #-1.0
176588:  VLDR            S25, =0.0
17658C:  VLDR            S16, =0.35
176590:  MOV.W           R8, #0xFF
176594:  LDR             R0, [R5,#0x14]
176596:  MOV.W           R12, #0
17659A:  STR             R0, [SP,#0x3A8+var_340]
17659C:  MOVS            R1, #0xC4
17659E:  LDR             R0, [SP,#0x3A8+var_2E4]
1765A0:  MLA.W           R9, R12, R1, R0
1765A4:  MOV             R1, R9
1765A6:  LDR.W           R0, [R1,#0xA8]!
1765AA:  STR             R1, [SP,#0x3A8+var_2F8]
1765AC:  CMP             R0, #0
1765AE:  BEQ.W           loc_177802
1765B2:  VLDR            S0, [R9,#0x7C]
1765B6:  ADD.W           R0, R9, #0x1C
1765BA:  ADD.W           R1, R9, #4
1765BE:  VCMP.F32        S0, #0.0
1765C2:  STRD.W          R1, R0, [SP,#0x3A8+var_310]
1765C6:  VMRS            APSR_nzcv, FPSCR
1765CA:  BLE             loc_1765E8
1765CC:  LDR             R0, [R0]
1765CE:  LDR             R1, [R1]
1765D0:  ADD             R0, R1
1765D2:  LDRH            R1, [R0,#6]
1765D4:  LDRH            R0, [R0,#4]
1765D6:  REV             R1, R1
1765D8:  REVSH           R0, R0
1765DA:  SUB.W           R0, R0, R1,ASR#16
1765DE:  VMOV            S2, R0
1765E2:  VCVT.F32.S32    S2, S2
1765E6:  B               loc_176602
1765E8:  LDR             R0, [R1]
1765EA:  VNEG.F32        S0, S0
1765EE:  LDR.W           R1, [R9,#0x14]
1765F2:  ADD             R0, R1
1765F4:  LDRH            R0, [R0,#0x12]
1765F6:  REV             R0, R0
1765F8:  LSRS            R0, R0, #0x10
1765FA:  VMOV            S2, R0
1765FE:  VCVT.F32.U32    S2, S2
176602:  VDIV.F32        S22, S0, S2
176606:  MOV             R1, R9
176608:  LDR.W           R2, [R1,#0x94]!
17660C:  STR             R1, [SP,#0x3A8+var_358]
17660E:  ADD.W           R1, R9, #0x90
176612:  LDR             R0, [R5,#0x54]
176614:  LDRB            R1, [R1]
176616:  STR             R0, [SP,#0x3A8+var_364]
176618:  ADD.W           R0, R9, #0x91
17661C:  LDRB            R6, [R0]
17661E:  VMOV            S0, R1
176622:  VMOV.F32        S24, S25
176626:  VCVT.F32.U32    S0, S0
17662A:  CBZ             R1, loc_176640
17662C:  RSB.W           R0, R1, #1
176630:  VADD.F32        S2, S0, S0
176634:  VMOV            S4, R0
176638:  VCVT.F32.S32    S4, S4
17663C:  VDIV.F32        S24, S4, S2
176640:  VMOV            S2, R6
176644:  VMOV.F32        S28, S25
176648:  STR             R1, [SP,#0x3A8+var_2AC]
17664A:  VCVT.F32.U32    S2, S2
17664E:  CBZ             R6, loc_176664
176650:  RSB.W           R0, R6, #1
176654:  VADD.F32        S4, S2, S2
176658:  VMOV            S6, R0
17665C:  VCVT.F32.S32    S6, S6
176660:  VDIV.F32        S28, S6, S4
176664:  ADD.W           R0, R9, #0x88
176668:  STR             R0, [SP,#0x3A8+var_314]
17666A:  STR.W           R12, [SP,#0x3A8+var_300]
17666E:  LDR             R0, [R0]
176670:  CMP             R0, #1
176672:  BLT.W           loc_17775A
176676:  VMUL.F32        S19, S22, S2
17667A:  ADD.W           R1, R9, #0x20 ; ' '
17667E:  VMUL.F32        S18, S22, S0
176682:  STR             R1, [SP,#0x3A8+var_318]
176684:  ADD.W           R1, R9, #0x80
176688:  STR             R1, [SP,#0x3A8+var_354]
17668A:  ADD.W           R1, R9, #0x84
17668E:  VDIV.F32        S17, S23, S0
176692:  STR             R1, [SP,#0x3A8+var_31C]
176694:  ADD.W           R1, R9, #0x8C
176698:  STR             R1, [SP,#0x3A8+var_320]
17669A:  MOVS            R1, #4
17669C:  MOVS            R4, #0
17669E:  VCMP.F32        S18, S19
1766A2:  VMOV.F32        S0, S18
1766A6:  VMRS            APSR_nzcv, FPSCR
1766AA:  IT GT
1766AC:  VMOVGT.F32      S0, S19
1766B0:  VDIV.F32        S30, S23, S2
1766B4:  LDR             R5, [SP,#0x3A8+var_2AC]
1766B6:  STR             R2, [SP,#0x3A8+var_324]
1766B8:  STR             R6, [SP,#0x3A8+var_2B0]
1766BA:  SUB.W           R1, R1, R5,LSL#2
1766BE:  STR             R1, [SP,#0x3A8+var_370]
1766C0:  RSB.W           R1, R6, #1
1766C4:  STR             R1, [SP,#0x3A8+var_35C]
1766C6:  RSB.W           R1, R5, #1
1766CA:  STR             R1, [SP,#0x3A8+var_360]
1766CC:  STR.W           R9, [SP,#0x3A8+var_2E0]
1766D0:  VDIV.F32        S0, S16, S0
1766D4:  VNMUL.F32       S27, S22, S2
1766D8:  VMUL.F32        S20, S0, S0
1766DC:  ADD.W           R3, R2, R4,LSL#4
1766E0:  LDR             R1, [R3,#0xC]
1766E2:  CMP             R1, #0
1766E4:  BEQ.W           loc_177750
1766E8:  MOV             R1, R3
1766EA:  LDRH.W          R5, [R1,#4]!
1766EE:  STR             R1, [SP,#0x3A8+var_2C4]
1766F0:  CMP             R5, #0
1766F2:  BEQ.W           loc_177750
1766F6:  MOV             R1, R3
1766F8:  LDRH.W          R6, [R1,#6]!
1766FC:  STR             R1, [SP,#0x3A8+var_2C8]
1766FE:  CMP             R6, #0
176700:  BEQ.W           loc_177750
176704:  LDR             R0, [SP,#0x3A8+var_31C]
176706:  MOV             R8, R3
176708:  STR             R4, [SP,#0x3A8+var_2EC]
17670A:  LDR             R0, [R0]
17670C:  CBZ             R0, loc_176714
17670E:  LDR.W           R1, [R0,R4,LSL#2]
176712:  B               loc_17671A
176714:  LDR             R0, [SP,#0x3A8+var_354]
176716:  LDR             R0, [R0]
176718:  ADDS            R1, R0, R4
17671A:  LDR             R0, [SP,#0x3A8+var_320]
17671C:  LDR             R0, [R0]
17671E:  STR             R0, [SP,#0x3A8+var_2F0]
176720:  MOV             R0, R9
176722:  BL              sub_177BE0
176726:  LDR             R2, [SP,#0x3A8+var_328]
176728:  MOV             R4, R0
17672A:  LDR.W           R10, [SP,#0x3A8+var_2C4]
17672E:  VMOV.F32        S0, S18
176732:  SUBS            R0, R5, R2
176734:  MOV             R5, R8
176736:  LDR.W           R8, [SP,#0x3A8+var_2C8]
17673A:  VMOV.F32        S1, S19
17673E:  LDRH.W          R1, [R5,#8]!
176742:  ADD             R3, SP, #0x3A8+var_27C
176744:  STRH.W          R0, [R10]
176748:  SUBS            R0, R6, R2
17674A:  STRH.W          R0, [R8]
17674E:  ADDS            R0, R1, R2
176750:  MOV             R6, R5
176752:  STRH            R0, [R5]
176754:  LDRH.W          R0, [R6,#2]!
176758:  LDR             R1, [SP,#0x3A8+var_310]
17675A:  ADD             R0, R2
17675C:  STRH            R0, [R6]
17675E:  LDR             R0, [SP,#0x3A8+var_30C]
176760:  MOV             R2, #0xFFFFFFFC
176764:  LDR             R1, [R1]
176766:  LDR             R0, [R0]
176768:  ADD             R0, R1
17676A:  LDRH            R0, [R0,#0x22]
17676C:  LSLS            R0, R0, #0x10
17676E:  REV             R0, R0
176770:  CMP             R0, R4
176772:  ADD.W           R2, R2, R0,LSL#2
176776:  IT GT
176778:  LSLGT           R2, R4, #2
17677A:  LDR             R0, [SP,#0x3A8+var_318]
17677C:  LDR             R0, [R0]
17677E:  ADD             R0, R1
176780:  MOV             R1, R4
176782:  LDRH            R0, [R0,R2]
176784:  ADD             R2, SP, #0x3A8+var_278
176786:  STR             R0, [SP,#0x3A8+var_2F4]
176788:  ADD             R0, SP, #0x3A8+var_280
17678A:  STR             R0, [SP,#0x3A8+var_3A8]
17678C:  ADD             R0, SP, #0x3A8+var_284
17678E:  STR             R0, [SP,#0x3A8+var_3A4]; float
176790:  MOV             R0, R9
176792:  BL              sub_177D7C
176796:  LDRH            R0, [R5]
176798:  STR             R5, [SP,#0x3A8+var_2D8]
17679A:  STR             R0, [SP,#0x3A8+var_2A4]
17679C:  LDRH.W          R0, [R10]
1767A0:  LDRH.W          R11, [R6]
1767A4:  LDRH.W          R5, [R8]
1767A8:  STR             R6, [SP,#0x3A8+var_2D4]
1767AA:  STR             R0, [SP,#0x3A8+var_2E8]
1767AC:  ADD             R2, SP, #0x3A8+var_274
1767AE:  MOV             R0, R9
1767B0:  MOV             R1, R4
1767B2:  BL              sub_179E44
1767B6:  STR             R0, [SP,#0x3A8+var_2C0]
1767B8:  LDR             R0, [SP,#0x3A8+var_2AC]
1767BA:  VMOV.F32        S0, S18
1767BE:  LDR             R1, [SP,#0x3A8+var_2E8]
1767C0:  VMOV.F32        S1, S19
1767C4:  ADD             R2, SP, #0x3A8+var_26C
1767C6:  ADD             R3, SP, #0x3A8+var_270
1767C8:  SUBS            R0, R1, R0
1767CA:  STR             R0, [SP,#0x3A8+var_2CC]
1767CC:  ADDS            R6, R0, #1
1767CE:  MOVS            R0, #0
1767D0:  STRD.W          R0, R0, [SP,#0x3A8+var_3A8]; float
1767D4:  MOV             R1, R4
1767D6:  LDR             R0, [SP,#0x3A8+var_2E0]
1767D8:  BL              sub_177D7C
1767DC:  CMP             R6, #0
1767DE:  STR             R6, [SP,#0x3A8+var_330]
1767E0:  BEQ.W           loc_1772CA
1767E4:  LDR             R0, [SP,#0x3A8+var_2B0]
1767E6:  SUBS            R1, R5, R0
1767E8:  STR             R1, [SP,#0x3A8+var_304]
1767EA:  MOV             R0, R1
1767EC:  ADDS            R0, R1, #1
1767EE:  STR             R0, [SP,#0x3A8+var_308]
1767F0:  BEQ.W           loc_1772CA
1767F4:  LDRD.W          R8, R0, [SP,#0x3A8+var_270]
1767F8:  LDR             R4, [SP,#0x3A8+var_274]
1767FA:  STR             R0, [SP,#0x3A8+var_334]
1767FC:  MOVS            R0, #0
1767FE:  STR             R0, [SP,#0x3A8+var_268]
176800:  LDR             R0, [SP,#0x3A8+var_2C0]
176802:  CMP             R0, #1
176804:  BLT.W           loc_1772CA
176808:  LDR             R0, [SP,#0x3A8+var_340]
17680A:  LDR             R1, [SP,#0x3A8+var_2A4]
17680C:  ADD             R0, R1
17680E:  LDR             R1, [SP,#0x3A8+var_2A8]
176810:  MLA.W           R0, R1, R11, R0
176814:  LDR             R1, [SP,#0x3A8+var_2C0]
176816:  MOV.W           R11, #0
17681A:  STR             R0, [SP,#0x3A8+var_2FC]
17681C:  ADD.W           R0, R4, #0xC
176820:  LDRB.W          R10, [R0],#0xE
176824:  MOV             R6, R11
176826:  ADD.W           R5, R11, #1
17682A:  CMP.W           R10, #1
17682E:  IT EQ
176830:  MOVEQ           R11, R5
176832:  SUBS            R1, #1
176834:  BNE             loc_176820
176836:  CMP.W           R11, #0
17683A:  BEQ.W           loc_1772CA
17683E:  MOV.W           R0, R11,LSL#2
176842:  BL              sub_1654B0
176846:  STR             R0, [SP,#0x3A8+var_2B4]
176848:  LDR             R0, [SP,#0x3A8+var_2B4]
17684A:  CMP             R0, #0
17684C:  BEQ.W           loc_1772CA
176850:  ADDS            R0, R4, #6
176852:  STRD.W          R5, R6, [SP,#0x3A8+var_33C]
176856:  ADD             R5, SP, #0x3A8+var_268
176858:  STR.W           R8, [SP,#0x3A8+var_344]
17685C:  STR             R0, [SP,#0x3A8+var_2D0]
17685E:  MOVS            R1, #0
176860:  MOVS            R0, #0
176862:  MOVS            R4, #1
176864:  MOV.W           R8, #0
176868:  STR             R1, [SP,#0x3A8+var_2A4]
17686A:  LSLS            R0, R0, #0x1F
17686C:  BEQ             loc_176880
17686E:  LDR             R0, [SP,#0x3A8+var_268]
176870:  LSLS            R0, R0, #3
176872:  BL              sub_1654B0
176876:  CMP             R0, #0
176878:  MOV             R1, R0
17687A:  STR             R0, [SP,#0x3A8+var_2A4]
17687C:  BEQ.W           loc_176BB2
176880:  VMOV.F32        S1, S25
176884:  STR             R4, [SP,#0x3A8+var_2BC]
176886:  VMOV.F32        S0, S25
17688A:  LDR             R4, [SP,#0x3A8+var_2C0]
17688C:  LDR             R6, [SP,#0x3A8+var_2D0]
17688E:  MOVS            R0, #0
176890:  MOV.W           R9, #0xFFFFFFFF
176894:  STR             R0, [SP,#0x3A8+var_268]
176896:  LDRB            R0, [R6,#6]
176898:  SUBS            R0, #1; switch 4 cases
17689A:  CMP             R0, #3
17689C:  BHI.W           def_1768A0; jumptable 001768A0 default case
1768A0:  TBB.W           [PC,R0]; switch jump
1768A4:  DCB 2; jump table for switch statement
1768A5:  DCB 0x81
1768A6:  DCB 0x24
1768A7:  DCB 0x48
1768A8:  CMP.W           R9, #0; jumptable 001768A0 case 1
1768AC:  ITTTT PL
1768AE:  LDRPL           R0, [SP,#0x3A8+var_268]
1768B0:  SUBPL.W         R0, R0, R8
1768B4:  LDRPL           R1, [SP,#0x3A8+var_2B4]
1768B6:  STRPL.W         R0, [R1,R9,LSL#2]
1768BA:  LDRSH.W         R1, [R6,#-4]
1768BE:  ADD.W           R9, R9, #1
1768C2:  LDRSH.W         R0, [R6,#-6]
1768C6:  LDR.W           R8, [SP,#0x3A8+var_268]
1768CA:  VMOV            S0, R1
1768CE:  VCVT.F32.S32    S1, S0
1768D2:  VMOV            S0, R0
1768D6:  ADD.W           R0, R8, #1
1768DA:  STR             R0, [SP,#0x3A8+var_268]
1768DC:  VCVT.F32.S32    S0, S0
1768E0:  LDR             R0, [SP,#0x3A8+var_2A4]
1768E2:  CMP             R0, #0
1768E4:  BEQ             def_1768A0; jumptable 001768A0 default case
1768E6:  ADD.W           R0, R0, R8,LSL#3
1768EA:  B               loc_1769CC
1768EC:  LDRSH.W         R3, [R6]; jumptable 001768A0 case 3
1768F0:  LDRSH.W         R0, [R6,#-6]
1768F4:  LDRSH.W         R1, [R6,#-4]
1768F8:  LDRSH.W         R2, [R6,#-2]
1768FC:  VMOV            S2, R3
176900:  VMOV            S4, R0
176904:  LDR             R0, [SP,#0x3A8+var_2A4]
176906:  VMOV            S6, R1
17690A:  MOV             R1, R5
17690C:  VCVT.F32.S32    S3, S2
176910:  VMOV            S2, R2
176914:  MOVS            R2, #0
176916:  VCVT.F32.S32    S5, S6
17691A:  VCVT.F32.S32    S2, S2
17691E:  VCVT.F32.S32    S4, S4
176922:  VMOV.F32        S6, S20
176926:  BL              sub_17A4CE
17692A:  B               loc_17698C
17692C:  DCFS 0.0
176930:  DCFS 0.35
176934:  LDRSH.W         R3, [R6]; jumptable 001768A0 case 4
176938:  LDRSH.W         R5, [R6,#2]
17693C:  LDRSH.W         R0, [R6,#-6]
176940:  VMOV            S2, R3
176944:  LDRSH.W         R3, [R6,#4]
176948:  LDRSH.W         R1, [R6,#-4]
17694C:  VCVT.F32.S32    S3, S2
176950:  LDRSH.W         R2, [R6,#-2]
176954:  VMOV            S2, R5
176958:  ADD             R5, SP, #0x3A8+var_268
17695A:  VMOV            S6, R0
17695E:  LDR             R0, [SP,#0x3A8+var_2A4]
176960:  VCVT.F32.S32    S4, S2
176964:  VMOV            S2, R3
176968:  VMOV            S8, R1
17696C:  MOV             R1, R5
17696E:  VCVT.F32.S32    S5, S2
176972:  VMOV            S2, R2
176976:  MOVS            R2, #0
176978:  VCVT.F32.S32    S7, S8
17697C:  VCVT.F32.S32    S2, S2
176980:  VCVT.F32.S32    S6, S6
176984:  VMOV.F32        S8, S20
176988:  BL              sub_17A5BE
17698C:  LDRSH.W         R1, [R6,#-4]
176990:  LDRSH.W         R0, [R6,#-6]
176994:  VMOV            S0, R1
176998:  VCVT.F32.S32    S1, S0
17699C:  VMOV            S0, R0
1769A0:  VCVT.F32.S32    S0, S0
1769A4:  B               def_1768A0; jumptable 001768A0 default case
1769A6:  LDRSH.W         R1, [R6,#-4]; jumptable 001768A0 case 2
1769AA:  LDRSH.W         R0, [R6,#-6]
1769AE:  VMOV            S0, R1
1769B2:  VCVT.F32.S32    S1, S0
1769B6:  VMOV            S0, R0
1769BA:  LDR             R0, [SP,#0x3A8+var_268]
1769BC:  VCVT.F32.S32    S0, S0
1769C0:  ADDS            R1, R0, #1
1769C2:  STR             R1, [SP,#0x3A8+var_268]
1769C4:  LDR             R1, [SP,#0x3A8+var_2A4]
1769C6:  CBZ             R1, def_1768A0; jumptable 001768A0 default case
1769C8:  ADD.W           R0, R1, R0,LSL#3
1769CC:  VSTR            S0, [R0]
1769D0:  VSTR            S1, [R0,#4]
1769D4:  SUBS            R4, #1; jumptable 001768A0 default case
1769D6:  ADD.W           R6, R6, #0xE
1769DA:  BNE.W           loc_176896
1769DE:  LDR             R0, [SP,#0x3A8+var_268]
1769E0:  MOVS            R4, #0
1769E2:  LDR             R1, [SP,#0x3A8+var_2B4]
1769E4:  SUB.W           R0, R0, R8
1769E8:  STR.W           R0, [R1,R9,LSL#2]
1769EC:  LDR             R0, [SP,#0x3A8+var_2BC]
1769EE:  LSLS            R0, R0, #0x1F
1769F0:  MOV.W           R0, #1
1769F4:  BNE.W           loc_17686A
1769F8:  LDR             R4, [SP,#0x3A8+var_2A4]
1769FA:  LDRD.W          R0, R6, [SP,#0x3A8+var_33C]
1769FE:  CMP             R4, #0
176A00:  BEQ.W           loc_1772CA
176A04:  CMP.W           R10, #1
176A08:  IT EQ
176A0A:  MOVEQ           R6, R0
176A0C:  LDR             R3, [SP,#0x3A8+var_2B4]
176A0E:  MOVS            R0, #0
176A10:  MOVS            R1, #0
176A12:  LDR.W           R2, [R3,R1,LSL#2]
176A16:  ADDS            R1, #1
176A18:  CMP             R6, R1
176A1A:  ADD             R0, R2
176A1C:  BNE             loc_176A12
176A1E:  ADD.W           R0, R0, R0,LSL#2
176A22:  MOVS            R1, #0x14
176A24:  ADD.W           R0, R1, R0,LSL#2
176A28:  BL              sub_1654B0
176A2C:  STR             R0, [SP,#0x3A8+var_2C0]
176A2E:  LDR             R0, [SP,#0x3A8+var_2C0]
176A30:  CMP             R0, #0
176A32:  BEQ.W           loc_1772BE
176A36:  LDR.W           R10, [SP,#0x3A8+var_2B4]
176A3A:  ADD.W           R12, R4, #4
176A3E:  MOV.W           R9, #0
176A42:  MOVS            R1, #0
176A44:  MOV.W           R8, #0
176A48:  LDR.W           LR, [R10,R1,LSL#2]
176A4C:  CMP.W           LR, #1
176A50:  BLT             loc_176B06
176A52:  LDR             R0, [SP,#0x3A8+var_2A4]
176A54:  ADD.W           R5, R12, R8,LSL#3
176A58:  MOV             R3, LR
176A5A:  ADD.W           R6, R0, R8,LSL#3
176A5E:  SUB.W           R0, LR, #1
176A62:  ADD.W           R2, R6, R0,LSL#3
176A66:  VLDR            S2, [R2,#4]
176A6A:  MOVS            R2, #0
176A6C:  VLDR            S0, [R5]
176A70:  MOV             R4, R2
176A72:  VCMP.F32        S2, S0
176A76:  VMRS            APSR_nzcv, FPSCR
176A7A:  BEQ             loc_176AF8
176A7C:  VCMP.F32        S2, S0
176A80:  MOV             R2, R0
176A82:  VMOV.F32        S10, S25
176A86:  VMRS            APSR_nzcv, FPSCR
176A8A:  IT GT
176A8C:  MOVGT           R2, R4
176A8E:  IT LE
176A90:  MOVLE           R0, R4
176A92:  ADD.W           R0, R6, R0,LSL#3
176A96:  ADD.W           R2, R6, R2,LSL#3
176A9A:  VCMP.F32        S2, S0
176A9E:  VLDR            S4, [R0]
176AA2:  VLDR            S6, [R0,#4]
176AA6:  MOVS            R0, #0
176AA8:  VMLA.F32        S10, S4, S18
176AAC:  VMRS            APSR_nzcv, FPSCR
176AB0:  VMOV.F32        S4, S25
176AB4:  IT GT
176AB6:  MOVGT           R0, #1
176AB8:  VLDR            S2, [R2]
176ABC:  VLDR            S8, [R2,#4]
176AC0:  ADD.W           R2, R9, R9,LSL#2
176AC4:  LDR             R3, [SP,#0x3A8+var_2C0]
176AC6:  ADD.W           R9, R9, #1
176ACA:  ADD.W           R2, R3, R2,LSL#2
176ACE:  VMLA.F32        S4, S6, S27
176AD2:  VMOV.F32        S6, S25
176AD6:  STR             R0, [R2,#0x10]
176AD8:  LDR.W           R3, [R10,R1,LSL#2]
176ADC:  VSTR            S10, [R2]
176AE0:  VMLA.F32        S6, S2, S18
176AE4:  VSTR            S4, [R2,#4]
176AE8:  VMOV.F32        S2, S25
176AEC:  VMLA.F32        S2, S8, S27
176AF0:  VSTR            S6, [R2,#8]
176AF4:  VSTR            S2, [R2,#0xC]
176AF8:  VMOV.F32        S2, S0
176AFC:  ADDS            R2, R4, #1
176AFE:  ADDS            R5, #8
176B00:  CMP             R2, R3
176B02:  MOV             R0, R4
176B04:  BLT             loc_176A6C
176B06:  ADDS            R1, #1
176B08:  ADD             R8, LR
176B0A:  CMP             R1, R11
176B0C:  BNE             loc_176A48
176B0E:  LDR             R0, [SP,#0x3A8+var_2C0]
176B10:  MOV             R1, R9
176B12:  BL              sub_17A718
176B16:  CMP.W           R9, #2
176B1A:  BLT             loc_176B9A
176B1C:  LDR             R0, [SP,#0x3A8+var_2C0]
176B1E:  MOVS            R1, #1
176B20:  ADDS            R0, #0x14
176B22:  ADD.W           R2, R1, R1,LSL#2
176B26:  LDR             R3, [SP,#0x3A8+var_2C0]
176B28:  ADD.W           R2, R3, R2,LSL#2
176B2C:  VLDR            D16, [R2,#8]
176B30:  LDR             R3, [R2,#0x10]
176B32:  VLDR            S0, [R2]
176B36:  VLDR            S2, [R2,#4]
176B3A:  MOV             R2, R1
176B3C:  STR             R3, [SP,#0x3A8+var_260]
176B3E:  MOV             R3, R0
176B40:  VSTR            D16, [SP,#0x3A8+var_268]
176B44:  VLDR            S4, [R3,#-0x10]
176B48:  VCMP.F32        S2, S4
176B4C:  VMRS            APSR_nzcv, FPSCR
176B50:  BPL             loc_176B70
176B52:  SUB.W           R5, R3, #0x14
176B56:  SUBS            R2, #1
176B58:  MOV             R6, R5
176B5A:  VLD1.32         {D16-D17}, [R6]!
176B5E:  VST1.32         {D16-D17}, [R3]!
176B62:  LDR             R6, [R6]
176B64:  STR             R6, [R3]
176B66:  ADDS            R3, R2, #1
176B68:  CMP             R3, #1
176B6A:  MOV             R3, R5
176B6C:  BGT             loc_176B44
176B6E:  MOVS            R2, #0
176B70:  CMP             R1, R2
176B72:  BEQ             loc_176B92
176B74:  ADD.W           R2, R2, R2,LSL#2
176B78:  LDR             R6, [SP,#0x3A8+var_2C0]
176B7A:  VLDR            D16, [SP,#0x3A8+var_268]
176B7E:  ADD.W           R2, R6, R2,LSL#2
176B82:  LDR             R3, [SP,#0x3A8+var_260]
176B84:  VSTR            S0, [R2]
176B88:  VSTR            S2, [R2,#4]
176B8C:  VSTR            D16, [R2,#8]
176B90:  STR             R3, [R2,#0x10]
176B92:  ADDS            R1, #1
176B94:  ADDS            R0, #0x14
176B96:  CMP             R1, R9
176B98:  BNE             loc_176B22
176B9A:  MOVS            R0, #0
176B9C:  STR             R0, [SP,#0x3A8+var_64]
176B9E:  LDR             R0, [SP,#0x3A8+var_2CC]
176BA0:  CMP             R0, #0x40 ; '@'
176BA2:  BLT             loc_176BC0
176BA4:  LDR             R0, [SP,#0x3A8+var_330]
176BA6:  LSLS            R0, R0, #3
176BA8:  ADDS            R0, #4
176BAA:  BL              sub_1654B0
176BAE:  MOV             R8, R0
176BB0:  B               loc_176BC4
176BB2:  MOVS            R0, #0
176BB4:  BL              sub_165578
176BB8:  LDR             R0, [SP,#0x3A8+var_2B4]
176BBA:  BL              sub_165578
176BBE:  B               loc_1772CA
176BC0:  ADD.W           R8, SP, #0x3A8+var_268
176BC4:  LDR             R0, [SP,#0x3A8+var_308]
176BC6:  LDR             R2, [SP,#0x3A8+var_344]
176BC8:  LDR             R1, [SP,#0x3A8+var_2C0]
176BCA:  ADD             R0, R2
176BCC:  LDR.W           R10, [SP,#0x3A8+var_2FC]
176BD0:  VMOV            S0, R0
176BD4:  ADD.W           R0, R9, R9,LSL#2
176BD8:  VCVT.F32.S32    S0, S0
176BDC:  ADD.W           R0, R1, R0,LSL#2
176BE0:  LDR             R1, [SP,#0x3A8+var_304]
176BE2:  VADD.F32        S0, S0, S23
176BE6:  VSTR            S0, [R0,#4]
176BEA:  MOV             R0, #0x7FFFFFFE
176BF2:  CMP             R1, R0
176BF4:  BHI.W           loc_1772AA
176BF8:  LDR             R0, [SP,#0x3A8+var_334]
176BFA:  MOVS            R4, #0
176BFC:  LDR.W           R9, [SP,#0x3A8+var_330]
176C00:  MOVS            R5, #0
176C02:  LDR             R1, [SP,#0x3A8+var_2E8]
176C04:  MOV.W           R11, #0
176C08:  VMOV            S0, R0
176C0C:  LDR             R6, [SP,#0x3A8+var_2C0]
176C0E:  ADD.W           R0, R8, R9,LSL#2
176C12:  STR             R0, [SP,#0x3A8+var_2D0]
176C14:  ADDS            R0, #4
176C16:  VCVT.F32.S32    S16, S0
176C1A:  STR             R0, [SP,#0x3A8+var_33C]
176C1C:  VMOV            S0, R9
176C20:  LDR             R0, [SP,#0x3A8+var_370]
176C22:  VCVT.F32.S32    S31, S0
176C26:  VSTR            S19, [SP,#0x3A8+var_38C]
176C2A:  ADD.W           R0, R0, R1,LSL#2
176C2E:  STR             R0, [SP,#0x3A8+var_350]
176C30:  MOVS            R0, #4
176C32:  VSTR            S17, [SP,#0x3A8+var_388]
176C36:  ADD.W           R0, R0, R9,LSL#2
176C3A:  STR             R0, [SP,#0x3A8+var_348]
176C3C:  ADD.W           R0, R8, #4
176C40:  STR             R0, [SP,#0x3A8+var_368]
176C42:  MOV.W           R0, R9,LSL#2
176C46:  VSTR            S30, [SP,#0x3A8+var_384]
176C4A:  STR             R0, [SP,#0x3A8+n]
176C4C:  MOVS            R0, #0
176C4E:  STR             R0, [SP,#0x3A8+var_308]
176C50:  MOVS            R0, #0
176C52:  VSTR            S28, [SP,#0x3A8+var_380]
176C56:  VSTR            S24, [SP,#0x3A8+var_37C]
176C5A:  VSTR            S22, [SP,#0x3A8+var_378]
176C5E:  STR             R0, [SP,#0x3A8+var_2BC]
176C60:  LDR             R1, [SP,#0x3A8+n]; n
176C62:  MOV             R0, R8; int
176C64:  STR             R2, [SP,#0x3A8+var_2E8]
176C66:  BLX             sub_22178C
176C6A:  LDR             R0, [SP,#0x3A8+var_2D0]; int
176C6C:  LDR             R1, [SP,#0x3A8+var_348]; n
176C6E:  BLX             sub_22178C
176C72:  LDR             R0, [SP,#0x3A8+var_2E8]
176C74:  VMOV            S0, R0
176C78:  VCVT.F32.S32    S22, S0
176C7C:  CBZ             R4, loc_176CA6
176C7E:  ADD             R0, SP, #0x3A8+var_64
176C80:  VLDR            S0, [R4,#0x18]
176C84:  VCMP.F32        S0, S22
176C88:  VMRS            APSR_nzcv, FPSCR
176C8C:  BLS             loc_176C92
176C8E:  MOV             R0, R4
176C90:  B               loc_176CA0
176C92:  MOVS            R1, #0
176C94:  STR             R1, [R4,#0x10]
176C96:  LDR             R1, [R4]
176C98:  STR             R1, [R0]
176C9A:  LDR             R1, [SP,#0x3A8+var_2BC]
176C9C:  STR             R1, [R4]
176C9E:  STR             R4, [SP,#0x3A8+var_2BC]
176CA0:  LDR             R4, [R0]
176CA2:  CMP             R4, #0
176CA4:  BNE             loc_176C80
176CA6:  VADD.F32        S24, S22, S23
176CAA:  LDR             R0, [SP,#0x3A8+var_344]
176CAC:  STR.W           R10, [SP,#0x3A8+var_2FC]
176CB0:  CMP             R0, #0
176CB2:  IT NE
176CB4:  MOVNE           R0, #1
176CB6:  VLDR            S0, [R6,#4]
176CBA:  VCMP.F32        S0, S24
176CBE:  VMRS            APSR_nzcv, FPSCR
176CC2:  BLS.W           loc_177186
176CC6:  LDR             R2, [SP,#0x3A8+var_2BC]
176CC8:  STRD.W          R6, R11, [SP,#0x3A8+var_338]
176CCC:  LDR.W           R11, [SP,#0x3A8+var_64]
176CD0:  STR             R2, [SP,#0x3A8+var_2BC]
176CD2:  CMP.W           R11, #0
176CD6:  BEQ.W           loc_1770E8
176CDA:  MOV             R10, R5
176CDC:  VLDR            S29, [R11,#8]
176CE0:  VLDR            S26, [R11,#4]
176CE4:  VCMP.F32        S29, #0.0
176CE8:  VMRS            APSR_nzcv, FPSCR
176CEC:  BNE             loc_176D0C
176CEE:  VCMP.F32        S26, S31
176CF2:  VMRS            APSR_nzcv, FPSCR
176CF6:  BPL.W           loc_176F62
176CFA:  VCMP.F32        S26, #0.0
176CFE:  VMRS            APSR_nzcv, FPSCR
176D02:  BGE.W           loc_176F24
176D06:  LDR             R0, [SP,#0x3A8+var_2D0]
176D08:  MOVS            R1, #0
176D0A:  B               loc_176F4A
176D0C:  VLDR            S4, [R11,#0x14]
176D10:  VMOV.F32        S8, S26
176D14:  VLDR            S6, [R11,#0x18]
176D18:  VMOV.F32        S10, S26
176D1C:  VSUB.F32        S0, S4, S22
176D20:  VCMP.F32        S4, S22
176D24:  VSUB.F32        S2, S6, S22
176D28:  VMRS            APSR_nzcv, FPSCR
176D2C:  VADD.F32        S28, S29, S26
176D30:  VCMP.F32        S6, S24
176D34:  VMLA.F32        S8, S29, S0
176D38:  IT GT
176D3A:  VMOVGT.F32      S10, S8
176D3E:  VMOV.F32        S8, S26
176D42:  VMRS            APSR_nzcv, FPSCR
176D46:  VMOV.F32        S0, S24
176D4A:  VCMP.F32        S4, S22
176D4E:  IT MI
176D50:  VMOVMI.F32      S0, S6
176D54:  VMRS            APSR_nzcv, FPSCR
176D58:  VCMP.F32        S6, S24
176D5C:  VMOV.F32        S6, S28
176D60:  VMLA.F32        S8, S29, S2
176D64:  VMOV.F32        S2, S22
176D68:  IT GT
176D6A:  VMOVGT.F32      S2, S4
176D6E:  VMRS            APSR_nzcv, FPSCR
176D72:  VCMP.F32        S10, #0.0
176D76:  IT MI
176D78:  VMOVMI.F32      S6, S8
176D7C:  VMRS            APSR_nzcv, FPSCR
176D80:  ITT GE
176D82:  VCMPGE.F32      S6, #0.0
176D86:  VMRSGE          APSR_nzcv, FPSCR
176D8A:  BLT             loc_176DA2
176D8C:  VCMP.F32        S10, S31
176D90:  VMRS            APSR_nzcv, FPSCR
176D94:  ITT MI
176D96:  VCMPMI.F32      S6, S31
176D9A:  VMRSMI          APSR_nzcv, FPSCR
176D9E:  BMI.W           loc_176F70
176DA2:  LDR             R1, [SP,#0x3A8+var_2CC]
176DA4:  MOV             R0, #0x7FFFFFFE
176DAC:  CMP             R1, R0
176DAE:  BHI.W           loc_176F62
176DB2:  MOVS            R6, #0
176DB4:  MOV             R4, R6
176DB6:  ADDS            R6, #1
176DB8:  VMOV            S0, R4
176DBC:  VCVT.F32.S32    S19, S0
176DC0:  VMOV            S0, R6
176DC4:  VCVT.F32.S32    S30, S0
176DC8:  VSUB.F32        S0, S19, S26
176DCC:  VCMP.F32        S26, S19
176DD0:  VMRS            APSR_nzcv, FPSCR
176DD4:  VSUB.F32        S2, S30, S26
176DD8:  VDIV.F32        S0, S0, S29
176DDC:  VDIV.F32        S2, S2, S29
176DE0:  VADD.F32        S21, S0, S22
176DE4:  VADD.F32        S17, S2, S22
176DE8:  BPL             loc_176E38
176DEA:  VCMP.F32        S28, S30
176DEE:  VMRS            APSR_nzcv, FPSCR
176DF2:  BLE             loc_176E38
176DF4:  VMOV.F32        S0, S26
176DF8:  MOV             R0, R8
176DFA:  VMOV.F32        S1, S22
176DFE:  MOV             R1, R4
176E00:  VMOV.F32        S2, S19
176E04:  MOV             R2, R11
176E06:  VMOV.F32        S3, S21
176E0A:  BL              sub_17A8AA
176E0E:  MOV             R0, R8
176E10:  MOV             R1, R4
176E12:  MOV             R2, R11
176E14:  VMOV.F32        S0, S19
176E18:  VMOV.F32        S1, S21
176E1C:  VMOV.F32        S2, S30
176E20:  VMOV.F32        S3, S17
176E24:  BL              sub_17A8AA
176E28:  MOV             R0, R8
176E2A:  MOV             R1, R4
176E2C:  MOV             R2, R11
176E2E:  VMOV.F32        S0, S30
176E32:  VMOV.F32        S1, S17
176E36:  B               loc_176EC6
176E38:  VCMP.F32        S28, S19
176E3C:  VMRS            APSR_nzcv, FPSCR
176E40:  BPL             loc_176E76
176E42:  VCMP.F32        S26, S30
176E46:  VMRS            APSR_nzcv, FPSCR
176E4A:  BLE             loc_176E76
176E4C:  VMOV.F32        S0, S26
176E50:  MOV             R0, R8
176E52:  VMOV.F32        S1, S22
176E56:  MOV             R1, R4
176E58:  VMOV.F32        S2, S30
176E5C:  MOV             R2, R11
176E5E:  VMOV.F32        S3, S17
176E62:  BL              sub_17A8AA
176E66:  MOV             R0, R8
176E68:  MOV             R1, R4
176E6A:  MOV             R2, R11
176E6C:  VMOV.F32        S0, S30
176E70:  VMOV.F32        S1, S17
176E74:  B               loc_176EAC
176E76:  VCMP.F32        S26, S19
176E7A:  VMRS            APSR_nzcv, FPSCR
176E7E:  BPL             loc_176E8A
176E80:  VCMP.F32        S28, S19
176E84:  VMRS            APSR_nzcv, FPSCR
176E88:  BGT             loc_176E9E
176E8A:  VCMP.F32        S28, S19
176E8E:  VMRS            APSR_nzcv, FPSCR
176E92:  BPL             loc_176EDC
176E94:  VCMP.F32        S26, S19
176E98:  VMRS            APSR_nzcv, FPSCR
176E9C:  BLE             loc_176EDC
176E9E:  VMOV.F32        S0, S26
176EA2:  MOV             R0, R8
176EA4:  VMOV.F32        S1, S22
176EA8:  MOV             R1, R4
176EAA:  MOV             R2, R11
176EAC:  VMOV.F32        S2, S19
176EB0:  VMOV.F32        S3, S21
176EB4:  BL              sub_17A8AA
176EB8:  MOV             R0, R8
176EBA:  MOV             R1, R4
176EBC:  MOV             R2, R11
176EBE:  VMOV.F32        S0, S19
176EC2:  VMOV.F32        S1, S21
176EC6:  VMOV.F32        S2, S28
176ECA:  VMOV.F32        S3, S24
176ECE:  BL              sub_17A8AA
176ED2:  CMP             R9, R6
176ED4:  MOV             R5, R10
176ED6:  BNE.W           loc_176DB4
176EDA:  B               loc_176F62
176EDC:  VCMP.F32        S26, S30
176EE0:  VMRS            APSR_nzcv, FPSCR
176EE4:  BPL             loc_176EF0
176EE6:  VCMP.F32        S28, S30
176EEA:  VMRS            APSR_nzcv, FPSCR
176EEE:  BGT             loc_176F04
176EF0:  VCMP.F32        S28, S30
176EF4:  VMRS            APSR_nzcv, FPSCR
176EF8:  BPL             loc_176F14
176EFA:  VCMP.F32        S26, S30
176EFE:  VMRS            APSR_nzcv, FPSCR
176F02:  BLE             loc_176F14
176F04:  VMOV.F32        S0, S26
176F08:  MOV             R0, R8
176F0A:  VMOV.F32        S1, S22
176F0E:  MOV             R1, R4
176F10:  MOV             R2, R11
176F12:  B               loc_176E1C
176F14:  VMOV.F32        S0, S26
176F18:  MOV             R0, R8
176F1A:  VMOV.F32        S1, S22
176F1E:  MOV             R1, R4
176F20:  MOV             R2, R11
176F22:  B               loc_176EC6
176F24:  VCVT.S32.F32    S0, S26
176F28:  MOV             R0, R8
176F2A:  VMOV.F32        S1, S22
176F2E:  MOV             R2, R11
176F30:  VMOV.F32        S2, S26
176F34:  VMOV.F32        S3, S24
176F38:  VMOV            R4, S0
176F3C:  VMOV.F32        S0, S26
176F40:  MOV             R1, R4
176F42:  BL              sub_17A8AA
176F46:  ADDS            R1, R4, #1
176F48:  LDR             R0, [SP,#0x3A8+var_2D0]
176F4A:  VMOV.F32        S0, S26
176F4E:  MOV             R2, R11
176F50:  VMOV.F32        S1, S22
176F54:  VMOV.F32        S2, S26
176F58:  VMOV.F32        S3, S24
176F5C:  BL              sub_17A8AA
176F60:  MOV             R5, R10
176F62:  LDR.W           R11, [R11]
176F66:  CMP.W           R11, #0
176F6A:  BNE.W           loc_176CDC
176F6E:  B               loc_1770E8
176F70:  VCVT.S32.F32    S8, S6
176F74:  VCVT.S32.F32    S4, S10
176F78:  VMOV            R1, S8
176F7C:  VMOV            R2, S4
176F80:  CMP             R2, R1
176F82:  BNE             loc_176FD4
176F84:  VCVT.F32.S32    S4, S4
176F88:  ADD.W           R0, R8, R2,LSL#2
176F8C:  VMOV.F32        S8, #-0.5
176F90:  VSUB.F32        S0, S0, S2
176F94:  VSUB.F32        S6, S6, S4
176F98:  VSUB.F32        S4, S10, S4
176F9C:  VADD.F32        S4, S4, S6
176FA0:  VMOV.F32        S6, S23
176FA4:  VMLA.F32        S6, S4, S8
176FA8:  VLDR            S4, [R11,#0x10]
176FAC:  VMUL.F32        S2, S6, S4
176FB0:  VLDR            S4, [R0]
176FB4:  VMLA.F32        S4, S2, S0
176FB8:  VSTR            S4, [R0]
176FBC:  LDR             R0, [SP,#0x3A8+var_33C]
176FBE:  VLDR            S2, [R11,#0x10]
176FC2:  ADD.W           R0, R0, R2,LSL#2
176FC6:  VLDR            S4, [R0]
176FCA:  VMLA.F32        S4, S2, S0
176FCE:  VSTR            S4, [R0]
176FD2:  B               loc_176F62
176FD4:  VCMP.F32        S10, S6
176FD8:  VLDR            S4, [R11,#0xC]
176FDC:  VMRS            APSR_nzcv, FPSCR
176FE0:  BLE             loc_176FFE
176FE2:  VSUB.F32        S0, S0, S22
176FE6:  MOV             R0, R2
176FE8:  VSUB.F32        S8, S2, S22
176FEC:  VNEG.F32        S4, S4
176FF0:  VSUB.F32        S2, S24, S0
176FF4:  VSUB.F32        S0, S24, S8
176FF8:  VMOV.F32        S8, S10
176FFC:  B               loc_17700E
176FFE:  MOV             R0, R1
177000:  VMOV.F32        S8, S6
177004:  MOV             R1, R2
177006:  VMOV.F32        S6, S10
17700A:  VMOV.F32        S28, S26
17700E:  ADDS            R2, R1, #1
177010:  VMOV            S12, R1
177014:  VMOV.F32        S3, #0.5
177018:  ADD.W           R3, R8, R1,LSL#2
17701C:  VMOV            S10, R2
177020:  CMP             R0, R2
177022:  VCVT.F32.S32    S12, S12
177026:  VCVT.F32.S32    S10, S10
17702A:  VMOV.F32        S1, S23
17702E:  VSUB.F32        S6, S6, S12
177032:  VSUB.F32        S14, S10, S28
177036:  VMOV.F32        S10, S22
17703A:  VADD.F32        S12, S6, S23
17703E:  VLDR            S6, [R11,#0x10]
177042:  VMLA.F32        S10, S14, S4
177046:  VMLS.F32        S1, S12, S3
17704A:  VSUB.F32        S14, S10, S2
17704E:  VMUL.F32        S12, S6, S14
177052:  VLDR            S14, [R3]
177056:  VMLA.F32        S14, S12, S1
17705A:  VSTR            S14, [R3]
17705E:  BLE             loc_17708A
177060:  VMUL.F32        S14, S4, S6
177064:  LDR             R3, [SP,#0x3A8+var_368]
177066:  ADD.W           R3, R3, R1,LSL#2
17706A:  MVNS            R1, R1
17706C:  ADD             R1, R0
17706E:  VMUL.F32        S1, S14, S3
177072:  VADD.F32        S3, S1, S12
177076:  VLDR            S5, [R3]
17707A:  VADD.F32        S12, S14, S12
17707E:  SUBS            R1, #1
177080:  VADD.F32        S3, S3, S5
177084:  VSTM            R3!, {S3}
177088:  BNE             loc_177072
17708A:  VMOV            S14, R0
17708E:  SUBS            R1, R0, R2
177090:  VCVT.F32.S32    S14, S14
177094:  VSUB.F32        S8, S8, S14
177098:  VMOV            S14, R1
17709C:  ADD.W           R1, R8, R0,LSL#2
1770A0:  VCVT.F32.S32    S14, S14
1770A4:  VADD.F32        S8, S8, S25
1770A8:  VMLA.F32        S10, S4, S14
1770AC:  VMOV.F32        S14, #-0.5
1770B0:  VMOV.F32        S4, S23
1770B4:  VMLA.F32        S4, S8, S14
1770B8:  VSUB.F32        S8, S0, S10
1770BC:  VSUB.F32        S0, S0, S2
1770C0:  VMUL.F32        S4, S6, S4
1770C4:  VMLA.F32        S12, S4, S8
1770C8:  VLDR            S4, [R1]
1770CC:  VADD.F32        S4, S12, S4
1770D0:  VSTR            S4, [R1]
1770D4:  LDR             R1, [SP,#0x3A8+var_33C]
1770D6:  ADD.W           R0, R1, R0,LSL#2
1770DA:  VLDR            S2, [R0]
1770DE:  VMLA.F32        S2, S6, S0
1770E2:  VSTR            S2, [R0]
1770E6:  B               loc_176F62
1770E8:  VMOV.F32        S6, #0.5
1770EC:  LDR             R1, [SP,#0x3A8+var_2CC]
1770EE:  LDR             R4, [SP,#0x3A8+var_350]
1770F0:  MOVW            R0, #0xFFFE
1770F4:  LDR.W           R10, [SP,#0x3A8+var_2FC]
1770F8:  MOVT            R0, #0x7FFF
1770FC:  VLDR            S8, =255.0
177100:  CMP             R1, R0
177102:  MOV.W           R6, #0xFF
177106:  BHI             loc_177146
177108:  VMOV.F32        S0, S25
17710C:  MOV             R0, R8
17710E:  MOV             R1, R10
177110:  MOV             R2, R9
177112:  ADDS            R3, R0, R4
177114:  VMOV.F32        S4, S6
177118:  VLDR            S2, [R3]
17711C:  VADD.F32        S0, S0, S2
177120:  VLDM            R0!, {S2}
177124:  VADD.F32        S2, S2, S0
177128:  VABS.F32        S2, S2
17712C:  VMLA.F32        S4, S2, S8
177130:  VCVT.S32.F32    S2, S4
177134:  VMOV            R3, S2
177138:  CMP             R3, #0xFF
17713A:  IT GE
17713C:  MOVGE           R3, R6
17713E:  STRB.W          R3, [R1],#1
177142:  SUBS            R2, #1
177144:  BNE             loc_177112
177146:  LDR             R4, [SP,#0x3A8+var_64]
177148:  LDR             R6, [SP,#0x3A8+var_338]
17714A:  MOV             R0, R4
17714C:  CBZ             R4, loc_177166
17714E:  VLDR            S0, [R0,#4]
177152:  VLDR            S2, [R0,#8]
177156:  LDR             R1, [R0]
177158:  VADD.F32        S0, S2, S0
17715C:  CMP             R1, #0
17715E:  VSTR            S0, [R0,#4]
177162:  MOV             R0, R1
177164:  BNE             loc_17714E
177166:  VMOV.F32        S26, #-1.0
17716A:  LDR             R2, [SP,#0x3A8+var_2E8]
17716C:  LDR             R0, [SP,#0x3A8+var_2A8]
17716E:  LDR             R3, [SP,#0x3A8+var_308]
177170:  ADDS            R2, #1
177172:  LDR             R1, [SP,#0x3A8+var_304]
177174:  ADD             R10, R0
177176:  LDR.W           R11, [SP,#0x3A8+var_334]
17717A:  ADDS            R0, R3, #1
17717C:  CMP             R3, R1
17717E:  STR             R0, [SP,#0x3A8+var_308]
177180:  BNE.W           loc_176C60
177184:  B               loc_177278
177186:  LDR             R1, [SP,#0x3A8+var_308]
177188:  LDR             R2, [SP,#0x3A8+var_2BC]
17718A:  CLZ.W           R1, R1
17718E:  LSRS            R1, R1, #5
177190:  AND.W           R4, R0, R1
177194:  VLDR            S2, [R6,#0xC]
177198:  VCMP.F32        S0, S2
17719C:  VMRS            APSR_nzcv, FPSCR
1771A0:  BEQ             loc_17725E
1771A2:  CBZ             R2, loc_1771A8
1771A4:  LDR             R0, [R2]
1771A6:  B               loc_1771D0
1771A8:  CBZ             R5, loc_1771AE
1771AA:  SUBS            R5, #1
1771AC:  B               loc_1771C4
1771AE:  MOVW            R0, #0xDAC4
1771B2:  BL              sub_1654B0
1771B6:  CMP             R0, #0
1771B8:  BEQ             loc_177270
1771BA:  STR.W           R11, [R0]
1771BE:  MOVW            R5, #0x7CF
1771C2:  MOV             R11, R0
1771C4:  RSB.W           R0, R5, R5,LSL#3
1771C8:  ADD.W           R0, R11, R0,LSL#2
1771CC:  ADDS            R2, R0, #4
1771CE:  MOVS            R0, #0
1771D0:  CMP             R2, #0
1771D2:  BEQ             loc_17725C
1771D4:  VLDR            S2, [R6,#4]
1771D8:  VMOV.F32        S12, S25
1771DC:  VLDR            S6, [R6,#0xC]
1771E0:  VLDR            S0, [R6]
1771E4:  VSUB.F32        S10, S22, S2
1771E8:  VLDR            S4, [R6,#8]
1771EC:  VSUB.F32        S8, S6, S2
1771F0:  LDR             R1, [R6,#0x10]
1771F2:  CMP             R1, #0
1771F4:  VSUB.F32        S4, S4, S0
1771F8:  MOV.W           R1, #0
1771FC:  VDIV.F32        S4, S4, S8
177200:  VMLA.F32        S0, S4, S10
177204:  VMOV.F32        S10, S23
177208:  VCMP.F32        S4, #0.0
17720C:  IT EQ
17720E:  VMOVEQ.F32      S10, S26
177212:  VMRS            APSR_nzcv, FPSCR
177216:  VCMP.F32        S6, S22
17721A:  VDIV.F32        S8, S23, S4
17721E:  IT NE
177220:  VMOVNE.F32      S12, S8
177224:  STR             R1, [R2]
177226:  MOVS            R1, #0
177228:  VSUB.F32        S0, S0, S16
17722C:  VSTR            S4, [R2,#8]
177230:  VSTR            S12, [R2,#0xC]
177234:  VSTR            S10, [R2,#0x10]
177238:  VSTR            S2, [R2,#0x14]
17723C:  VSTR            S6, [R2,#0x18]
177240:  VMRS            APSR_nzcv, FPSCR
177244:  VSTR            S0, [R2,#4]
177248:  IT MI
17724A:  MOVMI           R1, #1
17724C:  ANDS            R1, R4
17724E:  CMP             R1, #1
177250:  IT EQ
177252:  VSTREQ          S22, [R2,#0x18]
177256:  LDR             R1, [SP,#0x3A8+var_64]
177258:  STR             R1, [R2]
17725A:  STR             R2, [SP,#0x3A8+var_64]
17725C:  MOV             R2, R0
17725E:  VLDR            S0, [R6,#0x18]
177262:  ADDS            R6, #0x14
177264:  VCMP.F32        S0, S24
177268:  VMRS            APSR_nzcv, FPSCR
17726C:  BLS             loc_177194
17726E:  B               loc_176CC8
177270:  MOVS            R0, #0
177272:  MOVS            R5, #0
177274:  MOVS            R2, #0
177276:  B               loc_1771D0
177278:  VLDR            S16, =0.35
17727C:  CMP.W           R11, #0
177280:  VLDR            S22, [SP,#0x3A8+var_378]
177284:  VLDR            S24, [SP,#0x3A8+var_37C]
177288:  VLDR            S28, [SP,#0x3A8+var_380]
17728C:  VLDR            S30, [SP,#0x3A8+var_384]
177290:  VLDR            S17, [SP,#0x3A8+var_388]
177294:  VLDR            S19, [SP,#0x3A8+var_38C]
177298:  BEQ             loc_1772AA
17729A:  LDR.W           R4, [R11]
17729E:  MOV             R0, R11
1772A0:  BL              sub_165578
1772A4:  CMP             R4, #0
1772A6:  MOV             R11, R4
1772A8:  BNE             loc_17729A
1772AA:  LDR             R4, [SP,#0x3A8+var_2A4]
1772AC:  ADD             R0, SP, #0x3A8+var_268
1772AE:  CMP             R8, R0
1772B0:  BEQ             loc_1772B8
1772B2:  MOV             R0, R8
1772B4:  BL              sub_165578
1772B8:  LDR             R0, [SP,#0x3A8+var_2C0]
1772BA:  BL              sub_165578
1772BE:  LDR             R0, [SP,#0x3A8+var_2B4]
1772C0:  BL              sub_165578
1772C4:  MOV             R0, R4
1772C6:  BL              sub_165578
1772CA:  LDR             R0, [SP,#0x3A8+var_274]
1772CC:  BL              sub_165578
1772D0:  LDR             R0, [SP,#0x3A8+var_2AC]
1772D2:  LDR.W           R10, [SP,#0x3A8+var_2B0]
1772D6:  LDR             R5, [SP,#0x3A8+var_2D8]
1772D8:  CMP             R0, #2
1772DA:  BCC.W           loc_1774AA
1772DE:  LDR             R0, [SP,#0x3A8+var_2C8]
1772E0:  MOVS            R2, #0
1772E2:  LDRH            R1, [R5]
1772E4:  LDRH.W          R8, [R0]
1772E8:  LDR             R0, [SP,#0x3A8+var_2C4]
1772EA:  CMP.W           R8, #0
1772EE:  LDRH.W          R9, [R0]
1772F2:  LDR             R0, [SP,#0x3A8+var_2D4]
1772F4:  LDRH            R0, [R0]
1772F6:  STRD.W          R2, R2, [SP,#0x3A8+var_268]
1772FA:  BEQ.W           loc_1774A8
1772FE:  LDR             R2, [SP,#0x3A8+var_340]
177300:  MOVS            R5, #0
177302:  ADD             R1, R2
177304:  LDR             R2, [SP,#0x3A8+var_2A8]
177306:  MLA.W           R11, R2, R0, R1
17730A:  LDR             R0, [SP,#0x3A8+var_360]
17730C:  ADD             R0, R9
17730E:  STR             R0, [SP,#0x3A8+var_2A4]
177310:  LDR             R4, [SP,#0x3A8+var_2AC]
177312:  ADD             R0, SP, #0x3A8+var_268
177314:  MOVS            R1, #0
177316:  MOVS            R3, #8
177318:  MOV             R2, R4
17731A:  BLX             __memset_chk
17731E:  SUBS            R0, R4, #2; switch 4 cases
177320:  STR             R5, [SP,#0x3A8+var_2B4]
177322:  CMP             R0, #3
177324:  BHI.W           def_177328; jumptable 00177328 default case
177328:  TBB.W           [PC,R0]; switch jump
17732C:  DCB 2; jump table for switch statement
17732D:  DCB 0x56
17732E:  DCB 0x1C
17732F:  DCB 0x36
177330:  CMP             R9, R4; jumptable 00177328 case 2
177332:  BCC             loc_17741C
177334:  LDR             R6, [SP,#0x3A8+var_2A4]
177336:  ADD             R5, SP, #0x3A8+var_268
177338:  MOVS            R4, #0
17733A:  MOVS            R0, #0
17733C:  AND.W           R2, R0, #7
177340:  ADDS            R3, R0, #2
177342:  ADD             R2, R5
177344:  AND.W           R3, R3, #7
177348:  LDRB.W          R1, [R11,R0]
17734C:  ADD             R3, R5
17734E:  LDRB            R2, [R2]
177350:  STRB            R1, [R3]
177352:  SUBS            R1, R1, R2
177354:  ADD             R4, R1
177356:  LSRS            R1, R4, #1
177358:  STRB.W          R1, [R11,R0]
17735C:  ADDS            R0, #1
17735E:  CMP             R6, R0
177360:  BNE             loc_17733C
177362:  B               loc_177420
177364:  CMP             R9, R4; jumptable 00177328 case 4
177366:  BCC             loc_17741C
177368:  LDR             R6, [SP,#0x3A8+var_2A4]
17736A:  ADD             R5, SP, #0x3A8+var_268
17736C:  MOVS            R4, #0
17736E:  MOVS            R0, #0
177370:  AND.W           R2, R0, #7
177374:  ADDS            R3, R0, #4
177376:  ADD             R2, R5
177378:  AND.W           R3, R3, #7
17737C:  LDRB.W          R1, [R11,R0]
177380:  ADD             R3, R5
177382:  LDRB            R2, [R2]
177384:  STRB            R1, [R3]
177386:  SUBS            R1, R1, R2
177388:  ADD             R4, R1
17738A:  LSRS            R1, R4, #2
17738C:  STRB.W          R1, [R11,R0]
177390:  ADDS            R0, #1
177392:  CMP             R6, R0
177394:  BNE             loc_177370
177396:  B               loc_177420
177398:  CMP             R9, R4; jumptable 00177328 case 5
17739A:  BCC             loc_17741C
17739C:  LDR             R6, [SP,#0x3A8+var_2A4]
17739E:  MOVW            R12, #0xCCCD
1773A2:  ADD             R5, SP, #0x3A8+var_268
1773A4:  MOVS            R4, #0
1773A6:  MOVS            R0, #0
1773A8:  MOVT            R12, #0xCCCC
1773AC:  AND.W           R2, R0, #7
1773B0:  LDRB.W          R1, [R11,R0]
1773B4:  ADD             R2, R5
1773B6:  LDRB            R2, [R2]
1773B8:  SUBS            R2, R1, R2
1773BA:  ADD             R4, R2
1773BC:  UMULL.W         R2, R3, R4, R12
1773C0:  ADDS            R2, R0, #5
1773C2:  AND.W           R2, R2, #7
1773C6:  ADD             R2, R5
1773C8:  STRB            R1, [R2]
1773CA:  LSRS            R1, R3, #2
1773CC:  STRB.W          R1, [R11,R0]
1773D0:  ADDS            R0, #1
1773D2:  CMP             R6, R0
1773D4:  BNE             loc_1773AC
1773D6:  B               loc_177420
1773D8:  CMP             R9, R4; jumptable 00177328 case 3
1773DA:  BCC             loc_17741C
1773DC:  LDR             R6, [SP,#0x3A8+var_2A4]
1773DE:  MOVW            R12, #0xAAAB
1773E2:  ADD             R5, SP, #0x3A8+var_268
1773E4:  MOVS            R4, #0
1773E6:  MOVS            R0, #0
1773E8:  MOVT            R12, #0xAAAA
1773EC:  AND.W           R2, R0, #7
1773F0:  LDRB.W          R1, [R11,R0]
1773F4:  ADD             R2, R5
1773F6:  LDRB            R2, [R2]
1773F8:  SUBS            R2, R1, R2
1773FA:  ADD             R4, R2
1773FC:  UMULL.W         R2, R3, R4, R12
177400:  ADDS            R2, R0, #3
177402:  AND.W           R2, R2, #7
177406:  ADD             R2, R5
177408:  STRB            R1, [R2]
17740A:  LSRS            R1, R3, #1
17740C:  STRB.W          R1, [R11,R0]
177410:  ADDS            R0, #1
177412:  CMP             R6, R0
177414:  BNE             loc_1773EC
177416:  B               loc_177420
177418:  CMP             R9, R4; jumptable 00177328 default case
17741A:  BCS             loc_177464
17741C:  MOVS            R6, #0
17741E:  MOVS            R4, #0
177420:  LDR             R5, [SP,#0x3A8+var_2AC]
177422:  ADD.W           R10, SP, #0x3A8+var_268
177426:  CMP             R6, R9
177428:  BGE             loc_177446
17742A:  AND.W           R0, R6, #7
17742E:  MOV             R1, R5
177430:  ADD             R0, R10
177432:  LDRB            R0, [R0]
177434:  SUBS            R4, R4, R0
177436:  MOV             R0, R4
177438:  BLX             sub_220A6C
17743C:  STRB.W          R0, [R11,R6]
177440:  ADDS            R6, #1
177442:  CMP             R9, R6
177444:  BNE             loc_17742A
177446:  LDR             R5, [SP,#0x3A8+var_2B4]
177448:  LDR             R0, [SP,#0x3A8+var_2A8]
17744A:  LDR.W           R10, [SP,#0x3A8+var_2B0]
17744E:  ADDS            R5, #1
177450:  ADD             R11, R0
177452:  CMP             R5, R8
177454:  BNE.W           loc_177310
177458:  B               loc_1774A8
17745A:  ALIGN 4
17745C:  DCFS 255.0
177460:  DCFS 0.35
177464:  MOV             R5, R8
177466:  LDR.W           R8, [SP,#0x3A8+var_2AC]
17746A:  ADD.W           R10, SP, #0x3A8+var_268
17746E:  MOVS            R4, #0
177470:  MOVS            R6, #0
177472:  AND.W           R1, R6, #7
177476:  ADD.W           R2, R8, R6
17747A:  ADD             R1, R10
17747C:  AND.W           R2, R2, #7
177480:  LDRB.W          R0, [R11,R6]
177484:  ADD             R2, R10
177486:  LDRB            R1, [R1]
177488:  STRB            R0, [R2]
17748A:  SUBS            R0, R0, R1
17748C:  MOV             R1, R8
17748E:  ADD             R4, R0
177490:  MOV             R0, R4
177492:  BLX             sub_220A6C
177496:  LDR             R1, [SP,#0x3A8+var_2A4]
177498:  STRB.W          R0, [R11,R6]
17749C:  ADDS            R6, #1
17749E:  CMP             R1, R6
1774A0:  BNE             loc_177472
1774A2:  MOV             R6, R1
1774A4:  MOV             R8, R5
1774A6:  B               loc_177420
1774A8:  LDR             R5, [SP,#0x3A8+var_2D8]
1774AA:  LDR.W           R8, [SP,#0x3A8+var_2A8]
1774AE:  CMP.W           R10, #2
1774B2:  BCC.W           loc_1776A6
1774B6:  LDR             R0, [SP,#0x3A8+var_2C8]
1774B8:  MOVS            R2, #0
1774BA:  LDRH            R1, [R5]
1774BC:  LDRH.W          LR, [R0]
1774C0:  LDR             R0, [SP,#0x3A8+var_2C4]
1774C2:  LDRH            R3, [R0]
1774C4:  LDR             R0, [SP,#0x3A8+var_2D4]
1774C6:  CMP             R3, #0
1774C8:  STR             R3, [SP,#0x3A8+var_2BC]
1774CA:  LDRH            R0, [R0]
1774CC:  STRD.W          R2, R2, [SP,#0x3A8+var_268]
1774D0:  MOV             R2, R3
1774D2:  BEQ.W           loc_1776A4
1774D6:  LDR             R2, [SP,#0x3A8+var_340]
1774D8:  MOVS            R6, #0
1774DA:  STR.W           LR, [SP,#0x3A8+var_2A4]
1774DE:  ADD             R1, R2
1774E0:  MLA.W           R11, R8, R0, R1
1774E4:  LDR             R0, [SP,#0x3A8+var_35C]
1774E6:  ADD.W           R9, R0, LR
1774EA:  STR.W           R9, [SP,#0x3A8+var_2C0]
1774EE:  ADD             R5, SP, #0x3A8+var_268
1774F0:  MOVS            R1, #0
1774F2:  MOV             R2, R10
1774F4:  MOVS            R3, #8
1774F6:  MOV             R0, R5
1774F8:  BLX             __memset_chk
1774FC:  SUB.W           R0, R10, #2; switch 4 cases
177500:  STR             R6, [SP,#0x3A8+var_2B4]
177502:  CMP             R0, #3
177504:  BHI.W           def_17750C; jumptable 0017750C default case
177508:  LDR.W           LR, [SP,#0x3A8+var_2A4]
17750C:  TBB.W           [PC,R0]; switch jump
177510:  DCB 2; jump table for switch statement
177511:  DCB 0x59
177512:  DCB 0x1D
177513:  DCB 0x38
177514:  CMP             LR, R10; jumptable 0017750C case 2
177516:  BCC             loc_17760E
177518:  MOVS            R0, #0
17751A:  MOVS            R4, #0
17751C:  MOVS            R1, #0
17751E:  AND.W           R3, R1, #7
177522:  ADDS            R6, R1, #2
177524:  ADD             R3, R5
177526:  AND.W           R6, R6, #7
17752A:  LDRB.W          R2, [R11,R0]
17752E:  ADD             R6, R5
177530:  LDRB            R3, [R3]
177532:  STRB            R2, [R6]
177534:  ADDS            R1, #1
177536:  SUBS            R2, R2, R3
177538:  CMP             R9, R1
17753A:  ADD             R4, R2
17753C:  MOV.W           R2, R4,LSR#1
177540:  STRB.W          R2, [R11,R0]
177544:  ADD             R0, R8
177546:  BNE             loc_17751E
177548:  B               loc_177602
17754A:  CMP             LR, R10; jumptable 0017750C case 4
17754C:  BCC             loc_17760E
17754E:  MOVS            R0, #0
177550:  MOVS            R4, #0
177552:  MOVS            R1, #0
177554:  AND.W           R3, R1, #7
177558:  ADDS            R6, R1, #4
17755A:  ADD             R3, R5
17755C:  AND.W           R6, R6, #7
177560:  LDRB.W          R2, [R11,R0]
177564:  ADD             R6, R5
177566:  LDRB            R3, [R3]
177568:  STRB            R2, [R6]
17756A:  ADDS            R1, #1
17756C:  SUBS            R2, R2, R3
17756E:  CMP             R9, R1
177570:  ADD             R4, R2
177572:  MOV.W           R2, R4,LSR#2
177576:  STRB.W          R2, [R11,R0]
17757A:  ADD             R0, R8
17757C:  BNE             loc_177554
17757E:  B               loc_177602
177580:  CMP             LR, R10; jumptable 0017750C case 5
177582:  BCC             loc_17760E
177584:  MOVW            R12, #0xCCCD
177588:  MOVS            R0, #0
17758A:  MOVS            R4, #0
17758C:  MOVS            R1, #0
17758E:  MOVT            R12, #0xCCCC
177592:  AND.W           R3, R1, #7
177596:  LDRB.W          R2, [R11,R0]
17759A:  ADD             R3, R5
17759C:  LDRB            R3, [R3]
17759E:  SUBS            R3, R2, R3
1775A0:  ADD             R4, R3
1775A2:  UMULL.W         R3, R6, R4, R12
1775A6:  ADDS            R3, R1, #5
1775A8:  AND.W           R3, R3, #7
1775AC:  ADD             R3, R5
1775AE:  ADDS            R1, #1
1775B0:  CMP             R9, R1
1775B2:  STRB            R2, [R3]
1775B4:  MOV.W           R2, R6,LSR#2
1775B8:  STRB.W          R2, [R11,R0]
1775BC:  ADD             R0, R8
1775BE:  BNE             loc_177592
1775C0:  B               loc_177602
1775C2:  CMP             LR, R10; jumptable 0017750C case 3
1775C4:  BCC             loc_17760E
1775C6:  MOVW            R12, #0xAAAB
1775CA:  MOVS            R0, #0
1775CC:  MOVS            R4, #0
1775CE:  MOVS            R1, #0
1775D0:  MOVT            R12, #0xAAAA
1775D4:  AND.W           R3, R1, #7
1775D8:  LDRB.W          R2, [R11,R0]
1775DC:  ADD             R3, R5
1775DE:  LDRB            R3, [R3]
1775E0:  SUBS            R3, R2, R3
1775E2:  ADD             R4, R3
1775E4:  UMULL.W         R3, R6, R4, R12
1775E8:  ADDS            R3, R1, #3
1775EA:  AND.W           R3, R3, #7
1775EE:  ADD             R3, R5
1775F0:  ADDS            R1, #1
1775F2:  CMP             R9, R1
1775F4:  STRB            R2, [R3]
1775F6:  MOV.W           R2, R6,LSR#1
1775FA:  STRB.W          R2, [R11,R0]
1775FE:  ADD             R0, R8
177600:  BNE             loc_1775D4
177602:  MOV             R6, R9
177604:  B               loc_177612
177606:  LDR.W           LR, [SP,#0x3A8+var_2A4]; jumptable 0017750C default case
17760A:  CMP             LR, R10
17760C:  BCS             loc_17765A
17760E:  MOVS            R6, #0
177610:  MOVS            R4, #0
177612:  LDR.W           R10, [SP,#0x3A8+var_2B0]
177616:  ADD.W           R9, SP, #0x3A8+var_268
17761A:  CMP             R6, LR
17761C:  BGE             loc_177644
17761E:  MUL.W           R5, R8, R6
177622:  AND.W           R0, R6, #7
177626:  MOV             R1, R10
177628:  ADD             R0, R9
17762A:  LDRB            R0, [R0]
17762C:  SUBS            R4, R4, R0
17762E:  MOV             R0, R4
177630:  BLX             sub_220A6C
177634:  LDR.W           LR, [SP,#0x3A8+var_2A4]
177638:  ADDS            R6, #1
17763A:  STRB.W          R0, [R11,R5]
17763E:  ADD             R5, R8
177640:  CMP             LR, R6
177642:  BNE             loc_177622
177644:  LDR             R6, [SP,#0x3A8+var_2B4]
177646:  ADD.W           R11, R11, #1
17764A:  LDR             R0, [SP,#0x3A8+var_2BC]
17764C:  LDR.W           R9, [SP,#0x3A8+var_2C0]
177650:  ADDS            R6, #1
177652:  CMP             R6, R0
177654:  BNE.W           loc_1774EE
177658:  B               loc_1776A4
17765A:  LDR             R5, [SP,#0x3A8+var_2B0]
17765C:  ADD.W           R10, SP, #0x3A8+var_268
177660:  MOVS            R6, #0
177662:  MOVS            R4, #0
177664:  MOV.W           R8, #0
177668:  AND.W           R1, R8, #7
17766C:  ADD.W           R0, R5, R8
177670:  ADD             R1, R10
177672:  AND.W           R0, R0, #7
177676:  LDRB.W          R2, [R11,R6]
17767A:  ADD             R0, R10
17767C:  LDRB            R1, [R1]
17767E:  STRB            R2, [R0]
177680:  SUBS            R0, R2, R1
177682:  MOV             R1, R5
177684:  ADD             R4, R0
177686:  MOV             R0, R4
177688:  BLX             sub_220A6C
17768C:  STRB.W          R0, [R11,R6]
177690:  ADD.W           R8, R8, #1
177694:  CMP             R9, R8
177696:  LDR             R0, [SP,#0x3A8+var_2A8]
177698:  ADD             R6, R0
17769A:  BNE             loc_177668
17769C:  MOV             R6, R9
17769E:  LDRD.W          R8, LR, [SP,#0x3A8+var_2A8]
1776A2:  B               loc_177612
1776A4:  LDR             R5, [SP,#0x3A8+var_2D8]
1776A6:  LDR             R0, [SP,#0x3A8+var_2F4]
1776A8:  VMOV.F32        S10, S24
1776AC:  LDRD.W          R2, R3, [SP,#0x3A8+var_27C]
1776B0:  MOV.W           R8, #0xFF
1776B4:  VMOV            S2, R3
1776B8:  REV             R0, R0
1776BA:  LDR             R4, [SP,#0x3A8+var_2EC]
1776BC:  LSRS            R1, R0, #0x10
1776BE:  VCVT.F32.S32    S2, S2
1776C2:  LDR             R0, [SP,#0x3A8+var_2C4]
1776C4:  SXTH            R1, R1
1776C6:  VMOV            S0, R2
1776CA:  LDR.W           R12, [SP,#0x3A8+var_300]
1776CE:  VMOV            S4, R1
1776D2:  LDR.W           R9, [SP,#0x3A8+var_2E0]
1776D6:  LDRH            R6, [R0]
1776D8:  VCVT.F32.S32    S0, S0
1776DC:  LDR             R0, [SP,#0x3A8+var_2C8]
1776DE:  VCVT.F32.S32    S4, S4
1776E2:  VMLA.F32        S10, S2, S17
1776E6:  LDRH            R0, [R0]
1776E8:  VMOV.F32        S2, S28
1776EC:  ADDS            R1, R2, R0
1776EE:  RSB.W           R2, R4, R4,LSL#3
1776F2:  VMOV            S6, R1
1776F6:  ADDS            R1, R3, R6
1776F8:  LDRH            R3, [R5]
1776FA:  VCVT.F32.S32    S6, S6
1776FE:  LDR             R5, [SP,#0x3A8+var_2F0]
177700:  VMLA.F32        S2, S0, S30
177704:  VMOV            S8, R1
177708:  LDR             R1, [SP,#0x3A8+var_2D4]
17770A:  VMUL.F32        S0, S22, S4
17770E:  VMOV.F32        S4, S28
177712:  VCVT.F32.S32    S8, S8
177716:  LDRH            R1, [R1]
177718:  STRH.W          R3, [R5,R2,LSL#2]
17771C:  ADD.W           R2, R5, R2,LSL#2
177720:  ADD             R0, R1
177722:  STRH            R0, [R2,#6]
177724:  ADD             R3, R6
177726:  LDR             R0, [SP,#0x3A8+var_314]
177728:  VMLA.F32        S4, S6, S30
17772C:  STRH            R1, [R2,#2]
17772E:  VMOV.F32        S6, S24
177732:  STRH            R3, [R2,#4]
177734:  VSTR            S10, [R2,#8]
177738:  VSTR            S2, [R2,#0xC]
17773C:  VSTR            S0, [R2,#0x10]
177740:  VMLA.F32        S6, S8, S17
177744:  VSTR            S4, [R2,#0x18]
177748:  VSTR            S6, [R2,#0x14]
17774C:  LDR             R0, [R0]
17774E:  LDR             R2, [SP,#0x3A8+var_324]
177750:  LDR             R5, [SP,#0x3A8+var_2B8]
177752:  ADDS            R4, #1
177754:  CMP             R4, R0
177756:  BLT.W           loc_1766DC
17775A:  MOVS            R0, #0x74 ; 't'
17775C:  LDR             R1, [SP,#0x3A8+var_364]
17775E:  MLA.W           R0, R12, R0, R1
177762:  VLDR            S0, [R0,#0x44]
177766:  VCMP.F32        S0, S23
17776A:  VMRS            APSR_nzcv, FPSCR
17776E:  BEQ             loc_1777FC
177770:  ADD             R2, SP, #0x3A8+var_268
177772:  MOVS            R0, #0
177774:  VMOV            S2, R0
177778:  VCVT.F32.U32    S2, S2
17777C:  VMUL.F32        S2, S0, S2
177780:  VCVT.U32.F32    S2, S2
177784:  VMOV            R1, S2
177788:  CMP             R1, #0xFF
17778A:  IT CS
17778C:  MOVCS           R1, R8
17778E:  STRB            R1, [R2,R0]
177790:  ADDS            R0, #1
177792:  CMP.W           R0, #0x100
177796:  BNE             loc_177774
177798:  LDR             R0, [SP,#0x3A8+var_2F8]
17779A:  LDR             R3, [R0]
17779C:  CMP             R3, #1
17779E:  BLT             loc_1777F8
1777A0:  LDR             R0, [SP,#0x3A8+var_358]
1777A2:  MOV.W           LR, #0
1777A6:  LDR.W           R9, [R0]
1777AA:  LDR.W           R2, [R9,#0xC]
1777AE:  CBZ             R2, loc_1777EC
1777B0:  LDRH.W          R2, [R9,#6]
1777B4:  CBZ             R2, loc_1777EC
1777B6:  LDR             R1, [SP,#0x3A8+var_32C]
1777B8:  LDRH.W          R12, [R9,#0xA]
1777BC:  LDRH.W          R4, [R9,#8]
1777C0:  LDR             R5, [R5,#0x14]
1777C2:  LDR             R3, [R1]
1777C4:  ADD             R5, R4
1777C6:  LDRH.W          R6, [R9,#4]
1777CA:  MLA.W           R5, R3, R12, R5
1777CE:  ADD             R0, SP, #0x3A8+var_268
1777D0:  CBZ             R6, loc_1777E0
1777D2:  MOVS            R4, #0
1777D4:  LDRB            R1, [R5,R4]
1777D6:  LDRB            R1, [R0,R1]
1777D8:  STRB            R1, [R5,R4]
1777DA:  ADDS            R4, #1
1777DC:  CMP             R6, R4
1777DE:  BNE             loc_1777D4
1777E0:  ADD             R5, R3
1777E2:  SUBS            R2, #1
1777E4:  BGT             loc_1777CE
1777E6:  LDR             R0, [SP,#0x3A8+var_2F8]
1777E8:  LDR             R5, [SP,#0x3A8+var_2B8]
1777EA:  LDR             R3, [R0]
1777EC:  ADD.W           LR, LR, #1
1777F0:  ADD.W           R9, R9, #0x10
1777F4:  CMP             LR, R3
1777F6:  BLT             loc_1777AA
1777F8:  LDR.W           R12, [SP,#0x3A8+var_300]
1777FC:  LDR             R1, [SP,#0x3A8+var_358]
1777FE:  MOVS            R0, #0
177800:  STR             R0, [R1]
177802:  LDR             R0, [SP,#0x3A8+var_2DC]
177804:  ADD.W           R12, R12, #1
177808:  CMP             R12, R0
17780A:  BNE.W           loc_17659C
17780E:  LDR             R0, [SP,#0x3A8+var_374]
177810:  BL              sub_165578
177814:  LDR             R0, [SP,#0x3A8+var_36C]
177816:  BL              sub_165578
17781A:  LDR             R0, [SP,#0x3A8+var_288]
17781C:  CBZ             R0, loc_17782A
17781E:  MOVS            R4, #0
177820:  STRD.W          R4, R4, [SP,#0x3A8+var_290]
177824:  BL              sub_165578
177828:  STR             R4, [SP,#0x3A8+var_288]
17782A:  LDR             R0, [SP,#0x3A8+var_2DC]
17782C:  CMP             R0, #1
17782E:  BLT.W           loc_177AB4
177832:  VMOV.F32        S16, #-1.0
177836:  VLDR            S20, =0.0
17783A:  VMOV.F32        S18, #0.5
17783E:  MOVS            R1, #0
177840:  MOVS            R2, #0xC4
177842:  LDR             R0, [SP,#0x3A8+var_2E4]
177844:  MLA.W           R10, R1, R2, R0
177848:  STR             R1, [SP,#0x3A8+var_2B0]
17784A:  MOV             R1, R10
17784C:  LDR.W           R0, [R1,#0xA8]!
177850:  STR             R1, [SP,#0x3A8+var_2A4]
177852:  CMP             R0, #0
177854:  BEQ.W           loc_177A7E
177858:  LDR.W           R1, [R10,#4]
17785C:  MOVS            R6, #0x74 ; 't'
17785E:  LDR.W           R2, [R10,#0x1C]
177862:  VMOV.F32        S22, S23
177866:  LDR             R3, [SP,#0x3A8+var_2B8]
177868:  VMOV.F32        S24, S23
17786C:  ADD             R1, R2
17786E:  LDR             R2, [SP,#0x3A8+var_2B0]
177870:  LDR             R3, [R3,#0x54]
177872:  MLA.W           R6, R2, R6, R3
177876:  LDRH.W          R9, [R1,#6]
17787A:  LDRH            R1, [R1,#4]
17787C:  REVSH.W         R8, R9
177880:  CMP.W           R8, #1
177884:  REVSH           R5, R1
177886:  IT LT
177888:  VMOVLT.F32      S22, S16
17788C:  CMP             R5, #1
17788E:  IT LT
177890:  VMOVLT.F32      S24, S16
177894:  LDRB.W          R1, [R6,#0x3C]
177898:  LDR             R4, [R6,#0x70]
17789A:  CBZ             R1, loc_1778A2
17789C:  VLDR            S0, [R4,#0x48]
1778A0:  B               loc_177902
1778A2:  VLDR            S26, [R6,#0x10]
1778A6:  MOV             R0, R4
1778A8:  BL              sub_1785E0
1778AC:  REV.W           R0, R9
1778B0:  VMOV            S2, R8
1778B4:  VMOV            S4, R5
1778B8:  STR             R6, [R4,#0x3C]
1778BA:  SUB.W           R0, R5, R0,ASR#16
1778BE:  VCVT.F32.S32    S2, S2
1778C2:  VCVT.F32.S32    S4, S4
1778C6:  LDR             R2, [SP,#0x3A8+var_2B8]
1778C8:  VMOV            S0, R0
1778CC:  ADD.W           R0, R6, #0x10
1778D0:  VCVT.F32.S32    S0, S0
1778D4:  VDIV.F32        S0, S26, S0
1778D8:  VMLA.F32        S22, S2, S0
1778DC:  VMLA.F32        S24, S4, S0
1778E0:  VCVT.S32.F32    S0, S22
1778E4:  VCVT.S32.F32    S2, S24
1778E8:  VCVT.F32.S32    S4, S0
1778EC:  VCVT.F32.S32    S0, S2
1778F0:  VSTR            S4, [R4,#0x4C]
1778F4:  VSTR            S0, [R4,#0x48]
1778F8:  LDR             R1, [R0]
1778FA:  LDR             R0, [SP,#0x3A8+var_2A4]
1778FC:  LDR             R0, [R0]
1778FE:  STR             R2, [R4,#0x38]
177900:  STR             R1, [R4,#0x10]
177902:  LDRH.W          R1, [R4,#0x40]
177906:  CMP             R0, #1
177908:  VLDR            S22, [R6,#0x28]
17790C:  VLDR            S2, [R6,#0x2C]
177910:  ADD.W           R1, R1, #1
177914:  STRH.W          R1, [R4,#0x40]
177918:  BLT.W           loc_177A7E
17791C:  VADD.F32        S0, S0, S18
177920:  ADD.W           R0, R6, #0x1C
177924:  ADD.W           R9, R10, #0x98
177928:  ADD.W           R8, R6, #0x34 ; '4'
17792C:  ADD.W           R10, R10, #0xC0
177930:  STR             R0, [SP,#0x3A8+var_2AC]
177932:  ADD.W           R0, R6, #0x38 ; '8'
177936:  MOV.W           R11, #0
17793A:  MOVS            R6, #0xC
17793C:  STR             R0, [SP,#0x3A8+var_2A8]
17793E:  VCVT.S32.F32    S0, S0
177942:  VCVT.F32.S32    S0, S0
177946:  VADD.F32        S24, S2, S0
17794A:  LDR.W           R0, [R9]
17794E:  MOV             R5, R4
177950:  LDR             R1, [SP,#0x3A8+var_2A8]
177952:  ADD             R0, R6
177954:  VLDR            S4, [R0,#4]
177958:  VLDR            S2, [R1]
17795C:  VMOV.F32        S0, S4
177960:  VCMP.F32        S4, S2
177964:  VMRS            APSR_nzcv, FPSCR
177968:  IT GT
17796A:  VMOVGT.F32      S0, S2
17796E:  VLDR            S2, [R8]
177972:  VCMP.F32        S4, S2
177976:  VMRS            APSR_nzcv, FPSCR
17797A:  IT MI
17797C:  VMOVMI.F32      S0, S2
177980:  VMOV.F32        S2, S22
177984:  VCMP.F32        S4, S0
177988:  VMRS            APSR_nzcv, FPSCR
17798C:  BEQ             loc_1779AE
17798E:  VSUB.F32        S2, S0, S4
177992:  LDR             R1, [SP,#0x3A8+var_2AC]
177994:  LDRB            R1, [R1]
177996:  CMP             R1, #0
177998:  VMUL.F32        S2, S2, S18
17799C:  VCVT.S32.F32    S4, S2
1779A0:  VCVT.F32.S32    S4, S4
1779A4:  IT EQ
1779A6:  VMOVEQ.F32      S4, S2
1779AA:  VADD.F32        S2, S22, S4
1779AE:  LDR             R2, [SP,#0x3A8+var_2B8]
1779B0:  VLDR            S8, [R0,#-4]
1779B4:  VLDR            S10, [R0]
1779B8:  VLDR            S6, [R2,#0x20]
1779BC:  VADD.F32        S8, S8, S20
1779C0:  VADD.F32        S10, S10, S20
1779C4:  VLDR            S4, [R2,#0x1C]
1779C8:  VCVT.F32.S32    S6, S6
1779CC:  LDRH.W          R2, [R0,#-6]
1779D0:  VLDR            S12, [R0,#8]
1779D4:  VCVT.F32.S32    S4, S4
1779D8:  VLDR            S14, [R0,#0xC]
1779DC:  VMOV            S1, R2
1779E0:  LDR.W           R1, [R10]
1779E4:  VADD.F32        S14, S14, S20
1779E8:  LDRH.W          R3, [R0,#-8]
1779EC:  VADD.F32        S8, S2, S8
1779F0:  LDRH.W          R4, [R0,#-0xA]
1779F4:  VADD.F32        S10, S24, S10
1779F8:  LDRH.W          R0, [R0,#-0xC]
1779FC:  VDIV.F32        S6, S23, S6
177A00:  LDR.W           R1, [R1,R11,LSL#2]
177A04:  VADD.F32        S12, S12, S20
177A08:  VCVT.F32.U32    S1, S1
177A0C:  VMOV            S3, R3
177A10:  VMOV            R2, S8; int
177A14:  VMOV            S8, R4
177A18:  VMOV            R3, S10; int
177A1C:  VMOV            S10, R0
177A20:  VADD.F32        S2, S2, S12
177A24:  VDIV.F32        S4, S23, S4
177A28:  VCVT.F32.U32    S3, S3
177A2C:  VCVT.F32.U32    S8, S8
177A30:  VCVT.F32.U32    S10, S10
177A34:  VADD.F32        S14, S24, S14
177A38:  VMUL.F32        S12, S6, S1
177A3C:  VMUL.F32        S1, S4, S3
177A40:  UXTH            R1, R1; int
177A42:  VMUL.F32        S6, S6, S8
177A46:  MOV             R0, R5; int
177A48:  VMUL.F32        S4, S4, S10
177A4C:  VSTR            S2, [SP,#0x3A8+var_3A8]
177A50:  VSTR            S14, [SP,#0x3A8+var_3A4]
177A54:  MOV             R4, R5
177A56:  VSTR            S12, [SP,#0x3A8+var_394]
177A5A:  VSTR            S0, [SP,#0x3A8+var_390]
177A5E:  VSTR            S1, [SP,#0x3A8+var_398]
177A62:  VSTR            S6, [SP,#0x3A8+var_39C]
177A66:  VSTR            S4, [SP,#0x3A8+var_3A0]
177A6A:  BL              sub_178290
177A6E:  LDR             R0, [SP,#0x3A8+var_2A4]
177A70:  ADDS            R6, #0x1C
177A72:  ADD.W           R11, R11, #1
177A76:  LDR             R0, [R0]
177A78:  CMP             R11, R0
177A7A:  BLT.W           loc_17794A
177A7E:  LDR             R1, [SP,#0x3A8+var_2B0]
177A80:  LDR             R0, [SP,#0x3A8+var_2DC]
177A82:  ADDS            R1, #1
177A84:  CMP             R1, R0
177A86:  BNE.W           loc_177840
177A8A:  LDR             R0, [SP,#0x3A8+var_2DC]
177A8C:  LDR             R5, [SP,#0x3A8+var_2B8]
177A8E:  CMP             R0, #1
177A90:  BLT             loc_177AB4
177A92:  LDR             R0, [SP,#0x3A8+var_2E4]
177A94:  ADD.W           R4, R0, #0xC0
177A98:  LDR             R0, [R4]
177A9A:  CBZ             R0, loc_177AA0
177A9C:  BL              sub_165578
177AA0:  LDR.W           R0, [R4,#-0xC]
177AA4:  CBZ             R0, loc_177AAA
177AA6:  BL              sub_165578
177AAA:  LDR             R0, [SP,#0x3A8+var_2DC]
177AAC:  ADDS            R4, #0xC4
177AAE:  SUBS            R0, #1
177AB0:  STR             R0, [SP,#0x3A8+var_2DC]
177AB2:  BNE             loc_177A98
177AB4:  MOV             R0, R5
177AB6:  BL              sub_1783C0
177ABA:  LDR             R0, [SP,#0x3A8+var_298]
177ABC:  CBZ             R0, loc_177AC2
177ABE:  BL              sub_165578
177AC2:  LDR             R0, [SP,#0x3A8+var_288]
177AC4:  CBZ             R0, loc_177ACA
177AC6:  BL              sub_165578
177ACA:  MOVS            R4, #1
177ACC:  LDR             R0, [SP,#0x3A8+var_2E4]
177ACE:  CBZ             R0, loc_177AD4
177AD0:  BL              sub_165578
177AD4:  MOV             R0, R4
177AD6:  ADD.W           SP, SP, #0x348
177ADA:  VPOP            {D8-D15}
177ADE:  ADD             SP, SP, #4
177AE0:  POP.W           {R8-R11}
177AE4:  POP             {R4-R7,PC}
