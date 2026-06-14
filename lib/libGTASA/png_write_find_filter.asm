; =========================================================
; Game Engine Function: png_write_find_filter
; Address            : 0x209240 - 0x20A1C2
; =========================================================

209240:  PUSH            {R4-R7,LR}
209242:  ADD             R7, SP, #0xC
209244:  PUSH.W          {R8-R11}
209248:  SUB             SP, SP, #4
20924A:  VPUSH           {D8-D15}
20924E:  SUB             SP, SP, #0x58
209250:  MOV             R4, SP
209252:  BFC.W           R4, #0, #4
209256:  MOV             SP, R4
209258:  MOV             R11, R0
20925A:  LDRB            R0, [R1,#0xB]
20925C:  LDR.W           LR, [R11,#0x1E4]
209260:  STR             R1, [SP,#0xB8+var_A0]
209262:  ADDS            R0, #7
209264:  LDR.W           R8, [R1,#4]
209268:  LDRB.W          R12, [R11,#0x20E]
20926C:  LSRS            R3, R0, #3
20926E:  STR             R0, [SP,#0xB8+var_98]
209270:  MOV             R0, #0x1FFFFFF
209274:  CMP             R8, R0
209276:  STR             R3, [SP,#0xB8+var_88]
209278:  BCC             loc_209288
20927A:  RSB.W           R0, R12, #0
20927E:  MOV             R10, #0xFFFFFEFF
209282:  AND.W           R12, R12, R0
209286:  B               loc_20934A
209288:  CMP.W           R12, #8
20928C:  MOV             R10, #0xFFFFFEFF
209290:  IT NE
209292:  ANDSNE.W        R0, R12, #8
209296:  BEQ             loc_20934A
209298:  CMP.W           R8, #0
20929C:  BEQ             loc_209346
20929E:  CMP.W           R8, #4
2092A2:  BCC             loc_20931E
2092A4:  BIC.W           R6, R8, #3
2092A8:  CBZ             R6, loc_20931E
2092AA:  VMOV.I32        Q11, #0x18
2092AE:  ADD.W           R0, LR, R6
2092B2:  VMOV.I32        Q8, #0
2092B6:  ADD.W           R2, LR, #1
2092BA:  VMOV.I8         D18, #0xFF
2092BE:  ADD             R3, SP, #0xB8+var_64
2092C0:  VNEG.S32        Q11, Q11
2092C4:  MOV             R1, R6
2092C6:  VMOV.I32        Q10, #0xFF
2092CA:  VMOV.I32        Q12, #0x100
2092CE:  LDR.W           R5, [R2],#4
2092D2:  SUBS            R1, #4
2092D4:  STR             R5, [SP,#0xB8+var_64]
2092D6:  VLD1.32         {D19[0]}, [R3@32]
2092DA:  VMOVL.S8        Q13, D19
2092DE:  VCGT.S16        D19, D26, D18
2092E2:  VMOVL.U16       Q13, D26
2092E6:  VMOVL.U16       Q14, D19
2092EA:  VAND            Q13, Q13, Q10
2092EE:  VSHL.I32        Q14, Q14, #0x18
2092F2:  VSUB.I32        Q15, Q12, Q13
2092F6:  VSHL.S32        Q14, Q11, Q14
2092FA:  VBSL            Q14, Q13, Q15
2092FE:  VADD.I32        Q8, Q14, Q8
209302:  BNE             loc_2092CE
209304:  VEXT.8          Q9, Q8, Q8, #8
209308:  CMP             R8, R6
20930A:  VADD.I32        Q8, Q8, Q9
20930E:  VDUP.32         Q9, D16[1]
209312:  VADD.I32        Q8, Q8, Q9
209316:  VMOV.32         R10, D16[0]
20931A:  BNE             loc_209326
20931C:  B               loc_209342
20931E:  MOV.W           R10, #0
209322:  MOV             R0, LR
209324:  MOVS            R6, #0
209326:  SUB.W           R1, R8, R6
20932A:  ADDS            R0, #1
20932C:  LDRSB.W         R2, [R0],#1
209330:  CMP.W           R2, #0xFFFFFFFF
209334:  UXTB            R3, R2
209336:  IT LE
209338:  RSBLE.W         R3, R3, #0x100
20933C:  SUBS            R1, #1
20933E:  ADD             R10, R3
209340:  BNE             loc_20932C
209342:  LDR             R3, [SP,#0xB8+var_88]
209344:  B               loc_20934A
209346:  MOV.W           R10, #0
20934A:  CMP.W           R12, #0x10
20934E:  STR.W           R8, [SP,#0xB8+var_8C]
209352:  STR.W           R12, [SP,#0xB8+var_9C]
209356:  BNE             loc_2093A8
209358:  LDR.W           R4, [R11,#0x1E8]
20935C:  MOVS            R0, #1
20935E:  CMP             R3, #0
209360:  MOV             R2, R4
209362:  STRB.W          R0, [R2],#1
209366:  ADD.W           R0, LR, #1
20936A:  BEQ.W           loc_209496
20936E:  LDR             R1, [SP,#0xB8+var_98]
209370:  ADD.W           R8, R3, #1
209374:  CMP             R1, #0x80
209376:  BCC             loc_20946A
209378:  ANDS.W          R6, R3, #0x30 ; '0'
20937C:  BEQ             loc_20946A
20937E:  ADD.W           R1, LR, R8
209382:  CMP             R2, R1
209384:  ITT CC
209386:  ADDCC.W         R1, R4, R8
20938A:  CMPCC           R0, R1
20938C:  BCC             loc_20946A
20938E:  ADDS            R1, R2, R6
209390:  ADDS            R5, R0, R6
209392:  MOV             R3, R6
209394:  VLD1.8          {D16-D17}, [R0]!
209398:  SUBS            R3, #0x10
20939A:  VST1.8          {D16-D17}, [R2]!
20939E:  BNE             loc_209394
2093A0:  LDR             R3, [SP,#0xB8+var_88]
2093A2:  CMP             R3, R6
2093A4:  BNE             loc_209470
2093A6:  B               loc_20947E
2093A8:  MOVS.W          R0, R12,LSL#27
2093AC:  BPL.W           loc_209608
2093B0:  LDR.W           R8, [R11,#0x1E8]
2093B4:  MOVS            R0, #1
2093B6:  ADD.W           R12, LR, #1
2093BA:  CMP             R3, #0
2093BC:  MOV             R1, R8
2093BE:  STRB.W          R0, [R1],#1
2093C2:  BEQ.W           loc_209554
2093C6:  LDR             R0, [SP,#0xB8+var_98]
2093C8:  ADD.W           R9, R3, #1
2093CC:  STR.W           LR, [SP,#0xB8+var_A4]
2093D0:  CMP             R0, #0x20 ; ' '
2093D2:  BCC             loc_2094AE
2093D4:  ANDS.W          LR, R3, #0x3C ; '<'
2093D8:  BEQ             loc_2094AE
2093DA:  LDR             R0, [SP,#0xB8+var_A4]
2093DC:  ADD             R0, R9
2093DE:  CMP             R1, R0
2093E0:  ITT CC
2093E2:  ADDCC.W         R0, R8, R9
2093E6:  CMPCC           R12, R0
2093E8:  BCC             loc_2094AE
2093EA:  VMOV.I32        Q11, #0x18
2093EE:  ADD.W           R2, R1, LR
2093F2:  VMOV.I32        Q8, #0
2093F6:  ADD.W           R6, R12, LR
2093FA:  VMOV.I8         D18, #0xFF
2093FE:  ADD             R4, SP, #0xB8+var_68
209400:  VNEG.S32        Q11, Q11
209404:  MOV             R3, LR
209406:  MOV             R0, R12
209408:  VMOV.I32        Q10, #0xFF
20940C:  VMOV.I32        Q12, #0x100
209410:  LDR.W           R5, [R0],#4
209414:  SUBS            R3, #4
209416:  STR             R5, [SP,#0xB8+var_68]
209418:  VLD1.32         {D19[0]}, [R4@32]
20941C:  VMOVL.S8        Q13, D19
209420:  VCGT.S16        D19, D26, D18
209424:  VMOVL.U16       Q15, D26
209428:  VMOVL.U16       Q14, D19
20942C:  VUZP.8          D26, D19
209430:  VAND            Q15, Q15, Q10
209434:  VST1.32         {D26[0]}, [R1]!
209438:  VSHL.I32        Q14, Q14, #0x18
20943C:  VSUB.I32        Q0, Q12, Q15
209440:  VSHL.S32        Q14, Q11, Q14
209444:  VBSL            Q14, Q15, Q0
209448:  VADD.I32        Q8, Q14, Q8
20944C:  BNE             loc_209410
20944E:  VEXT.8          Q9, Q8, Q8, #8
209452:  LDR             R0, [SP,#0xB8+var_88]
209454:  VADD.I32        Q8, Q8, Q9
209458:  CMP             R0, LR
20945A:  VDUP.32         Q9, D16[1]
20945E:  VADD.I32        Q8, Q8, Q9
209462:  VMOV.32         R4, D16[0]
209466:  BNE             loc_2094B8
209468:  B               loc_2094D8
20946A:  MOVS            R6, #0
20946C:  MOV             R5, R0
20946E:  MOV             R1, R2
209470:  SUBS            R0, R3, R6
209472:  LDRB.W          R2, [R5],#1
209476:  SUBS            R0, #1
209478:  STRB.W          R2, [R1],#1
20947C:  BNE             loc_209472
20947E:  ADD.W           R0, LR, R8
209482:  ADD.W           R2, R4, R8
209486:  LDR.W           LR, [R11,#0x1E4]
20948A:  MOV             R1, R3
20948C:  LDR.W           R8, [SP,#0xB8+var_8C]
209490:  CMP             R8, R1
209492:  BHI             loc_20949E
209494:  B               loc_209602
209496:  MOVS            R1, #0
209498:  CMP             R8, R1
20949A:  BLS.W           loc_209602
20949E:  SUB.W           R9, R8, R1
2094A2:  CMP.W           R9, #0x10
2094A6:  BCS             loc_2094E8
2094A8:  MOV             R4, R2
2094AA:  MOV             R5, R0
2094AC:  B               loc_2095E6
2094AE:  MOVS            R4, #0
2094B0:  MOV             R6, R12
2094B2:  MOV             R2, R1
2094B4:  MOV.W           LR, #0
2094B8:  LDR             R0, [SP,#0xB8+var_88]
2094BA:  SUB.W           R0, R0, LR
2094BE:  LDRSB.W         R1, [R6],#1
2094C2:  CMP.W           R1, #0xFFFFFFFF
2094C6:  UXTB            R3, R1
2094C8:  IT LE
2094CA:  RSBLE.W         R3, R3, #0x100
2094CE:  STRB.W          R1, [R2],#1
2094D2:  ADD             R4, R3
2094D4:  SUBS            R0, #1
2094D6:  BNE             loc_2094BE
2094D8:  LDR.W           LR, [SP,#0xB8+var_A4]
2094DC:  ADD.W           R1, R8, R9
2094E0:  LDR             R2, [SP,#0xB8+var_88]
2094E2:  ADD.W           R5, LR, R9
2094E6:  B               loc_20955A
2094E8:  BIC.W           R3, R9, #0xF
2094EC:  CMP             R3, #0
2094EE:  BEQ             loc_2095A6
2094F0:  STR             R3, [SP,#0xB8+var_90]
2094F2:  ADD.W           R3, R0, R9
2094F6:  CMP             R2, R3
2094F8:  MOV.W           R12, #0
2094FC:  ADD.W           R3, R2, R9
209500:  IT CC
209502:  MOVCC.W         R12, #1
209506:  CMP             R0, R3
209508:  MOV.W           R5, #0
20950C:  ADD.W           R6, LR, #1
209510:  IT CC
209512:  MOVCC           R5, #1
209514:  CMP             R6, R3
209516:  MOV.W           R3, #0
20951A:  IT CC
20951C:  MOVCC           R3, #1
20951E:  LDR             R4, [SP,#0xB8+var_8C]
209520:  MOV.W           R8, #0
209524:  STR.W           LR, [SP,#0xB8+var_A4]
209528:  ADDS            R4, #1
20952A:  SUBS            R4, R4, R1
20952C:  ADD             R4, LR
20952E:  CMP             R2, R4
209530:  IT CC
209532:  MOVCC.W         R8, #1
209536:  TST.W           R8, R3
20953A:  IT EQ
20953C:  ANDSEQ.W        R3, R12, R5
209540:  BEQ             loc_2095B0
209542:  MOV             R4, R2
209544:  MOV             R5, R0
209546:  LDR.W           R8, [SP,#0xB8+var_8C]
20954A:  LDR.W           R12, [SP,#0xB8+var_9C]
20954E:  LDR.W           LR, [SP,#0xB8+var_A4]
209552:  B               loc_2095E6
209554:  MOVS            R2, #0
209556:  MOVS            R4, #0
209558:  MOV             R5, R12
20955A:  LDR.W           R8, [SP,#0xB8+var_8C]
20955E:  CMP             R2, R8
209560:  BCC             loc_209572
209562:  B               loc_20958C
209564:  ADD.W           R12, R12, #1
209568:  ADDS            R1, #1
20956A:  ADDS            R5, #1
20956C:  ADDS            R2, #1
20956E:  CMP             R2, R8
209570:  BCS             loc_20958C
209572:  LDRB.W          R0, [R12]
209576:  LDRB            R3, [R5]
209578:  SUBS            R0, R3, R0
20957A:  STRB            R0, [R1]
20957C:  UXTB            R0, R0
20957E:  CMP             R0, #0x80
209580:  IT CS
209582:  RSBCS.W         R0, R0, #0x100
209586:  ADD             R4, R0
209588:  CMP             R4, R10
20958A:  BLS             loc_209564
20958C:  LDR             R3, [SP,#0xB8+var_88]
20958E:  CMP             R4, R10
209590:  LDR.W           R12, [SP,#0xB8+var_9C]
209594:  BCS             loc_209608
209596:  LDRD.W          LR, R0, [R11,#0x1E8]
20959A:  CMP             R0, #0
20959C:  MOV             R10, R4
20959E:  IT NE
2095A0:  STRDNE.W        R0, LR, [R11,#0x1E8]
2095A4:  B               loc_209608
2095A6:  MOV             R4, R2
2095A8:  MOV             R5, R0
2095AA:  LDR.W           R8, [SP,#0xB8+var_8C]
2095AE:  B               loc_2095E6
2095B0:  LDR.W           R8, [SP,#0xB8+var_90]
2095B4:  LDR.W           LR, [SP,#0xB8+var_A4]
2095B8:  LDR.W           R12, [SP,#0xB8+var_9C]
2095BC:  ADD.W           R5, R0, R8
2095C0:  ADD.W           R4, R2, R8
2095C4:  ADD             R1, R8
2095C6:  ADD             LR, R8
2095C8:  MOV             R3, R8
2095CA:  VLD1.8          {D16-D17}, [R6]!
2095CE:  SUBS            R3, #0x10
2095D0:  VLD1.8          {D18-D19}, [R0]!
2095D4:  VSUB.I8         Q8, Q9, Q8
2095D8:  VST1.8          {D16-D17}, [R2]!
2095DC:  BNE             loc_2095CA
2095DE:  CMP             R9, R8
2095E0:  LDR.W           R8, [SP,#0xB8+var_8C]
2095E4:  BEQ             loc_209602
2095E6:  SUB.W           R0, R8, R1
2095EA:  ADD.W           R1, LR, #1
2095EE:  LDRB.W          R2, [R1],#1
2095F2:  SUBS            R0, #1
2095F4:  LDRB.W          R3, [R5],#1
2095F8:  SUB.W           R2, R3, R2
2095FC:  STRB.W          R2, [R4],#1
209600:  BNE             loc_2095EE
209602:  LDR.W           LR, [R11,#0x1E8]
209606:  LDR             R3, [SP,#0xB8+var_88]
209608:  CMP.W           R12, #0x20 ; ' '
20960C:  STR.W           R11, [SP,#0xB8+var_94]
209610:  BNE             loc_209632
209612:  LDR.W           R0, [R11,#0x1E8]
209616:  MOVS            R1, #2
209618:  CMP.W           R8, #0
20961C:  STRB            R1, [R0]
20961E:  BEQ.W           loc_2099A8
209622:  LDRD.W          R9, LR, [R11,#0x1E0]
209626:  CMP.W           R8, #0x10
20962A:  BCS             loc_2096CA
20962C:  MOV.W           R12, #0
209630:  B               loc_209986
209632:  MOVS.W          R0, R12,LSL#26
209636:  BPL             loc_209682
209638:  LDR.W           R1, [R11,#0x1E8]
20963C:  MOVS            R0, #2
20963E:  CMP.W           R8, #0
209642:  STRB            R0, [R1]
209644:  MOV.W           R0, #0
209648:  BEQ             loc_20966E
20964A:  LDRD.W          R2, R3, [R11,#0x1E0]
20964E:  MOVS            R6, #1
209650:  LDRB            R5, [R2,R6]
209652:  LDRB            R4, [R3,R6]
209654:  SUBS            R5, R4, R5
209656:  STRB            R5, [R1,R6]
209658:  UXTB            R5, R5
20965A:  CMP             R5, #0x80
20965C:  IT CS
20965E:  RSBCS.W         R5, R5, #0x100
209662:  CMP             R6, R8
209664:  ADD             R0, R5
209666:  BCS             loc_20966E
209668:  ADDS            R6, #1
20966A:  CMP             R0, R10
20966C:  BLS             loc_209650
20966E:  LDR             R3, [SP,#0xB8+var_88]
209670:  CMP             R0, R10
209672:  BCS             loc_209682
209674:  LDRD.W          LR, R1, [R11,#0x1E8]
209678:  CMP             R1, #0
20967A:  MOV             R10, R0
20967C:  IT NE
20967E:  STRDNE.W        R1, LR, [R11,#0x1E8]
209682:  CMP.W           R12, #0x40 ; '@'
209686:  BNE.W           loc_2099BA
20968A:  STR.W           R10, [SP,#0xB8+var_90]
20968E:  MOVS            R0, #3
209690:  LDR.W           LR, [R11,#0x1E8]
209694:  CMP             R3, #0
209696:  MOV             R9, LR
209698:  STRB.W          R0, [R9],#1
20969C:  MOV             R0, R11
20969E:  LDRD.W          R11, R2, [R0,#0x1E0]
2096A2:  ADD.W           R12, R2, #1
2096A6:  ADD.W           R10, R11, #1
2096AA:  BEQ             loc_2096BC
2096AC:  LDR             R0, [SP,#0xB8+var_98]
2096AE:  ADDS            R6, R3, #1
2096B0:  STR             R2, [SP,#0xB8+var_A4]
2096B2:  CMP             R0, #0x80
2096B4:  BCS             loc_209738
2096B6:  MOV.W           R8, #0
2096BA:  B               loc_2097AE
2096BC:  MOVS            R1, #0
2096BE:  LDR.W           R11, [SP,#0xB8+var_94]
2096C2:  CMP             R8, R1
2096C4:  BHI.W           loc_2097EE
2096C8:  B               loc_209940
2096CA:  MOV             R1, R8
2096CC:  BIC.W           R8, R1, #0xF
2096D0:  MOV.W           R12, #0
2096D4:  CMP.W           R8, #0
2096D8:  BEQ.W           loc_209958
2096DC:  ADDS            R2, R1, #1
2096DE:  STR.W           R10, [SP,#0xB8+var_90]
2096E2:  ADD.W           R10, R0, R2
2096E6:  ADD.W           R4, R9, #1
2096EA:  ADD.W           R1, R9, R2
2096EE:  CMP             R4, R10
2096F0:  MOV.W           R11, #0
2096F4:  ADD.W           R5, R0, #1
2096F8:  IT CC
2096FA:  MOVCC.W         R11, #1
2096FE:  CMP             R5, R1
209700:  MOV.W           R1, #0
209704:  ADD.W           R6, LR, #1
209708:  IT CC
20970A:  MOVCC           R1, #1
20970C:  CMP             R6, R10
20970E:  MOV.W           R3, #0
209712:  ADD             R2, LR
209714:  IT CC
209716:  MOVCC           R3, #1
209718:  CMP             R5, R2
20971A:  MOV.W           R2, #0
20971E:  IT CC
209720:  MOVCC           R2, #1
209722:  TST             R2, R3
209724:  IT EQ
209726:  ANDSEQ.W        R1, R1, R11
20972A:  BEQ.W           loc_20995C
20972E:  LDR.W           R8, [SP,#0xB8+var_8C]
209732:  LDRD.W          R11, R10, [SP,#0xB8+var_94]
209736:  B               loc_209986
209738:  ANDS.W          R4, R3, #0x30 ; '0'
20973C:  MOV.W           R8, #0
209740:  BEQ             loc_2097AE
209742:  ADD.W           R3, LR, R6
209746:  MOVS            R0, #0
209748:  CMP             R10, R3
20974A:  ADD.W           R1, R11, R6
20974E:  IT CC
209750:  MOVCC           R0, #1
209752:  CMP             R9, R1
209754:  MOV.W           R1, #0
209758:  ADD.W           R5, R2, R6
20975C:  IT CC
20975E:  MOVCC           R1, #1
209760:  CMP             R12, R3
209762:  MOV.W           R3, #0
209766:  IT CC
209768:  MOVCC           R3, #1
20976A:  CMP             R9, R5
20976C:  MOV.W           R5, #0
209770:  IT CC
209772:  MOVCC           R5, #1
209774:  TST             R5, R3
209776:  IT EQ
209778:  ANDSEQ.W        R0, R0, R1
20977C:  BNE             loc_2097AE
20977E:  MOV             R8, R4
209780:  ADD.W           R0, R10, R4
209784:  ADD.W           R5, R9, R4
209788:  ADD.W           R1, R12, R4
20978C:  MOV             R3, R8
20978E:  VLD1.8          {D16-D17}, [R10]!
209792:  SUBS            R3, #0x10
209794:  VSHR.U8         Q8, Q8, #1
209798:  VLD1.8          {D18-D19}, [R12]!
20979C:  VSUB.I8         Q8, Q9, Q8
2097A0:  VST1.8          {D16-D17}, [R9]!
2097A4:  BNE             loc_20978E
2097A6:  LDR             R2, [SP,#0xB8+var_88]
2097A8:  CMP             R2, R4
2097AA:  BNE             loc_2097B4
2097AC:  B               loc_2097CE
2097AE:  MOV             R1, R12
2097B0:  MOV             R5, R9
2097B2:  MOV             R0, R10
2097B4:  LDR             R2, [SP,#0xB8+var_88]
2097B6:  SUB.W           R3, R2, R8
2097BA:  LDRB.W          R2, [R0],#1
2097BE:  SUBS            R3, #1
2097C0:  LDRB.W          R4, [R1],#1
2097C4:  SUB.W           R2, R4, R2,LSR#1
2097C8:  STRB.W          R2, [R5],#1
2097CC:  BNE             loc_2097BA
2097CE:  ADD.W           R10, R11, R6
2097D2:  LDR.W           R11, [SP,#0xB8+var_94]
2097D6:  LDR             R0, [SP,#0xB8+var_A4]
2097D8:  ADD.W           R9, LR, R6
2097DC:  LDR.W           R2, [R11,#0x1E4]
2097E0:  ADD.W           R12, R0, R6
2097E4:  LDRD.W          R8, R1, [SP,#0xB8+var_8C]
2097E8:  CMP             R8, R1
2097EA:  BLS.W           loc_209940
2097EE:  SUB.W           R3, R8, R1
2097F2:  CMP             R3, #0x10
2097F4:  BCC.W           loc_20991A
2097F8:  BIC.W           R0, R3, #0xF
2097FC:  CMP             R0, #0
2097FE:  BEQ.W           loc_20991A
209802:  STR             R0, [SP,#0xB8+var_B0]
209804:  ADD.W           R0, R10, R3
209808:  CMP             R9, R0
20980A:  MOV.W           R0, #0
20980E:  ADD.W           R4, R9, R3
209812:  IT CC
209814:  MOVCC           R0, #1
209816:  CMP             R10, R4
209818:  MOV.W           LR, #0
20981C:  STR             R0, [SP,#0xB8+var_A8]
20981E:  MOV             R0, R8
209820:  IT CC
209822:  MOVCC.W         LR, #1
209826:  STR             R3, [SP,#0xB8+var_AC]
209828:  ADD             R3, R12
20982A:  ADDS            R0, #1
20982C:  CMP             R9, R3
20982E:  MOV.W           R3, #0
209832:  SUB.W           R0, R0, R1
209836:  IT CC
209838:  MOVCC           R3, #1
20983A:  CMP             R12, R4
20983C:  MOV.W           R6, #0
209840:  ADD.W           R8, R2, #1
209844:  IT CC
209846:  MOVCC           R6, #1
209848:  CMP             R8, R4
20984A:  MOV.W           R4, #0
20984E:  ADD             R0, R2
209850:  IT CC
209852:  MOVCC           R4, #1
209854:  MOVS            R5, #0
209856:  CMP             R9, R0
209858:  STR             R2, [SP,#0xB8+var_A4]
20985A:  IT CC
20985C:  MOVCC           R5, #1
20985E:  TST             R5, R4
209860:  IT EQ
209862:  ANDSEQ.W        R0, R3, R6
209866:  BNE.W           loc_20A038
20986A:  LDR             R0, [SP,#0xB8+var_A8]
20986C:  ANDS.W          R0, R0, LR
209870:  BNE.W           loc_20A038
209874:  LDR             R3, [SP,#0xB8+var_B0]
209876:  LDR             R2, [SP,#0xB8+var_A4]
209878:  ADD.W           R6, R12, R3
20987C:  ADD.W           R4, R9, R3
209880:  ADD.W           LR, R10, R3
209884:  ADD             R1, R3
209886:  ADD             R2, R3
209888:  MOV             R0, R3
20988A:  VLD1.8          {D16-D17}, [R10]!
20988E:  SUBS            R0, #0x10
209890:  VLD1.8          {D18-D19}, [R8]!
209894:  VMOVL.U8        Q10, D17
209898:  VMOVL.U8        Q8, D16
20989C:  VMOVL.U8        Q11, D19
2098A0:  VLD1.8          {D24-D25}, [R12]!
2098A4:  VMOVL.U8        Q9, D18
2098A8:  VMOVL.U8        Q14, D25
2098AC:  VMOVL.U8        Q12, D24
2098B0:  VADDL.U16       Q13, D23, D21
2098B4:  VADDL.U16       Q10, D22, D20
2098B8:  VADDL.U16       Q11, D19, D17
2098BC:  VADDL.U16       Q8, D18, D16
2098C0:  VMOVL.U16       Q9, D29
2098C4:  VSHR.U32        Q13, Q13, #1
2098C8:  VMOVL.U16       Q15, D25
2098CC:  VSHR.U32        Q11, Q11, #1
2098D0:  VMOVL.U16       Q14, D28
2098D4:  VSHR.U32        Q10, Q10, #1
2098D8:  VMOVL.U16       Q12, D24
2098DC:  VSHR.U32        Q8, Q8, #1
2098E0:  VSUB.I32        Q9, Q9, Q13
2098E4:  VSUB.I32        Q10, Q14, Q10
2098E8:  VSUB.I32        Q11, Q15, Q11
2098EC:  VSUB.I32        Q8, Q12, Q8
2098F0:  VMOVN.I32       D19, Q9
2098F4:  VMOVN.I32       D18, Q10
2098F8:  VMOVN.I32       D21, Q11
2098FC:  VMOVN.I32       D20, Q8
209900:  VMOVN.I16       D17, Q9
209904:  VMOVN.I16       D16, Q10
209908:  VST1.8          {D16-D17}, [R9]!
20990C:  BNE             loc_20988A
20990E:  LDR             R0, [SP,#0xB8+var_AC]
209910:  LDR.W           R8, [SP,#0xB8+var_8C]
209914:  CMP             R0, R3
209916:  BNE             loc_209920
209918:  B               loc_209940
20991A:  MOV             LR, R10
20991C:  MOV             R4, R9
20991E:  MOV             R6, R12
209920:  SUB.W           R0, R8, R1
209924:  ADDS            R1, R2, #1
209926:  LDRB.W          R3, [LR],#1
20992A:  SUBS            R0, #1
20992C:  LDRB.W          R5, [R1],#1
209930:  LDRB.W          R2, [R6],#1
209934:  ADD             R3, R5
209936:  SUB.W           R2, R2, R3,LSR#1
20993A:  STRB.W          R2, [R4],#1
20993E:  BNE             loc_209926
209940:  LDR.W           LR, [R11,#0x1E8]
209944:  LDR             R3, [SP,#0xB8+var_88]
209946:  LDR.W           R10, [SP,#0xB8+var_90]
20994A:  LDR.W           R12, [SP,#0xB8+var_9C]
20994E:  CMP.W           R12, #0x80
209952:  BEQ.W           loc_209AFC
209956:  B               loc_209B2C
209958:  MOV             R8, R1
20995A:  B               loc_209986
20995C:  LDRD.W          R11, R10, [SP,#0xB8+var_94]
209960:  MOV             R12, R8
209962:  ADD             R9, R8
209964:  ADD             R0, R8
209966:  ADD             LR, R8
209968:  MOV             R3, R12
20996A:  VLD1.8          {D16-D17}, [R4]!
20996E:  SUBS            R3, #0x10
209970:  VLD1.8          {D18-D19}, [R6]!
209974:  VSUB.I8         Q8, Q9, Q8
209978:  VST1.8          {D16-D17}, [R5]!
20997C:  BNE             loc_20996A
20997E:  LDR             R1, [SP,#0xB8+var_8C]
209980:  CMP             R1, R8
209982:  MOV             R8, R1
209984:  BEQ             loc_2099A8
209986:  SUB.W           R3, R8, R12
20998A:  ADD.W           R2, R9, #1
20998E:  ADDS            R0, #1
209990:  ADD.W           R1, LR, #1
209994:  LDRB.W          R6, [R2],#1
209998:  SUBS            R3, #1
20999A:  LDRB.W          R5, [R1],#1
20999E:  SUB.W           R6, R5, R6
2099A2:  STRB.W          R6, [R0],#1
2099A6:  BNE             loc_209994
2099A8:  LDR.W           LR, [R11,#0x1E8]
2099AC:  LDR             R3, [SP,#0xB8+var_88]
2099AE:  LDR.W           R12, [SP,#0xB8+var_9C]
2099B2:  CMP.W           R12, #0x40 ; '@'
2099B6:  BEQ.W           loc_20968A
2099BA:  MOVS.W          R0, R12,LSL#25
2099BE:  BPL.W           loc_209AF6
2099C2:  STR.W           LR, [SP,#0xB8+var_A4]
2099C6:  MOVS            R0, #3
2099C8:  LDR.W           R9, [R11,#0x1E8]
2099CC:  CMP             R3, #0
2099CE:  MOV             R4, R9
2099D0:  STRB.W          R0, [R4],#1
2099D4:  LDRD.W          R6, R5, [R11,#0x1E0]
2099D8:  ADD.W           R11, R5, #1
2099DC:  ADD.W           LR, R6, #1
2099E0:  BEQ             loc_2099F6
2099E2:  LDR             R0, [SP,#0xB8+var_98]
2099E4:  ADDS            R2, R3, #1
2099E6:  STR             R5, [SP,#0xB8+var_90]
2099E8:  CMP             R0, #0x20 ; ' '
2099EA:  ADD             R0, SP, #0xB8+var_B0
2099EC:  STM.W           R0, {R2,R6,R9}
2099F0:  BCS             loc_209A00
2099F2:  MOVS            R1, #0
2099F4:  B               loc_209A58
2099F6:  MOVS            R2, #0
2099F8:  MOVS            R1, #0
2099FA:  CMP             R2, R8
2099FC:  BCC             loc_209AA2
2099FE:  B               loc_209ADA
209A00:  ANDS.W          R0, R3, #0x3C ; '<'
209A04:  MOV.W           R1, #0
209A08:  BEQ             loc_209A58
209A0A:  STR             R0, [SP,#0xB8+var_B4]
209A0C:  ADD.W           R0, R9, R2
209A10:  ADDS            R3, R6, R2
209A12:  CMP             LR, R0
209A14:  MOV.W           R12, #0
209A18:  ADD             R2, R5
209A1A:  IT CC
209A1C:  MOVCC.W         R12, #1
209A20:  CMP             R4, R3
209A22:  MOV.W           R3, #0
209A26:  IT CC
209A28:  MOVCC           R3, #1
209A2A:  CMP             R11, R0
209A2C:  MOV.W           R0, #0
209A30:  IT CC
209A32:  MOVCC           R0, #1
209A34:  CMP             R4, R2
209A36:  MOV.W           R2, #0
209A3A:  IT CC
209A3C:  MOVCC           R2, #1
209A3E:  TST             R2, R0
209A40:  IT EQ
209A42:  ANDSEQ.W        R2, R3, R12
209A46:  BEQ.W           loc_20A10C
209A4A:  MOV             R9, R11
209A4C:  MOV             R6, R4
209A4E:  MOV             R2, LR
209A50:  MOVS            R3, #0
209A52:  LDR.W           R12, [SP,#0xB8+var_9C]
209A56:  B               loc_209A60
209A58:  MOV             R9, R11
209A5A:  MOV             R6, R4
209A5C:  MOV             R2, LR
209A5E:  MOVS            R3, #0
209A60:  LDR             R0, [SP,#0xB8+var_88]
209A62:  SUBS            R0, R0, R3
209A64:  LDRB.W          R3, [R2],#1
209A68:  LDRB.W          R5, [R9],#1
209A6C:  SUB.W           R3, R5, R3,LSR#1
209A70:  UXTB            R5, R3
209A72:  CMP             R5, #0x80
209A74:  IT CS
209A76:  RSBCS.W         R5, R5, #0x100
209A7A:  STRB.W          R3, [R6],#1
209A7E:  ADD             R1, R5
209A80:  SUBS            R0, #1
209A82:  BNE             loc_209A64
209A84:  LDR             R0, [SP,#0xB8+var_90]
209A86:  LDR             R2, [SP,#0xB8+var_B0]
209A88:  ADD.W           R11, R0, R2
209A8C:  LDR             R0, [SP,#0xB8+var_AC]
209A8E:  ADD.W           LR, R0, R2
209A92:  LDR             R0, [SP,#0xB8+var_94]
209A94:  LDR.W           R5, [R0,#0x1E4]
209A98:  LDR             R0, [SP,#0xB8+var_A8]
209A9A:  ADDS            R4, R0, R2
209A9C:  LDR             R2, [SP,#0xB8+var_88]
209A9E:  CMP             R2, R8
209AA0:  BCS             loc_209ADA
209AA2:  ADDS            R6, R5, #1
209AA4:  LDRB.W          R3, [LR]
209AA8:  LDRB            R0, [R6]
209AAA:  LDRB.W          R5, [R11]
209AAE:  ADD             R0, R3
209AB0:  SUB.W           R0, R5, R0,LSR#1
209AB4:  STRB            R0, [R4]
209AB6:  UXTB            R0, R0
209AB8:  CMP             R0, #0x80
209ABA:  IT CS
209ABC:  RSBCS.W         R0, R0, #0x100
209AC0:  ADD             R1, R0
209AC2:  CMP             R1, R10
209AC4:  ITTTT LS
209AC6:  ADDLS           R6, #1
209AC8:  ADDLS           R2, #1
209ACA:  ADDLS.W         R11, R11, #1
209ACE:  ADDLS.W         LR, LR, #1
209AD2:  ITT LS
209AD4:  ADDLS           R4, #1
209AD6:  CMPLS           R2, R8
209AD8:  BCC             loc_209AA4
209ADA:  LDR.W           R11, [SP,#0xB8+var_94]
209ADE:  CMP             R1, R10
209AE0:  LDR             R3, [SP,#0xB8+var_88]
209AE2:  LDR.W           LR, [SP,#0xB8+var_A4]
209AE6:  BCS             loc_209AF6
209AE8:  LDRD.W          LR, R0, [R11,#0x1E8]
209AEC:  CMP             R0, #0
209AEE:  MOV             R10, R1
209AF0:  IT NE
209AF2:  STRDNE.W        R0, LR, [R11,#0x1E8]
209AF6:  CMP.W           R12, #0x80
209AFA:  BNE             loc_209B2C
209AFC:  LDR.W           LR, [R11,#0x1E8]
209B00:  MOVS            R1, #4
209B02:  CMP             R3, #0
209B04:  MOV             R0, LR
209B06:  STRB.W          R1, [R0],#1
209B0A:  LDRD.W          R5, R4, [R11,#0x1E0]
209B0E:  ADD.W           R6, R4, #1
209B12:  ADD.W           R10, R5, #1
209B16:  BEQ             loc_209B72
209B18:  LDR             R1, [SP,#0xB8+var_98]
209B1A:  ADD.W           R9, R3, #1
209B1E:  STR             R4, [SP,#0xB8+var_90]
209B20:  CMP             R1, #0x80
209B22:  BCS             loc_209B78
209B24:  MOV             R12, R5
209B26:  MOV.W           R8, #0
209B2A:  B               loc_209BF8
209B2C:  MOVS.W          R0, R12,LSL#24
209B30:  BMI             loc_209B3A
209B32:  ADD.W           R4, R11, #0x1E0
209B36:  LDR             R0, [SP,#0xB8+var_A0]
209B38:  B               loc_20A0AC
209B3A:  STR.W           LR, [SP,#0xB8+var_A4]
209B3E:  MOVS            R0, #4
209B40:  STR.W           R10, [SP,#0xB8+var_90]
209B44:  CMP             R3, #0
209B46:  LDR.W           R5, [R11,#0x1E8]
209B4A:  MOV             LR, R5
209B4C:  STRB.W          R0, [LR],#1
209B50:  LDRD.W          R9, R12, [R11,#0x1E0]
209B54:  ADD.W           R10, R12, #1
209B58:  ADD.W           R6, R9, #1
209B5C:  BEQ             loc_209BEE
209B5E:  LDR             R0, [SP,#0xB8+var_98]
209B60:  ADDS            R4, R3, #1
209B62:  STR             R6, [SP,#0xB8+var_9C]
209B64:  CMP             R0, #0x20 ; ' '
209B66:  STRD.W          R4, R5, [SP,#0xB8+var_AC]
209B6A:  BCS.W           loc_209E66
209B6E:  MOVS            R0, #0
209B70:  B               loc_209F4A
209B72:  MOVS            R3, #0
209B74:  MOV             R2, R10
209B76:  B               loc_209C30
209B78:  ANDS.W          R12, R3, #0x30 ; '0'
209B7C:  MOV.W           R8, #0
209B80:  BEQ             loc_209BF6
209B82:  ADD.W           R3, LR, R9
209B86:  MOVS            R1, #0
209B88:  CMP             R10, R3
209B8A:  ADD.W           R2, R5, R9
209B8E:  IT CC
209B90:  MOVCC           R1, #1
209B92:  CMP             R0, R2
209B94:  MOV.W           R2, #0
209B98:  ADD             R4, R9
209B9A:  IT CC
209B9C:  MOVCC           R2, #1
209B9E:  CMP             R6, R3
209BA0:  MOV.W           R3, #0
209BA4:  IT CC
209BA6:  MOVCC           R3, #1
209BA8:  CMP             R0, R4
209BAA:  MOV.W           R4, #0
209BAE:  IT CC
209BB0:  MOVCC           R4, #1
209BB2:  TST             R4, R3
209BB4:  BNE             loc_209BF6
209BB6:  STR.W           R12, [SP,#0xB8+var_98]
209BBA:  MOV             R12, R5
209BBC:  ANDS            R1, R2
209BBE:  BNE             loc_209BF8
209BC0:  LDR             R1, [SP,#0xB8+var_98]
209BC2:  ADDS            R5, R6, R1
209BC4:  ADDS            R4, R0, R1
209BC6:  MOV             R8, R1
209BC8:  ADD.W           R3, R10, R1
209BCC:  MOV             R2, R8
209BCE:  MOV             R1, R10
209BD0:  VLD1.8          {D16-D17}, [R1]!
209BD4:  SUBS            R2, #0x10
209BD6:  VLD1.8          {D18-D19}, [R6]!
209BDA:  VSUB.I8         Q8, Q9, Q8
209BDE:  VST1.8          {D16-D17}, [R0]!
209BE2:  BNE             loc_209BD0
209BE4:  LDR             R0, [SP,#0xB8+var_88]
209BE6:  LDR             R1, [SP,#0xB8+var_98]
209BE8:  CMP             R0, R1
209BEA:  BNE             loc_209BFE
209BEC:  B               loc_209C18
209BEE:  MOVS            R2, #0
209BF0:  MOVS            R0, #0
209BF2:  MOV             R9, R6
209BF4:  B               loc_209F8A
209BF6:  MOV             R12, R5
209BF8:  MOV             R3, R10
209BFA:  MOV             R4, R0
209BFC:  MOV             R5, R6
209BFE:  LDR             R0, [SP,#0xB8+var_88]
209C00:  SUB.W           R0, R0, R8
209C04:  LDRB.W          R1, [R3],#1
209C08:  SUBS            R0, #1
209C0A:  LDRB.W          R2, [R5],#1
209C0E:  SUB.W           R1, R2, R1
209C12:  STRB.W          R1, [R4],#1
209C16:  BNE             loc_209C04
209C18:  LDR             R0, [SP,#0xB8+var_90]
209C1A:  MOV             R5, R12
209C1C:  LDR.W           R4, [R11,#0x1E4]
209C20:  ADD.W           R2, R5, R9
209C24:  LDRD.W          R8, R3, [SP,#0xB8+var_8C]
209C28:  ADD.W           R6, R0, R9
209C2C:  ADD.W           R0, LR, R9
209C30:  CMP             R8, R3
209C32:  ADD.W           R1, R11, #0x1E0
209C36:  STR             R1, [SP,#0xB8+var_98]
209C38:  BLS.W           loc_20A0A0
209C3C:  SUB.W           R1, R8, R3
209C40:  CMP             R1, #0x10
209C42:  BCS             loc_209C4C
209C44:  MOV             R11, R6
209C46:  MOV             R9, R0
209C48:  MOV             R12, R2
209C4A:  B               loc_20A050
209C4C:  MOV             LR, R4
209C4E:  BIC.W           R4, R1, #0xF
209C52:  CMP             R4, #0
209C54:  BEQ.W           loc_20A02E
209C58:  STR             R4, [SP,#0xB8+var_B4]
209C5A:  ADDS            R4, R6, R1
209C5C:  CMP             R0, R4
209C5E:  MOV.W           R4, #0
209C62:  STR             R5, [SP,#0xB8+var_9C]
209C64:  IT CC
209C66:  MOVCC           R4, #1
209C68:  STR             R4, [SP,#0xB8+var_A4]
209C6A:  ADDS            R4, R0, R1
209C6C:  MOV             R12, R3
209C6E:  CMP             R6, R4
209C70:  MOV.W           R3, #0
209C74:  MOV.W           R11, #0
209C78:  IT CC
209C7A:  MOVCC           R3, #1
209C7C:  MOV             R5, LR
209C7E:  STR             R3, [SP,#0xB8+var_A8]
209C80:  MOV.W           LR, #0
209C84:  STR             R1, [SP,#0xB8+var_B0]
209C86:  ADD             R1, R2
209C88:  CMP             R0, R1
209C8A:  ADD.W           R1, R5, #1
209C8E:  IT CC
209C90:  MOVCC.W         R11, #1
209C94:  CMP             R2, R4
209C96:  IT CC
209C98:  MOVCC.W         LR, #1
209C9C:  CMP             R1, R4
209C9E:  MOV.W           R3, #0
209CA2:  MOV             R9, R8
209CA4:  IT CC
209CA6:  MOVCC           R3, #1
209CA8:  MOV.W           R8, #0
209CAC:  STR             R3, [SP,#0xB8+var_AC]
209CAE:  ADD.W           R3, R9, #1
209CB2:  STR.W           R12, [SP,#0xB8+var_88]
209CB6:  SUB.W           R12, R3, R12
209CBA:  ADD.W           R3, R5, R12
209CBE:  MOV.W           R9, #0
209CC2:  CMP             R0, R3
209CC4:  STR             R5, [SP,#0xB8+var_90]
209CC6:  IT CC
209CC8:  MOVCC.W         R9, #1
209CCC:  CMP             R10, R4
209CCE:  MOV.W           R4, #0
209CD2:  IT CC
209CD4:  MOVCC           R4, #1
209CD6:  LDR             R3, [SP,#0xB8+var_9C]
209CD8:  ADD.W           R5, R3, R12
209CDC:  CMP             R0, R5
209CDE:  IT CC
209CE0:  MOVCC.W         R8, #1
209CE4:  TST.W           R8, R4
209CE8:  BNE.W           loc_20A1B2
209CEC:  ANDS.W          R5, R11, LR
209CF0:  LDRD.W          R4, R8, [SP,#0xB8+var_90]
209CF4:  ITT EQ
209CF6:  LDRDEQ.W        R3, R5, [SP,#0xB8+var_A8]
209CFA:  ANDSEQ.W        R5, R5, R3
209CFE:  BNE.W           loc_20A046
209D02:  LDR             R3, [SP,#0xB8+var_AC]
209D04:  ANDS.W          R3, R3, R9
209D08:  BNE.W           loc_20A046
209D0C:  LDR.W           LR, [SP,#0xB8+var_B4]
209D10:  LDR             R3, [SP,#0xB8+var_88]
209D12:  LDR             R5, [SP,#0xB8+var_9C]
209D14:  ADD.W           R12, R2, LR
209D18:  ADD             R3, LR
209D1A:  ADD.W           R9, R0, LR
209D1E:  ADD.W           R11, R6, LR
209D22:  ADD             R5, LR
209D24:  ADD             R4, LR
209D26:  MOV             R8, LR
209D28:  VLD1.8          {D18-D19}, [R10]!
209D2C:  SUBS.W          R8, R8, #0x10
209D30:  VLD1.8          {D20-D21}, [R2]!
209D34:  VMOVL.U8        Q11, D18
209D38:  VMOVL.U8        Q3, D19
209D3C:  VLD1.8          {D16-D17}, [R1]!
209D40:  VMOVL.U8        Q12, D20
209D44:  VMOVL.U8        Q4, D21
209D48:  VMOVL.U8        Q14, D16
209D4C:  STR.W           LR, [SP,#0xB8+var_B8]
209D50:  VMOVL.U8        Q2, D17
209D54:  ADD.W           LR, SP, #0xB8+var_88
209D58:  VSUBL.U16       Q13, D25, D23
209D5C:  VABDL.U16       Q0, D29, D23
209D60:  VSUBL.U16       Q15, D29, D23
209D64:  VSUBL.U16       Q5, D4, D6
209D68:  VADD.I32        Q13, Q15, Q13
209D6C:  VABDL.U16       Q15, D25, D23
209D70:  VABS.S32        Q1, Q13
209D74:  VABDL.U16       Q6, D4, D6
209D78:  VCGT.S32        Q13, Q15, Q0
209D7C:  VCGE.S32        Q0, Q1, Q0
209D80:  VCGT.S32        Q15, Q15, Q1
209D84:  VSUBL.U16       Q1, D24, D22
209D88:  VORR            Q13, Q13, Q15
209D8C:  VSUBL.U16       Q15, D8, D6
209D90:  VMOVN.I32       D1, Q0
209D94:  VADD.I32        Q15, Q5, Q15
209D98:  VST1.64         {D26-D27}, [LR@128]
209D9C:  VSUBL.U16       Q13, D5, D7
209DA0:  VABS.S32        Q5, Q15
209DA4:  LDR.W           LR, [SP,#0xB8+var_B8]
209DA8:  VABDL.U16       Q15, D8, D6
209DAC:  STR.W           LR, [SP,#0xB8+var_B8]
209DB0:  VABDL.U16       Q2, D5, D7
209DB4:  ADD.W           LR, SP, #0xB8+var_88
209DB8:  VCGT.S32        Q7, Q15, Q6
209DBC:  VCGT.S32        Q15, Q15, Q5
209DC0:  VORR            Q15, Q7, Q15
209DC4:  VSUBL.U16       Q7, D9, D7
209DC8:  VABDL.U16       Q3, D9, D7
209DCC:  VADD.I32        Q13, Q13, Q7
209DD0:  VABS.S32        Q13, Q13
209DD4:  VCGT.S32        Q4, Q3, Q2
209DD8:  VCGT.S32        Q3, Q3, Q13
209DDC:  VCGE.S32        Q13, Q13, Q2
209DE0:  VCGE.S32        Q2, Q5, Q6
209DE4:  VORR            Q3, Q4, Q3
209DE8:  VSUBL.U16       Q4, D28, D22
209DEC:  VABDL.U16       Q14, D28, D22
209DF0:  VADD.I32        Q1, Q4, Q1
209DF4:  VABDL.U16       Q11, D24, D22
209DF8:  VABS.S32        Q1, Q1
209DFC:  VMOVN.I32       D27, Q13
209E00:  VCGT.S32        Q12, Q11, Q14
209E04:  VCGE.S32        Q4, Q1, Q14
209E08:  VLD1.64         {D28-D29}, [LR@128]
209E0C:  VCGT.S32        Q11, Q11, Q1
209E10:  VMOVN.I32       D26, Q2
209E14:  VMOVN.I32       D29, Q14
209E18:  VORR            Q11, Q12, Q11
209E1C:  VMOVN.I32       D0, Q4
209E20:  VMOVN.I16       D25, Q13
209E24:  VMOVN.I32       D27, Q3
209E28:  VMOVN.I16       D24, Q0
209E2C:  VMOVN.I32       D26, Q15
209E30:  VBSL            Q12, Q10, Q9
209E34:  VMOVN.I32       D28, Q11
209E38:  VMOVN.I16       D19, Q13
209E3C:  VMOVN.I16       D18, Q14
209E40:  VBSL            Q9, Q12, Q8
209E44:  VLD1.8          {D16-D17}, [R6]!
209E48:  VSUB.I8         Q8, Q8, Q9
209E4C:  VST1.8          {D16-D17}, [R0]!
209E50:  LDR.W           LR, [SP,#0xB8+var_B8]
209E54:  BNE.W           loc_209D28
209E58:  LDR             R0, [SP,#0xB8+var_B0]
209E5A:  LDR.W           R8, [SP,#0xB8+var_8C]
209E5E:  CMP             R0, LR
209E60:  BNE.W           loc_20A050
209E64:  B               loc_20A0A0
209E66:  ANDS.W          R1, R3, #0x3C ; '<'
209E6A:  MOV.W           R0, #0
209E6E:  BEQ             loc_209F4A
209E70:  ADDS            R3, R5, R4
209E72:  STR             R1, [SP,#0xB8+var_98]
209E74:  ADD.W           R2, R9, R4
209E78:  CMP             R6, R3
209E7A:  MOV.W           R1, #0
209E7E:  ADD             R4, R12
209E80:  IT CC
209E82:  MOVCC           R1, #1
209E84:  CMP             LR, R2
209E86:  MOV.W           R2, #0
209E8A:  IT CC
209E8C:  MOVCC           R2, #1
209E8E:  CMP             R10, R3
209E90:  MOV.W           R3, #0
209E94:  IT CC
209E96:  MOVCC           R3, #1
209E98:  CMP             LR, R4
209E9A:  MOV.W           R4, #0
209E9E:  IT CC
209EA0:  MOVCC           R4, #1
209EA2:  TST             R4, R3
209EA4:  IT EQ
209EA6:  ANDSEQ.W        R1, R1, R2
209EAA:  BNE             loc_209F4A
209EAC:  STR.W           R9, [SP,#0xB8+var_B0]
209EB0:  VMOV.I32        Q8, #0
209EB4:  LDR.W           R9, [SP,#0xB8+var_98]
209EB8:  VMOV.I32        Q9, #0xFF
209EBC:  VMOV.I32        Q10, #0x80
209EC0:  ADD             R3, SP, #0xB8+var_78
209EC2:  VMOV.I32        Q11, #0x100
209EC6:  ADD.W           R1, R10, R9
209ECA:  ADD.W           R4, LR, R9
209ECE:  ADD.W           R5, R6, R9
209ED2:  ADD             R0, SP, #0xB8+var_74
209ED4:  MOV             R8, R6
209ED6:  LDR.W           R2, [R8],#4
209EDA:  SUBS.W          R9, R9, #4
209EDE:  STR             R2, [SP,#0xB8+var_78]
209EE0:  LDR.W           R2, [R10],#4
209EE4:  VLD1.32         {D24[0]}, [R3@32]
209EE8:  VMOVL.U8        Q13, D24
209EEC:  STR             R2, [SP,#0xB8+var_74]
209EEE:  VLD1.32         {D25[0]}, [R0@32]
209EF2:  VMOVL.U16       Q13, D26
209EF6:  VMOVL.U8        Q12, D25
209EFA:  VMOVL.U16       Q12, D24
209EFE:  VSUB.I32        Q12, Q12, Q13
209F02:  VAND            Q13, Q12, Q9
209F06:  VMOVN.I32       D24, Q12
209F0A:  VCGT.U32        Q14, Q10, Q13
209F0E:  VUZP.8          D24, D25
209F12:  VSUB.I32        Q15, Q11, Q13
209F16:  VST1.32         {D24[0]}, [LR]!
209F1A:  VBSL            Q14, Q13, Q15
209F1E:  VADD.I32        Q8, Q14, Q8
209F22:  BNE             loc_209ED6
209F24:  VEXT.8          Q9, Q8, Q8, #8
209F28:  LDR             R2, [SP,#0xB8+var_88]
209F2A:  LDR             R3, [SP,#0xB8+var_98]
209F2C:  VADD.I32        Q8, Q8, Q9
209F30:  LDR.W           R8, [SP,#0xB8+var_8C]
209F34:  LDR.W           R9, [SP,#0xB8+var_B0]
209F38:  CMP             R2, R3
209F3A:  VDUP.32         Q9, D16[1]
209F3E:  VADD.I32        Q8, Q8, Q9
209F42:  VMOV.32         R0, D16[0]
209F46:  BNE             loc_209F52
209F48:  B               loc_209F74
209F4A:  MOV             R5, R6
209F4C:  MOV             R4, LR
209F4E:  MOV             R1, R10
209F50:  MOVS            R3, #0
209F52:  LDR             R2, [SP,#0xB8+var_88]
209F54:  SUBS            R2, R2, R3
209F56:  LDRB.W          R3, [R5],#1
209F5A:  LDRB.W          R6, [R1],#1
209F5E:  SUBS            R3, R6, R3
209F60:  UXTB            R6, R3
209F62:  CMP             R6, #0x80
209F64:  IT CS
209F66:  RSBCS.W         R6, R6, #0x100
209F6A:  STRB.W          R3, [R4],#1
209F6E:  ADD             R0, R6
209F70:  SUBS            R2, #1
209F72:  BNE             loc_209F56
209F74:  LDR             R2, [SP,#0xB8+var_AC]
209F76:  LDR             R1, [SP,#0xB8+var_A8]
209F78:  ADD.W           R10, R12, R2
209F7C:  ADD             R9, R2
209F7E:  ADD.W           LR, R1, R2
209F82:  LDR.W           R12, [R11,#0x1E4]
209F86:  LDR             R2, [SP,#0xB8+var_88]
209F88:  LDR             R6, [SP,#0xB8+var_9C]
209F8A:  CMP             R2, R8
209F8C:  ADD.W           R1, R11, #0x1E0
209F90:  STR             R1, [SP,#0xB8+var_98]
209F92:  BCS             loc_20A00C
209F94:  ADD.W           R4, R12, #1
209F98:  STR             R2, [SP,#0xB8+var_88]
209F9A:  MOV             R12, R6
209F9C:  LDRB            R5, [R6]
209F9E:  LDRB.W          R11, [R9]
209FA2:  LDRB            R3, [R4]
209FA4:  SUB.W           R6, R11, R5
209FA8:  LDRB.W          R8, [R10]
209FAC:  SUBS            R2, R3, R5
209FAE:  ADDS            R1, R2, R6
209FB0:  IT MI
209FB2:  NEGMI           R1, R1
209FB4:  CMP             R2, #0
209FB6:  IT MI
209FB8:  NEGMI           R2, R2
209FBA:  CMP             R2, R1
209FBC:  IT LE
209FBE:  MOVLE           R5, R11
209FC0:  CMP             R6, #0
209FC2:  IT MI
209FC4:  NEGMI           R6, R6
209FC6:  CMP             R6, R1
209FC8:  IT GT
209FCA:  MOVGT           R3, R5
209FCC:  CMP             R6, R2
209FCE:  IT GT
209FD0:  MOVGT           R3, R5
209FD2:  SUB.W           R1, R8, R3
209FD6:  STRB.W          R1, [LR]
209FDA:  UXTB            R1, R1
209FDC:  CMP             R1, #0x80
209FDE:  IT CS
209FE0:  RSBCS.W         R1, R1, #0x100
209FE4:  ADD             R0, R1
209FE6:  LDR             R1, [SP,#0xB8+var_90]
209FE8:  CMP             R0, R1
209FEA:  ITTTT LS
209FEC:  MOVLS           R6, R12
209FEE:  ADDLS           R6, #1
209FF0:  ADDLS           R4, #1
209FF2:  LDRLS           R2, [SP,#0xB8+var_88]
209FF4:  ITTTT LS
209FF6:  ADDLS           R2, #1
209FF8:  ADDLS.W         R9, R9, #1
209FFC:  ADDLS.W         R10, R10, #1
20A000:  ADDLS.W         LR, LR, #1
20A004:  ITT LS
20A006:  LDRLS           R1, [SP,#0xB8+var_8C]
20A008:  CMPLS           R2, R1
20A00A:  BCC             loc_209F98
20A00C:  LDR             R1, [SP,#0xB8+var_90]
20A00E:  CMP             R0, R1
20A010:  BCS             loc_20A024
20A012:  LDR.W           R11, [SP,#0xB8+var_94]
20A016:  LDRD.W          LR, R0, [R11,#0x1E8]
20A01A:  CMP             R0, #0
20A01C:  IT NE
20A01E:  STRDNE.W        R0, LR, [R11,#0x1E8]
20A022:  B               loc_20A0A8
20A024:  LDR.W           R11, [SP,#0xB8+var_94]
20A028:  LDRD.W          LR, R0, [SP,#0xB8+var_A4]
20A02C:  B               loc_20A0AA
20A02E:  MOV             R11, R6
20A030:  MOV             R9, R0
20A032:  MOV             R12, R2
20A034:  MOV             R4, LR
20A036:  B               loc_20A050
20A038:  MOV             LR, R10
20A03A:  MOV             R4, R9
20A03C:  MOV             R6, R12
20A03E:  LDR.W           R8, [SP,#0xB8+var_8C]
20A042:  LDR             R2, [SP,#0xB8+var_A4]
20A044:  B               loc_209920
20A046:  MOV             R11, R6
20A048:  MOV             R9, R0
20A04A:  MOV             R12, R2
20A04C:  LDR             R3, [SP,#0xB8+var_88]
20A04E:  LDR             R5, [SP,#0xB8+var_9C]
20A050:  SUB.W           R1, R8, R3
20A054:  ADD.W           LR, R5, #1
20A058:  ADD.W           R8, R4, #1
20A05C:  LDRB.W          R4, [LR],#1
20A060:  LDRB.W          R3, [R12],#1
20A064:  LDRB.W          R2, [R8],#1
20A068:  SUBS            R6, R3, R4
20A06A:  SUBS            R5, R2, R4
20A06C:  ADDS            R0, R5, R6
20A06E:  IT MI
20A070:  NEGMI           R0, R0
20A072:  CMP             R5, #0
20A074:  IT MI
20A076:  NEGMI           R5, R5
20A078:  CMP             R5, R0
20A07A:  IT LE
20A07C:  MOVLE           R4, R3
20A07E:  CMP             R6, #0
20A080:  IT MI
20A082:  NEGMI           R6, R6
20A084:  CMP             R6, R0
20A086:  IT GT
20A088:  MOVGT           R2, R4
20A08A:  LDRB.W          R0, [R11],#1
20A08E:  CMP             R6, R5
20A090:  IT GT
20A092:  MOVGT           R2, R4
20A094:  SUBS            R1, #1
20A096:  SUB.W           R0, R0, R2
20A09A:  STRB.W          R0, [R9],#1
20A09E:  BNE             loc_20A05C
20A0A0:  LDR.W           R11, [SP,#0xB8+var_94]
20A0A4:  LDR.W           LR, [R11,#0x1E8]
20A0A8:  LDR             R0, [SP,#0xB8+var_A0]
20A0AA:  LDR             R4, [SP,#0xB8+var_98]
20A0AC:  LDR             R0, [R0,#4]
20A0AE:  MOV             R1, LR
20A0B0:  MOVS            R3, #0
20A0B2:  ADDS            R2, R0, #1
20A0B4:  MOV             R0, R11
20A0B6:  BLX             j_png_compress_IDAT
20A0BA:  LDR             R0, [R4]
20A0BC:  CMP             R0, #0
20A0BE:  ITTT NE
20A0C0:  LDRNE.W         R1, [R11,#0x1E4]
20A0C4:  STRNE           R1, [R4]
20A0C6:  STRNE.W         R0, [R11,#0x1E4]
20A0CA:  MOV             R0, R11
20A0CC:  BLX             j_png_write_finish_row
20A0D0:  LDRD.W          R0, R1, [R11,#0x238]
20A0D4:  ADDS            R1, #1
20A0D6:  STR.W           R1, [R11,#0x23C]
20A0DA:  SUBS            R0, #1
20A0DC:  CMP             R0, R1
20A0DE:  BCS             loc_20A0FA
20A0E0:  SUB.W           R4, R7, #-var_60
20A0E4:  MOV             R0, R11
20A0E6:  MOV             SP, R4
20A0E8:  VPOP            {D8-D15}
20A0EC:  ADD             SP, SP, #4
20A0EE:  POP.W           {R8-R11}
20A0F2:  POP.W           {R4-R7,LR}
20A0F6:  B.W             j_j_png_write_flush
20A0FA:  SUB.W           R4, R7, #-var_60
20A0FE:  MOV             SP, R4
20A100:  VPOP            {D8-D15}
20A104:  ADD             SP, SP, #4
20A106:  POP.W           {R8-R11}
20A10A:  POP             {R4-R7,PC}
20A10C:  LDR             R0, [SP,#0xB8+var_B4]
20A10E:  VMOV.I32        Q8, #0
20A112:  VMOV.I32        Q9, #0xFF
20A116:  LDR.W           R12, [SP,#0xB8+var_9C]
20A11A:  VMOV.I32        Q10, #0x80
20A11E:  MOV             R5, R10
20A120:  VMOV.I32        Q11, #0x100
20A124:  ADD.W           R2, LR, R0
20A128:  ADDS            R6, R4, R0
20A12A:  ADD.W           R9, R11, R0
20A12E:  ADD.W           R8, SP, #0xB8+var_6C
20A132:  ADD.W           R10, SP, #0xB8+var_70
20A136:  MOV             R1, R0
20A138:  LDR.W           R3, [LR],#4
20A13C:  SUBS            R1, #4
20A13E:  STR             R3, [SP,#0xB8+var_6C]
20A140:  VLD1.32         {D24[0]}, [R8@32]
20A144:  LDR.W           R3, [R11],#4
20A148:  VMOVL.U8        Q12, D24
20A14C:  STR             R3, [SP,#0xB8+var_70]
20A14E:  VSHR.U16        D24, D24, #1
20A152:  VLD1.32         {D25[0]}, [R10@32]
20A156:  VMOVL.U16       Q13, D24
20A15A:  VMOVL.U8        Q12, D25
20A15E:  VAND            Q13, Q13, Q9
20A162:  VMOVL.U16       Q12, D24
20A166:  VSUB.I32        Q12, Q12, Q13
20A16A:  VAND            Q13, Q12, Q9
20A16E:  VMOVN.I32       D24, Q12
20A172:  VCGT.U32        Q14, Q10, Q13
20A176:  VUZP.8          D24, D25
20A17A:  VSUB.I32        Q15, Q11, Q13
20A17E:  VST1.32         {D24[0]}, [R4]!
20A182:  VBSL            Q14, Q13, Q15
20A186:  VADD.I32        Q8, Q14, Q8
20A18A:  BNE             loc_20A138
20A18C:  VEXT.8          Q9, Q8, Q8, #8
20A190:  LDR             R0, [SP,#0xB8+var_88]
20A192:  LDR             R3, [SP,#0xB8+var_B4]
20A194:  MOV             R10, R5
20A196:  VADD.I32        Q8, Q8, Q9
20A19A:  LDR.W           R8, [SP,#0xB8+var_8C]
20A19E:  CMP             R0, R3
20A1A0:  VDUP.32         Q9, D16[1]
20A1A4:  VADD.I32        Q8, Q8, Q9
20A1A8:  VMOV.32         R1, D16[0]
20A1AC:  BNE.W           loc_209A60
20A1B0:  B               loc_209A84
20A1B2:  MOV             R11, R6
20A1B4:  MOV             R9, R0
20A1B6:  MOV             R12, R2
20A1B8:  LDR             R3, [SP,#0xB8+var_88]
20A1BA:  LDR             R5, [SP,#0xB8+var_9C]
20A1BC:  LDRD.W          R4, R8, [SP,#0xB8+var_90]
20A1C0:  B               loc_20A050
