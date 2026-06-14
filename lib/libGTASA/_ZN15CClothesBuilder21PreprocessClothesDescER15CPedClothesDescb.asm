; =========================================================
; Game Engine Function: _ZN15CClothesBuilder21PreprocessClothesDescER15CPedClothesDescb
; Address            : 0x4582C4 - 0x458824
; =========================================================

4582C4:  PUSH            {R4-R7,LR}
4582C6:  ADD             R7, SP, #0xC
4582C8:  PUSH.W          {R8-R11}
4582CC:  SUB             SP, SP, #0xBC
4582CE:  MOV             R11, R0
4582D0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x4582DA)
4582D4:  STR             R1, [SP,#0xD8+var_9C]
4582D6:  ADD             R0, PC; __stack_chk_guard_ptr
4582D8:  LDR.W           R1, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x4582E2)
4582DC:  LDR             R0, [R0]; __stack_chk_guard
4582DE:  ADD             R1, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
4582E0:  LDR             R1, [R1]; CClothes::ms_numRuleTags ...
4582E2:  LDR             R0, [R0]
4582E4:  STR             R0, [SP,#0xD8+var_20]
4582E6:  MOV.W           R0, #0xFFFFFFFF
4582EA:  STRD.W          R0, R0, [SP,#0xD8+var_30]
4582EE:  STRD.W          R0, R0, [SP,#0xD8+var_38]
4582F2:  STRD.W          R0, R0, [SP,#0xD8+var_40]
4582F6:  STRD.W          R0, R0, [SP,#0xD8+var_48]
4582FA:  LDR             R0, [R1]; CClothes::ms_numRuleTags
4582FC:  CMP             R0, #0
4582FE:  BEQ.W           loc_45880A
458302:  ADD             R0, SP, #0xD8+var_48
458304:  MOV.W           R9, #0xFFFFFFFF
458308:  ADD.W           R1, R0, #0x1C
45830C:  STR             R1, [SP,#0xD8+var_D8]
45830E:  ADD.W           R1, R0, #0x18
458312:  STR             R1, [SP,#0xD8+var_D4]
458314:  ADD.W           R1, R0, #0x14
458318:  STR             R1, [SP,#0xD8+var_D0]
45831A:  ADD.W           R1, R0, #0x10
45831E:  STR             R1, [SP,#0xD8+var_CC]
458320:  ADD.W           R1, R0, #0xC
458324:  STR             R1, [SP,#0xD8+var_C8]
458326:  ADD.W           R1, R0, #8
45832A:  ORR.W           R0, R0, #4
45832E:  STR             R0, [SP,#0xD8+var_C0]
458330:  MOVS            R4, #0
458332:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x45833C)
458336:  STR             R1, [SP,#0xD8+var_C4]
458338:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
45833A:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
45833C:  STR             R0, [SP,#0xD8+var_8C]
45833E:  LDR.W           R0, =(_ZN8CClothes14ms_numRuleTagsE_ptr - 0x458346)
458342:  ADD             R0, PC; _ZN8CClothes14ms_numRuleTagsE_ptr
458344:  LDR             R0, [R0]; CClothes::ms_numRuleTags ...
458346:  STR             R0, [SP,#0xD8+var_90]
458348:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x458350)
45834C:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
45834E:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
458350:  STR             R0, [SP,#0xD8+var_A0]
458352:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x45835A)
458356:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
458358:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
45835A:  STR             R0, [SP,#0xD8+var_A4]
45835C:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x458364)
458360:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
458362:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
458364:  STR             R0, [SP,#0xD8+var_A8]
458366:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x45836E)
45836A:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
45836C:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
45836E:  STR             R0, [SP,#0xD8+var_AC]
458370:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x458378)
458374:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
458376:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
458378:  STR             R0, [SP,#0xD8+var_B0]
45837A:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x458382)
45837E:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
458380:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
458382:  STR             R0, [SP,#0xD8+var_B8]
458384:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x45838C)
458388:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
45838A:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
45838C:  STR             R0, [SP,#0xD8+var_B4]
45838E:  LDR.W           R0, =(_ZN8CClothes15ms_clothesRulesE_ptr - 0x458396)
458392:  ADD             R0, PC; _ZN8CClothes15ms_clothesRulesE_ptr
458394:  LDR             R0, [R0]; CClothes::ms_clothesRules ...
458396:  STR             R0, [SP,#0xD8+var_BC]
458398:  STR             R0, [SP,#0xD8+var_98]
45839A:  STR             R0, [SP,#0xD8+var_94]
45839C:  STR             R0, [SP,#0xD8+var_88]
45839E:  B               loc_4583A6
4583A0:  MOV.W           R8, #0xFFFFFFFF
4583A4:  B               loc_45860A
4583A6:  LDR             R1, [SP,#0xD8+var_8C]
4583A8:  ADDS            R0, R4, #1
4583AA:  LDR.W           R2, [R1,R4,LSL#2]
4583AE:  STR             R2, [SP,#0xD8+var_7C]
4583B0:  CMP             R2, #7; switch 8 cases
4583B2:  BHI.W           def_4583B6; jumptable 004583B6 default case
4583B6:  TBB.W           [PC,R2]; switch jump
4583BA:  DCB 4; jump table for switch statement
4583BB:  DCB 0x11
4583BC:  DCB 0x1E
4583BD:  DCB 0x2B
4583BE:  DCB 0x36
4583BF:  DCB 0x41
4583C0:  DCB 0x7B
4583C1:  DCB 0x5E
4583C2:  LDR             R1, [SP,#0xD8+var_A0]; jumptable 004583B6 case 0
4583C4:  MOV.W           R8, #0xFFFFFFFF
4583C8:  LDR.W           R0, [R1,R0,LSL#2]
4583CC:  STR             R0, [SP,#0xD8+var_88]
4583CE:  ADD.W           R0, R1, R4,LSL#2
4583D2:  ADDS            R4, #3
4583D4:  STR             R4, [SP,#0xD8+var_84]
4583D6:  LDR             R0, [R0,#8]
4583D8:  STR             R0, [SP,#0xD8+var_94]
4583DA:  B               loc_45860A
4583DC:  LDR             R1, [SP,#0xD8+var_A4]; jumptable 004583B6 case 1
4583DE:  LDR.W           R0, [R1,R0,LSL#2]
4583E2:  STR             R0, [SP,#0xD8+var_88]
4583E4:  ADD.W           R0, R1, R4,LSL#2
4583E8:  ADDS            R4, #5
4583EA:  LDRD.W          R8, R1, [R0,#8]
4583EE:  LDR             R0, [R0,#0x10]
4583F0:  STR             R1, [SP,#0xD8+var_94]
4583F2:  STR             R0, [SP,#0xD8+var_98]
4583F4:  B               loc_458422
4583F6:  LDR             R1, [SP,#0xD8+var_A8]; jumptable 004583B6 case 2
4583F8:  MOV.W           R8, #0xFFFFFFFF
4583FC:  LDR.W           R0, [R1,R0,LSL#2]
458400:  STR             R0, [SP,#0xD8+var_88]
458402:  ADD.W           R0, R1, R4,LSL#2
458406:  ADDS            R4, #3
458408:  STR             R4, [SP,#0xD8+var_84]
45840A:  LDR             R0, [R0,#8]
45840C:  STR             R0, [SP,#0xD8+var_98]
45840E:  B               loc_45860A
458410:  LDR             R1, [SP,#0xD8+var_AC]; jumptable 004583B6 case 3
458412:  LDR.W           R0, [R1,R0,LSL#2]
458416:  STR             R0, [SP,#0xD8+var_88]
458418:  ADD.W           R0, R1, R4,LSL#2
45841C:  ADDS            R4, #3
45841E:  LDR.W           R8, [R0,#8]
458422:  STR             R4, [SP,#0xD8+var_84]
458424:  B               loc_45860A
458426:  LDR             R1, [SP,#0xD8+var_B0]; jumptable 004583B6 case 4
458428:  ADDS            R4, #2
45842A:  LDR.W           R2, [R1,R0,LSL#2]
45842E:  STRD.W          R2, R4, [SP,#0xD8+var_88]
458432:  CMP             R9, R2
458434:  BNE             loc_4584C6
458436:  ADD             R1, SP, #0xD8+var_48
458438:  MOVS            R0, #0
45843A:  B               loc_4585E0
45843C:  ADDS.W          R1, R9, #1; jumptable 004583B6 case 5
458440:  BEQ             loc_4584DE
458442:  LDR             R1, [SP,#0xD8+var_44]
458444:  ADDS            R1, #1
458446:  BEQ             loc_458502
458448:  LDR             R1, [SP,#0xD8+var_40]
45844A:  ADDS            R1, #1
45844C:  BEQ             loc_45850E
45844E:  LDR             R1, [SP,#0xD8+var_3C]
458450:  ADDS            R1, #1
458452:  BEQ             loc_458532
458454:  LDR             R1, [SP,#0xD8+var_38]
458456:  ADDS            R1, #1
458458:  BEQ             loc_458556
45845A:  LDR             R1, [SP,#0xD8+var_34]
45845C:  ADDS            R1, #1
45845E:  BEQ.W           loc_458562
458462:  LDR             R1, [SP,#0xD8+var_30]
458464:  ADDS            R1, #1
458466:  BEQ.W           loc_458586
45846A:  LDR             R1, [SP,#0xD8+var_2C]
45846C:  ADDS            R1, #1
45846E:  BNE             def_4583B6; jumptable 004583B6 default case
458470:  MOVS            R1, #7
458472:  LDR             R2, [SP,#0xD8+var_D8]
458474:  B               loc_45858A
458476:  ADDS.W          R1, R9, #1; jumptable 004583B6 case 7
45847A:  BEQ             loc_4584E4
45847C:  LDR             R1, [SP,#0xD8+var_44]
45847E:  ADDS            R1, #1
458480:  BEQ             loc_458508
458482:  LDR             R1, [SP,#0xD8+var_40]
458484:  ADDS            R1, #1
458486:  BEQ             loc_458514
458488:  LDR             R1, [SP,#0xD8+var_3C]
45848A:  ADDS            R1, #1
45848C:  BEQ             loc_458538
45848E:  LDR             R1, [SP,#0xD8+var_38]
458490:  ADDS            R1, #1
458492:  BEQ             loc_45855C
458494:  LDR             R1, [SP,#0xD8+var_34]
458496:  ADDS            R1, #1
458498:  BEQ             loc_458568
45849A:  LDR             R1, [SP,#0xD8+var_30]
45849C:  ADDS            R1, #1
45849E:  BEQ             loc_45859A
4584A0:  LDR             R1, [SP,#0xD8+var_2C]
4584A2:  ADDS            R1, #1
4584A4:  BEQ.W           loc_4585B8
4584A8:  MOV.W           R8, #0xFFFFFFFF; jumptable 004583B6 default case
4584AC:  STR             R0, [SP,#0xD8+var_84]
4584AE:  B               loc_45860A
4584B0:  LDR             R1, [SP,#0xD8+var_B4]; jumptable 004583B6 case 6
4584B2:  ADDS            R4, #2
4584B4:  LDR.W           R2, [R1,R0,LSL#2]
4584B8:  STRD.W          R2, R4, [SP,#0xD8+var_88]
4584BC:  CMP             R9, R2
4584BE:  BNE             loc_4584D2
4584C0:  ADD             R1, SP, #0xD8+var_48
4584C2:  MOVS            R0, #0
4584C4:  B               loc_4585FC
4584C6:  LDR             R0, [SP,#0xD8+var_44]
4584C8:  CMP             R0, R2
4584CA:  BNE             loc_4584EA
4584CC:  MOVS            R0, #1
4584CE:  LDR             R1, [SP,#0xD8+var_C0]
4584D0:  B               loc_4585E0
4584D2:  LDR             R0, [SP,#0xD8+var_44]
4584D4:  CMP             R0, R2
4584D6:  BNE             loc_4584F6
4584D8:  MOVS            R0, #1
4584DA:  LDR             R1, [SP,#0xD8+var_C0]
4584DC:  B               loc_4585FC
4584DE:  ADD             R2, SP, #0xD8+var_48
4584E0:  MOVS            R1, #0
4584E2:  B               loc_45858A
4584E4:  ADD             R2, SP, #0xD8+var_48
4584E6:  MOVS            R1, #0
4584E8:  B               loc_4585BC
4584EA:  LDR             R0, [SP,#0xD8+var_40]
4584EC:  CMP             R0, R2
4584EE:  BNE             loc_45851A
4584F0:  MOVS            R0, #2
4584F2:  LDR             R1, [SP,#0xD8+var_C4]
4584F4:  B               loc_4585E0
4584F6:  LDR             R0, [SP,#0xD8+var_40]
4584F8:  CMP             R0, R2
4584FA:  BNE             loc_458526
4584FC:  MOVS            R0, #2
4584FE:  LDR             R1, [SP,#0xD8+var_C4]
458500:  B               loc_4585FC
458502:  MOVS            R1, #1
458504:  LDR             R2, [SP,#0xD8+var_C0]
458506:  B               loc_45858A
458508:  MOVS            R1, #1
45850A:  LDR             R2, [SP,#0xD8+var_C0]
45850C:  B               loc_4585BC
45850E:  MOVS            R1, #2
458510:  LDR             R2, [SP,#0xD8+var_C4]
458512:  B               loc_45858A
458514:  MOVS            R1, #2
458516:  LDR             R2, [SP,#0xD8+var_C4]
458518:  B               loc_4585BC
45851A:  LDR             R0, [SP,#0xD8+var_3C]
45851C:  CMP             R0, R2
45851E:  BNE             loc_45853E
458520:  MOVS            R0, #3
458522:  LDR             R1, [SP,#0xD8+var_C8]
458524:  B               loc_4585E0
458526:  LDR             R0, [SP,#0xD8+var_3C]
458528:  CMP             R0, R2
45852A:  BNE             loc_45854A
45852C:  MOVS            R0, #3
45852E:  LDR             R1, [SP,#0xD8+var_C8]
458530:  B               loc_4585FC
458532:  MOVS            R1, #3
458534:  LDR             R2, [SP,#0xD8+var_C8]
458536:  B               loc_45858A
458538:  MOVS            R1, #3
45853A:  LDR             R2, [SP,#0xD8+var_C8]
45853C:  B               loc_4585BC
45853E:  LDR             R0, [SP,#0xD8+var_38]
458540:  CMP             R0, R2
458542:  BNE             loc_45856E
458544:  MOVS            R0, #4
458546:  LDR             R1, [SP,#0xD8+var_CC]
458548:  B               loc_4585E0
45854A:  LDR             R0, [SP,#0xD8+var_38]
45854C:  CMP             R0, R2
45854E:  BNE             loc_45857A
458550:  MOVS            R0, #4
458552:  LDR             R1, [SP,#0xD8+var_CC]
458554:  B               loc_4585FC
458556:  MOVS            R1, #4
458558:  LDR             R2, [SP,#0xD8+var_CC]
45855A:  B               loc_45858A
45855C:  MOVS            R1, #4
45855E:  LDR             R2, [SP,#0xD8+var_CC]
458560:  B               loc_4585BC
458562:  MOVS            R1, #5
458564:  LDR             R2, [SP,#0xD8+var_D0]
458566:  B               loc_45858A
458568:  MOVS            R1, #5
45856A:  LDR             R2, [SP,#0xD8+var_D0]
45856C:  B               loc_4585BC
45856E:  LDR             R0, [SP,#0xD8+var_34]
458570:  CMP             R0, R2
458572:  BNE             loc_4585A0
458574:  MOVS            R0, #5
458576:  LDR             R1, [SP,#0xD8+var_D0]
458578:  B               loc_4585E0
45857A:  LDR             R0, [SP,#0xD8+var_34]
45857C:  CMP             R0, R2
45857E:  BNE             loc_4585AC
458580:  MOVS            R0, #5
458582:  LDR             R1, [SP,#0xD8+var_D0]
458584:  B               loc_4585FC
458586:  MOVS            R1, #6
458588:  LDR             R2, [SP,#0xD8+var_D4]
45858A:  LDR             R3, [SP,#0xD8+var_B8]
45858C:  LDR.W           R0, [R3,R0,LSL#2]
458590:  STR             R0, [R2]
458592:  ADD             R0, SP, #0xD8+var_28
458594:  MOVS            R2, #1
458596:  STRB            R2, [R0,R1]
458598:  B               loc_4585CA
45859A:  MOVS            R1, #6
45859C:  LDR             R2, [SP,#0xD8+var_D4]
45859E:  B               loc_4585BC
4585A0:  LDR             R0, [SP,#0xD8+var_30]
4585A2:  CMP             R0, R2
4585A4:  BNE             loc_4585D4
4585A6:  MOVS            R0, #6
4585A8:  LDR             R1, [SP,#0xD8+var_D4]
4585AA:  B               loc_4585E0
4585AC:  LDR             R0, [SP,#0xD8+var_30]
4585AE:  CMP             R0, R2
4585B0:  BNE             loc_4585F0
4585B2:  MOVS            R0, #6
4585B4:  LDR             R1, [SP,#0xD8+var_D4]
4585B6:  B               loc_4585FC
4585B8:  MOVS            R1, #7
4585BA:  LDR             R2, [SP,#0xD8+var_D8]
4585BC:  LDR             R3, [SP,#0xD8+var_BC]
4585BE:  LDR.W           R0, [R3,R0,LSL#2]
4585C2:  STR             R0, [R2]
4585C4:  ADD             R2, SP, #0xD8+var_28
4585C6:  MOVS            R0, #0
4585C8:  STRB            R0, [R2,R1]
4585CA:  ADDS            R4, #2
4585CC:  STR             R4, [SP,#0xD8+var_84]
4585CE:  MOV.W           R8, #0xFFFFFFFF
4585D2:  B               loc_45860A
4585D4:  LDR             R0, [SP,#0xD8+var_2C]
4585D6:  CMP             R0, R2
4585D8:  BNE.W           loc_4583A0
4585DC:  MOVS            R0, #7
4585DE:  LDR             R1, [SP,#0xD8+var_D8]
4585E0:  MOV.W           R8, #0xFFFFFFFF
4585E4:  MOVS            R2, #1
4585E6:  STR.W           R8, [R1]
4585EA:  ADD             R1, SP, #0xD8+var_28
4585EC:  STRB            R2, [R1,R0]
4585EE:  B               loc_45860A
4585F0:  LDR             R0, [SP,#0xD8+var_2C]
4585F2:  CMP             R0, R2
4585F4:  BNE.W           loc_4583A0
4585F8:  MOVS            R0, #7
4585FA:  LDR             R1, [SP,#0xD8+var_D8]
4585FC:  MOV.W           R8, #0xFFFFFFFF
458600:  ADD             R2, SP, #0xD8+var_28
458602:  STR.W           R8, [R1]
458606:  MOVS            R1, #0
458608:  STRB            R1, [R2,R0]
45860A:  LDRB.W          R0, [SP,#0xD8+var_27]
45860E:  ADD.W           R12, SP, #0xD8+var_34
458612:  STR             R0, [SP,#0xD8+var_4C]
458614:  MOVS            R4, #0
458616:  LDRB.W          R0, [SP,#0xD8+var_26]
45861A:  STR             R0, [SP,#0xD8+var_60]
45861C:  LDRB.W          R0, [SP,#0xD8+var_25]
458620:  STR             R0, [SP,#0xD8+var_68]
458622:  LDRB.W          R0, [SP,#0xD8+var_24]
458626:  STR             R0, [SP,#0xD8+var_70]
458628:  LDRB.W          R0, [SP,#0xD8+var_23]
45862C:  STR             R0, [SP,#0xD8+var_74]
45862E:  LDRB.W          R0, [SP,#0xD8+var_22]
458632:  STR             R0, [SP,#0xD8+var_78]
458634:  LDRB.W          R0, [SP,#0xD8+var_21]
458638:  STR             R0, [SP,#0xD8+var_80]
45863A:  LDRB.W          LR, [SP,#0xD8+var_28]
45863E:  LDRD.W          R9, R3, [SP,#0xD8+var_48]
458642:  LDRD.W          R2, R5, [SP,#0xD8+var_40]
458646:  LDM.W           R12, {R0,R10,R12}
45864A:  STR             R0, [SP,#0xD8+var_6C]
45864C:  LDR             R0, [SP,#0xD8+var_38]
45864E:  STR             R0, [SP,#0xD8+var_64]
458650:  STRD.W          R12, LR, [SP,#0xD8+var_5C]
458654:  STRD.W          R3, R2, [SP,#0xD8+var_54]
458658:  B               loc_458696
45865A:  LDR             R0, [SP,#0xD8+var_98]
45865C:  LDR.W           R10, [SP,#0xD8+var_94]
458660:  CBNZ            R0, loc_458674
458662:  MOV             R0, R8; this
458664:  BLX             j__ZN8CClothes19GetDependentTextureEi; CClothes::GetDependentTexture(int)
458668:  ADD.W           R0, R11, R0,LSL#2
45866C:  LDR.W           R10, [SP,#0xD8+var_94]
458670:  LDR             R0, [R0,#0x28]
458672:  STR             R0, [SP,#0xD8+var_98]
458674:  CMP.W           R10, #0
458678:  MOV             R0, R8; this
45867A:  IT EQ
45867C:  LDREQ.W         R10, [R11,R8,LSL#2]
458680:  BLX             j__ZN8CClothes19GetDependentTextureEi; CClothes::GetDependentTexture(int)
458684:  LDR             R1, [SP,#0xD8+var_98]; unsigned int
458686:  MOV             R3, R0; int
458688:  MOV             R0, R11; this
45868A:  MOV             R2, R10; unsigned int
45868C:  STR.W           R10, [SP,#0xD8+var_94]
458690:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEjji; CPedClothesDesc::SetTextureAndModel(uint,uint,int)
458694:  B               loc_4587EC
458696:  ADDS.W          R0, R8, #1
45869A:  MOV             R0, R8
45869C:  IT EQ
45869E:  MOVEQ           R0, R4
4586A0:  ADDS.W          R1, R9, #1
4586A4:  BEQ             loc_4586BA
4586A6:  LDR.W           R1, [R11,R0,LSL#2]
4586AA:  CMP             R1, R9
4586AC:  MOV.W           R1, #0
4586B0:  IT EQ
4586B2:  MOVEQ           R1, #1
4586B4:  CMP             R1, LR
4586B6:  BEQ.W           loc_4587F6
4586BA:  ADDS            R1, R3, #1
4586BC:  BEQ             loc_4586D4
4586BE:  LDR.W           R1, [R11,R0,LSL#2]
4586C2:  CMP             R1, R3
4586C4:  MOV.W           R1, #0
4586C8:  IT EQ
4586CA:  MOVEQ           R1, #1
4586CC:  LDR             R6, [SP,#0xD8+var_4C]
4586CE:  CMP             R1, R6
4586D0:  BEQ.W           loc_4587F6
4586D4:  ADDS            R1, R2, #1
4586D6:  BEQ             loc_4586F4
4586D8:  LDR.W           R1, [R11,R0,LSL#2]
4586DC:  CMP             R1, R2
4586DE:  MOV.W           R1, #0
4586E2:  IT EQ
4586E4:  MOVEQ           R1, #1
4586E6:  LDR.W           R12, [SP,#0xD8+var_60]
4586EA:  CMP             R1, R12
4586EC:  LDRD.W          R12, LR, [SP,#0xD8+var_5C]
4586F0:  BEQ.W           loc_4587F6
4586F4:  MOV             R6, R10
4586F6:  ADDS            R1, R5, #1
4586F8:  BEQ             loc_45870E
4586FA:  LDR.W           R1, [R11,R0,LSL#2]
4586FE:  CMP             R1, R5
458700:  MOV.W           R1, #0
458704:  IT EQ
458706:  MOVEQ           R1, #1
458708:  LDR             R3, [SP,#0xD8+var_68]
45870A:  CMP             R1, R3
45870C:  BEQ             loc_4587F0
45870E:  LDR             R2, [SP,#0xD8+var_64]
458710:  ADDS            R1, R2, #1
458712:  BEQ             loc_458728
458714:  LDR.W           R1, [R11,R0,LSL#2]
458718:  CMP             R1, R2
45871A:  MOV.W           R1, #0
45871E:  IT EQ
458720:  MOVEQ           R1, #1
458722:  LDR             R3, [SP,#0xD8+var_70]
458724:  CMP             R1, R3
458726:  BEQ             loc_4587F0
458728:  LDR             R2, [SP,#0xD8+var_6C]
45872A:  ADDS            R1, R2, #1
45872C:  BEQ             loc_458742
45872E:  LDR.W           R1, [R11,R0,LSL#2]
458732:  CMP             R1, R2
458734:  MOV.W           R1, #0
458738:  IT EQ
45873A:  MOVEQ           R1, #1
45873C:  LDR             R3, [SP,#0xD8+var_74]
45873E:  CMP             R1, R3
458740:  BEQ             loc_4587F0
458742:  MOV             R10, R6
458744:  ADDS.W          R1, R10, #1
458748:  BEQ             loc_458760
45874A:  LDR.W           R1, [R11,R0,LSL#2]
45874E:  CMP             R1, R10
458750:  MOV.W           R1, #0
458754:  IT EQ
458756:  MOVEQ           R1, #1
458758:  LDR             R3, [SP,#0xD8+var_78]
45875A:  MOV             R10, R6
45875C:  CMP             R1, R3
45875E:  BEQ             def_458780; jumptable 00458780 default case
458760:  ADDS.W          R1, R12, #1
458764:  BEQ             loc_45877A
458766:  LDR.W           R0, [R11,R0,LSL#2]
45876A:  CMP             R0, R12
45876C:  MOV.W           R0, #0
458770:  IT EQ
458772:  MOVEQ           R0, #1
458774:  LDR             R1, [SP,#0xD8+var_80]
458776:  CMP             R0, R1
458778:  BEQ             def_458780; jumptable 00458780 default case
45877A:  LDR             R1, [SP,#0xD8+var_7C]
45877C:  CMP             R1, #3; switch 4 cases
45877E:  BHI             def_458780; jumptable 00458780 default case
458780:  TBB.W           [PC,R1]; switch jump
458784:  DCB 2; jump table for switch statement
458785:  DCB 0xE
458786:  DCB 0x1B
458787:  DCB 0x2A
458788:  LDR             R0, [SP,#0xD8+var_9C]; jumptable 00458780 case 0
45878A:  CMP             R0, #1
45878C:  BNE             def_458780; jumptable 00458780 default case
45878E:  LDR.W           R0, [R11,R4,LSL#2]
458792:  LDR             R1, [SP,#0xD8+var_88]
458794:  CMP             R0, R1
458796:  BNE             def_458780; jumptable 00458780 default case
458798:  MOV             R0, R11
45879A:  LDR             R1, [SP,#0xD8+var_94]
45879C:  MOV             R2, R4
45879E:  B               loc_4587E8
4587A0:  LDR.W           R0, [R11,R4,LSL#2]; jumptable 00458780 case 1
4587A4:  LDR             R1, [SP,#0xD8+var_88]; int
4587A6:  CMP             R0, R1
4587A8:  BNE             def_458780; jumptable 00458780 default case
4587AA:  CMP.W           R8, #2
4587AE:  BNE.W           loc_45865A
4587B2:  MOV             R0, R11
4587B4:  LDR             R1, [SP,#0xD8+var_94]
4587B6:  MOVS            R2, #2
4587B8:  B               loc_4587E8
4587BA:  LDR.W           R0, [R11,R4,LSL#2]; jumptable 00458780 case 2
4587BE:  LDR             R1, [SP,#0xD8+var_88]; int
4587C0:  CMP             R0, R1
4587C2:  BNE             def_458780; jumptable 00458780 default case
4587C4:  MOV             R0, R4; this
4587C6:  BLX             j__ZN8CClothes19GetDependentTextureEi; CClothes::GetDependentTexture(int)
4587CA:  LDR             R1, [SP,#0xD8+var_98]; unsigned int
4587CC:  MOV             R3, R0; int
4587CE:  LDR             R2, [SP,#0xD8+var_88]; unsigned int
4587D0:  MOV             R0, R11; this
4587D2:  BLX             j__ZN15CPedClothesDesc18SetTextureAndModelEjji; CPedClothesDesc::SetTextureAndModel(uint,uint,int)
4587D6:  B               loc_4587EC
4587D8:  LDR.W           R0, [R11,R4,LSL#2]; jumptable 00458780 case 3
4587DC:  LDR             R1, [SP,#0xD8+var_88]
4587DE:  CMP             R0, R1
4587E0:  BNE             def_458780; jumptable 00458780 default case
4587E2:  MOV             R0, R11; this
4587E4:  MOVS            R1, #0; unsigned int
4587E6:  MOV             R2, R8; int
4587E8:  BLX             j__ZN15CPedClothesDesc8SetModelEji; CPedClothesDesc::SetModel(uint,int)
4587EC:  LDRD.W          R12, LR, [SP,#0xD8+var_5C]
4587F0:  MOV             R10, R6
4587F2:  LDRD.W          R3, R2, [SP,#0xD8+var_54]; jumptable 00458780 default case
4587F6:  ADDS            R4, #1
4587F8:  CMP             R4, #0xA
4587FA:  BNE.W           loc_458696
4587FE:  LDR             R0, [SP,#0xD8+var_90]
458800:  LDR             R4, [SP,#0xD8+var_84]
458802:  LDR             R0, [R0]
458804:  CMP             R4, R0
458806:  BCC.W           loc_4583A6
45880A:  LDR             R0, =(__stack_chk_guard_ptr - 0x458812)
45880C:  LDR             R1, [SP,#0xD8+var_20]
45880E:  ADD             R0, PC; __stack_chk_guard_ptr
458810:  LDR             R0, [R0]; __stack_chk_guard
458812:  LDR             R0, [R0]
458814:  SUBS            R0, R0, R1
458816:  ITTT EQ
458818:  ADDEQ           SP, SP, #0xBC
45881A:  POPEQ.W         {R8-R11}
45881E:  POPEQ           {R4-R7,PC}
458820:  BLX             __stack_chk_fail
