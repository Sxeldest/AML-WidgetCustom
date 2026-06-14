; =========================================================
; Game Engine Function: sub_207340
; Address            : 0x207340 - 0x2074B6
; =========================================================

207340:  PUSH            {R4-R7,LR}
207342:  ADD             R7, SP, #0xC
207344:  PUSH.W          {R8-R11}
207348:  SUB             SP, SP, #0xC
20734A:  MOV             R4, R2
20734C:  MOV             R9, R3
20734E:  LDR             R2, [R4,#4]
207350:  MOV             R5, R0
207352:  BL              sub_206B84
207356:  MOV             R6, R0
207358:  CMP             R6, #0
20735A:  BNE.W           loc_2074AC
20735E:  LDRD.W          R0, R8, [R4]
207362:  ADD.W           R2, R4, #0xC
207366:  STR             R4, [SP,#0x28+var_20]
207368:  ADD.W           R4, R5, #0x144
20736C:  ADD.W           R11, R5, #0x17C
207370:  MOVS            R3, #0
207372:  MOV.W           R1, #0x400
207376:  MOV.W           R10, #0x400
20737A:  STR             R2, [SP,#0x28+var_24]
20737C:  STRD.W          R2, R1, [R5,#0x150]
207380:  STRD.W          R0, R3, [R5,#0x144]
207384:  B               loc_207392
207386:  MOV.W           R8, #0
20738A:  MOVS            R0, #2
20738C:  MOV             R6, #0xFFFFFFFC
207390:  B               loc_2073E2
207392:  CMP             R1, #0
207394:  STR.W           R8, [R5,#0x148]
207398:  BNE             loc_2073CE
20739A:  ADD.W           R0, R10, R9
20739E:  CMP             R0, #0
2073A0:  BLT             loc_207386
2073A2:  LDR.W           R0, [R11]
2073A6:  CBNZ            R0, loc_2073C0
2073A8:  LDR.W           R0, [R5,#0x180]
2073AC:  ADDS            R1, R0, #4; byte_count
2073AE:  MOV             R0, R5; int
2073B0:  BLX             j_png_malloc_base
2073B4:  CMP             R0, #0
2073B6:  BEQ             loc_207386
2073B8:  MOVS            R1, #0
2073BA:  STR             R1, [R0]
2073BC:  STR.W           R0, [R11]
2073C0:  LDR.W           R1, [R5,#0x180]
2073C4:  MOV             R11, R0
2073C6:  ADDS            R2, R0, #4
2073C8:  ADD             R10, R1
2073CA:  STRD.W          R2, R1, [R5,#0x150]
2073CE:  MOV             R0, R4
2073D0:  MOVS            R1, #4
2073D2:  BLX             j_deflate
2073D6:  LDR.W           R8, [R5,#0x148]
2073DA:  MOV             R6, R0
2073DC:  MOVS            R0, #0
2073DE:  STR.W           R0, [R5,#0x148]
2073E2:  LDR.W           R1, [R5,#0x154]
2073E6:  ORRS            R0, R6
2073E8:  BEQ             loc_207392
2073EA:  SUB.W           R0, R10, R1
2073EE:  LDR.W           R10, [SP,#0x28+var_20]
2073F2:  MOVS            R4, #0
2073F4:  MOV             R1, #0x7FFFFFFF
2073F8:  STR.W           R4, [R5,#0x154]
2073FC:  STR.W           R0, [R10,#8]
207400:  ADD             R0, R9
207402:  CMP             R0, R1
207404:  BCC             loc_207416
207406:  STR.W           R4, [R5,#0x140]
20740A:  ADR             R0, aCompressedData; "compressed data too long"
20740C:  STR.W           R0, [R5,#0x15C]
207410:  MOV             R6, #0xFFFFFFFC
207414:  B               loc_2074AC
207416:  MOV             R0, R5
207418:  MOV             R1, R6
20741A:  BLX             j_png_zstream_error
20741E:  CMP             R6, #1
207420:  STR.W           R4, [R5,#0x140]
207424:  IT EQ
207426:  CMPEQ.W         R8, #0
20742A:  BNE             loc_2074AC
20742C:  LDR.W           R0, [R10,#4]
207430:  CMP.W           R0, #0x4000
207434:  BHI             loc_2074AA
207436:  LDR             R1, [SP,#0x28+var_24]
207438:  MOVS            R6, #0
20743A:  LDRB            R1, [R1]
20743C:  AND.W           R2, R1, #0xF
207440:  CMP             R2, #8
207442:  BNE             loc_2074AC
207444:  AND.W           R2, R1, #0xF0
207448:  CMP             R2, #0x70 ; 'p'
20744A:  BHI             loc_2074AC
20744C:  LSRS            R6, R1, #4
20744E:  MOVS            R1, #0x80
207450:  LSLS            R1, R6
207452:  CMP             R1, R0
207454:  BCC             loc_2074AA
207456:  MOV.W           R3, #0x800
20745A:  ADDS            R2, #8
20745C:  ORR.W           R3, R3, R6,LSL#12
207460:  RSB.W           R6, R6, #1
207464:  SUBS            R2, #0x10
207466:  SUB.W           R3, R3, #0x1000
20746A:  CBZ             R6, loc_207474
20746C:  ADDS            R6, #1
20746E:  LSRS            R1, R1, #1
207470:  CMP             R1, R0
207472:  BCS             loc_207464
207474:  LDRB.W          R0, [R10,#0xD]
207478:  STRB.W          R2, [R10,#0xC]
20747C:  AND.W           R0, R0, #0xE0
207480:  ORR.W           R1, R3, R0
207484:  MOV             R3, #0x8421085
20748C:  UMULL.W         R3, R6, R1, R3
207490:  SUBS            R2, R1, R6
207492:  ADD.W           R2, R6, R2,LSR#1
207496:  LSRS            R3, R2, #4
207498:  LSLS            R3, R3, #5
20749A:  SUB.W           R2, R3, R2,LSR#4
20749E:  SUBS            R1, R1, R2
2074A0:  ORRS            R0, R1
2074A2:  EOR.W           R0, R0, #0x1F
2074A6:  STRB.W          R0, [R10,#0xD]
2074AA:  MOVS            R6, #0
2074AC:  MOV             R0, R6
2074AE:  ADD             SP, SP, #0xC
2074B0:  POP.W           {R8-R11}
2074B4:  POP             {R4-R7,PC}
