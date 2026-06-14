; =========================================================
; Game Engine Function: alDeleteSources
; Address            : 0x256324 - 0x2566B0
; =========================================================

256324:  PUSH            {R4-R7,LR}
256326:  ADD             R7, SP, #0xC
256328:  PUSH.W          {R8-R11}
25632C:  SUB             SP, SP, #0x1C
25632E:  MOV             R11, R1
256330:  MOV             R5, R0
256332:  BLX             j_GetContextRef
256336:  CMP             R0, #0
256338:  STR             R0, [SP,#0x38+var_20]
25633A:  BEQ.W           loc_256626
25633E:  CMP             R5, #0
256340:  BLT.W           loc_25662E
256344:  BEQ.W           loc_2566A0
256348:  LDR             R0, [SP,#0x38+var_20]
25634A:  MOVS            R4, #0
25634C:  ADD.W           R6, R0, #8
256350:  LDR.W           R1, [R11,R4,LSL#2]
256354:  MOV             R0, R6
256356:  BLX             j_LookupUIntMapKey
25635A:  CMP             R0, #0
25635C:  BEQ.W           loc_256664
256360:  ADDS            R4, #1
256362:  CMP             R4, R5
256364:  BLT             loc_256350
256366:  CMP             R5, #1
256368:  STR             R6, [SP,#0x38+var_2C]
25636A:  BLT.W           loc_2566A0
25636E:  LDR.W           R9, =(dword_6D681C - 0x256382)
256372:  MOVS            R4, #0
256374:  LDR             R6, =(dword_6D681C - 0x256384)
256376:  MOV.W           R8, #1
25637A:  LDR.W           R10, =(dword_6D681C - 0x256388)
25637E:  ADD             R9, PC; dword_6D681C
256380:  ADD             R6, PC; dword_6D681C
256382:  MOVS            R0, #0
256384:  ADD             R10, PC; dword_6D681C
256386:  STRD.W          R11, R5, [SP,#0x38+var_34]
25638A:  STR             R0, [SP,#0x38+var_24]
25638C:  LDR.W           R1, [R11,R0,LSL#2]
256390:  LDR             R0, [SP,#0x38+var_2C]
256392:  BLX             j_RemoveUIntMapKey
256396:  MOV             R5, R0
256398:  CMP             R5, #0
25639A:  BEQ.W           loc_256618
25639E:  LDR             R2, =(dword_6D681C - 0x2563AA)
2563A0:  MOVW            R0, #0x5988
2563A4:  LDR             R0, [R5,R0]
2563A6:  ADD             R2, PC; dword_6D681C
2563A8:  STR             R0, [SP,#0x38+var_28]
2563AA:  DMB.W           ISH
2563AE:  LDREX.W         R0, [R2,#0xC]
2563B2:  STREX.W         R1, R8, [R2,#0xC]
2563B6:  CMP             R1, #0
2563B8:  BNE             loc_2563AE
2563BA:  B               loc_2563D0
2563BC:  BLX             sched_yield
2563C0:  DMB.W           ISH
2563C4:  LDREX.W         R0, [R9,#0xC]
2563C8:  STREX.W         R1, R8, [R9,#0xC]
2563CC:  CMP             R1, #0
2563CE:  BNE             loc_2563C4
2563D0:  CMP             R0, #1
2563D2:  DMB.W           ISH
2563D6:  BEQ             loc_2563BC
2563D8:  LDR             R2, =(dword_6D681C - 0x2563E2)
2563DA:  DMB.W           ISH
2563DE:  ADD             R2, PC; dword_6D681C
2563E0:  LDREX.W         R0, [R2,#8]
2563E4:  STREX.W         R1, R8, [R2,#8]
2563E8:  CMP             R1, #0
2563EA:  BNE             loc_2563E0
2563EC:  B               loc_256402
2563EE:  BLX             sched_yield
2563F2:  DMB.W           ISH
2563F6:  LDREX.W         R0, [R6,#8]
2563FA:  STREX.W         R1, R8, [R6,#8]
2563FE:  CMP             R1, #0
256400:  BNE             loc_2563F6
256402:  CMP             R0, #1
256404:  DMB.W           ISH
256408:  BEQ             loc_2563EE
25640A:  LDR             R3, =(dword_6D681C - 0x256414)
25640C:  DMB.W           ISH
256410:  ADD             R3, PC; dword_6D681C
256412:  LDREX.W         R0, [R3]
256416:  ADDS            R1, R0, #1
256418:  STREX.W         R2, R1, [R3]
25641C:  CMP             R2, #0
25641E:  BNE             loc_256412
256420:  CMP             R0, #0
256422:  DMB.W           ISH
256426:  BNE             loc_25645A
256428:  LDR             R2, =(dword_6D681C - 0x256432)
25642A:  DMB.W           ISH
25642E:  ADD             R2, PC; dword_6D681C
256430:  LDREX.W         R0, [R2,#0x10]
256434:  STREX.W         R1, R8, [R2,#0x10]
256438:  CMP             R1, #0
25643A:  BNE             loc_256430
25643C:  B               loc_256452
25643E:  BLX             sched_yield
256442:  DMB.W           ISH
256446:  LDREX.W         R0, [R10,#0x10]
25644A:  STREX.W         R1, R8, [R10,#0x10]
25644E:  CMP             R1, #0
256450:  BNE             loc_256446
256452:  CMP             R0, #1
256454:  DMB.W           ISH
256458:  BEQ             loc_25643E
25645A:  LDR             R1, =(dword_6D681C - 0x256464)
25645C:  DMB.W           ISH
256460:  ADD             R1, PC; dword_6D681C
256462:  LDREX.W         R0, [R1,#8]
256466:  STREX.W         R0, R4, [R1,#8]
25646A:  CMP             R0, #0
25646C:  BNE             loc_256462
25646E:  LDR             R1, =(dword_6D681C - 0x25647E)
256470:  DMB.W           ISH
256474:  LDR             R3, =(dword_6D681C - 0x256480)
256476:  DMB.W           ISH
25647A:  ADD             R1, PC; dword_6D681C
25647C:  ADD             R3, PC; dword_6D681C
25647E:  LDREX.W         R0, [R1,#0xC]
256482:  STREX.W         R0, R4, [R1,#0xC]
256486:  CMP             R0, #0
256488:  BNE             loc_25647E
25648A:  LDR             R0, =(dword_6D6830 - 0x256494)
25648C:  DMB.W           ISH
256490:  ADD             R0, PC; dword_6D6830
256492:  LDR             R1, [R0]
256494:  LDR             R0, [SP,#0x38+var_28]
256496:  SUBS            R0, #1
256498:  CMP             R0, R1
25649A:  BCS             loc_2564BA
25649C:  LDR             R1, =(dword_6D6834 - 0x2564A2)
25649E:  ADD             R1, PC; dword_6D6834
2564A0:  LDR             R1, [R1]
2564A2:  DMB.W           ISH
2564A6:  ADD.W           R0, R1, R0,LSL#2
2564AA:  LDREX.W         R1, [R0]
2564AE:  STREX.W         R1, R4, [R0]
2564B2:  CMP             R1, #0
2564B4:  BNE             loc_2564AA
2564B6:  DMB.W           ISH
2564BA:  DMB.W           ISH
2564BE:  LDREX.W         R0, [R3]
2564C2:  SUBS            R1, R0, #1
2564C4:  STREX.W         R2, R1, [R3]
2564C8:  CMP             R2, #0
2564CA:  BNE             loc_2564BE
2564CC:  CMP             R0, #1
2564CE:  DMB.W           ISH
2564D2:  BNE             loc_2564EC
2564D4:  LDR             R1, =(dword_6D681C - 0x2564DE)
2564D6:  DMB.W           ISH
2564DA:  ADD             R1, PC; dword_6D681C
2564DC:  LDREX.W         R0, [R1,#0x10]
2564E0:  STREX.W         R0, R4, [R1,#0x10]
2564E4:  CMP             R0, #0
2564E6:  BNE             loc_2564DC
2564E8:  DMB.W           ISH
2564EC:  LDR.W           R11, [SP,#0x38+var_20]
2564F0:  MOV             R1, #0x161AC
2564F8:  LDR.W           R0, [R11,#0x88]
2564FC:  LDR             R1, [R0,R1]
2564FE:  LDR             R1, [R1,#0x2C]
256500:  BLX             R1
256502:  LDR.W           R0, [R11,#0x74]
256506:  LDR.W           R11, [SP,#0x38+var_34]
25650A:  CBZ             R0, loc_256532
25650C:  LDR             R1, [SP,#0x38+var_20]
25650E:  LSLS            R3, R0, #2
256510:  LDR             R1, [R1,#0x70]
256512:  ADD.W           R12, R1, R0,LSL#2
256516:  LDR             R2, [R1]
256518:  CMP             R2, R5
25651A:  BEQ             loc_256526
25651C:  SUBS            R3, #4
25651E:  ADD.W           R1, R1, #4
256522:  BNE             loc_256516
256524:  B               loc_256532
256526:  LDR             R2, [SP,#0x38+var_20]
256528:  SUBS            R0, #1
25652A:  STR             R0, [R2,#0x74]
25652C:  LDR.W           R0, [R12,#-4]
256530:  STR             R0, [R1]
256532:  LDR             R0, [SP,#0x38+var_20]
256534:  MOV             R1, #0x161AC
25653C:  LDR.W           R0, [R0,#0x88]
256540:  LDR             R1, [R0,R1]
256542:  LDR             R1, [R1,#0x30]
256544:  BLX             R1
256546:  B               loc_25654C
256548:  BLX             free
25654C:  LDR.W           R0, [R5,#0x90]; p
256550:  CBZ             R0, loc_256578
256552:  LDR             R1, [R0,#4]
256554:  STR.W           R1, [R5,#0x90]
256558:  LDR             R1, [R0]
25655A:  CMP             R1, #0
25655C:  BEQ             loc_256548
25655E:  ADDS            R1, #0x2C ; ','
256560:  DMB.W           ISH
256564:  LDREX.W         R2, [R1]
256568:  SUBS            R2, #1
25656A:  STREX.W         R3, R2, [R1]
25656E:  CMP             R3, #0
256570:  BNE             loc_256564
256572:  DMB.W           ISH
256576:  B               loc_256548
256578:  LDR.W           R0, [R5,#0xAC]
25657C:  MOVW            R3, #0x20D8
256580:  CBZ             R0, loc_25659A
256582:  ADD             R0, R3
256584:  DMB.W           ISH
256588:  LDREX.W         R1, [R0]
25658C:  SUBS            R1, #1
25658E:  STREX.W         R2, R1, [R0]
256592:  CMP             R2, #0
256594:  BNE             loc_256588
256596:  DMB.W           ISH
25659A:  LDR.W           R0, [R5,#0xB8]
25659E:  STR.W           R4, [R5,#0xAC]
2565A2:  CBZ             R0, loc_2565BC
2565A4:  ADD             R0, R3
2565A6:  DMB.W           ISH
2565AA:  LDREX.W         R1, [R0]
2565AE:  SUBS            R1, #1
2565B0:  STREX.W         R2, R1, [R0]
2565B4:  CMP             R2, #0
2565B6:  BNE             loc_2565AA
2565B8:  DMB.W           ISH
2565BC:  LDR.W           R0, [R5,#0xC4]
2565C0:  STR.W           R4, [R5,#0xB8]
2565C4:  CBZ             R0, loc_2565DE
2565C6:  ADD             R0, R3
2565C8:  DMB.W           ISH
2565CC:  LDREX.W         R1, [R0]
2565D0:  SUBS            R1, #1
2565D2:  STREX.W         R2, R1, [R0]
2565D6:  CMP             R2, #0
2565D8:  BNE             loc_2565CC
2565DA:  DMB.W           ISH
2565DE:  LDR.W           R0, [R5,#0xD0]
2565E2:  STR.W           R4, [R5,#0xC4]
2565E6:  CBZ             R0, loc_256600
2565E8:  ADD             R0, R3
2565EA:  DMB.W           ISH
2565EE:  LDREX.W         R1, [R0]
2565F2:  SUBS            R1, #1
2565F4:  STREX.W         R2, R1, [R0]
2565F8:  CMP             R2, #0
2565FA:  BNE             loc_2565EE
2565FC:  DMB.W           ISH
256600:  MOV             R0, R5
256602:  MOVW            R1, #0x5990
256606:  BLX             j___aeabi_memclr8
25660A:  LDRB.W          R0, [R5,#-1]!
25660E:  CMP             R0, #0x55 ; 'U'
256610:  BEQ             loc_25660A
256612:  MOV             R0, R5; p
256614:  BLX             free
256618:  LDR             R0, [SP,#0x38+var_24]
25661A:  LDR             R5, [SP,#0x38+var_30]
25661C:  ADDS            R0, #1
25661E:  CMP             R0, R5
256620:  BNE.W           loc_25638A
256624:  B               loc_2566A0
256626:  ADD             SP, SP, #0x1C
256628:  POP.W           {R8-R11}
25662C:  POP             {R4-R7,PC}
25662E:  LDR             R0, =(TrapALError_ptr - 0x256634)
256630:  ADD             R0, PC; TrapALError_ptr
256632:  LDR             R0, [R0]; TrapALError
256634:  LDRB            R0, [R0]
256636:  CMP             R0, #0
256638:  ITT NE
25663A:  MOVNE           R0, #5; sig
25663C:  BLXNE           raise
256640:  LDR             R0, [SP,#0x38+var_20]
256642:  LDREX.W         R0, [R0,#0x50]
256646:  CBNZ            R0, loc_256698
256648:  LDR             R0, [SP,#0x38+var_20]
25664A:  MOVW            R1, #0xA003
25664E:  DMB.W           ISH
256652:  ADDS            R0, #0x50 ; 'P'
256654:  STREX.W         R2, R1, [R0]
256658:  CBZ             R2, loc_25669C
25665A:  LDREX.W         R2, [R0]
25665E:  CMP             R2, #0
256660:  BEQ             loc_256654
256662:  B               loc_256698
256664:  LDR             R0, =(TrapALError_ptr - 0x25666A)
256666:  ADD             R0, PC; TrapALError_ptr
256668:  LDR             R0, [R0]; TrapALError
25666A:  LDRB            R0, [R0]
25666C:  CMP             R0, #0
25666E:  ITT NE
256670:  MOVNE           R0, #5; sig
256672:  BLXNE           raise
256676:  LDR             R0, [SP,#0x38+var_20]
256678:  LDREX.W         R0, [R0,#0x50]
25667C:  CBNZ            R0, loc_256698
25667E:  LDR             R0, [SP,#0x38+var_20]
256680:  MOVW            R1, #0xA001
256684:  DMB.W           ISH
256688:  ADDS            R0, #0x50 ; 'P'
25668A:  STREX.W         R2, R1, [R0]
25668E:  CBZ             R2, loc_25669C
256690:  LDREX.W         R2, [R0]
256694:  CMP             R2, #0
256696:  BEQ             loc_25668A
256698:  CLREX.W
25669C:  DMB.W           ISH
2566A0:  LDR             R0, [SP,#0x38+var_20]
2566A2:  ADD             SP, SP, #0x1C
2566A4:  POP.W           {R8-R11}
2566A8:  POP.W           {R4-R7,LR}
2566AC:  B.W             ALCcontext_DecRef
