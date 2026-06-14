; =========================================================
; Game Engine Function: mpg123_seek
; Address            : 0x231414 - 0x2315A6
; =========================================================

231414:  PUSH            {R4-R7,LR}
231416:  ADD             R7, SP, #0xC
231418:  PUSH.W          {R8-R10}
23141C:  MOV             R6, R2
23141E:  MOV             R8, R1
231420:  MOV             R4, R0
231422:  BLX             j_mpg123_tell
231426:  MOV             R5, R0
231428:  CBZ             R6, loc_231446
23142A:  CMP.W           R5, #0xFFFFFFFF
23142E:  BGT             loc_231446
231430:  CMP             R4, #0
231432:  ITTT NE
231434:  MOVWNE          R0, #0xB468
231438:  MOVNE           R1, #0x20 ; ' '
23143A:  STRNE           R1, [R4,R0]
23143C:  MOV.W           R0, #0xFFFFFFFF
231440:  POP.W           {R8-R10}
231444:  POP             {R4-R7,PC}
231446:  MOVW            R0, #0xB2C8
23144A:  LDR             R0, [R4,R0]
23144C:  CBZ             R0, loc_231460
23144E:  CMP             R6, #0
231450:  BEQ.W           loc_231564
231454:  CMP             R6, #2
231456:  BEQ             loc_231472
231458:  CMP             R6, #1
23145A:  BNE             loc_23149A
23145C:  ADD             R8, R5
23145E:  B               loc_231564
231460:  LDR             R0, [R4]
231462:  CMP             R0, #0
231464:  BEQ             loc_23144E
231466:  MOV             R0, R4
231468:  BL              sub_2309D2
23146C:  CMP             R0, #0
23146E:  BGE             loc_23144E
231470:  B               loc_231440
231472:  MOVW            R1, #0x9368
231476:  LDR             R0, [R4,R1]
231478:  CMP             R0, #0
23147A:  BLE             loc_2314A4
23147C:  MOVW            R1, #0x92D0
231480:  LDR             R3, [R4,R1]
231482:  CMP             R3, #3
231484:  BCS             loc_2314C6
231486:  MOVW            R1, #0x92D8
23148A:  LDR             R1, [R4,R1]
23148C:  CMP             R1, #1
23148E:  BEQ             loc_231536
231490:  CMP             R1, #2
231492:  BNE             loc_23153C
231494:  MOV.W           R1, #0x480
231498:  B               loc_23155C
23149A:  MOVW            R0, #0xB468
23149E:  MOVS            R1, #0x14
2314A0:  STR             R1, [R4,R0]
2314A2:  B               loc_23143C
2314A4:  MOVW            R0, #0xB2F4
2314A8:  LDRB            R0, [R4,R0]
2314AA:  LSLS            R0, R0, #0x1D
2314AC:  BPL             loc_2314BC
2314AE:  MOV             R0, R4
2314B0:  ADDS            R5, R4, R1
2314B2:  BLX             j_mpg123_scan
2314B6:  LDR             R0, [R5]
2314B8:  CMP             R0, #1
2314BA:  BGE             loc_23147C
2314BC:  MOVW            R0, #0xB468
2314C0:  MOVS            R1, #0x13
2314C2:  STR             R1, [R4,R0]
2314C4:  B               loc_23143C
2314C6:  BNE             loc_23158E
2314C8:  MOVW            R1, #0x9190
2314CC:  MOV.W           R5, #0x4000
2314D0:  LDR.W           R10, [R4,R1]
2314D4:  MOVW            R1, #0x92D8
2314D8:  LDR             R3, [R4,R1]
2314DA:  MOVW            R1, #0x92CC
2314DE:  ADD.W           R12, R4, R1
2314E2:  MOVW            R1, #0x92C8
2314E6:  ADD.W           LR, R4, R1
2314EA:  MOVS            R1, #0
2314EC:  MOVW            R9, #0x7FFF
2314F0:  CMP             R3, #1
2314F2:  BEQ             loc_2314FE
2314F4:  CMP             R3, #2
2314F6:  BNE             loc_231504
2314F8:  MOV.W           R6, #0x480
2314FC:  B               loc_231518
2314FE:  MOV.W           R6, #0x180
231502:  B               loc_231518
231504:  LDR.W           R6, [LR]
231508:  CMP             R6, #0
23150A:  ITT EQ
23150C:  LDREQ.W         R6, [R12]
231510:  CMPEQ           R6, #0
231512:  BEQ             loc_2314F8
231514:  MOV.W           R6, #0x240
231518:  MLA.W           R5, R6, R10, R5
23151C:  SUBS            R0, #1
23151E:  MOV.W           R6, R5,ASR#31
231522:  ADD.W           R6, R5, R6,LSR#17
231526:  BIC.W           R2, R6, R9
23152A:  SUB.W           R5, R5, R2
23152E:  ADD.W           R1, R1, R6,ASR#15
231532:  BNE             loc_2314F0
231534:  B               loc_231560
231536:  MOV.W           R1, #0x180
23153A:  B               loc_23155C
23153C:  MOVW            R1, #0x92C8
231540:  LDR             R1, [R4,R1]
231542:  CBZ             R1, loc_23154A
231544:  MOV.W           R1, #0x240
231548:  B               loc_23155C
23154A:  MOVW            R1, #0x92CC
23154E:  LDR             R2, [R4,R1]
231550:  MOV.W           R1, #0x480
231554:  CMP             R2, #0
231556:  IT NE
231558:  MOVNE.W         R1, #0x240
23155C:  LSRS            R1, R3
23155E:  MULS            R1, R0
231560:  SUB.W           R8, R1, R8
231564:  CMP.W           R8, #0
231568:  MOV             R0, R4
23156A:  IT LE
23156C:  MOVLE.W         R8, #0
231570:  MOV             R1, R8
231572:  BLX             j_INT123_frame_set_seek
231576:  MOV             R0, R4
231578:  BL              sub_231732
23157C:  CMP             R0, #0
23157E:  BLT.W           loc_231440
231582:  MOV             R0, R4
231584:  POP.W           {R8-R10}
231588:  POP.W           {R4-R7,LR}
23158C:  B               mpg123_tell
23158E:  LDR             R0, =(off_677664 - 0x23159A)
231590:  MOV.W           R2, #0x2E8
231594:  LDR             R1, =(aCProjectsOswra_5 - 0x23159C); "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
231596:  ADD             R0, PC; off_677664
231598:  ADD             R1, PC; "[C:/Projects/OSWrapper\\MPG123/mpg123-1"...
23159A:  LDR             R0, [R0]
23159C:  LDR             R0, [R0]; stream
23159E:  BLX             fprintf
2315A2:  MOVS            R1, #0
2315A4:  B               loc_231560
