; =========================================================
; Game Engine Function: sub_1892D4
; Address            : 0x1892D4 - 0x1897DA
; =========================================================

1892D4:  PUSH            {R4-R7,LR}
1892D6:  ADD             R7, SP, #0xC
1892D8:  PUSH.W          {R8-R11}
1892DC:  SUB             SP, SP, #0x6C
1892DE:  MOV             R4, R0
1892E0:  ADDW            R0, R0, #0x414
1892E4:  MOV             R6, R3
1892E6:  MOV             R5, R2
1892E8:  STR             R1, [SP,#0x88+var_3C]
1892EA:  BL              sub_17E0BA
1892EE:  SUB.W           R1, R5, #0xE0000000
1892F2:  SUBS            R5, #0x1C
1892F4:  MOV.W           R9, #0
1892F8:  STR             R6, [SP,#0x88+var_70]
1892FA:  STRB.W          R9, [R6]
1892FE:  MOV             R6, R5
189300:  CMP             R0, #0
189302:  IT NE
189304:  SUBNE.W         R6, R1, #0x2C ; ','
189308:  LDR             R3, [R7,#arg_0]
18930A:  LDRD.W          R0, R1, [R4,#0x28]
18930E:  LDR             R2, [R7,#arg_4]
189310:  SUBS            R0, R0, R3
189312:  STR             R4, [SP,#0x88+var_64]
189314:  SBCS.W          R0, R1, R2
189318:  BGE             loc_18935A
18931A:  LDR.W           R8, [R4,#0x20]
18931E:  CMP.W           R8, #0
189322:  BEQ             loc_189364
189324:  LDR.W           R10, [SP,#0x88+var_3C]
189328:  MOV             R0, R10
18932A:  BL              sub_17D84A
18932E:  MOV.W           R0, #0xFFFFFFFF
189332:  ADD.W           R2, R0, R5,LSL#3
189336:  MOVS            R1, #1
189338:  ADD.W           R0, R4, #0x1C
18933C:  STR             R1, [SP,#0x88+var_40]
18933E:  MOV             R1, R10
189340:  MOVS            R3, #1
189342:  BL              sub_189914
189346:  LDR             R2, [R4,#0x20]
189348:  LDR.W           R1, [R4,#0x334]
18934C:  ADD             R0, R1
18934E:  STR.W           R0, [R4,#0x334]
189352:  CBZ             R2, loc_189368
189354:  MOVS            R0, #0
189356:  STR             R0, [SP,#0x88+var_48]
189358:  B               loc_18937A
18935A:  MOVS            R0, #1
18935C:  STR             R0, [SP,#0x88+var_48]
18935E:  MOVS            R0, #0
189360:  STR             R0, [SP,#0x88+var_40]
189362:  B               loc_18937A
189364:  MOVS            R0, #0
189366:  STR             R0, [SP,#0x88+var_40]
189368:  CLZ.W           R0, R8
18936C:  LDRD.W          R2, R1, [R7,#arg_0]
189370:  LSRS            R0, R0, #5
189372:  STR             R0, [SP,#0x88+var_48]
189374:  LDR             R0, [SP,#0x88+var_64]
189376:  STRD.W          R2, R1, [R0,#0x28]
18937A:  LSLS            R0, R6, #3
18937C:  MOV.W           R2, #0x3E8
189380:  STR             R0, [SP,#0x88+var_68]
189382:  MOVS            R3, #0
189384:  LDRD.W          R0, R1, [R7,#arg_0]
189388:  LDR.W           R10, [R7,#arg_C]
18938C:  BLX             sub_221404
189390:  LDR             R3, [SP,#0x88+var_64]
189392:  LDRD.W          R2, R1, [R3,#0x5C]
189396:  ADD.W           R6, R3, #0x678
18939A:  LDR.W           R12, [R3,#0x64]
18939E:  CMP             R1, R2
1893A0:  IT CC
1893A2:  RSBCC.W         R9, R12, #0
1893A6:  STR             R6, [SP,#0x88+var_74]
1893A8:  ADD.W           R6, R3, #0x6A0
1893AC:  ADDS            R3, #0x58 ; 'X'
1893AE:  SUBS            R1, R1, R2
1893B0:  STR             R6, [SP,#0x88+var_4C]
1893B2:  CMP             R1, R9
1893B4:  STR             R3, [SP,#0x88+var_6C]
1893B6:  LDR             R1, =(unk_91DE0 - 0x1893BE)
1893B8:  STR             R0, [SP,#0x88+var_50]
1893BA:  ADD             R1, PC; unk_91DE0
1893BC:  STR             R1, [SP,#0x88+var_38]
1893BE:  BNE.W           loc_189632
1893C2:  LDR.W           R9, [SP,#0x88+var_64]
1893C6:  LDR.W           R10, [SP,#0x88+var_4C]
1893CA:  MOVS            R6, #0
1893CC:  ADD.W           R0, R9, #0x40 ; '@'
1893D0:  STR             R0, [SP,#0x88+var_78]
1893D2:  ADD.W           R5, R9, R6,LSL#4
1893D6:  LDR.W           R0, [R5,#0x74]!
1893DA:  MOV             R8, R5
1893DC:  MOV             R3, R5
1893DE:  LDR.W           R2, [R3,#-4]!
1893E2:  LDR.W           R1, [R8,#-8]!
1893E6:  STR             R3, [SP,#0x88+var_2C]
1893E8:  MOVS            R3, #0
1893EA:  CMP             R2, R1
1893EC:  SUB.W           R2, R2, R1
1893F0:  IT CC
1893F2:  NEGCC           R3, R0
1893F4:  CMP             R2, R3
1893F6:  BEQ.W           loc_18960E
1893FA:  ADD.W           R2, R9, R6,LSL#2
1893FE:  STR             R6, [SP,#0x88+var_44]
189400:  ADD.W           R3, R2, #0x318
189404:  STR             R3, [SP,#0x88+var_54]
189406:  ADD.W           R3, R2, #0x308
18940A:  ADD.W           R2, R2, #0x2F8
18940E:  STR             R2, [SP,#0x88+var_5C]
189410:  SUB.W           R2, R5, #0xC
189414:  STR             R3, [SP,#0x88+var_58]
189416:  STRD.W          R5, R2, [SP,#0x88+var_34]
18941A:  STR.W           R8, [SP,#0x88+var_60]
18941E:  LDR             R2, [SP,#0x88+var_30]
189420:  ADDS            R1, #1
189422:  SUBS            R3, R1, R0
189424:  LDR             R2, [R2]
189426:  IT NE
189428:  MOVNE           R3, R1
18942A:  STR.W           R3, [R8]
18942E:  CMP             R3, #0
189430:  IT EQ
189432:  MOVEQ           R3, R0
189434:  ADD.W           R0, R2, R3,LSL#2
189438:  LDR.W           R1, [R0,#-4]
18943C:  STR             R1, [SP,#0x88+var_28]
18943E:  LDR.W           R11, [R1,#0xC]
189442:  SUB.W           R0, R11, #7
189446:  CMP             R0, #3
189448:  BHI             loc_189452
18944A:  LDR             R2, [SP,#0x88+var_38]
18944C:  LDR.W           R12, [R2,R0,LSL#2]
189450:  B               loc_189456
189452:  MOV.W           R12, #0x25 ; '%'
189456:  LDRD.W          R6, R4, [R9,#0x38]
18945A:  LDR             R3, [R1,#0x1C]
18945C:  LDR             R2, [R1,#0x30]
18945E:  ORRS.W          R0, R6, R4
189462:  BEQ             loc_1894B0
189464:  BIC.W           R0, R11, #1
189468:  CMP             R0, #6
18946A:  BNE             loc_1894B0
18946C:  LDRD.W          R0, R5, [R1,#0x20]
189470:  ADDS            R0, R0, R6
189472:  ADC.W           R6, R5, R4
189476:  LDR             R5, [R7,#arg_0]
189478:  SUBS            R0, R0, R5
18947A:  LDR             R0, [R7,#arg_4]
18947C:  SBCS.W          R0, R6, R0
189480:  BGE             loc_1894B0
189482:  LDR             R0, [R1,#0x34]; void *
189484:  CBZ             R0, loc_18948C
189486:  BLX             j__ZdaPv; operator delete[](void *)
18948A:  LDR             R1, [SP,#0x88+var_28]
18948C:  MOV             R0, R10
18948E:  BL              sub_17E56C
189492:  LDR             R2, [SP,#0x88+var_2C]
189494:  MOVS            R3, #0
189496:  LDR             R0, [SP,#0x88+var_34]
189498:  LDR.W           R1, [R8]
18949C:  LDR             R2, [R2]
18949E:  LDR             R0, [R0]
1894A0:  CMP             R2, R1
1894A2:  SUB.W           R2, R2, R1
1894A6:  IT CC
1894A8:  NEGCC           R3, R0
1894AA:  CMP             R2, R3
1894AC:  BNE             loc_18941E
1894AE:  B               loc_18960C
1894B0:  LDR             R0, [SP,#0x88+var_3C]
1894B2:  CMP             R3, #0
1894B4:  LDR             R0, [R0]
1894B6:  IT NE
1894B8:  ADDNE.W         R12, R12, #0x50 ; 'P'
1894BC:  ADD             R2, R12
1894BE:  ADD             R0, R2
1894C0:  LDR             R2, [SP,#0x88+var_68]
1894C2:  ADDS            R0, #0x10
1894C4:  CMP             R0, R2
1894C6:  BGT.W           loc_189602
1894CA:  LDR             R6, [SP,#0x88+var_5C]
1894CC:  MOVS            R5, #1
1894CE:  LDR             R3, [SP,#0x88+var_58]
1894D0:  LDR.W           R10, [SP,#0x88+var_50]
1894D4:  LDR             R0, [R6]
1894D6:  LDR             R2, [R3]
1894D8:  ADDS            R0, #1
1894DA:  STR             R0, [R6]
1894DC:  LDR             R0, [R1,#0x30]
1894DE:  ADD             R0, R2
1894E0:  LDR             R2, [R7,#arg_10]
1894E2:  STR             R0, [R3]
1894E4:  LDRD.W          R3, R4, [R7,#arg_8]
1894E8:  LDR             R0, [R2,#4]
1894EA:  CBZ             R0, loc_18953E
1894EC:  LDR             R0, [R2]
1894EE:  MOV             R8, R9
1894F0:  LDR.W           R2, [R9,#0x670]
1894F4:  LDR             R0, [R0]
1894F6:  LDR             R6, [R0]
1894F8:  LDR             R6, [R6,#0x24]
1894FA:  STRD.W          R4, R10, [SP,#0x88+var_88]
1894FE:  STR             R5, [SP,#0x88+var_80]
189500:  BLX             R6
189502:  LDR             R1, [R7,#arg_10]
189504:  MOVS            R5, #1
189506:  LDRD.W          R3, R4, [R7,#arg_8]
18950A:  LDR             R0, [R1,#4]
18950C:  CMP             R0, #2
18950E:  BCC             loc_18953E
189510:  MOV.W           R9, #1
189514:  LDR             R0, [R1]
189516:  LDR             R1, [SP,#0x88+var_28]
189518:  LDR.W           R2, [R8,#0x670]
18951C:  LDR.W           R0, [R0,R9,LSL#2]
189520:  LDR             R6, [R0]
189522:  LDR             R6, [R6,#0x24]
189524:  STRD.W          R4, R10, [SP,#0x88+var_88]
189528:  STR             R5, [SP,#0x88+var_80]
18952A:  BLX             R6
18952C:  LDR             R1, [R7,#arg_10]
18952E:  ADD.W           R9, R9, #1
189532:  LDRD.W          R3, R4, [R7,#arg_8]
189536:  MOVS            R5, #1
189538:  LDR             R0, [R1,#4]
18953A:  CMP             R9, R0
18953C:  BCC             loc_189514
18953E:  LDR             R0, [SP,#0x88+var_48]
189540:  LDR.W           R10, [SP,#0x88+var_4C]
189544:  LSLS            R0, R0, #0x1F
189546:  ITT NE
189548:  LDRNE           R0, [SP,#0x88+var_3C]
18954A:  BLNE            sub_17D828
18954E:  LDR             R2, [SP,#0x88+var_28]
189550:  SUB.W           R4, R11, #8
189554:  LDR             R1, [SP,#0x88+var_3C]
189556:  BL              sub_189B34
18955A:  LDR             R3, [SP,#0x88+var_54]
18955C:  CMP             R4, #2
18955E:  LDR.W           R9, [SP,#0x88+var_64]
189562:  LDR             R1, [SP,#0x88+var_28]
189564:  LDR             R2, [R3]
189566:  LDR.W           R8, [SP,#0x88+var_60]
18956A:  ADD             R0, R2
18956C:  STR             R0, [R3]
18956E:  LDR.W           R0, [R9,#0x670]
189572:  STR             R0, [R1,#4]
189574:  BHI             loc_1895C6
189576:  LDR             R0, [SP,#0x88+var_74]
189578:  LDR.W           R6, [R9,#0x3E0]
18957C:  STR             R6, [R1,#0x38]
18957E:  LDRD.W          R0, R3, [R0]
189582:  LDR             R6, [R7,#arg_0]
189584:  LDRH            R2, [R1]
189586:  ADDS            R0, R0, R6
189588:  LDR             R6, [R7,#arg_4]
18958A:  ADCS            R3, R6
18958C:  STRD.W          R0, R3, [R1,#0x28]
189590:  MOV             R1, R2
189592:  LDR             R0, [SP,#0x88+var_78]
189594:  ADD             R2, SP, #0x88+var_28
189596:  BL              sub_189C10
18959A:  LDRD.W          R2, R3, [R9,#0xB8]
18959E:  LDR             R1, [SP,#0x88+var_28]
1895A0:  STR             R1, [SP,#0x88+var_20]
1895A2:  ORRS.W          R1, R2, R3
1895A6:  LDR.W           R0, [R9,#0x50]
1895AA:  ITEE NE
1895AC:  CMPNE           R0, #0
1895AE:  LDRDEQ.W        R1, R0, [R7,#arg_0]
1895B2:  STRDEQ.W        R1, R0, [R9,#0xB8]
1895B6:  LDR             R0, [SP,#0x88+var_6C]
1895B8:  ADD             R1, SP, #0x88+var_20
1895BA:  BL              sub_17E430
1895BE:  LDR             R0, [SP,#0x88+var_70]
1895C0:  MOVS            R1, #1
1895C2:  STRB            R1, [R0]
1895C4:  B               loc_1895D6
1895C6:  LDR             R0, [R1,#0x34]; void *
1895C8:  CBZ             R0, loc_1895D0
1895CA:  BLX             j__ZdaPv; operator delete[](void *)
1895CE:  LDR             R1, [SP,#0x88+var_28]
1895D0:  MOV             R0, R10
1895D2:  BL              sub_17E56C
1895D6:  LDR             R2, [SP,#0x88+var_34]
1895D8:  MOVS            R3, #0
1895DA:  LDRD.W          R6, R0, [SP,#0x88+var_44]
1895DE:  ADDS            R0, #1
1895E0:  STR             R0, [SP,#0x88+var_40]
1895E2:  LDR             R0, [R2]
1895E4:  LDR             R2, [SP,#0x88+var_2C]
1895E6:  LDR.W           R1, [R8]
1895EA:  STR             R3, [SP,#0x88+var_48]
1895EC:  MOVS            R3, #0
1895EE:  LDR             R2, [R2]
1895F0:  CMP             R2, R1
1895F2:  SUB.W           R2, R2, R1
1895F6:  IT CC
1895F8:  NEGCC           R3, R0
1895FA:  CMP             R2, R3
1895FC:  BNE.W           loc_18941E
189600:  B               loc_18960E
189602:  LDR             R0, [SP,#0x88+var_30]
189604:  ADD             R1, SP, #0x88+var_28
189606:  MOVS            R2, #0
189608:  BL              sub_189A44
18960C:  LDR             R6, [SP,#0x88+var_44]
18960E:  ADDS            R6, #1
189610:  CMP             R6, #4
189612:  BNE.W           loc_1893D2
189616:  LDR             R0, [SP,#0x88+var_3C]
189618:  LDR             R0, [R0]
18961A:  CMP             R0, #1
18961C:  ITTT GE
18961E:  LDRGE.W         R0, [R9,#0x670]
189622:  ADDGE           R0, #1
189624:  STRGE.W         R0, [R9,#0x670]
189628:  LDR             R0, [SP,#0x88+var_40]
18962A:  ADD             SP, SP, #0x6C ; 'l'
18962C:  POP.W           {R8-R11}
189630:  POP             {R4-R7,PC}
189632:  LDR.W           R9, [SP,#0x88+var_64]
189636:  ADD.W           R11, SP, #0x88+var_24
18963A:  MOV.W           R8, #1
18963E:  LDR             R1, [SP,#0x88+var_6C]
189640:  LDR             R3, [R1]
189642:  LDR.W           R1, [R3,R2,LSL#2]
189646:  LDRD.W          R6, R4, [R1,#0x28]
18964A:  STR             R1, [SP,#0x88+var_28]
18964C:  ORRS            R6, R4
18964E:  BNE             loc_18968A
189650:  ADDS            R2, #1
189652:  SUBS.W          R0, R2, R12
189656:  IT NE
189658:  MOVNE           R0, R2
18965A:  STR.W           R0, [R9,#0x5C]
18965E:  LDR             R0, [R1,#0x34]; void *
189660:  CBZ             R0, loc_189668
189662:  BLX             j__ZdaPv; operator delete[](void *)
189666:  LDR             R1, [SP,#0x88+var_28]
189668:  LDR             R0, [SP,#0x88+var_4C]
18966A:  BL              sub_17E56C
18966E:  LDRD.W          R2, R1, [R9,#0x5C]
189672:  LDR.W           R12, [R9,#0x64]
189676:  MOVS            R3, #0
189678:  CMP             R1, R2
18967A:  IT CC
18967C:  RSBCC.W         R3, R12, #0
189680:  LDR             R0, [SP,#0x88+var_50]
189682:  SUBS            R1, R1, R2
189684:  CMP             R1, R3
189686:  BNE             loc_18963E
189688:  B               loc_1893C6
18968A:  LDR.W           R1, [R3,R2,LSL#2]
18968E:  LDR             R5, [R7,#arg_0]
189690:  LDRD.W          R1, R6, [R1,#0x28]
189694:  SUBS            R1, R1, R5
189696:  LDR             R5, [R7,#arg_8]
189698:  LDR             R1, [R7,#arg_4]
18969A:  SBCS.W          R1, R6, R1
18969E:  BGE.W           loc_1893C6
1896A2:  ADDS            R1, R2, #1
1896A4:  SUBS.W          R2, R1, R12
1896A8:  IT NE
1896AA:  MOVNE           R2, R1
1896AC:  STR.W           R2, [R9,#0x5C]
1896B0:  CMP             R2, #0
1896B2:  IT EQ
1896B4:  MOVEQ           R2, R12
1896B6:  ADD.W           R1, R3, R2,LSL#2
1896BA:  LDR.W           R3, [R1,#-4]
1896BE:  STR             R3, [SP,#0x88+var_28]
1896C0:  LDR             R1, [R3,#0xC]
1896C2:  SUBS            R1, #7
1896C4:  CMP             R1, #3
1896C6:  BHI             loc_1896D4
1896C8:  LDR             R2, [SP,#0x88+var_38]
1896CA:  LDR.W           R1, [R2,R1,LSL#2]
1896CE:  B               loc_1896D6
1896D0:  DCD unk_91DE0 - 0x1893BE
1896D4:  MOVS            R1, #0x25 ; '%'
1896D6:  LDR             R6, [SP,#0x88+var_3C]
1896D8:  LDR             R2, [R3,#0x1C]
1896DA:  LDR             R4, [R3,#0x30]
1896DC:  LDR             R6, [R6]
1896DE:  CMP             R2, #0
1896E0:  IT NE
1896E2:  ADDNE           R1, #0x50 ; 'P'
1896E4:  LDR             R2, [SP,#0x88+var_68]
1896E6:  ADD             R1, R4
1896E8:  ADD             R1, R6
1896EA:  ADDS            R1, #0x10
1896EC:  CMP             R1, R2
1896EE:  BGT             loc_1897CE
1896F0:  LDR             R2, [R7,#arg_10]
1896F2:  LDR             R1, [R2,#4]
1896F4:  CBZ             R1, loc_189728
1896F6:  MOVS            R6, #0
1896F8:  MOV             R11, R0
1896FA:  LDR             R0, [R2]
1896FC:  LDR.W           R2, [R9,#0x670]
189700:  LDR.W           R0, [R0,R6,LSL#2]
189704:  LDR             R1, [R0]
189706:  LDR             R4, [R1,#0x24]
189708:  MOV             R1, R3
18970A:  MOV             R3, R5
18970C:  STRD.W          R10, R11, [SP,#0x88+var_88]
189710:  STR.W           R8, [SP,#0x88+var_80]
189714:  BLX             R4
189716:  LDR             R2, [R7,#arg_10]
189718:  ADDS            R6, #1
18971A:  LDR             R3, [SP,#0x88+var_28]
18971C:  LDR             R0, [R2,#4]
18971E:  CMP             R6, R0
189720:  BCC             loc_1896FA
189722:  LDR             R4, [R3,#0x30]
189724:  ADD.W           R11, SP, #0x88+var_24
189728:  LDRD.W          R1, R2, [R9,#0x33C]
18972C:  ADDS            R0, R2, R4
18972E:  ADDS            R1, #1
189730:  STRD.W          R1, R0, [R9,#0x33C]
189734:  LDR             R0, [SP,#0x88+var_48]
189736:  LSLS            R0, R0, #0x1F
189738:  BEQ             loc_189742
18973A:  LDR             R0, [SP,#0x88+var_3C]
18973C:  BL              sub_17D828
189740:  LDR             R3, [SP,#0x88+var_28]
189742:  LDR             R1, [SP,#0x88+var_3C]
189744:  MOV             R2, R3
189746:  BL              sub_189B34
18974A:  LDR             R3, [SP,#0x88+var_70]
18974C:  LDR.W           R6, [R9,#0x344]
189750:  LDR             R1, [SP,#0x88+var_74]
189752:  STRB.W          R8, [R3]
189756:  ADD             R0, R6
189758:  LDR.W           R3, [R9,#0x338]
18975C:  STR.W           R0, [R9,#0x344]
189760:  ADDS            R0, R3, #1
189762:  LDRD.W          R1, R2, [R1]
189766:  LDR.W           R12, [R7,#arg_0]
18976A:  LDR             R3, [R7,#arg_4]
18976C:  STR.W           R0, [R9,#0x338]
189770:  ADDS.W          R1, R1, R12
189774:  LDR             R0, [SP,#0x88+var_28]
189776:  ADCS            R2, R3
189778:  LDRD.W          R4, R5, [R9,#0x3D8]
18977C:  LDR.W           R6, [R9,#0x670]
189780:  STRD.W          R1, R2, [R0,#0x28]
189784:  SUBS.W          R1, R12, R4
189788:  SBCS.W          R1, R3, R5
18978C:  STR             R6, [R0,#4]
18978E:  BGE             loc_189798
189790:  LDR.W           R1, [R9,#0x3E0]
189794:  LDR             R3, [SP,#0x88+var_40]
189796:  B               loc_1897B0
189798:  LDR.W           R1, [R9,#0x3E0]
18979C:  LDR             R2, [R0,#0x38]
18979E:  LDR             R3, [SP,#0x88+var_40]
1897A0:  CMP             R2, R1
1897A2:  ITTTT EQ
1897A4:  LDREQ.W         R1, [R9,#0x3E8]
1897A8:  ADDEQ           R1, #1
1897AA:  STREQ.W         R1, [R9,#0x3E8]
1897AE:  MOVEQ           R1, R2
1897B0:  STR             R1, [R0,#0x38]
1897B2:  MOV             R1, R11
1897B4:  STR             R0, [SP,#0x88+var_24]
1897B6:  ADDS            R3, #1
1897B8:  LDR             R0, [SP,#0x88+var_6C]
1897BA:  STR             R3, [SP,#0x88+var_40]
1897BC:  BL              sub_17E430
1897C0:  MOVS            R0, #0
1897C2:  LDRD.W          R2, R1, [R9,#0x5C]
1897C6:  LDR.W           R12, [R9,#0x64]
1897CA:  STR             R0, [SP,#0x88+var_48]
1897CC:  B               loc_189676
1897CE:  LDR             R0, [SP,#0x88+var_6C]
1897D0:  ADD             R1, SP, #0x88+var_28
1897D2:  MOVS            R2, #0
1897D4:  BL              sub_189A44
1897D8:  B               loc_189616
