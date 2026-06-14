; =========================================================
; Game Engine Function: sub_1742E2
; Address            : 0x1742E2 - 0x17443A
; =========================================================

1742E2:  PUSH            {R4-R7,LR}
1742E4:  ADD             R7, SP, #0xC
1742E6:  PUSH.W          {R8-R11}
1742EA:  SUB             SP, SP, #4
1742EC:  VPUSH           {D8}
1742F0:  SUB             SP, SP, #8
1742F2:  LDR.W           R8, [R7,#arg_0]
1742F6:  CMP.W           R8, #0x1000000
1742FA:  BCC.W           loc_17442C
1742FE:  MOV             R4, R0
174300:  MOV             R6, R1
174302:  LDR             R0, [R0,#0x58]
174304:  MOV             R9, R3
174306:  LDR             R1, [R4,#0x5C]
174308:  MOV             R11, R2
17430A:  CMP             R0, R1
17430C:  BNE             loc_17434C
17430E:  CMP             R0, #0
174310:  ADD.W           R5, R0, #1
174314:  ITTE NE
174316:  ADDNE.W         R1, R0, R0,LSR#31
17431A:  ADDNE.W         R1, R0, R1,ASR#1
17431E:  MOVEQ           R1, #8
174320:  CMP             R1, R5
174322:  IT GT
174324:  MOVGT           R5, R1
174326:  CMP             R0, R5
174328:  BGE             loc_17434C
17432A:  LSLS            R0, R5, #3
17432C:  BL              sub_1654B0
174330:  LDR             R1, [R4,#0x60]; src
174332:  MOV             R10, R0
174334:  CBZ             R1, loc_174346
174336:  LDR             R0, [R4,#0x58]
174338:  LSLS            R2, R0, #3; n
17433A:  MOV             R0, R10; dest
17433C:  BLX             j_memcpy
174340:  LDR             R0, [R4,#0x60]
174342:  BL              sub_165578
174346:  LDR             R0, [R4,#0x58]
174348:  STRD.W          R5, R10, [R4,#0x5C]
17434C:  LDR             R1, [R4,#0x60]
17434E:  LDRD.W          R2, R3, [R6]
174352:  STR.W           R2, [R1,R0,LSL#3]
174356:  ADD.W           R0, R1, R0,LSL#3
17435A:  STR             R3, [R0,#4]
17435C:  LDRD.W          R1, R2, [R4,#0x58]
174360:  ADDS            R0, R1, #1
174362:  STR             R0, [R4,#0x58]
174364:  CMP             R0, R2
174366:  BNE             loc_1743A4
174368:  ADDS            R5, R1, #2
17436A:  CMP             R0, #0
17436C:  ITTE NE
17436E:  ADDNE.W         R1, R0, R0,LSR#31
174372:  ADDNE.W         R1, R0, R1,ASR#1
174376:  MOVEQ           R1, #8
174378:  CMP             R1, R5
17437A:  IT GT
17437C:  MOVGT           R5, R1
17437E:  CMP             R0, R5
174380:  BGE             loc_1743A4
174382:  LSLS            R0, R5, #3
174384:  BL              sub_1654B0
174388:  LDR             R1, [R4,#0x60]; src
17438A:  MOV             R6, R0
17438C:  CBZ             R1, loc_17439E
17438E:  LDR             R0, [R4,#0x58]
174390:  LSLS            R2, R0, #3; n
174392:  MOV             R0, R6; dest
174394:  BLX             j_memcpy
174398:  LDR             R0, [R4,#0x60]
17439A:  BL              sub_165578
17439E:  LDR             R0, [R4,#0x58]
1743A0:  STRD.W          R5, R6, [R4,#0x5C]
1743A4:  LDR             R1, [R4,#0x60]
1743A6:  LDRD.W          R2, R3, [R11]
1743AA:  VLDR            S16, [R7,#arg_4]
1743AE:  STR.W           R2, [R1,R0,LSL#3]
1743B2:  ADD.W           R0, R1, R0,LSL#3
1743B6:  STR             R3, [R0,#4]
1743B8:  LDRD.W          R1, R2, [R4,#0x58]
1743BC:  ADDS            R0, R1, #1
1743BE:  STR             R0, [R4,#0x58]
1743C0:  CMP             R0, R2
1743C2:  BNE             loc_174400
1743C4:  ADDS            R6, R1, #2
1743C6:  CMP             R0, #0
1743C8:  ITTE NE
1743CA:  ADDNE.W         R1, R0, R0,LSR#31
1743CE:  ADDNE.W         R1, R0, R1,ASR#1
1743D2:  MOVEQ           R1, #8
1743D4:  CMP             R1, R6
1743D6:  IT GT
1743D8:  MOVGT           R6, R1
1743DA:  CMP             R0, R6
1743DC:  BGE             loc_174400
1743DE:  LSLS            R0, R6, #3
1743E0:  BL              sub_1654B0
1743E4:  LDR             R1, [R4,#0x60]; src
1743E6:  MOV             R5, R0
1743E8:  CBZ             R1, loc_1743FA
1743EA:  LDR             R0, [R4,#0x58]
1743EC:  LSLS            R2, R0, #3; n
1743EE:  MOV             R0, R5; dest
1743F0:  BLX             j_memcpy
1743F4:  LDR             R0, [R4,#0x60]
1743F6:  BL              sub_165578
1743FA:  LDR             R0, [R4,#0x58]
1743FC:  STRD.W          R6, R5, [R4,#0x5C]
174400:  LDR             R1, [R4,#0x60]
174402:  LDRD.W          R2, R3, [R9]
174406:  STR.W           R2, [R1,R0,LSL#3]
17440A:  ADD.W           R0, R1, R0,LSL#3
17440E:  STR             R3, [R0,#4]
174410:  MOV             R3, R8; int
174412:  LDR             R0, [R4,#0x58]
174414:  LDR             R1, [R4,#0x60]; int
174416:  ADDS            R2, R0, #1; int
174418:  MOVS            R0, #1
17441A:  STR             R2, [R4,#0x58]
17441C:  STR             R0, [SP,#0x30+var_30]; int
17441E:  MOV             R0, R4; int
174420:  VSTR            S16, [SP,#0x30+var_2C]
174424:  BL              sub_172FDA
174428:  MOVS            R0, #0
17442A:  STR             R0, [R4,#0x58]
17442C:  ADD             SP, SP, #8
17442E:  VPOP            {D8}
174432:  ADD             SP, SP, #4
174434:  POP.W           {R8-R11}
174438:  POP             {R4-R7,PC}
