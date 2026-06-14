; =========================================================
; Game Engine Function: sub_2663E8
; Address            : 0x2663E8 - 0x26664A
; =========================================================

2663E8:  PUSH            {R4-R7,LR}
2663EA:  ADD             R7, SP, #0xC
2663EC:  PUSH.W          {R8-R11}
2663F0:  SUB             SP, SP, #0xC
2663F2:  MOV             R4, R0
2663F4:  MOV             R0, #0x161B0
2663FC:  LDR             R1, =(SL_IID_BUFFERQUEUE_ptr - 0x266404)
2663FE:  LDR             R6, [R4,R0]
266400:  ADD             R1, PC; SL_IID_BUFFERQUEUE_ptr
266402:  LDR             R0, [R6,#0xC]
266404:  LDR             R1, [R1]; SL_IID_BUFFERQUEUE
266406:  LDR             R2, [R0]
266408:  LDR             R1, [R1]
26640A:  LDR             R3, [R2,#0xC]
26640C:  ADD             R2, SP, #0x28+var_20
26640E:  BLX             R3
266410:  MOV             R5, R0
266412:  CBZ             R5, loc_26642E
266414:  LDR             R0, =(LogLevel_ptr - 0x26641A)
266416:  ADD             R0, PC; LogLevel_ptr
266418:  LDR             R0, [R0]; LogLevel
26641A:  LDR             R0, [R0]
26641C:  CBZ             R0, loc_26642E
26641E:  SUBS            R0, R5, #1
266420:  CMP             R0, #0xF
266422:  BHI             loc_266466
266424:  LDR             R1, =(off_661DF0 - 0x26642A); "Preconditions violated" ...
266426:  ADD             R1, PC; off_661DF0
266428:  LDR.W           R1, [R1,R0,LSL#2]
26642C:  B               loc_26646A
26642E:  CBNZ            R5, loc_26647E
266430:  LDR             R0, [SP,#0x28+var_20]
266432:  LDR             R1, =(sub_266750+1 - 0x26643A)
266434:  LDR             R2, [R0]
266436:  ADD             R1, PC; sub_266750
266438:  LDR             R3, [R2,#0xC]
26643A:  MOV             R2, R4
26643C:  BLX             R3
26643E:  MOV             R5, R0
266440:  CMP             R5, #0
266442:  BEQ.W           loc_266590
266446:  LDR             R0, =(LogLevel_ptr - 0x26644C)
266448:  ADD             R0, PC; LogLevel_ptr
26644A:  LDR             R0, [R0]; LogLevel
26644C:  LDR             R0, [R0]
26644E:  CMP             R0, #0
266450:  BEQ.W           loc_266590
266454:  SUBS            R0, R5, #1
266456:  CMP             R0, #0xF
266458:  BHI.W           loc_2665B4
26645C:  LDR             R1, =(off_661DF0 - 0x266462); "Preconditions violated" ...
26645E:  ADD             R1, PC; off_661DF0
266460:  LDR.W           R1, [R1,R0,LSL#2]
266464:  B               loc_2665B8
266466:  LDR             R1, =(aUnknownErrorCo - 0x26646C); "Unknown error code"
266468:  ADD             R1, PC; "Unknown error code"
26646A:  LDR             R0, =(aEe - 0x266474); "(EE)"
26646C:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x266478); "%s: %s\n"
26646E:  LDR             R3, =(aBufferqueueGet - 0x26647A); "bufferQueue->GetInterface"
266470:  ADD             R0, PC; "(EE)"
266472:  STR             R1, [SP,#0x28+var_28]
266474:  ADD             R2, PC; "%s: %s\n"
266476:  ADD             R3, PC; "bufferQueue->GetInterface"
266478:  ADR             R1, aOpenslStartPla; "opensl_start_playback"
26647A:  BLX             j_al_print
26647E:  LDR             R1, [R4,#0x18]
266480:  CMP             R5, #0
266482:  MOV.W           R0, #0
266486:  MOV.W           R8, #0
26648A:  IT EQ
26648C:  MOVEQ           R0, #1
26648E:  CBZ             R1, loc_2664F6
266490:  LDR             R1, =(LogLevel_ptr - 0x26649E)
266492:  ADR.W           R10, aOpenslStartPla; "opensl_start_playback"
266496:  ADR.W           R11, aBufferqueueEnq; "bufferQueue->Enqueue"
26649A:  ADD             R1, PC; LogLevel_ptr
26649C:  LDR.W           R9, [R1]; LogLevel
2664A0:  LSLS            R0, R0, #0x1F
2664A2:  BEQ             loc_2664E2
2664A4:  LDR             R0, [SP,#0x28+var_20]
2664A6:  LDR             R3, [R0]
2664A8:  LDRD.W          R1, R2, [R6,#0x10]
2664AC:  LDR             R3, [R3]
2664AE:  BLX             R3
2664B0:  MOV             R5, R0
2664B2:  CMP             R5, #0
2664B4:  ITT NE
2664B6:  LDRNE.W         R0, [R9]
2664BA:  CMPNE           R0, #0
2664BC:  BEQ             loc_2664E2
2664BE:  LDR             R0, =(aUnknownErrorCo - 0x2664C8); "Unknown error code"
2664C0:  SUBS            R1, R5, #1
2664C2:  CMP             R1, #0xF
2664C4:  ADD             R0, PC; "Unknown error code"
2664C6:  BHI             loc_2664D0
2664C8:  LDR             R0, =(off_661DF0 - 0x2664CE); "Preconditions violated" ...
2664CA:  ADD             R0, PC; off_661DF0
2664CC:  LDR.W           R0, [R0,R1,LSL#2]
2664D0:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x2664DE); "%s: %s\n"
2664D2:  MOV             R1, R10
2664D4:  STR             R0, [SP,#0x28+var_28]
2664D6:  MOV             R3, R11
2664D8:  LDR             R0, =(aEe - 0x2664E0); "(EE)"
2664DA:  ADD             R2, PC; "%s: %s\n"
2664DC:  ADD             R0, PC; "(EE)"
2664DE:  BLX             j_al_print
2664E2:  CMP             R5, #0
2664E4:  MOV.W           R0, #0
2664E8:  IT EQ
2664EA:  MOVEQ           R0, #1
2664EC:  LDR             R1, [R4,#0x18]
2664EE:  ADD.W           R8, R8, #1
2664F2:  CMP             R8, R1
2664F4:  BCC             loc_2664A0
2664F6:  CMP             R0, #1
2664F8:  BNE             loc_26656C
2664FA:  LDR             R1, =(SL_IID_PLAY_ptr - 0x266502)
2664FC:  LDR             R0, [R6,#0xC]
2664FE:  ADD             R1, PC; SL_IID_PLAY_ptr
266500:  LDR             R1, [R1]; SL_IID_PLAY
266502:  LDR             R2, [R0]
266504:  LDR             R1, [R1]
266506:  LDR             R3, [R2,#0xC]
266508:  ADD             R2, SP, #0x28+var_24
26650A:  BLX             R3
26650C:  CBZ             R0, loc_266528
26650E:  LDR             R1, =(LogLevel_ptr - 0x266514)
266510:  ADD             R1, PC; LogLevel_ptr
266512:  LDR             R1, [R1]; LogLevel
266514:  LDR             R1, [R1]
266516:  CBZ             R1, loc_266528
266518:  SUBS            R0, #1
26651A:  CMP             R0, #0xF
26651C:  BHI             loc_266554
26651E:  LDR             R1, =(off_661DF0 - 0x266524); "Preconditions violated" ...
266520:  ADD             R1, PC; off_661DF0
266522:  LDR.W           R1, [R1,R0,LSL#2]
266526:  B               loc_266558
266528:  CBNZ            R0, loc_26656C
26652A:  LDR             R0, [SP,#0x28+var_24]
26652C:  LDR             R1, [R0]
26652E:  LDR             R2, [R1]
266530:  MOVS            R1, #3
266532:  BLX             R2
266534:  CMP             R0, #0
266536:  BEQ             loc_2665C6
266538:  LDR             R1, =(LogLevel_ptr - 0x26653E)
26653A:  ADD             R1, PC; LogLevel_ptr
26653C:  LDR             R1, [R1]; LogLevel
26653E:  LDR             R1, [R1]
266540:  CMP             R1, #0
266542:  BEQ             loc_2665C6
266544:  SUBS            R0, #1
266546:  CMP             R0, #0xF
266548:  BHI             loc_2665CE
26654A:  LDR             R1, =(off_661DF0 - 0x266550); "Preconditions violated" ...
26654C:  ADD             R1, PC; off_661DF0
26654E:  LDR.W           R1, [R1,R0,LSL#2]
266552:  B               loc_2665D2
266554:  LDR             R1, =(aUnknownErrorCo - 0x26655A); "Unknown error code"
266556:  ADD             R1, PC; "Unknown error code"
266558:  LDR             R0, =(aEe - 0x266562); "(EE)"
26655A:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x266564); "%s: %s\n"
26655C:  LDR             R3, =(aBufferqueueGet - 0x266566); "bufferQueue->GetInterface"
26655E:  ADD             R0, PC; "(EE)"
266560:  ADD             R2, PC; "%s: %s\n"
266562:  ADD             R3, PC; "bufferQueue->GetInterface"
266564:  STR             R1, [SP,#0x28+var_28]
266566:  ADR             R1, aOpenslStartPla; "opensl_start_playback"
266568:  BLX             j_al_print
26656C:  LDR             R0, [R6,#0xC]
26656E:  CMP             R0, #0
266570:  ITTT NE
266572:  LDRNE           R1, [R0]
266574:  LDRNE           R1, [R1,#0x18]
266576:  BLXNE           R1
266578:  LDR             R0, [R6,#0x10]; p
26657A:  MOVS            R4, #0
26657C:  STR             R4, [R6,#0xC]
26657E:  BLX             free
266582:  STRD.W          R4, R4, [R6,#0x10]
266586:  MOV             R0, R4
266588:  ADD             SP, SP, #0xC
26658A:  POP.W           {R8-R11}
26658E:  POP             {R4-R7,PC}
266590:  CMP             R5, #0
266592:  BNE.W           loc_26647E
266596:  LDRD.W          R1, R0, [R4,#0x1C]
26659A:  SUB.W           R2, R1, #0x1500; switch 7 cases
26659E:  CMP             R2, #6
2665A0:  BHI             def_2665A4; jumptable 002665A4 default case
2665A2:  MOVS            R1, #1
2665A4:  TBB.W           [PC,R2]; switch jump
2665A8:  DCB 0x28; jump table for switch statement
2665A9:  DCB 4
2665AA:  DCB 0x21
2665AB:  DCB 0x23
2665AC:  DCB 0x1F
2665AD:  DCB 0x25
2665AE:  DCB 0x27
2665AF:  ALIGN 2
2665B0:  MOVS            R1, #2; jumptable 002665A4 case 5377
2665B2:  B               loc_2665F8; jumptable 002665A4 case 5376
2665B4:  LDR             R1, =(aUnknownErrorCo - 0x2665BA); "Unknown error code"
2665B6:  ADD             R1, PC; "Unknown error code"
2665B8:  LDR             R0, =(aEe - 0x2665C4); "(EE)"
2665BA:  ADR             R3, aBufferqueueReg; "bufferQueue->RegisterCallback"
2665BC:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x2665C6); "%s: %s\n"
2665BE:  STR             R1, [SP,#0x28+var_28]
2665C0:  ADD             R0, PC; "(EE)"
2665C2:  ADD             R2, PC; "%s: %s\n"
2665C4:  B               loc_266478
2665C6:  CMP             R0, #0
2665C8:  BNE             loc_26656C
2665CA:  MOVS            R4, #1
2665CC:  B               loc_266586
2665CE:  LDR             R1, =(aUnknownErrorCo - 0x2665D4); "Unknown error code"
2665D0:  ADD             R1, PC; "Unknown error code"
2665D2:  LDR             R0, =(aEe - 0x2665DC); "(EE)"
2665D4:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x2665DE); "%s: %s\n"
2665D6:  LDR             R3, =(aPlayerSetplays - 0x2665E0); "player->SetPlayState"
2665D8:  ADD             R0, PC; "(EE)"
2665DA:  ADD             R2, PC; "%s: %s\n"
2665DC:  ADD             R3, PC; "player->SetPlayState"
2665DE:  B               loc_266564
2665E0:  CMP.W           R1, #0x80000000; jumptable 002665A4 default case
2665E4:  BNE             loc_2665EA; jumptable 002665A4 case 5378
2665E6:  MOVS            R1, #6; jumptable 002665A4 case 5380
2665E8:  B               loc_2665F8; jumptable 002665A4 case 5376
2665EA:  MOVS            R1, #0; jumptable 002665A4 case 5378
2665EC:  B               loc_2665F8; jumptable 002665A4 case 5376
2665EE:  MOVS            R1, #4; jumptable 002665A4 case 5379
2665F0:  B               loc_2665F8; jumptable 002665A4 case 5376
2665F2:  MOVS            R1, #7; jumptable 002665A4 case 5381
2665F4:  B               loc_2665F8; jumptable 002665A4 case 5376
2665F6:  MOVS            R1, #8; jumptable 002665A4 case 5382
2665F8:  SUB.W           R0, R0, #0x1400; jumptable 002665A4 case 5376
2665FC:  CMP             R0, #6
2665FE:  BHI             loc_26660A
266600:  LDR             R2, =(unk_60A6D0 - 0x266606)
266602:  ADD             R2, PC; unk_60A6D0
266604:  LDR.W           R0, [R2,R0,LSL#2]
266608:  B               loc_26660C
26660A:  MOVS            R0, #0
26660C:  MULS            R0, R1
26660E:  STR             R0, [R6,#0x18]
266610:  LDR             R1, [R4,#0x14]
266612:  MULS            R1, R0; item_size
266614:  MOVS            R0, #1; item_count
266616:  STR             R1, [R6,#0x14]
266618:  BLX             calloc
26661C:  CMP             R0, #0
26661E:  STR             R0, [R6,#0x10]
266620:  BEQ             loc_266626
266622:  MOVS            R5, #0
266624:  B               loc_26647E
266626:  LDR             R0, =(LogLevel_ptr - 0x26662C)
266628:  ADD             R0, PC; LogLevel_ptr
26662A:  LDR             R0, [R0]; LogLevel
26662C:  LDR             R0, [R0]
26662E:  CBZ             R0, loc_266646
266630:  LDR             R1, =(aMemoryFailure - 0x26663C); "Memory failure"
266632:  ADR             R3, aCalloc; "calloc"
266634:  LDR             R0, =(aEe - 0x266640); "(EE)"
266636:  LDR             R2, =(aCProjectsOswra_34+0x60 - 0x266642); "%s: %s\n"
266638:  ADD             R1, PC; "Memory failure"
26663A:  STR             R1, [SP,#0x28+var_28]
26663C:  ADD             R0, PC; "(EE)"
26663E:  ADD             R2, PC; "%s: %s\n"
266640:  ADR             R1, aOpenslStartPla; "opensl_start_playback"
266642:  BLX             j_al_print
266646:  MOVS            R5, #3
266648:  B               loc_26647E
