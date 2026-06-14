; =========================================================
; Game Engine Function: _ZN9CPathFind20CountFloodFillGroupsEh
; Address            : 0x3162F8 - 0x31647E
; =========================================================

3162F8:  PUSH            {R4-R7,LR}
3162FA:  ADD             R7, SP, #0xC
3162FC:  PUSH.W          {R8-R11}
316300:  SUB             SP, SP, #8
316302:  MOV.W           R8, #0
316306:  MOVW            LR, #0x1104
31630A:  MOV.W           R12, #0x17
31630E:  MOVS            R4, #0
316310:  CMP             R1, #1
316312:  BEQ             loc_316322
316314:  CBNZ            R1, loc_316332
316316:  ADD.W           R2, R0, R4,LSL#2
31631A:  MOV.W           R9, #0
31631E:  ADD             R2, LR
316320:  B               loc_31632E
316322:  ADD.W           R2, R0, R4,LSL#2
316326:  LDR.W           R9, [R2,LR]
31632A:  ADDW            R2, R2, #0xFE4
31632E:  LDR.W           R10, [R2]
316332:  CMP             R9, R10
316334:  BGE             loc_316358
316336:  RSB.W           R3, R9, R9,LSL#3
31633A:  ADD.W           R5, R0, R4,LSL#2
31633E:  SUB.W           R2, R10, R9
316342:  ADDW            R5, R5, #0x804
316346:  ADD.W           R3, R12, R3,LSL#2
31634A:  LDR             R6, [R5]
31634C:  SUBS            R2, #1
31634E:  STRB.W          R8, [R6,R3]
316352:  ADD.W           R3, R3, #0x1C
316356:  BNE             loc_31634A
316358:  ADDS            R4, #1
31635A:  CMP             R4, #0x40 ; '@'
31635C:  BNE             loc_316310
31635E:  MOV.W           R12, #0
316362:  MOVW            LR, #0x1104
316366:  MOVS            R4, #0
316368:  B               loc_316378
31636A:  LDR.W           R9, [SP,#0x24+var_20]
31636E:  MOV.W           R12, #0
316372:  MOVW            LR, #0x1104
316376:  LDR             R4, [SP,#0x24+var_24]
316378:  ADDS            R4, #1
31637A:  MOVS            R6, #0
31637C:  CMP             R1, #1
31637E:  BEQ             loc_31638E
316380:  CBNZ            R1, loc_31639E
316382:  ADD.W           R2, R0, R6,LSL#2
316386:  MOV.W           R9, #0
31638A:  ADD             R2, LR
31638C:  B               loc_31639A
31638E:  ADD.W           R2, R0, R6,LSL#2
316392:  LDR.W           R9, [R2,LR]
316396:  ADDW            R2, R2, #0xFE4
31639A:  LDR.W           R10, [R2]
31639E:  CMP             R9, R10
3163A0:  BGE             loc_3163C0
3163A2:  ADD.W           R2, R0, R6,LSL#2
3163A6:  RSB.W           R3, R9, R9,LSL#3
3163AA:  LDR.W           R2, [R2,#0x804]
3163AE:  ADD.W           R5, R2, R3,LSL#2
3163B2:  MOV             R2, R9
3163B4:  LDRB            R3, [R5,#0x17]
3163B6:  CBZ             R3, loc_3163CA
3163B8:  ADDS            R2, #1
3163BA:  ADDS            R5, #0x1C
3163BC:  CMP             R2, R10
3163BE:  BLT             loc_3163B4
3163C0:  ADDS            R2, R6, #1
3163C2:  CMP             R6, #0x3E ; '>'
3163C4:  MOV             R6, R2
3163C6:  BLE             loc_31637C
3163C8:  B               loc_316476
3163CA:  CMP             R5, #0
3163CC:  STRB            R4, [R5,#0x17]
3163CE:  STR.W           R12, [R5]
3163D2:  BEQ             loc_316378
3163D4:  TST.W           R4, #0xFF
3163D8:  MOV             R11, R4
3163DA:  STR.W           R9, [SP,#0x24+var_20]
3163DE:  MOV.W           R6, #0
3163E2:  STR             R4, [SP,#0x24+var_24]
3163E4:  IT EQ
3163E6:  MOVEQ           R11, #0xFFFFFF80
3163EA:  B               loc_316402
3163EC:  CMP.W           R8, #0
3163F0:  BNE             loc_3163FC
3163F2:  B               loc_31636A
3163F4:  MOV             R8, R6
3163F6:  CMP.W           R8, #0
3163FA:  BEQ             loc_31636A
3163FC:  LDR.W           R6, [R8]
316400:  MOV             R5, R8
316402:  MOV             LR, R5
316404:  LDRH.W          R2, [LR,#0x18]!
316408:  LDRB.W          R3, [LR,#2]
31640C:  ORR.W           R9, R2, R3,LSL#16
316410:  TST.W           R9, #0xF
316414:  BEQ             loc_3163F4
316416:  MOV             R8, R6
316418:  MOV.W           R12, #0
31641C:  MOVS            R6, #0
31641E:  LDRH            R2, [R5,#0x12]
316420:  LDRSH.W         R4, [R5,#0x10]
316424:  ADD.W           R2, R0, R2,LSL#2
316428:  ADD             R4, R12
31642A:  LDR.W           R2, [R2,#0xA44]
31642E:  LDR.W           R2, [R2,R4,LSL#2]
316432:  UXTH            R4, R2
316434:  LSRS            R3, R2, #0x10
316436:  ADD.W           R4, R0, R4,LSL#2
31643A:  LSLS            R3, R3, #3
31643C:  SUB.W           R2, R3, R2,LSR#16
316440:  LDR.W           R4, [R4,#0x804]
316444:  ADD.W           R2, R4, R2,LSL#2
316448:  MOV             R4, R2
31644A:  LDRB.W          R3, [R4,#0x17]!
31644E:  CBNZ            R3, loc_316466
316450:  STRB.W          R11, [R4]
316454:  STR.W           R8, [R2]
316458:  MOV             R8, R2
31645A:  LDRB.W          R3, [LR,#2]
31645E:  LDRH.W          R4, [LR]
316462:  ORR.W           R9, R4, R3,LSL#16
316466:  ADDS            R6, #1
316468:  AND.W           R2, R9, #0xF
31646C:  SXTH.W          R12, R6
316470:  CMP             R12, R2
316472:  BLT             loc_31641E
316474:  B               loc_3163EC
316476:  ADD             SP, SP, #8
316478:  POP.W           {R8-R11}
31647C:  POP             {R4-R7,PC}
