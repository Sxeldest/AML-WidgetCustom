; =========================================================
; Game Engine Function: ec_enc_bit_logp
; Address            : 0xB6F84 - 0xB7058
; =========================================================

B6F84:  PUSH            {R4-R7,LR}
B6F86:  ADD             R7, SP, #0xC
B6F88:  PUSH.W          {R8}
B6F8C:  LDR             R5, [R0,#0x1C]
B6F8E:  CMP             R1, #0
B6F90:  LSR.W           R3, R5, R2
B6F94:  SUB.W           R2, R5, R3
B6F98:  ITTT NE
B6F9A:  LDRNE           R5, [R0,#0x20]
B6F9C:  ADDNE           R5, R5, R2
B6F9E:  STRNE           R5, [R0,#0x20]
B6FA0:  CMP             R1, #0
B6FA2:  IT NE
B6FA4:  MOVNE           R2, R3
B6FA6:  CMP.W           R2, #0x800000
B6FAA:  STR             R2, [R0,#0x1C]
B6FAC:  BHI             loc_B7052
B6FAE:  LDR             R1, [R0,#0x20]
B6FB0:  MOVW            R12, #1
B6FB4:  MOVW            R8, #0xFF00
B6FB8:  MOVT            R12, #0x80
B6FBC:  MOV.W           LR, #0xFF
B6FC0:  MOVT            R8, #0x7FFF
B6FC4:  CMP.W           LR, R1,LSR#23
B6FC8:  BNE             loc_B6FD2
B6FCA:  LDR             R3, [R0,#0x24]
B6FCC:  ADDS            R3, #1
B6FCE:  STR             R3, [R0,#0x24]
B6FD0:  B               loc_B703C
B6FD2:  LDR             R2, [R0,#0x28]
B6FD4:  LSRS            R5, R1, #0x1F
B6FD6:  CMP             R2, #0
B6FD8:  BLT             loc_B6FFE
B6FDA:  LDRD.W          R6, R3, [R0,#4]
B6FDE:  LDR             R4, [R0,#0x18]
B6FE0:  ADD             R3, R4
B6FE2:  CMP             R3, R6
B6FE4:  BCS             loc_B6FF4
B6FE6:  LDR             R3, [R0]
B6FE8:  ADD             R2, R5
B6FEA:  ADDS            R6, R4, #1
B6FEC:  STR             R6, [R0,#0x18]
B6FEE:  STRB            R2, [R3,R4]
B6FF0:  MOVS            R2, #0
B6FF2:  B               loc_B6FF8
B6FF4:  MOV.W           R2, #0xFFFFFFFF
B6FF8:  LDR             R3, [R0,#0x2C]
B6FFA:  ORRS            R2, R3
B6FFC:  STR             R2, [R0,#0x2C]
B6FFE:  LDR             R2, [R0,#0x24]
B7000:  LSRS            R4, R1, #0x17
B7002:  CBZ             R2, loc_B7034
B7004:  ADD.W           R1, R5, #0xFF
B7008:  LDRD.W          R3, R6, [R0,#4]
B700C:  LDR             R5, [R0,#0x18]
B700E:  ADD             R6, R5
B7010:  CMP             R6, R3
B7012:  BCS             loc_B7022
B7014:  LDR             R2, [R0]
B7016:  ADDS            R3, R5, #1
B7018:  STR             R3, [R0,#0x18]
B701A:  STRB            R1, [R2,R5]
B701C:  MOVS            R5, #0
B701E:  LDR             R2, [R0,#0x24]
B7020:  B               loc_B7026
B7022:  MOV.W           R5, #0xFFFFFFFF
B7026:  LDR             R3, [R0,#0x2C]
B7028:  SUBS            R2, #1
B702A:  STR             R2, [R0,#0x24]
B702C:  ORR.W           R3, R3, R5
B7030:  STR             R3, [R0,#0x2C]
B7032:  BNE             loc_B7008
B7034:  UXTB            R3, R4
B7036:  LDRD.W          R2, R1, [R0,#0x1C]
B703A:  STR             R3, [R0,#0x28]
B703C:  LDR             R3, [R0,#0x14]
B703E:  AND.W           R1, R8, R1,LSL#8
B7042:  LSLS            R2, R2, #8
B7044:  CMP             R2, R12
B7046:  STRD.W          R2, R1, [R0,#0x1C]
B704A:  ADD.W           R3, R3, #8
B704E:  STR             R3, [R0,#0x14]
B7050:  BCC             loc_B6FC4
B7052:  POP.W           {R8}
B7056:  POP             {R4-R7,PC}
