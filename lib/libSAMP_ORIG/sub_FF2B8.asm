; =========================================================
; Game Engine Function: sub_FF2B8
; Address            : 0xFF2B8 - 0xFF714
; =========================================================

FF2B8:  PUSH            {R4-R7,LR}
FF2BA:  ADD             R7, SP, #0xC
FF2BC:  PUSH.W          {R8-R11}
FF2C0:  SUB             SP, SP, #0x24
FF2C2:  MOV             R4, R0
FF2C4:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xFF2CE)
FF2C8:  MOV             R5, R1
FF2CA:  ADD             R0, PC; __stack_chk_guard_ptr
FF2CC:  LDR             R0, [R0]; __stack_chk_guard
FF2CE:  LDR             R0, [R0]
FF2D0:  STR             R0, [SP,#0x40+var_20]
FF2D2:  LDRD.W          R0, R1, [R4]
FF2D6:  CMP             R0, R1
FF2D8:  BEQ             loc_FF2E4
FF2DA:  LDRB            R2, [R0]
FF2DC:  CMP             R2, #0x4C ; 'L'
FF2DE:  ITT EQ
FF2E0:  ADDEQ           R0, #1
FF2E2:  STREQ           R0, [R4]
FF2E4:  LDR             R6, =(aSt - 0xFF2EC); "St" ...
FF2E6:  SUBS            R2, R1, R0
FF2E8:  ADD             R6, PC; "St"
FF2EA:  BEQ             loc_FF396
FF2EC:  LDRB            R3, [R0]
FF2EE:  CMP             R3, #0x5A ; 'Z'
FF2F0:  BEQ             loc_FF33E
FF2F2:  CMP             R3, #0x53 ; 'S'
FF2F4:  BEQ             loc_FF38C
FF2F6:  CMP             R3, #0x4E ; 'N'
FF2F8:  BNE             loc_FF396
FF2FA:  CMP             R0, R1
FF2FC:  STR             R5, [SP,#0x40+var_2C]
FF2FE:  BEQ.W           loc_FF43A
FF302:  LDRB            R1, [R0]
FF304:  CMP             R1, #0x4E ; 'N'
FF306:  BNE.W           loc_FF43A
FF30A:  ADDS            R0, #1
FF30C:  STR             R0, [R4]
FF30E:  MOV             R0, R4
FF310:  BL              sub_FFF94
FF314:  CBZ             R5, loc_FF318
FF316:  STR             R0, [R5,#4]
FF318:  LDRD.W          R0, R1, [R4]
FF31C:  CMP             R0, R1
FF31E:  BEQ.W           loc_FF456
FF322:  LDRB            R1, [R0]
FF324:  CMP             R1, #0x52 ; 'R'
FF326:  BEQ.W           loc_FF480
FF32A:  CMP             R1, #0x4F ; 'O'
FF32C:  BNE.W           loc_FF456
FF330:  ADDS            R0, #1
FF332:  STR             R0, [R4]
FF334:  CMP             R5, #0
FF336:  BEQ.W           loc_FF48A
FF33A:  MOVS            R0, #2
FF33C:  B               loc_FF488
FF33E:  CMP             R0, R1
FF340:  BEQ             loc_FF43A
FF342:  ADDS            R0, #1
FF344:  STR             R0, [R4]
FF346:  MOV             R0, R4
FF348:  BL              sub_FE1FC
FF34C:  CMP             R0, #0
FF34E:  STR             R0, [SP,#0x40+var_24]
FF350:  BEQ             loc_FF43A
FF352:  LDRD.W          R0, R1, [R4]
FF356:  CMP             R0, R1
FF358:  BEQ             loc_FF43A
FF35A:  LDRB            R2, [R0]
FF35C:  CMP             R2, #0x45 ; 'E'
FF35E:  BNE             loc_FF43A
FF360:  ADDS            R2, R0, #1
FF362:  STR             R2, [R4]
FF364:  CMP             R2, R1
FF366:  BEQ             loc_FF45C
FF368:  LDRB            R2, [R2]
FF36A:  CMP             R2, #0x64 ; 'd'
FF36C:  BEQ.W           loc_FF6DE
FF370:  CMP             R2, #0x73 ; 's'
FF372:  BNE             loc_FF45C
FF374:  ADDS            R0, #2
FF376:  STR             R0, [R4]
FF378:  BL              sub_10546A
FF37C:  STR             R0, [R4]
FF37E:  MOV             R0, R4
FF380:  LDR             R1, =(aStringLiteral - 0xFF386); "string literal" ...
FF382:  ADD             R1, PC; "string literal"
FF384:  BL              sub_104CD4
FF388:  STR             R0, [SP,#0x40+var_3C]
FF38A:  B               loc_FF474
FF38C:  CMP             R2, #2
FF38E:  BCC             loc_FF422
FF390:  LDRB            R0, [R0,#1]
FF392:  CMP             R0, #0x74 ; 't'
FF394:  BNE             loc_FF422
FF396:  LDR             R1, =(aStl - 0xFF39E); "StL" ...
FF398:  MOV             R0, R4
FF39A:  ADD             R1, PC; "StL"
FF39C:  ADDS            R2, R1, #3
FF39E:  BL              sub_FE18C
FF3A2:  CBNZ            R0, loc_FF3B0
FF3A4:  ADDS            R2, R6, #2
FF3A6:  MOV             R0, R4
FF3A8:  MOV             R1, R6
FF3AA:  BL              sub_FE18C
FF3AE:  CBZ             R0, loc_FF3DA
FF3B0:  MOV             R0, R4
FF3B2:  MOV             R1, R5
FF3B4:  BL              sub_100334
FF3B8:  CMP             R0, #0
FF3BA:  BEQ             loc_FF43A
FF3BC:  MOV             R6, R0
FF3BE:  ADD.W           R0, R4, #0x198
FF3C2:  MOVS            R1, #0xC
FF3C4:  BL              sub_FFA98
FF3C8:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle16StdQualifiedNameE - 0xFF3D0); `vtable for'`anonymous namespace'::itanium_demangle::StdQualifiedName ...
FF3CA:  LDR             R1, =0x1010127
FF3CC:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::StdQualifiedName
FF3CE:  STR             R6, [R0,#8]
FF3D0:  ADDS            R2, #8
FF3D2:  STR             R0, [SP,#0x40+var_3C]
FF3D4:  STRD.W          R2, R1, [R0]
FF3D8:  B               loc_FF3E6
FF3DA:  MOV             R0, R4
FF3DC:  MOV             R1, R5
FF3DE:  BL              sub_100334
FF3E2:  STR             R0, [SP,#0x40+var_3C]
FF3E4:  CBZ             R0, loc_FF43A
FF3E6:  LDRD.W          R1, R2, [R4]
FF3EA:  CMP             R2, R1
FF3EC:  BEQ             loc_FF43C
FF3EE:  LDRB            R1, [R1]
FF3F0:  CMP             R1, #0x49 ; 'I'
FF3F2:  BNE             loc_FF43C
FF3F4:  ADD.W           R0, R4, #0x94
FF3F8:  ADD             R1, SP, #0x40+var_3C
FF3FA:  BL              sub_FF894
FF3FE:  MOV             R1, R5
FF400:  MOV             R0, R4
FF402:  CMP             R5, #0
FF404:  IT NE
FF406:  MOVNE           R1, #1
FF408:  BL              sub_FFCD8
FF40C:  STR             R0, [SP,#0x40+var_24]
FF40E:  CBZ             R0, loc_FF43A
FF410:  CBZ             R5, loc_FF416
FF412:  MOVS            R0, #1
FF414:  STRB            R0, [R5,#1]
FF416:  ADD             R1, SP, #0x40+var_3C
FF418:  ADD             R2, SP, #0x40+var_24
FF41A:  MOV             R0, R4
FF41C:  BL              sub_FFF64
FF420:  B               loc_FF43C
FF422:  MOV             R0, R4
FF424:  BL              sub_FFBB4
FF428:  STR             R0, [SP,#0x40+var_3C]
FF42A:  CBZ             R0, loc_FF43A
FF42C:  LDRD.W          R0, R1, [R4]
FF430:  CMP             R1, R0
FF432:  BEQ             loc_FF43A
FF434:  LDRB            R0, [R0]
FF436:  CMP             R0, #0x49 ; 'I'
FF438:  BEQ             loc_FF3FE
FF43A:  MOVS            R0, #0
FF43C:  LDR             R1, [SP,#0x40+var_20]
FF43E:  LDR             R2, =(__stack_chk_guard_ptr - 0xFF444)
FF440:  ADD             R2, PC; __stack_chk_guard_ptr
FF442:  LDR             R2, [R2]; __stack_chk_guard
FF444:  LDR             R2, [R2]
FF446:  CMP             R2, R1
FF448:  ITTT EQ
FF44A:  ADDEQ           SP, SP, #0x24 ; '$'
FF44C:  POPEQ.W         {R8-R11}
FF450:  POPEQ           {R4-R7,PC}
FF452:  BLX             __stack_chk_fail
FF456:  CBZ             R5, loc_FF48A
FF458:  MOVS            R0, #0
FF45A:  B               loc_FF488
FF45C:  MOV             R0, R4
FF45E:  MOV             R1, R5
FF460:  BL              sub_FF2B8
FF464:  CMP             R0, #0
FF466:  STR             R0, [SP,#0x40+var_3C]
FF468:  BEQ             loc_FF43A
FF46A:  LDRD.W          R0, R1, [R4]
FF46E:  BL              sub_10546A
FF472:  STR             R0, [R4]
FF474:  ADD             R1, SP, #0x40+var_24
FF476:  ADD             R2, SP, #0x40+var_3C
FF478:  MOV             R0, R4
FF47A:  BL              sub_1054D0
FF47E:  B               loc_FF43C
FF480:  ADDS            R0, #1
FF482:  STR             R0, [R4]
FF484:  CBZ             R5, loc_FF48A
FF486:  MOVS            R0, #1
FF488:  STRB            R0, [R5,#8]
FF48A:  MOVS            R0, #0
FF48C:  ADDS            R2, R6, #2
FF48E:  STR             R0, [SP,#0x40+var_30]
FF490:  ADD             R0, SP, #0x40+var_2C
FF492:  STR             R0, [SP,#0x40+var_34]
FF494:  ADD             R0, SP, #0x40+var_30
FF496:  STRD.W          R0, R4, [SP,#0x40+var_3C]
FF49A:  MOV             R0, R4
FF49C:  MOV             R1, R6
FF49E:  BL              sub_FE18C
FF4A2:  CBZ             R0, loc_FF4B0
FF4A4:  LDR             R1, =(aStd - 0xFF4AC); "std" ...
FF4A6:  MOV             R0, R4
FF4A8:  ADD             R1, PC; "std"
FF4AA:  BL              sub_FFFD8
FF4AE:  STR             R0, [SP,#0x40+var_30]
FF4B0:  ADD.W           R6, R4, #0x94
FF4B4:  ADD.W           R9, SP, #0x40+var_3C
FF4B8:  ADD.W           R8, SP, #0x40+var_30
FF4BC:  MOV.W           R11, #1
FF4C0:  ADD.W           R0, R4, #0x198
FF4C4:  STR             R0, [SP,#0x40+var_40]
FF4C6:  LDRD.W          R0, R1, [R4]
FF4CA:  CMP             R0, R1
FF4CC:  BEQ             loc_FF4DE
FF4CE:  LDRB            R2, [R0]
FF4D0:  CMP             R2, #0x4C ; 'L'
FF4D2:  BEQ             loc_FF4DA
FF4D4:  CMP             R2, #0x45 ; 'E'
FF4D6:  BNE             loc_FF4DE
FF4D8:  B               loc_FF6C0
FF4DA:  ADDS            R0, #1
FF4DC:  STR             R0, [R4]
FF4DE:  CMP             R0, R1
FF4E0:  BEQ             loc_FF4F4
FF4E2:  LDRB            R2, [R0]
FF4E4:  CMP             R2, #0x4D ; 'M'
FF4E6:  BNE             loc_FF4F4
FF4E8:  ADDS            R0, #1
FF4EA:  STR             R0, [R4]
FF4EC:  LDR             R0, [SP,#0x40+var_30]
FF4EE:  CMP             R0, #0
FF4F0:  BNE             loc_FF4C6
FF4F2:  B               loc_FF43A
FF4F4:  SUBS            R2, R1, R0
FF4F6:  BEQ.W           loc_FF606
FF4FA:  LDRB            R3, [R0]
FF4FC:  CMP             R3, #0x43 ; 'C'
FF4FE:  BEQ             loc_FF532
FF500:  CMP             R3, #0x44 ; 'D'
FF502:  BEQ             loc_FF518
FF504:  CMP             R3, #0x49 ; 'I'
FF506:  BEQ             loc_FF5C8
FF508:  CMP             R3, #0x53 ; 'S'
FF50A:  BEQ             loc_FF5FC
FF50C:  CMP             R3, #0x54 ; 'T'
FF50E:  BNE             loc_FF606
FF510:  MOV             R0, R4
FF512:  BL              sub_100070
FF516:  B               loc_FF60E
FF518:  CMP             R2, #2
FF51A:  BCC             loc_FF532
FF51C:  LDRB            R2, [R0,#1]
FF51E:  CMP             R2, #0x43 ; 'C'
FF520:  BEQ             loc_FF606
FF522:  CMP             R2, #0x74 ; 't'
FF524:  IT NE
FF526:  CMPNE           R2, #0x54 ; 'T'
FF528:  BNE             loc_FF532
FF52A:  MOV             R0, R4
FF52C:  BL              sub_100224
FF530:  B               loc_FF60E
FF532:  LDR             R2, [SP,#0x40+var_30]
FF534:  CMP             R2, #0
FF536:  BEQ.W           loc_FF43A
FF53A:  LDRB            R3, [R2,#4]
FF53C:  LDR.W           R10, [SP,#0x40+var_2C]
FF540:  CMP             R3, #0x29 ; ')'
FF542:  BNE             loc_FF568
FF544:  LDR             R5, [R2,#8]
FF546:  SUBS            R2, R5, #2
FF548:  CMP             R2, #3
FF54A:  BHI             loc_FF568
FF54C:  LDR             R0, [SP,#0x40+var_40]
FF54E:  MOVS            R1, #0xC
FF550:  BL              sub_FFA98
FF554:  LDR             R1, =(_ZTVN12_GLOBAL__N_116itanium_demangle27ExpandedSpecialSubstitutionE - 0xFF55A); `vtable for'`anonymous namespace'::itanium_demangle::ExpandedSpecialSubstitution ...
FF556:  ADD             R1, PC; `vtable for'`anonymous namespace'::itanium_demangle::ExpandedSpecialSubstitution
FF558:  ADDS            R1, #8
FF55A:  STR             R1, [R0]
FF55C:  LDR             R1, =0x1010128
FF55E:  STRD.W          R1, R5, [R0,#4]
FF562:  STR             R0, [SP,#0x40+var_30]
FF564:  LDRD.W          R0, R1, [R4]
FF568:  CMP             R0, R1
FF56A:  BEQ             loc_FF58A
FF56C:  LDRB            R2, [R0]
FF56E:  CMP             R2, #0x43 ; 'C'
FF570:  BNE             loc_FF58A
FF572:  ADDS            R2, R0, #1
FF574:  STR             R2, [R4]
FF576:  CMP             R2, R1
FF578:  BEQ             loc_FF65E
FF57A:  LDRB            R3, [R2]
FF57C:  CMP             R3, #0x49 ; 'I'
FF57E:  ITEEE NE
FF580:  MOVNE           R0, #0
FF582:  ADDEQ           R2, R0, #2
FF584:  STREQ           R2, [R4]
FF586:  MOVEQ           R0, #1
FF588:  B               loc_FF662
FF58A:  SUBS            R2, R1, R0
FF58C:  BEQ.W           loc_FF6A6
FF590:  LDRB            R3, [R0]
FF592:  MOVS            R1, #0
FF594:  CMP             R3, #0x44 ; 'D'
FF596:  BNE.W           loc_FF6A8
FF59A:  CMP             R2, #1
FF59C:  BEQ.W           loc_FF6A8
FF5A0:  LDRB            R1, [R0,#1]
FF5A2:  SUB.W           R2, R1, #0x30 ; '0'
FF5A6:  MOVS            R1, #0
FF5A8:  CMP             R2, #5
FF5AA:  BHI             loc_FF6A8
FF5AC:  CMP             R2, #3
FF5AE:  BEQ             loc_FF6A8
FF5B0:  ADDS            R0, #2
FF5B2:  STR             R0, [R4]
FF5B4:  MOVS            R0, #1
FF5B6:  MOV.W           R11, #1
FF5BA:  STR             R2, [SP,#0x40+var_24]
FF5BC:  CMP.W           R10, #0
FF5C0:  IT NE
FF5C2:  STRBNE.W        R0, [R10]
FF5C6:  B               loc_FF690
FF5C8:  LDR             R1, [SP,#0x40+var_2C]
FF5CA:  MOV             R0, R4
FF5CC:  CMP             R1, #0
FF5CE:  IT NE
FF5D0:  MOVNE           R1, #1
FF5D2:  BL              sub_FFCD8
FF5D6:  CMP             R0, #0
FF5D8:  STR             R0, [SP,#0x40+var_24]
FF5DA:  BEQ.W           loc_FF43A
FF5DE:  LDR             R0, [SP,#0x40+var_30]
FF5E0:  CMP             R0, #0
FF5E2:  BEQ.W           loc_FF43A
FF5E6:  ADD             R2, SP, #0x40+var_24
FF5E8:  MOV             R0, R4
FF5EA:  MOV             R1, R8
FF5EC:  BL              sub_FFF64
FF5F0:  STR             R0, [SP,#0x40+var_30]
FF5F2:  LDR             R0, [SP,#0x40+var_2C]
FF5F4:  CBZ             R0, loc_FF61C
FF5F6:  STRB.W          R11, [R0,#1]
FF5FA:  B               loc_FF61C
FF5FC:  CMP             R2, #2
FF5FE:  BCC             loc_FF634
FF600:  LDRB            R0, [R0,#1]
FF602:  CMP             R0, #0x74 ; 't'
FF604:  BNE             loc_FF634
FF606:  LDR             R1, [SP,#0x40+var_2C]
FF608:  MOV             R0, R4
FF60A:  BL              sub_100334
FF60E:  MOV             R1, R0
FF610:  MOV             R0, R9
FF612:  BL              sub_100010
FF616:  CMP             R0, #0
FF618:  BEQ.W           loc_FF43A
FF61C:  MOV             R0, R6
FF61E:  MOV             R1, R8
FF620:  BL              sub_FF894
FF624:  B               loc_FF4C6
FF626:  ALIGN 4
FF628:  DCD aSt - 0xFF2EC
FF62C:  DCD aStringLiteral - 0xFF386
FF630:  DCD aStl - 0xFF39E
FF634:  MOV             R0, R4
FF636:  BL              sub_FFBB4
FF63A:  MOV             R5, R0
FF63C:  STR             R0, [SP,#0x40+var_24]
FF63E:  MOV             R0, R9
FF640:  MOV             R1, R5
FF642:  BL              sub_100010
FF646:  CMP             R0, #0
FF648:  BEQ.W           loc_FF43A
FF64C:  LDR             R0, [SP,#0x40+var_30]
FF64E:  CMP             R0, R5
FF650:  BEQ.W           loc_FF4C6
FF654:  ADD             R1, SP, #0x40+var_24
FF656:  MOV             R0, R6
FF658:  BL              sub_FF894
FF65C:  B               loc_FF4C6
FF65E:  MOVS            R0, #0
FF660:  MOV             R2, R1
FF662:  CMP             R1, R2
FF664:  BEQ             loc_FF6A6
FF666:  LDRB            R1, [R2]
FF668:  SUB.W           R3, R1, #0x31 ; '1'
FF66C:  CMP             R3, #4
FF66E:  BHI             loc_FF6A6
FF670:  ADDS            R2, #1
FF672:  SUBS            R1, #0x30 ; '0'
FF674:  CMP.W           R10, #0
FF678:  STR             R2, [R4]
FF67A:  STR             R1, [SP,#0x40+var_24]
FF67C:  IT NE
FF67E:  STRBNE.W        R11, [R10]
FF682:  CBZ             R0, loc_FF68E
FF684:  MOV             R0, R4
FF686:  MOV             R1, R10
FF688:  BL              sub_FF2B8
FF68C:  CBZ             R0, loc_FF6A6
FF68E:  MOVS            R0, #0
FF690:  STRB.W          R0, [R7,#var_25]
FF694:  SUB.W           R2, R7, #-var_25
FF698:  ADD             R3, SP, #0x40+var_24
FF69A:  MOV             R0, R4
FF69C:  MOV             R1, R8
FF69E:  BL              sub_105264
FF6A2:  MOV             R1, R0
FF6A4:  B               loc_FF6A8
FF6A6:  MOVS            R1, #0
FF6A8:  MOV             R0, R9
FF6AA:  BL              sub_100010
FF6AE:  CMP             R0, #0
FF6B0:  BEQ.W           loc_FF43A
FF6B4:  LDR             R1, [SP,#0x40+var_30]
FF6B6:  MOV             R0, R4
FF6B8:  BL              sub_1002A4
FF6BC:  STR             R0, [SP,#0x40+var_30]
FF6BE:  B               loc_FF616
FF6C0:  ADDS            R0, #1
FF6C2:  STR             R0, [R4]
FF6C4:  LDR             R0, [SP,#0x40+var_30]
FF6C6:  CMP             R0, #0
FF6C8:  BEQ.W           loc_FF43A
FF6CC:  LDRD.W          R2, R1, [R4,#0x94]
FF6D0:  CMP             R2, R1
FF6D2:  BEQ.W           loc_FF43A
FF6D6:  SUBS            R1, #4
FF6D8:  STR.W           R1, [R4,#0x98]
FF6DC:  B               loc_FF43C
FF6DE:  ADDS            R0, #2
FF6E0:  STR             R0, [R4]
FF6E2:  ADD             R0, SP, #0x40+var_3C
FF6E4:  MOV             R1, R4
FF6E6:  MOVS            R2, #1
FF6E8:  BL              sub_FE75C
FF6EC:  LDRD.W          R0, R1, [R4]
FF6F0:  CMP             R0, R1
FF6F2:  BEQ.W           loc_FF43A
FF6F6:  LDRB            R1, [R0]
FF6F8:  CMP             R1, #0x5F ; '_'
FF6FA:  BNE.W           loc_FF43A
FF6FE:  ADDS            R0, #1
FF700:  STR             R0, [R4]
FF702:  MOV             R0, R4
FF704:  MOV             R1, R5
FF706:  BL              sub_FF2B8
FF70A:  CMP             R0, #0
FF70C:  STR             R0, [SP,#0x40+var_3C]
FF70E:  BNE.W           loc_FF474
FF712:  B               loc_FF43A
