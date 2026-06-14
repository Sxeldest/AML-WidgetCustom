; =========================================================
; Game Engine Function: alBufferSubSamplesSOFT
; Address            : 0x246330 - 0x2466B0
; =========================================================

246330:  PUSH            {R4-R7,LR}
246332:  ADD             R7, SP, #0xC
246334:  PUSH.W          {R8-R11}
246338:  SUB             SP, SP, #0x1C
24633A:  MOV             R10, R3
24633C:  MOV             R4, R2
24633E:  MOV             R8, R1
246340:  MOV             R5, R0
246342:  LDRD.W          R6, R9, [R7,#arg_0]
246346:  BLX             j_GetContextRef
24634A:  MOV             R11, R0
24634C:  CMP.W           R11, #0
246350:  BEQ             loc_246434
246352:  LDR.W           R0, [R11,#0x88]
246356:  MOV             R1, R5
246358:  ADDS            R0, #0x40 ; '@'
24635A:  BLX             j_LookupUIntMapKey
24635E:  CMP             R0, #0
246360:  BEQ             loc_24643C
246362:  ORR.W           R1, R4, R8
246366:  CMP.W           R1, #0xFFFFFFFF
24636A:  BLE.W           loc_246478
24636E:  SUB.W           R1, R6, #0x1400
246372:  CMP             R1, #0xA
246374:  BCS.W           loc_2464B4
246378:  STRD.W          R9, R6, [SP,#0x38+var_30]
24637C:  ADD.W           R9, R0, #0x34 ; '4'
246380:  STR             R4, [SP,#0x38+var_28]
246382:  DMB.W           ISH
246386:  STR             R0, [SP,#0x38+var_20]
246388:  LDREX.W         R0, [R9]
24638C:  ADDS            R1, R0, #1
24638E:  STREX.W         R2, R1, [R9]
246392:  CMP             R2, #0
246394:  BNE             loc_246388
246396:  CMP             R0, #0
246398:  DMB.W           ISH
24639C:  BNE             loc_2463DC
24639E:  DMB.W           ISH
2463A2:  MOVS            R1, #1
2463A4:  LDR             R0, [SP,#0x38+var_20]
2463A6:  ADD.W           R5, R0, #0x38 ; '8'
2463AA:  LDREX.W         R0, [R5]
2463AE:  STREX.W         R2, R1, [R5]
2463B2:  CMP             R2, #0
2463B4:  BNE             loc_2463AA
2463B6:  CMP             R0, #1
2463B8:  DMB.W           ISH
2463BC:  BNE             loc_2463DC
2463BE:  MOVS            R4, #1
2463C0:  BLX             sched_yield
2463C4:  DMB.W           ISH
2463C8:  LDREX.W         R0, [R5]
2463CC:  STREX.W         R1, R4, [R5]
2463D0:  CMP             R1, #0
2463D2:  BNE             loc_2463C8
2463D4:  CMP             R0, #1
2463D6:  DMB.W           ISH
2463DA:  BEQ             loc_2463C0
2463DC:  STR.W           R10, [SP,#0x38+var_24]
2463E0:  MOVS            R1, #1
2463E2:  DMB.W           ISH
2463E6:  LDR             R5, [SP,#0x38+var_20]
2463E8:  ADD.W           R10, R5, #0x40 ; '@'
2463EC:  LDREX.W         R0, [R10]
2463F0:  STREX.W         R2, R1, [R10]
2463F4:  CMP             R2, #0
2463F6:  BNE             loc_2463EC
2463F8:  CMP             R0, #1
2463FA:  DMB.W           ISH
2463FE:  BNE             loc_24641E
246400:  MOVS            R4, #1
246402:  BLX             sched_yield
246406:  DMB.W           ISH
24640A:  LDREX.W         R0, [R10]
24640E:  STREX.W         R1, R4, [R10]
246412:  CMP             R1, #0
246414:  BNE             loc_24640A
246416:  CMP             R0, #1
246418:  DMB.W           ISH
24641C:  BEQ             loc_246402
24641E:  LDRD.W          R2, R1, [R5,#0x10]
246422:  SUB.W           R0, R2, #0x1500
246426:  CMP             R0, #6
246428:  BHI             loc_2464F0
24642A:  LDR             R3, =(unk_60A680 - 0x246430)
24642C:  ADD             R3, PC; unk_60A680
24642E:  LDR.W           R0, [R3,R0,LSL#2]
246432:  B               loc_2464F2
246434:  ADD             SP, SP, #0x1C
246436:  POP.W           {R8-R11}
24643A:  POP             {R4-R7,PC}
24643C:  LDR             R0, =(TrapALError_ptr - 0x246442)
24643E:  ADD             R0, PC; TrapALError_ptr
246440:  LDR             R0, [R0]; TrapALError
246442:  LDRB            R0, [R0]
246444:  CMP             R0, #0
246446:  ITT NE
246448:  MOVNE           R0, #5; sig
24644A:  BLXNE           raise
24644E:  LDREX.W         R0, [R11,#0x50]
246452:  CMP             R0, #0
246454:  BNE.W           loc_246698
246458:  ADD.W           R0, R11, #0x50 ; 'P'
24645C:  MOVW            R1, #0xA001
246460:  DMB.W           ISH
246464:  STREX.W         R2, R1, [R0]
246468:  CMP             R2, #0
24646A:  BEQ.W           loc_24669C
24646E:  LDREX.W         R2, [R0]
246472:  CMP             R2, #0
246474:  BEQ             loc_246464
246476:  B               loc_246698
246478:  LDR             R0, =(TrapALError_ptr - 0x24647E)
24647A:  ADD             R0, PC; TrapALError_ptr
24647C:  LDR             R0, [R0]; TrapALError
24647E:  LDRB            R0, [R0]
246480:  CMP             R0, #0
246482:  ITT NE
246484:  MOVNE           R0, #5; sig
246486:  BLXNE           raise
24648A:  LDREX.W         R0, [R11,#0x50]
24648E:  CMP             R0, #0
246490:  BNE.W           loc_246698
246494:  ADD.W           R0, R11, #0x50 ; 'P'
246498:  MOVW            R1, #0xA003
24649C:  DMB.W           ISH
2464A0:  STREX.W         R2, R1, [R0]
2464A4:  CMP             R2, #0
2464A6:  BEQ.W           loc_24669C
2464AA:  LDREX.W         R2, [R0]
2464AE:  CMP             R2, #0
2464B0:  BEQ             loc_2464A0
2464B2:  B               loc_246698
2464B4:  LDR             R0, =(TrapALError_ptr - 0x2464BA)
2464B6:  ADD             R0, PC; TrapALError_ptr
2464B8:  LDR             R0, [R0]; TrapALError
2464BA:  LDRB            R0, [R0]
2464BC:  CMP             R0, #0
2464BE:  ITT NE
2464C0:  MOVNE           R0, #5; sig
2464C2:  BLXNE           raise
2464C6:  LDREX.W         R0, [R11,#0x50]
2464CA:  CMP             R0, #0
2464CC:  BNE.W           loc_246698
2464D0:  ADD.W           R0, R11, #0x50 ; 'P'
2464D4:  MOVW            R1, #0xA002
2464D8:  DMB.W           ISH
2464DC:  STREX.W         R2, R1, [R0]
2464E0:  CMP             R2, #0
2464E2:  BEQ.W           loc_24669C
2464E6:  LDREX.W         R2, [R0]
2464EA:  CMP             R2, #0
2464EC:  BEQ             loc_2464DC
2464EE:  B               loc_246698
2464F0:  MOVS            R0, #0
2464F2:  SUB.W           R3, R1, #0x1400
2464F6:  CMP             R3, #6
2464F8:  BHI             loc_246506
2464FA:  LDR             R5, =(unk_60A580 - 0x246500)
2464FC:  ADD             R5, PC; unk_60A580
2464FE:  LDR.W           R3, [R5,R3,LSL#2]
246502:  LDR             R5, [SP,#0x38+var_20]
246504:  B               loc_246508
246506:  MOVS            R3, #0
246508:  LDR             R6, [SP,#0x38+var_24]
24650A:  CMP             R2, R6
24650C:  BNE             loc_24659A
24650E:  LDR             R2, [R5,#0xC]
246510:  CMP             R2, R8
246512:  BLT.W           loc_24661C
246516:  LDR             R5, [SP,#0x38+var_28]
246518:  SUB.W           R2, R2, R8
24651C:  CMP             R2, R5
24651E:  LDR             R5, [SP,#0x38+var_20]
246520:  BLT             loc_24661C
246522:  MUL.W           R0, R0, R8
246526:  LDR             R2, [R5]
246528:  MOVS            R5, #0
24652A:  MLA.W           R0, R0, R3, R2
24652E:  LDR             R2, [SP,#0x38+var_24]
246530:  MOVS            R3, #0
246532:  SUB.W           R2, R2, #0x1500
246536:  CMP             R2, #6
246538:  BHI             loc_246542
24653A:  LDR             R3, =(unk_60A680 - 0x246540)
24653C:  ADD             R3, PC; unk_60A680
24653E:  LDR.W           R3, [R3,R2,LSL#2]
246542:  STR             R3, [SP,#0x38+var_38]
246544:  LDR             R2, [SP,#0x38+var_28]
246546:  STR             R2, [SP,#0x38+var_34]
246548:  LDRD.W          R2, R3, [SP,#0x38+var_30]
24654C:  BL              sub_2404D8
246550:  DMB.W           ISH
246554:  LDREX.W         R0, [R10]
246558:  STREX.W         R0, R5, [R10]
24655C:  CMP             R0, #0
24655E:  BNE             loc_246554
246560:  DMB.W           ISH
246564:  DMB.W           ISH
246568:  LDREX.W         R0, [R9]
24656C:  SUBS            R1, R0, #1
24656E:  STREX.W         R2, R1, [R9]
246572:  CMP             R2, #0
246574:  BNE             loc_246568
246576:  DMB.W           ISH
24657A:  CMP             R0, #1
24657C:  LDR             R6, [SP,#0x38+var_20]
24657E:  BNE.W           loc_2466A0
246582:  ADD.W           R0, R6, #0x38 ; '8'
246586:  MOVS            R1, #0
246588:  DMB.W           ISH
24658C:  LDREX.W         R2, [R0]
246590:  STREX.W         R2, R1, [R0]
246594:  CMP             R2, #0
246596:  BNE             loc_24658C
246598:  B               loc_24669C
24659A:  MOVS            R0, #0
24659C:  DMB.W           ISH
2465A0:  LDREX.W         R1, [R10]
2465A4:  STREX.W         R1, R0, [R10]
2465A8:  CMP             R1, #0
2465AA:  BNE             loc_2465A0
2465AC:  DMB.W           ISH
2465B0:  DMB.W           ISH
2465B4:  LDREX.W         R0, [R9]
2465B8:  SUBS            R1, R0, #1
2465BA:  STREX.W         R2, R1, [R9]
2465BE:  CMP             R2, #0
2465C0:  BNE             loc_2465B4
2465C2:  CMP             R0, #1
2465C4:  DMB.W           ISH
2465C8:  BNE             loc_2465E4
2465CA:  ADD.W           R0, R5, #0x38 ; '8'
2465CE:  MOVS            R1, #0
2465D0:  DMB.W           ISH
2465D4:  LDREX.W         R2, [R0]
2465D8:  STREX.W         R2, R1, [R0]
2465DC:  CMP             R2, #0
2465DE:  BNE             loc_2465D4
2465E0:  DMB.W           ISH
2465E4:  LDR             R0, =(TrapALError_ptr - 0x2465EA)
2465E6:  ADD             R0, PC; TrapALError_ptr
2465E8:  LDR             R0, [R0]; TrapALError
2465EA:  LDRB            R0, [R0]
2465EC:  CMP             R0, #0
2465EE:  ITT NE
2465F0:  MOVNE           R0, #5; sig
2465F2:  BLXNE           raise
2465F6:  LDREX.W         R0, [R11,#0x50]
2465FA:  CMP             R0, #0
2465FC:  BNE             loc_246698
2465FE:  ADD.W           R0, R11, #0x50 ; 'P'
246602:  MOVW            R1, #0xA002
246606:  DMB.W           ISH
24660A:  STREX.W         R2, R1, [R0]
24660E:  CMP             R2, #0
246610:  BEQ             loc_24669C
246612:  LDREX.W         R2, [R0]
246616:  CMP             R2, #0
246618:  BEQ             loc_24660A
24661A:  B               loc_246698
24661C:  MOVS            R0, #0
24661E:  DMB.W           ISH
246622:  LDREX.W         R1, [R10]
246626:  STREX.W         R1, R0, [R10]
24662A:  CMP             R1, #0
24662C:  BNE             loc_246622
24662E:  DMB.W           ISH
246632:  DMB.W           ISH
246636:  LDREX.W         R0, [R9]
24663A:  SUBS            R1, R0, #1
24663C:  STREX.W         R2, R1, [R9]
246640:  CMP             R2, #0
246642:  BNE             loc_246636
246644:  CMP             R0, #1
246646:  DMB.W           ISH
24664A:  BNE             loc_246666
24664C:  ADD.W           R0, R5, #0x38 ; '8'
246650:  MOVS            R1, #0
246652:  DMB.W           ISH
246656:  LDREX.W         R2, [R0]
24665A:  STREX.W         R2, R1, [R0]
24665E:  CMP             R2, #0
246660:  BNE             loc_246656
246662:  DMB.W           ISH
246666:  LDR             R0, =(TrapALError_ptr - 0x24666C)
246668:  ADD             R0, PC; TrapALError_ptr
24666A:  LDR             R0, [R0]; TrapALError
24666C:  LDRB            R0, [R0]
24666E:  CMP             R0, #0
246670:  ITT NE
246672:  MOVNE           R0, #5; sig
246674:  BLXNE           raise
246678:  LDREX.W         R0, [R11,#0x50]
24667C:  CBNZ            R0, loc_246698
24667E:  ADD.W           R0, R11, #0x50 ; 'P'
246682:  MOVW            R1, #0xA003
246686:  DMB.W           ISH
24668A:  STREX.W         R2, R1, [R0]
24668E:  CBZ             R2, loc_24669C
246690:  LDREX.W         R2, [R0]
246694:  CMP             R2, #0
246696:  BEQ             loc_24668A
246698:  CLREX.W
24669C:  DMB.W           ISH
2466A0:  MOV             R0, R11
2466A2:  ADD             SP, SP, #0x1C
2466A4:  POP.W           {R8-R11}
2466A8:  POP.W           {R4-R7,LR}
2466AC:  B.W             ALCcontext_DecRef
