; =========================================================
; Game Engine Function: sub_208AEC
; Address            : 0x208AEC - 0x208C54
; =========================================================

208AEC:  PUSH            {R4-R7,LR}
208AEE:  ADD             R7, SP, #0xC
208AF0:  PUSH.W          {R8-R11}
208AF4:  SUBS            R4, R1, R0
208AF6:  CMP             R4, #3
208AF8:  MOV             R4, R0
208AFA:  BLT             loc_208B20
208AFC:  LDR             R4, [R7,#arg_0]
208AFE:  ANDS.W          R4, R4, #4
208B02:  MOV             R4, R0
208B04:  BEQ             loc_208B20
208B06:  LDRB            R4, [R0]
208B08:  CMP             R4, #0xEF
208B0A:  MOV             R4, R0
208B0C:  BNE             loc_208B20
208B0E:  LDRB            R4, [R0,#1]
208B10:  CMP             R4, #0xBB
208B12:  MOV             R4, R0
208B14:  BNE             loc_208B20
208B16:  LDRB            R4, [R0,#2]
208B18:  CMP             R4, #0xBF
208B1A:  MOV             R4, R0
208B1C:  IT EQ
208B1E:  ADDEQ           R4, #3
208B20:  MOV.W           R10, #0
208B24:  MOV.W           R12, #0x1C0000
208B28:  B               loc_208C42
208B2A:  LDRSB.W         R5, [R4]
208B2E:  CMP             R5, #0
208B30:  UXTB.W          R11, R5
208B34:  BMI             loc_208B40
208B36:  CMP             R11, R3
208B38:  BHI.W           loc_208C4C
208B3C:  MOVS            R6, #1
208B3E:  B               loc_208C3C
208B40:  CMP.W           R11, #0xC2
208B44:  BCC.W           loc_208C4C
208B48:  CMP.W           R11, #0xDF
208B4C:  BHI             loc_208B72
208B4E:  SUBS            R5, R1, R4
208B50:  CMP             R5, #2
208B52:  BLT             loc_208C4C
208B54:  LDRB            R5, [R4,#1]
208B56:  AND.W           R6, R5, #0xC0
208B5A:  CMP             R6, #0x80
208B5C:  BNE             loc_208C4C
208B5E:  AND.W           R6, R11, #0x1F
208B62:  AND.W           R5, R5, #0x3F ; '?'
208B66:  ORR.W           R5, R5, R6,LSL#6
208B6A:  CMP             R5, R3
208B6C:  BHI             loc_208C4C
208B6E:  MOVS            R6, #2
208B70:  B               loc_208C3C
208B72:  CMP.W           R11, #0xEF
208B76:  BHI             loc_208B9C
208B78:  SUBS            R5, R1, R4
208B7A:  CMP             R5, #3
208B7C:  BLT             loc_208C4C
208B7E:  LDRB.W          R8, [R4,#1]
208B82:  CMP.W           R11, #0xED
208B86:  LDRB.W          LR, [R4,#2]
208B8A:  BEQ             loc_208BCC
208B8C:  CMP.W           R11, #0xE0
208B90:  BNE             loc_208BD2
208B92:  AND.W           R5, R8, #0xE0
208B96:  CMP             R5, #0xA0
208B98:  BEQ             loc_208BDA
208B9A:  B               loc_208C4C
208B9C:  CMP.W           R11, #0xF4
208BA0:  BHI             loc_208C4C
208BA2:  SUBS            R5, R1, R4
208BA4:  CMP             R5, #4
208BA6:  BLT             loc_208C4C
208BA8:  LDRB.W          R9, [R4,#1]
208BAC:  CMP.W           R11, #0xF4
208BB0:  LDRB.W          R8, [R4,#2]
208BB4:  LDRB.W          LR, [R4,#3]
208BB8:  BEQ             loc_208BFE
208BBA:  CMP.W           R11, #0xF0
208BBE:  BNE             loc_208C04
208BC0:  ADD.W           R5, R9, #0x70 ; 'p'
208BC4:  UXTB            R5, R5
208BC6:  CMP             R5, #0x30 ; '0'
208BC8:  BCC             loc_208C0C
208BCA:  B               loc_208C4C
208BCC:  AND.W           R5, R8, #0xE0
208BD0:  B               loc_208BD6
208BD2:  AND.W           R5, R8, #0xC0
208BD6:  CMP             R5, #0x80
208BD8:  BNE             loc_208C4C
208BDA:  AND.W           R5, LR, #0xC0
208BDE:  CMP             R5, #0x80
208BE0:  BNE             loc_208C4C
208BE2:  MOV.W           R6, R11,LSL#12
208BE6:  AND.W           R5, R8, #0x3F ; '?'
208BEA:  UXTH            R6, R6
208BEC:  ORR.W           R5, R6, R5,LSL#6
208BF0:  AND.W           R6, LR, #0x3F ; '?'
208BF4:  ADD             R5, R6
208BF6:  CMP             R5, R3
208BF8:  BHI             loc_208C4C
208BFA:  MOVS            R6, #3
208BFC:  B               loc_208C3C
208BFE:  AND.W           R5, R9, #0xF0
208C02:  B               loc_208C08
208C04:  AND.W           R5, R9, #0xC0
208C08:  CMP             R5, #0x80
208C0A:  BNE             loc_208C4C
208C0C:  AND.W           R5, R8, #0xC0
208C10:  CMP             R5, #0x80
208C12:  ITT EQ
208C14:  ANDEQ.W         R5, LR, #0xC0
208C18:  CMPEQ           R5, #0x80
208C1A:  BNE             loc_208C4C
208C1C:  AND.W           R6, R9, #0x3F ; '?'
208C20:  AND.W           R5, R12, R11,LSL#18
208C24:  ORR.W           R5, R5, R6,LSL#12
208C28:  AND.W           R6, R8, #0x3F ; '?'
208C2C:  ORR.W           R5, R5, R6,LSL#6
208C30:  AND.W           R6, LR, #0x3F ; '?'
208C34:  ADD             R5, R6
208C36:  CMP             R5, R3
208C38:  BHI             loc_208C4C
208C3A:  MOVS            R6, #4
208C3C:  ADD             R4, R6
208C3E:  ADD.W           R10, R10, #1
208C42:  CMP             R4, R1
208C44:  IT CC
208C46:  CMPCC           R10, R2
208C48:  BCC.W           loc_208B2A
208C4C:  SUBS            R0, R4, R0
208C4E:  POP.W           {R8-R11}
208C52:  POP             {R4-R7,PC}
