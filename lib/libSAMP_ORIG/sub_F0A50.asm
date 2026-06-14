; =========================================================
; Game Engine Function: sub_F0A50
; Address            : 0xF0A50 - 0xF0BCA
; =========================================================

F0A50:  PUSH            {R4-R7,LR}
F0A52:  ADD             R7, SP, #0xC
F0A54:  PUSH.W          {R8-R11}
F0A58:  STR             R0, [R2]
F0A5A:  LDRB            R0, [R7,#arg_C]
F0A5C:  LDR.W           R11, [R7,#arg_4]
F0A60:  LSLS            R0, R0, #0x1D
F0A62:  STR.W           R3, [R11]
F0A66:  BPL             loc_F0A7E
F0A68:  LDR             R0, [R2]
F0A6A:  SUBS            R3, R1, R0
F0A6C:  CMP             R3, #3
F0A6E:  BLT             loc_F0A7E
F0A70:  LDRB            R3, [R0]
F0A72:  CMP             R3, #0xEF
F0A74:  ITT EQ
F0A76:  LDRBEQ          R3, [R0,#1]
F0A78:  CMPEQ           R3, #0xBB
F0A7A:  BEQ.W           loc_F0BBA
F0A7E:  LDR.W           LR, [R7,#arg_8]
F0A82:  MOV.W           R12, #0x1C0000
F0A86:  LDR.W           R8, [R7,#arg_0]
F0A8A:  B               loc_F0B98
F0A8C:  LDRSB.W         R0, [R6]
F0A90:  UXTB            R5, R0
F0A92:  CMP             R0, #0
F0A94:  BMI             loc_F0AA0
F0A96:  CMP             R5, LR
F0A98:  BHI.W           loc_F0BB6
F0A9C:  MOVS            R0, #1
F0A9E:  B               loc_F0B88
F0AA0:  CMP             R5, #0xC2
F0AA2:  BCC.W           loc_F0BB6
F0AA6:  CMP             R5, #0xDF
F0AA8:  BHI             loc_F0AD0
F0AAA:  SUBS            R0, R1, R6
F0AAC:  CMP             R0, #2
F0AAE:  BLT.W           loc_F0BC6
F0AB2:  LDRB            R0, [R6,#1]
F0AB4:  AND.W           R4, R0, #0xC0
F0AB8:  CMP             R4, #0x80
F0ABA:  BNE             loc_F0BB6
F0ABC:  AND.W           R4, R5, #0x1F
F0AC0:  AND.W           R0, R0, #0x3F ; '?'
F0AC4:  ORR.W           R5, R0, R4,LSL#6
F0AC8:  MOVS            R0, #2
F0ACA:  CMP             R5, LR
F0ACC:  BLS             loc_F0B88
F0ACE:  B               loc_F0BB0
F0AD0:  CMP             R5, #0xEF
F0AD2:  BHI             loc_F0AF2
F0AD4:  SUBS            R0, R1, R6
F0AD6:  CMP             R0, #3
F0AD8:  BLT             loc_F0BC6
F0ADA:  LDRB            R0, [R6,#1]
F0ADC:  CMP             R5, #0xED
F0ADE:  LDRB.W          R9, [R6,#2]
F0AE2:  BEQ             loc_F0B1A
F0AE4:  CMP             R5, #0xE0
F0AE6:  BNE             loc_F0B20
F0AE8:  AND.W           R4, R0, #0xE0
F0AEC:  CMP             R4, #0xA0
F0AEE:  BEQ             loc_F0B28
F0AF0:  B               loc_F0BB6
F0AF2:  CMP             R5, #0xF4
F0AF4:  BHI             loc_F0BB6
F0AF6:  SUBS            R0, R1, R6
F0AF8:  CMP             R0, #4
F0AFA:  BLT             loc_F0BC6
F0AFC:  LDRB            R0, [R6,#1]
F0AFE:  CMP             R5, #0xF4
F0B00:  LDRB.W          R10, [R6,#2]
F0B04:  LDRB.W          R9, [R6,#3]
F0B08:  BEQ             loc_F0B4A
F0B0A:  CMP             R5, #0xF0
F0B0C:  BNE             loc_F0B50
F0B0E:  ADD.W           R4, R0, #0x70 ; 'p'
F0B12:  UXTB            R4, R4
F0B14:  CMP             R4, #0x30 ; '0'
F0B16:  BCC             loc_F0B58
F0B18:  B               loc_F0BB6
F0B1A:  AND.W           R4, R0, #0xE0
F0B1E:  B               loc_F0B24
F0B20:  AND.W           R4, R0, #0xC0
F0B24:  CMP             R4, #0x80
F0B26:  BNE             loc_F0BB6
F0B28:  AND.W           R4, R9, #0xC0
F0B2C:  CMP             R4, #0x80
F0B2E:  BNE             loc_F0BB6
F0B30:  LSLS            R4, R5, #0xC
F0B32:  AND.W           R0, R0, #0x3F ; '?'
F0B36:  UXTH            R4, R4
F0B38:  ORR.W           R0, R4, R0,LSL#6
F0B3C:  AND.W           R4, R9, #0x3F ; '?'
F0B40:  ADDS            R5, R0, R4
F0B42:  CMP             R5, LR
F0B44:  BHI             loc_F0BB6
F0B46:  MOVS            R0, #3
F0B48:  B               loc_F0B88
F0B4A:  AND.W           R4, R0, #0xF0
F0B4E:  B               loc_F0B54
F0B50:  AND.W           R4, R0, #0xC0
F0B54:  CMP             R4, #0x80
F0B56:  BNE             loc_F0BB6
F0B58:  AND.W           R4, R10, #0xC0
F0B5C:  CMP             R4, #0x80
F0B5E:  ITT EQ
F0B60:  ANDEQ.W         R4, R9, #0xC0
F0B64:  CMPEQ           R4, #0x80
F0B66:  BNE             loc_F0BB6
F0B68:  AND.W           R0, R0, #0x3F ; '?'
F0B6C:  AND.W           R4, R12, R5,LSL#18
F0B70:  ORR.W           R0, R4, R0,LSL#12
F0B74:  AND.W           R4, R10, #0x3F ; '?'
F0B78:  ORR.W           R0, R0, R4,LSL#6
F0B7C:  AND.W           R4, R9, #0x3F ; '?'
F0B80:  ADDS            R5, R0, R4
F0B82:  CMP             R5, LR
F0B84:  BHI             loc_F0BB6
F0B86:  MOVS            R0, #4
F0B88:  ADD             R0, R6
F0B8A:  STR             R0, [R2]
F0B8C:  LDR.W           R0, [R11]
F0B90:  STR             R5, [R3]
F0B92:  ADDS            R0, #4
F0B94:  STR.W           R0, [R11]
F0B98:  LDR             R6, [R2]
F0B9A:  CMP             R6, R1
F0B9C:  ITT CC
F0B9E:  LDRCC.W         R3, [R11]
F0BA2:  CMPCC           R3, R8
F0BA4:  BCC.W           loc_F0A8C
F0BA8:  MOVS            R0, #0
F0BAA:  CMP             R6, R1
F0BAC:  IT CC
F0BAE:  MOVCC           R0, #1
F0BB0:  POP.W           {R8-R11}
F0BB4:  POP             {R4-R7,PC}
F0BB6:  MOVS            R0, #2
F0BB8:  B               loc_F0BB0
F0BBA:  LDRB            R3, [R0,#2]
F0BBC:  CMP             R3, #0xBF
F0BBE:  ITT EQ
F0BC0:  ADDEQ           R0, #3
F0BC2:  STREQ           R0, [R2]
F0BC4:  B               loc_F0A7E
F0BC6:  MOVS            R0, #1
F0BC8:  B               loc_F0BB0
