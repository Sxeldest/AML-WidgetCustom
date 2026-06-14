; =========================================================
; Game Engine Function: sub_185988
; Address            : 0x185988 - 0x185B6C
; =========================================================

185988:  PUSH            {R4-R7,LR}
18598A:  ADD             R7, SP, #0xC
18598C:  PUSH.W          {R8,R9,R11}
185990:  SUB             SP, SP, #0x20
185992:  VLD1.32         {D18-D19}, [R0]!
185996:  MOV             R5, SP
185998:  VMOV.I32        Q12, #0
18599C:  MOV             R6, R3
18599E:  VLD1.32         {D16-D17}, [R1]!
1859A2:  MOV             R8, R2
1859A4:  VLD1.32         {D22-D23}, [R0]
1859A8:  MOV             R0, R3
1859AA:  VLD1.32         {D20-D21}, [R1]
1859AE:  MOVS            R1, #0xC
1859B0:  VST1.32         {D18-D19}, [R0]!
1859B4:  VST1.32         {D22-D23}, [R0]
1859B8:  MOV             R0, R5
1859BA:  VST1.64         {D16-D17}, [R0]!
1859BE:  VST1.64         {D20-D21}, [R0],R1
1859C2:  MOV             R1, R2
1859C4:  LDR             R0, [R0]
1859C6:  VST1.32         {D24-D25}, [R1]!
1859CA:  CMP             R0, #0
1859CC:  VST1.32         {D24-D25}, [R1]
1859D0:  BMI             loc_185A06
1859D2:  LDR             R2, [R6,#0x1C]
1859D4:  CMP             R2, R0
1859D6:  BHI             loc_1859F2
1859D8:  MOVS            R1, #6
1859DA:  MOV             R3, R0
1859DC:  CMP             R2, R3
1859DE:  BCC             loc_185A06
1859E0:  ADDS            R2, R1, #1
1859E2:  BEQ             loc_185A06
1859E4:  LDR.W           R2, [R6,R1,LSL#2]
1859E8:  LDR.W           R3, [R5,R1,LSL#2]
1859EC:  SUBS            R1, #1
1859EE:  CMP             R2, R3
1859F0:  BLS             loc_1859DC
1859F2:  MOVS            R2, #7
1859F4:  MOVS            R1, #0
1859F6:  LDR.W           R3, [R6,R2,LSL#2]
1859FA:  CBNZ            R3, loc_185A48
1859FC:  SUBS            R2, #1
1859FE:  ADDS            R1, #0x20 ; ' '
185A00:  ADDS            R3, R2, #1
185A02:  BNE             loc_1859F6
185A04:  B               loc_185A64
185A06:  LDR             R2, [R6,#0x1C]
185A08:  CMP             R0, R2
185A0A:  BHI             loc_185A2A
185A0C:  MOVS            R1, #6
185A0E:  MOV             R3, R0
185A10:  MOV.W           R9, #1
185A14:  CMP             R3, R2
185A16:  BCC             loc_185AEA
185A18:  ADDS            R2, R1, #1
185A1A:  BEQ             loc_185AEA
185A1C:  LDR.W           R2, [R6,R1,LSL#2]
185A20:  LDR.W           R3, [R5,R1,LSL#2]
185A24:  SUBS            R1, #1
185A26:  CMP             R3, R2
185A28:  BLS             loc_185A14
185A2A:  LSRS            R1, R0, #1
185A2C:  STR             R1, [SP,#0x38+var_1C]
185A2E:  MOVS            R1, #6
185A30:  LDR.W           R2, [R5,R1,LSL#2]
185A34:  LSLS            R0, R0, #0x1F
185A36:  ORR.W           R0, R0, R2,LSR#1
185A3A:  STR.W           R0, [R5,R1,LSL#2]
185A3E:  SUBS            R1, #1
185A40:  ADDS            R0, R1, #1
185A42:  MOV             R0, R2
185A44:  BNE             loc_185A30
185A46:  B               loc_185B44
185A48:  CMP             R2, #0
185A4A:  BMI             loc_185A64
185A4C:  MOV             R3, R2
185A4E:  LDR.W           R4, [R5,R3,LSL#2]
185A52:  CBNZ            R4, loc_185A60
185A54:  SUBS            R4, R3, #1
185A56:  CMP             R3, #0
185A58:  MOV             R3, R4
185A5A:  BGT             loc_185A4E
185A5C:  MOV.W           R3, #0xFFFFFFFF
185A60:  CMP             R3, R2
185A62:  BNE             loc_185B56
185A64:  MOV.W           R9, #1
185A68:  CMP             R0, #0
185A6A:  BMI             loc_185AB0
185A6C:  LDR             R1, [R6,#0x1C]
185A6E:  CMP             R1, R0
185A70:  BHI             loc_185A8C
185A72:  MOVS            R2, #6
185A74:  MOV             R3, R1
185A76:  CMP             R3, R0
185A78:  BCC             loc_185AB0
185A7A:  ADDS            R0, R2, #1
185A7C:  BEQ             loc_185AB0
185A7E:  LDR.W           R3, [R6,R2,LSL#2]
185A82:  LDR.W           R0, [R5,R2,LSL#2]
185A86:  SUBS            R2, #1
185A88:  CMP             R3, R0
185A8A:  BLS             loc_185A76
185A8C:  MOVS            R0, #0
185A8E:  MOVS            R2, #0
185A90:  LDR.W           R3, [R5,R0,LSL#2]
185A94:  ORR.W           R2, R2, R3,LSL#1
185A98:  STR.W           R2, [R5,R0,LSL#2]
185A9C:  ADDS            R0, #1
185A9E:  LSRS            R2, R3, #0x1F
185AA0:  CMP             R0, #8
185AA2:  BNE             loc_185A90
185AA4:  LDR             R0, [SP,#0x38+var_1C]
185AA6:  ADD.W           R9, R9, #1
185AAA:  CMP.W           R0, #0xFFFFFFFF
185AAE:  BGT             loc_185A6E
185AB0:  MOVS            R0, #0x1C
185AB2:  LDR             R1, [R6,R0]
185AB4:  LDR             R2, [R5,R0]
185AB6:  CMP             R2, R1
185AB8:  BHI             loc_185AC6
185ABA:  BCC             loc_185AE4
185ABC:  SUBS            R1, R0, #4
185ABE:  CMP             R0, #0
185AC0:  MOV             R0, R1
185AC2:  BNE             loc_185AB2
185AC4:  B               loc_185AE4
185AC6:  MOVS            R1, #0
185AC8:  MOVS            R0, #7
185ACA:  LDR.W           R2, [R5,R0,LSL#2]
185ACE:  ORR.W           R1, R1, R2,LSR#1
185AD2:  STR.W           R1, [R5,R0,LSL#2]
185AD6:  SUBS            R0, #1
185AD8:  LSLS            R1, R2, #0x1F
185ADA:  ADDS            R2, R0, #1
185ADC:  BNE             loc_185ACA
185ADE:  SUB.W           R9, R9, #1
185AE2:  B               loc_185AB0
185AE4:  CMP.W           R9, #0
185AE8:  BEQ             loc_185B44
185AEA:  MOVS            R4, #0
185AEC:  ADDS            R4, #1
185AEE:  SUB.W           R9, R9, #1
185AF2:  MOVS            R0, #0x1C
185AF4:  LDR             R1, [R6,R0]
185AF6:  LDR             R2, [R5,R0]
185AF8:  CMP             R2, R1
185AFA:  BHI             loc_185B24
185AFC:  BCC             loc_185B06
185AFE:  SUBS            R1, R0, #4
185B00:  CMP             R0, #0
185B02:  MOV             R0, R1
185B04:  BNE             loc_185AF4
185B06:  MOV             R0, R6
185B08:  MOV             R1, R5
185B0A:  BL              sub_185174
185B0E:  MOV             R0, R8; int
185B10:  MOV             R1, R4
185B12:  BL              sub_1850D2
185B16:  LDR.W           R0, [R8]
185B1A:  MOVS            R4, #0
185B1C:  ORR.W           R0, R0, #1
185B20:  STR.W           R0, [R8]
185B24:  MOVS            R1, #0
185B26:  MOVS            R0, #7
185B28:  LDR.W           R2, [R5,R0,LSL#2]
185B2C:  ORR.W           R1, R1, R2,LSR#1
185B30:  STR.W           R1, [R5,R0,LSL#2]
185B34:  SUBS            R0, #1
185B36:  LSLS            R1, R2, #0x1F
185B38:  ADDS            R2, R0, #1
185B3A:  BNE             loc_185B28
185B3C:  CMP.W           R9, #0
185B40:  BNE             loc_185AEC
185B42:  B               loc_185B46
185B44:  MOVS            R4, #0
185B46:  MOV             R0, R8; int
185B48:  MOV             R1, R4
185B4A:  BL              sub_1850D2
185B4E:  ADD             SP, SP, #0x20 ; ' '
185B50:  POP.W           {R8,R9,R11}
185B54:  POP             {R4-R7,PC}
185B56:  ADD.W           R4, R1, R3,LSL#5
185B5A:  MOV             R0, SP; int
185B5C:  RSB.W           R1, R4, #0xE0
185B60:  BL              sub_1850D2
185B64:  LDR             R0, [SP,#0x38+var_1C]
185B66:  RSB.W           R9, R4, #0xE1
185B6A:  B               loc_185A68
