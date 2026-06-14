; =========================================================
; Game Engine Function: ec_enc_bits
; Address            : 0xB71FE - 0xB7282
; =========================================================

B71FE:  PUSH            {R4-R7,LR}
B7200:  ADD             R7, SP, #0xC
B7202:  PUSH.W          {R8}
B7206:  LDRD.W          R8, R12, [R0,#0xC]
B720A:  ADD.W           R6, R12, R2
B720E:  CMP             R6, #0x21 ; '!'
B7210:  BCC             loc_B7266
B7212:  MVN.W           R6, R12
B7216:  CMN.W           R6, #0x10
B721A:  IT LE
B721C:  MOVLE           R6, #0xFFFFFFF0
B7220:  ADD.W           R4, R12, #8
B7224:  ADD             R6, R12
B7226:  ADDS            R6, #8
B7228:  BIC.W           LR, R6, #7
B722C:  LDRD.W          R5, R6, [R0,#4]
B7230:  LDR             R3, [R0,#0x18]
B7232:  ADD             R3, R6
B7234:  CMP             R3, R5
B7236:  BCS             loc_B7248
B7238:  ADDS            R3, R6, #1
B723A:  STR             R3, [R0,#8]
B723C:  LDR             R6, [R0]
B723E:  SUBS            R3, R5, R3
B7240:  MOVS            R5, #0
B7242:  STRB.W          R8, [R6,R3]
B7246:  B               loc_B724C
B7248:  MOV.W           R5, #0xFFFFFFFF
B724C:  LDR             R3, [R0,#0x2C]
B724E:  SUBS            R4, #8
B7250:  MOV.W           R8, R8,LSR#8
B7254:  CMP             R4, #0xF
B7256:  ORR.W           R3, R3, R5
B725A:  STR             R3, [R0,#0x2C]
B725C:  BGT             loc_B722C
B725E:  SUB.W           R3, R12, #8
B7262:  SUB.W           R12, R3, LR
B7266:  ADD.W           R3, R12, R2
B726A:  STR             R3, [R0,#0x10]
B726C:  LSL.W           R1, R1, R12
B7270:  LDR             R3, [R0,#0x14]
B7272:  ORR.W           R1, R1, R8
B7276:  STR             R1, [R0,#0xC]
B7278:  ADDS            R1, R3, R2
B727A:  STR             R1, [R0,#0x14]
B727C:  POP.W           {R8}
B7280:  POP             {R4-R7,PC}
