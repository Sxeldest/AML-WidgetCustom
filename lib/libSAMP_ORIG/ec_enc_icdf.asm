; =========================================================
; Game Engine Function: ec_enc_icdf
; Address            : 0xB7058 - 0xB713C
; =========================================================

B7058:  PUSH            {R4-R7,LR}
B705A:  ADD             R7, SP, #0xC
B705C:  PUSH.W          {R8}
B7060:  LDR             R5, [R0,#0x1C]
B7062:  MOV             R12, #0x800001
B706A:  CMP             R1, #1
B706C:  LSR.W           R3, R5, R3
B7070:  BLT             loc_B7090
B7072:  ADDS            R4, R2, R1
B7074:  LDR.W           LR, [R0,#0x20]
B7078:  LDRB.W          R6, [R4,#-1]
B707C:  ADD             R5, LR
B707E:  MLS.W           R6, R3, R6, R5
B7082:  STR             R6, [R0,#0x20]
B7084:  LDRB            R1, [R2,R1]
B7086:  LDRB.W          R2, [R4,#-1]
B708A:  SUBS            R1, R2, R1
B708C:  MULS            R1, R3
B708E:  B               loc_B7096
B7090:  LDRB            R1, [R2,R1]
B7092:  MLS.W           R1, R3, R1, R5
B7096:  CMP             R1, R12
B7098:  STR             R1, [R0,#0x1C]
B709A:  BCS             loc_B7136
B709C:  LDR             R3, [R0,#0x20]
B709E:  MOVW            R8, #0xFF00
B70A2:  MOV.W           LR, #0xFF
B70A6:  MOVT            R8, #0x7FFF
B70AA:  CMP.W           LR, R3,LSR#23
B70AE:  BNE             loc_B70B8
B70B0:  LDR             R2, [R0,#0x24]
B70B2:  ADDS            R2, #1
B70B4:  STR             R2, [R0,#0x24]
B70B6:  B               loc_B7120
B70B8:  LDR             R4, [R0,#0x28]
B70BA:  LSRS            R1, R3, #0x1F
B70BC:  CMP             R4, #0
B70BE:  BLT             loc_B70E4
B70C0:  LDRD.W          R6, R2, [R0,#4]
B70C4:  LDR             R5, [R0,#0x18]
B70C6:  ADD             R2, R5
B70C8:  CMP             R2, R6
B70CA:  BCS             loc_B70DA
B70CC:  LDR             R2, [R0]
B70CE:  ADD             R4, R1
B70D0:  ADDS            R6, R5, #1
B70D2:  STR             R6, [R0,#0x18]
B70D4:  STRB            R4, [R2,R5]
B70D6:  MOVS            R4, #0
B70D8:  B               loc_B70DE
B70DA:  MOV.W           R4, #0xFFFFFFFF
B70DE:  LDR             R2, [R0,#0x2C]
B70E0:  ORRS            R2, R4
B70E2:  STR             R2, [R0,#0x2C]
B70E4:  LSRS            R4, R3, #0x17
B70E6:  LDR             R3, [R0,#0x24]
B70E8:  CBZ             R3, loc_B7118
B70EA:  ADDS            R1, #0xFF
B70EC:  LDRD.W          R2, R6, [R0,#4]
B70F0:  LDR             R5, [R0,#0x18]
B70F2:  ADD             R6, R5
B70F4:  CMP             R6, R2
B70F6:  BCS             loc_B7106
B70F8:  LDR             R2, [R0]
B70FA:  ADDS            R3, R5, #1
B70FC:  STR             R3, [R0,#0x18]
B70FE:  STRB            R1, [R2,R5]
B7100:  MOVS            R5, #0
B7102:  LDR             R3, [R0,#0x24]
B7104:  B               loc_B710A
B7106:  MOV.W           R5, #0xFFFFFFFF
B710A:  LDR             R2, [R0,#0x2C]
B710C:  SUBS            R3, #1
B710E:  STR             R3, [R0,#0x24]
B7110:  ORR.W           R2, R2, R5
B7114:  STR             R2, [R0,#0x2C]
B7116:  BNE             loc_B70EC
B7118:  UXTB            R2, R4
B711A:  LDRD.W          R1, R3, [R0,#0x1C]
B711E:  STR             R2, [R0,#0x28]
B7120:  LDR             R2, [R0,#0x14]
B7122:  AND.W           R3, R8, R3,LSL#8
B7126:  LSLS            R1, R1, #8
B7128:  CMP             R1, R12
B712A:  STRD.W          R1, R3, [R0,#0x1C]
B712E:  ADD.W           R2, R2, #8
B7132:  STR             R2, [R0,#0x14]
B7134:  BCC             loc_B70AA
B7136:  POP.W           {R8}
B713A:  POP             {R4-R7,PC}
