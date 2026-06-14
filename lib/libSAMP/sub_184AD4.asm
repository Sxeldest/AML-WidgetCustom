; =========================================================
; Game Engine Function: sub_184AD4
; Address            : 0x184AD4 - 0x184C5E
; =========================================================

184AD4:  PUSH            {R4-R7,LR}
184AD6:  ADD             R7, SP, #0xC
184AD8:  PUSH.W          {R11}
184ADC:  SUB             SP, SP, #0x10
184ADE:  VLD1.32         {D18-D19}, [R1]
184AE2:  MOV             R4, SP
184AE4:  MOV             R1, R4
184AE6:  MOV             R5, R2
184AE8:  VLD1.32         {D16-D17}, [R0]
184AEC:  MOVS            R0, #0xC
184AEE:  VST1.64         {D18-D19}, [R1],R0
184AF2:  LDR             R0, [R1]
184AF4:  VST1.32         {D16-D17}, [R5]
184AF8:  CMP             R0, #0
184AFA:  BMI             loc_184B30
184AFC:  LDR             R2, [R5,#0xC]
184AFE:  CMP             R2, R0
184B00:  BHI             loc_184B1C
184B02:  MOVS            R1, #2
184B04:  MOV             R3, R0
184B06:  CMP             R2, R3
184B08:  BCC             loc_184B30
184B0A:  ADDS            R2, R1, #1
184B0C:  BEQ             loc_184B30
184B0E:  LDR.W           R2, [R5,R1,LSL#2]
184B12:  LDR.W           R3, [R4,R1,LSL#2]
184B16:  SUBS            R1, #1
184B18:  CMP             R2, R3
184B1A:  BLS             loc_184B06
184B1C:  MOVS            R2, #3
184B1E:  MOVS            R1, #0
184B20:  LDR.W           R3, [R5,R2,LSL#2]
184B24:  CBNZ            R3, loc_184B70
184B26:  SUBS            R2, #1
184B28:  ADDS            R1, #0x20 ; ' '
184B2A:  ADDS            R3, R2, #1
184B2C:  BNE             loc_184B20
184B2E:  B               loc_184B8C
184B30:  LDR             R2, [R5,#0xC]
184B32:  CMP             R0, R2
184B34:  BHI             loc_184B52
184B36:  MOVS            R1, #2
184B38:  MOV             R3, R0
184B3A:  MOVS            R6, #1
184B3C:  CMP             R3, R2
184B3E:  BCC             loc_184C1E
184B40:  ADDS            R2, R1, #1
184B42:  BEQ             loc_184C1E
184B44:  LDR.W           R2, [R5,R1,LSL#2]
184B48:  LDR.W           R3, [R4,R1,LSL#2]
184B4C:  SUBS            R1, #1
184B4E:  CMP             R3, R2
184B50:  BLS             loc_184B3C
184B52:  LSRS            R1, R0, #1
184B54:  STR             R1, [SP,#0x20+var_14]
184B56:  MOVS            R1, #2
184B58:  LDR.W           R2, [R4,R1,LSL#2]
184B5C:  LSLS            R0, R0, #0x1F
184B5E:  ORR.W           R0, R0, R2,LSR#1
184B62:  STR.W           R0, [R4,R1,LSL#2]
184B66:  SUBS            R1, #1
184B68:  ADDS            R0, R1, #1
184B6A:  MOV             R0, R2
184B6C:  BNE             loc_184B58
184B6E:  B               loc_184C56
184B70:  CMP             R2, #0
184B72:  BMI             loc_184B8C
184B74:  MOV             R3, R2
184B76:  LDR.W           R6, [R4,R3,LSL#2]
184B7A:  CBNZ            R6, loc_184B88
184B7C:  SUBS            R6, R3, #1
184B7E:  CMP             R3, #0
184B80:  MOV             R3, R6
184B82:  BGT             loc_184B76
184B84:  MOV.W           R3, #0xFFFFFFFF
184B88:  CMP             R3, R2
184B8A:  BNE             loc_184C06
184B8C:  MOVS            R6, #1
184B8E:  CMP             R0, #0
184B90:  BMI             loc_184BD4
184B92:  LDR             R1, [R5,#0xC]
184B94:  CMP             R1, R0
184B96:  BHI             loc_184BB2
184B98:  MOVS            R2, #2
184B9A:  MOV             R3, R1
184B9C:  CMP             R3, R0
184B9E:  BCC             loc_184BD4
184BA0:  ADDS            R0, R2, #1
184BA2:  BEQ             loc_184BD4
184BA4:  LDR.W           R3, [R5,R2,LSL#2]
184BA8:  LDR.W           R0, [R4,R2,LSL#2]
184BAC:  SUBS            R2, #1
184BAE:  CMP             R3, R0
184BB0:  BLS             loc_184B9C
184BB2:  MOVS            R0, #0
184BB4:  MOVS            R2, #0
184BB6:  LDR.W           R3, [R4,R0,LSL#2]
184BBA:  ORR.W           R2, R2, R3,LSL#1
184BBE:  STR.W           R2, [R4,R0,LSL#2]
184BC2:  ADDS            R0, #1
184BC4:  LSRS            R2, R3, #0x1F
184BC6:  CMP             R0, #4
184BC8:  BNE             loc_184BB6
184BCA:  LDR             R0, [SP,#0x20+var_14]
184BCC:  ADDS            R6, #1
184BCE:  CMP.W           R0, #0xFFFFFFFF
184BD2:  BGT             loc_184B94
184BD4:  MOVS            R0, #0xC
184BD6:  LDR             R1, [R5,R0]
184BD8:  LDR             R2, [R4,R0]
184BDA:  CMP             R2, R1
184BDC:  BHI             loc_184BEA
184BDE:  BCC             loc_184C1C
184BE0:  SUBS            R1, R0, #4
184BE2:  CMP             R0, #0
184BE4:  MOV             R0, R1
184BE6:  BNE             loc_184BD6
184BE8:  B               loc_184C1C
184BEA:  MOVS            R1, #0
184BEC:  MOVS            R0, #3
184BEE:  LDR.W           R2, [R4,R0,LSL#2]
184BF2:  ORR.W           R1, R1, R2,LSR#1
184BF6:  STR.W           R1, [R4,R0,LSL#2]
184BFA:  SUBS            R0, #1
184BFC:  LSLS            R1, R2, #0x1F
184BFE:  ADDS            R2, R0, #1
184C00:  BNE             loc_184BEE
184C02:  SUBS            R6, #1
184C04:  B               loc_184BD4
184C06:  ADD.W           R6, R1, R3,LSL#5
184C0A:  MOV             R0, SP; int
184C0C:  RSB.W           R1, R6, #0x60 ; '`'
184C10:  BL              sub_184F38
184C14:  LDR             R0, [SP,#0x20+var_14]
184C16:  RSB.W           R6, R6, #0x61 ; 'a'
184C1A:  B               loc_184B8E
184C1C:  CBZ             R6, loc_184C56
184C1E:  SUBS            R6, #1
184C20:  MOVS            R0, #0xC
184C22:  LDR             R1, [R5,R0]
184C24:  LDR             R2, [R4,R0]
184C26:  CMP             R2, R1
184C28:  BHI             loc_184C3C
184C2A:  BCC             loc_184C34
184C2C:  SUBS            R1, R0, #4
184C2E:  CMP             R0, #0
184C30:  MOV             R0, R1
184C32:  BNE             loc_184C22
184C34:  MOV             R0, R5
184C36:  MOV             R1, R4
184C38:  BL              sub_184F9C
184C3C:  MOVS            R1, #0
184C3E:  MOVS            R0, #3
184C40:  LDR.W           R2, [R4,R0,LSL#2]
184C44:  ORR.W           R1, R1, R2,LSR#1
184C48:  STR.W           R1, [R4,R0,LSL#2]
184C4C:  SUBS            R0, #1
184C4E:  LSLS            R1, R2, #0x1F
184C50:  ADDS            R2, R0, #1
184C52:  BNE             loc_184C40
184C54:  B               loc_184C1C
184C56:  ADD             SP, SP, #0x10
184C58:  POP.W           {R11}
184C5C:  POP             {R4-R7,PC}
