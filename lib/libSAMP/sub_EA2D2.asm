; =========================================================
; Game Engine Function: sub_EA2D2
; Address            : 0xEA2D2 - 0xEA406
; =========================================================

EA2D2:  PUSH            {R4,R6,R7,LR}
EA2D4:  ADD             R7, SP, #8
EA2D6:  SUBS            R2, R1, R0
EA2D8:  CLZ.W           R2, R2
EA2DC:  MOV.W           R2, R2,LSR#5
EA2E0:  STRB            R2, [R1,#0xC]
EA2E2:  BEQ             locret_EA32C
EA2E4:  MOV.W           R12, #1
EA2E8:  LDR             R3, [R1,#8]
EA2EA:  LDRB            R2, [R3,#0xC]
EA2EC:  CBNZ            R2, locret_EA32C
EA2EE:  LDR.W           LR, [R3,#8]
EA2F2:  LDR.W           R2, [LR]
EA2F6:  CMP             R2, R3
EA2F8:  BEQ             loc_EA304
EA2FA:  CBZ             R2, loc_EA32E
EA2FC:  LDRB.W          R4, [R2,#0xC]!
EA300:  CBZ             R4, loc_EA310
EA302:  B               loc_EA32E
EA304:  LDR.W           R2, [LR,#4]
EA308:  CBZ             R2, loc_EA338
EA30A:  LDRB.W          R4, [R2,#0xC]!
EA30E:  CBNZ            R4, loc_EA338
EA310:  SUBS.W          R1, LR, R0
EA314:  STRB.W          R12, [R3,#0xC]
EA318:  CLZ.W           R1, R1
EA31C:  MOV.W           R1, R1,LSR#5
EA320:  STRB.W          R1, [LR,#0xC]
EA324:  MOV             R1, LR
EA326:  STRB.W          R12, [R2]
EA32A:  BNE             loc_EA2E8
EA32C:  POP             {R4,R6,R7,PC}
EA32E:  LDR             R0, [R3]
EA330:  CMP             R0, R1
EA332:  BEQ             loc_EA36A
EA334:  MOV             R1, R3
EA336:  B               loc_EA392
EA338:  LDR             R0, [R3]
EA33A:  CMP             R0, R1
EA33C:  BEQ             loc_EA3CA
EA33E:  LDR             R1, [R3,#4]
EA340:  LDR             R0, [R1]
EA342:  STR             R0, [R3,#4]
EA344:  CBZ             R0, loc_EA34C
EA346:  STR             R3, [R0,#8]
EA348:  LDR.W           LR, [R3,#8]
EA34C:  STR.W           LR, [R1,#8]
EA350:  LDR             R0, [R3,#8]
EA352:  MOV             R2, R0
EA354:  LDR.W           R4, [R2],#4
EA358:  CMP             R4, R3
EA35A:  IT EQ
EA35C:  MOVEQ           R2, R0
EA35E:  STR             R1, [R2]
EA360:  STR             R1, [R3,#8]
EA362:  LDR.W           LR, [R1,#8]
EA366:  STR             R3, [R1]
EA368:  B               loc_EA3CC
EA36A:  LDR             R0, [R1,#4]
EA36C:  STR             R0, [R3]
EA36E:  CBZ             R0, loc_EA376
EA370:  STR             R3, [R0,#8]
EA372:  LDR.W           LR, [R3,#8]
EA376:  STR.W           LR, [R1,#8]
EA37A:  LDR             R0, [R3,#8]
EA37C:  MOV             R2, R0
EA37E:  LDR.W           R4, [R2],#4
EA382:  CMP             R4, R3
EA384:  IT EQ
EA386:  MOVEQ           R2, R0
EA388:  STR             R1, [R2]
EA38A:  STR             R1, [R3,#8]
EA38C:  LDR.W           LR, [R1,#8]
EA390:  STR             R3, [R1,#4]
EA392:  LDR.W           R0, [LR,#4]
EA396:  MOVS            R2, #1
EA398:  STRB            R2, [R1,#0xC]
EA39A:  MOVS            R2, #0
EA39C:  STRB.W          R2, [LR,#0xC]
EA3A0:  LDR             R1, [R0]
EA3A2:  STR.W           R1, [LR,#4]
EA3A6:  CBZ             R1, loc_EA3AC
EA3A8:  STR.W           LR, [R1,#8]
EA3AC:  MOV             R1, LR
EA3AE:  LDR.W           R2, [R1,#8]!
EA3B2:  STR             R2, [R0,#8]
EA3B4:  LDR             R2, [R1]
EA3B6:  MOV             R3, R2
EA3B8:  LDR.W           R4, [R3],#4
EA3BC:  CMP             R4, LR
EA3BE:  IT EQ
EA3C0:  MOVEQ           R3, R2
EA3C2:  STR             R0, [R3]
EA3C4:  STR.W           LR, [R0]
EA3C8:  B               loc_EA402
EA3CA:  MOV             R1, R3
EA3CC:  LDR.W           R0, [LR]
EA3D0:  MOVS            R2, #1
EA3D2:  STRB            R2, [R1,#0xC]
EA3D4:  MOVS            R2, #0
EA3D6:  STRB.W          R2, [LR,#0xC]
EA3DA:  LDR             R1, [R0,#4]
EA3DC:  STR.W           R1, [LR]
EA3E0:  CBZ             R1, loc_EA3E6
EA3E2:  STR.W           LR, [R1,#8]
EA3E6:  MOV             R1, LR
EA3E8:  LDR.W           R2, [R1,#8]!
EA3EC:  STR             R2, [R0,#8]
EA3EE:  LDR             R2, [R1]
EA3F0:  MOV             R3, R2
EA3F2:  LDR.W           R4, [R3],#4
EA3F6:  CMP             R4, LR
EA3F8:  IT EQ
EA3FA:  MOVEQ           R3, R2
EA3FC:  STR             R0, [R3]
EA3FE:  STR.W           LR, [R0,#4]
EA402:  STR             R0, [R1]
EA404:  POP             {R4,R6,R7,PC}
