; =========================================================
; Game Engine Function: ec_enc_uint
; Address            : 0xB713C - 0xB71FE
; =========================================================

B713C:  PUSH            {R4-R7,LR}
B713E:  ADD             R7, SP, #0xC
B7140:  PUSH.W          {R8}
B7144:  MOV             R3, R2
B7146:  MOV             R4, R0
B7148:  SUBS            R0, R3, #1
B714A:  MOV             R5, R1
B714C:  CLZ.W           R1, R0
B7150:  RSB.W           R1, R1, #0x20 ; ' '
B7154:  CMP             R1, #9
B7156:  BLT             loc_B71EC
B7158:  SUB.W           R8, R1, #8
B715C:  LSR.W           R1, R5, R8
B7160:  LSR.W           R0, R0, R8
B7164:  ADDS            R3, R0, #1
B7166:  ADDS            R2, R1, #1
B7168:  MOV             R0, R4
B716A:  BLX             j_ec_encode
B716E:  MOVS            R0, #1
B7170:  LSL.W           R2, R0, R8
B7174:  LDRD.W          R0, R1, [R4,#0xC]
B7178:  SUBS            R2, #1
B717A:  AND.W           LR, R2, R5
B717E:  ADD.W           R2, R1, R8
B7182:  CMP             R2, #0x21 ; '!'
B7184:  BCC             loc_B71D0
B7186:  MVNS            R2, R1
B7188:  CMN.W           R2, #0x10
B718C:  IT LE
B718E:  MOVLE           R2, #0xFFFFFFF0
B7192:  ADD.W           R5, R1, #8
B7196:  ADD.W           R12, R5, R2
B719A:  LDRD.W          R3, R2, [R4,#4]
B719E:  LDR             R6, [R4,#0x18]
B71A0:  ADD             R6, R2
B71A2:  CMP             R6, R3
B71A4:  BCS             loc_B71B4
B71A6:  ADDS            R2, #1
B71A8:  STR             R2, [R4,#8]
B71AA:  LDR             R6, [R4]
B71AC:  SUBS            R2, R3, R2
B71AE:  MOVS            R3, #0
B71B0:  STRB            R0, [R6,R2]
B71B2:  B               loc_B71B8
B71B4:  MOV.W           R3, #0xFFFFFFFF
B71B8:  LDR             R2, [R4,#0x2C]
B71BA:  SUBS            R5, #8
B71BC:  LSRS            R0, R0, #8
B71BE:  CMP             R5, #0xF
B71C0:  ORR.W           R2, R2, R3
B71C4:  STR             R2, [R4,#0x2C]
B71C6:  BGT             loc_B719A
B71C8:  BIC.W           R2, R12, #7
B71CC:  SUBS            R1, #8
B71CE:  SUBS            R1, R1, R2
B71D0:  ADD.W           R2, R1, R8
B71D4:  STR             R2, [R4,#0x10]
B71D6:  LDR             R2, [R4,#0x14]
B71D8:  LSL.W           R1, LR, R1
B71DC:  ORRS            R0, R1
B71DE:  STR             R0, [R4,#0xC]
B71E0:  ADD.W           R0, R2, R8
B71E4:  STR             R0, [R4,#0x14]
B71E6:  POP.W           {R8}
B71EA:  POP             {R4-R7,PC}
B71EC:  ADDS            R2, R5, #1
B71EE:  MOV             R0, R4
B71F0:  MOV             R1, R5
B71F2:  POP.W           {R8}
B71F6:  POP.W           {R4-R7,LR}
B71FA:  B.W             sub_10C1DC
