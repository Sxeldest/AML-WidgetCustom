; =========================================================
; Game Engine Function: ec_enc_icdf
; Address            : 0x19527C - 0x195360
; =========================================================

19527C:  PUSH            {R4-R7,LR}
19527E:  ADD             R7, SP, #0xC
195280:  PUSH.W          {R8}
195284:  LDR             R5, [R0,#0x1C]
195286:  MOV             R12, #0x800001
19528E:  CMP             R1, #1
195290:  LSR.W           R3, R5, R3
195294:  BLT             loc_1952B4
195296:  ADDS            R4, R2, R1
195298:  LDR.W           LR, [R0,#0x20]
19529C:  LDRB.W          R6, [R4,#-1]
1952A0:  ADD             R5, LR
1952A2:  MLS.W           R6, R3, R6, R5
1952A6:  STR             R6, [R0,#0x20]
1952A8:  LDRB            R1, [R2,R1]
1952AA:  LDRB.W          R2, [R4,#-1]
1952AE:  SUBS            R1, R2, R1
1952B0:  MULS            R1, R3
1952B2:  B               loc_1952BA
1952B4:  LDRB            R1, [R2,R1]
1952B6:  MLS.W           R1, R3, R1, R5
1952BA:  CMP             R1, R12
1952BC:  STR             R1, [R0,#0x1C]
1952BE:  BCS             loc_19535A
1952C0:  LDR             R3, [R0,#0x20]
1952C2:  MOVW            R8, #0xFF00
1952C6:  MOV.W           LR, #0xFF
1952CA:  MOVT            R8, #0x7FFF
1952CE:  CMP.W           LR, R3,LSR#23
1952D2:  BNE             loc_1952DC
1952D4:  LDR             R2, [R0,#0x24]
1952D6:  ADDS            R2, #1
1952D8:  STR             R2, [R0,#0x24]
1952DA:  B               loc_195344
1952DC:  LDR             R4, [R0,#0x28]
1952DE:  LSRS            R1, R3, #0x1F
1952E0:  CMP             R4, #0
1952E2:  BLT             loc_195308
1952E4:  LDRD.W          R6, R2, [R0,#4]
1952E8:  LDR             R5, [R0,#0x18]
1952EA:  ADD             R2, R5
1952EC:  CMP             R2, R6
1952EE:  BCS             loc_1952FE
1952F0:  LDR             R2, [R0]
1952F2:  ADD             R4, R1
1952F4:  ADDS            R6, R5, #1
1952F6:  STR             R6, [R0,#0x18]
1952F8:  STRB            R4, [R2,R5]
1952FA:  MOVS            R4, #0
1952FC:  B               loc_195302
1952FE:  MOV.W           R4, #0xFFFFFFFF
195302:  LDR             R2, [R0,#0x2C]
195304:  ORRS            R2, R4
195306:  STR             R2, [R0,#0x2C]
195308:  LSRS            R4, R3, #0x17
19530A:  LDR             R3, [R0,#0x24]
19530C:  CBZ             R3, loc_19533C
19530E:  ADDS            R1, #0xFF
195310:  LDRD.W          R2, R6, [R0,#4]
195314:  LDR             R5, [R0,#0x18]
195316:  ADD             R6, R5
195318:  CMP             R6, R2
19531A:  BCS             loc_19532A
19531C:  LDR             R2, [R0]
19531E:  ADDS            R3, R5, #1
195320:  STR             R3, [R0,#0x18]
195322:  STRB            R1, [R2,R5]
195324:  MOVS            R5, #0
195326:  LDR             R3, [R0,#0x24]
195328:  B               loc_19532E
19532A:  MOV.W           R5, #0xFFFFFFFF
19532E:  LDR             R2, [R0,#0x2C]
195330:  SUBS            R3, #1
195332:  STR             R3, [R0,#0x24]
195334:  ORR.W           R2, R2, R5
195338:  STR             R2, [R0,#0x2C]
19533A:  BNE             loc_195310
19533C:  UXTB            R2, R4
19533E:  LDRD.W          R1, R3, [R0,#0x1C]
195342:  STR             R2, [R0,#0x28]
195344:  LDR             R2, [R0,#0x14]
195346:  AND.W           R3, R8, R3,LSL#8
19534A:  LSLS            R1, R1, #8
19534C:  CMP             R1, R12
19534E:  STRD.W          R1, R3, [R0,#0x1C]
195352:  ADD.W           R2, R2, #8
195356:  STR             R2, [R0,#0x14]
195358:  BCC             loc_1952CE
19535A:  POP.W           {R8}
19535E:  POP             {R4-R7,PC}
