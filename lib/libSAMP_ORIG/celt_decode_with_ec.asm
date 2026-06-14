; =========================================================
; Game Engine Function: celt_decode_with_ec
; Address            : 0xB9264 - 0xBA140
; =========================================================

B9264:  PUSH            {R4-R7,LR}
B9266:  ADD             R7, SP, #0xC
B9268:  PUSH.W          {R8-R11}
B926C:  SUB             SP, SP, #0xEC
B926E:  MOV             R9, R0
B9270:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xB927E)
B9274:  STR.W           R3, [R7,#var_9C]
B9278:  MOV             R11, R2
B927A:  ADD             R0, PC; __stack_chk_guard_ptr
B927C:  MOVS            R6, #0
B927E:  LDR             R0, [R0]; __stack_chk_guard
B9280:  LDR             R0, [R0]
B9282:  STR.W           R0, [R7,#var_24]
B9286:  LDRD.W          R10, R0, [R9,#8]
B928A:  STR.W           R0, [R7,#var_98]
B928E:  LDRD.W          R0, R2, [R9,#0x10]
B9292:  STR.W           R2, [R7,#var_94]
B9296:  LDR.W           R12, [R9,#0x18]
B929A:  LDR             R2, [R7,#arg_0]
B929C:  STRD.W          R6, R6, [R7,#var_6C]
B92A0:  LDR.W           R5, [R9]
B92A4:  MUL.W           R4, R0, R2
B92A8:  LDRD.W          R8, LR, [R5,#4]
B92AC:  LDR             R0, [R5,#0x18]
B92AE:  STR.W           R0, [R7,#var_A4]
B92B2:  LDR             R0, [R5,#0x1C]
B92B4:  CMP             R0, #0
B92B6:  BLT             loc_B92CC
B92B8:  LDR             R2, [R5,#0x24]
B92BA:  MOVS            R3, #0
B92BC:  LSL.W           R6, R2, R3
B92C0:  CMP             R6, R4
B92C2:  BEQ             loc_B92D8
B92C4:  ADDS            R6, R3, #1
B92C6:  CMP             R3, R0
B92C8:  MOV             R3, R6
B92CA:  BLT             loc_B92BC
B92CC:  CMP             R6, R0
B92CE:  BLE             loc_B92DE
B92D0:  MOV.W           R0, #0xFFFFFFFF
B92D4:  B.W             loc_BA120
B92D8:  MOV             R6, R3
B92DA:  CMP             R6, R0
B92DC:  BGT             loc_B92D0
B92DE:  MOVW            R2, #0x4FB
B92E2:  MOV.W           R0, #0xFFFFFFFF
B92E6:  CMP             R11, R2
B92E8:  BHI.W           loc_BA120
B92EC:  LDR.W           R2, [R7,#var_9C]
B92F0:  CMP             R2, #0
B92F2:  BEQ.W           loc_BA120
B92F6:  ADD.W           R0, R8, #0x800
B92FA:  ADD.W           R2, R10, R10,LSL#1
B92FE:  STR.W           R12, [R7,#var_A8]
B9302:  MUL.W           R0, R0, R10
B9306:  STR.W           R4, [R7,#var_C4]
B930A:  LDR.W           R12, [R7,#arg_4]
B930E:  ADD.W           R0, R9, R0,LSL#2
B9312:  ADD.W           R0, R0, R2,LSL#4
B9316:  ADDS            R0, #0x58 ; 'X'
B9318:  STR.W           R0, [R7,#src]
B931C:  ADD.W           R0, R0, LR,LSL#2
B9320:  STR.W           R0, [R7,#var_E4]
B9324:  ADD.W           R0, R0, LR,LSL#2
B9328:  STR.W           R0, [R7,#var_E8]
B932C:  MOV.W           R0, LR,LSL#1
B9330:  STR.W           R0, [R7,#n]
B9334:  MOVS            R0, #1
B9336:  LSLS            R0, R6
B9338:  STR.W           R0, [R7,#var_CC]
B933C:  MOV             R0, R5
B933E:  STR.W           R0, [R7,#var_B0]
B9342:  MOV.W           R0, #0x2000
B9346:  LDR             R2, [R5,#0x24]
B9348:  ADD.W           R0, R0, R8,LSL#2
B934C:  STR.W           R8, [R7,#var_74]
B9350:  SUB.W           R8, R7, #-var_2C
B9354:  STR.W           R6, [R7,#var_90]
B9358:  MOV             R5, R9
B935A:  LSL.W           R3, R2, R6
B935E:  MOVW            R2, #0x2058
B9362:  SUB.W           R2, R2, R3,LSL#2
B9366:  SUB.W           R6, R7, #-var_34
B936A:  STR.W           R3, [R7,#var_7C]
B936E:  MOVS            R3, #0
B9370:  ADD.W           R4, R5, #0x58 ; 'X'
B9374:  STR.W           R4, [R8,R3,LSL#2]
B9378:  ADDS            R4, R5, R2
B937A:  STR.W           R4, [R6,R3,LSL#2]
B937E:  ADDS            R3, #1
B9380:  ADD             R5, R0
B9382:  CMP             R3, R10
B9384:  BLT             loc_B9370
B9386:  LDR.W           R8, [R7,#var_B0]
B938A:  LDR.W           R0, [R7,#var_A8]
B938E:  LDR.W           R2, [R8,#0xC]
B9392:  CMP             R0, R2
B9394:  IT LE
B9396:  MOVLE           R2, R0
B9398:  CMP             R1, #0
B939A:  BEQ             loc_B9468
B939C:  CMP.W           R11, #1
B93A0:  BLE             loc_B9468
B93A2:  STR.W           R11, [R7,#var_D0]
B93A6:  MOV             R11, R12
B93A8:  STR.W           R2, [R7,#var_F0]
B93AC:  LDR.W           R0, [R9,#0x34]
B93B0:  CMP             R0, #0
B93B2:  IT NE
B93B4:  MOVNE           R0, #1
B93B6:  CMP.W           R11, #0
B93BA:  STR.W           R0, [R9,#0x38]
B93BE:  STR.W           LR, [R7,#var_AC]
B93C2:  BNE             loc_B93D6
B93C4:  SUB.W           R11, R7, #-var_64
B93C8:  LDR.W           R2, [R7,#var_D0]
B93CC:  MOV             R0, R11
B93CE:  BLX             j_ec_dec_init
B93D2:  LDR.W           LR, [R7,#var_AC]
B93D6:  LDR.W           R0, [R7,#var_98]
B93DA:  LDR.W           R4, [R7,#src]
B93DE:  CMP             R0, #1
B93E0:  BNE             loc_B9420
B93E2:  CMP.W           LR, #1
B93E6:  BLT             loc_B9420
B93E8:  LDR.W           R1, [R7,#var_74]
B93EC:  MOVW            R0, #0x2030
B93F0:  MOVS            R2, #0
B93F2:  ADD.W           R0, R0, R1,LSL#2
B93F6:  LDR.W           R1, [R7,#n]
B93FA:  MLA.W           R0, R10, R0, R9
B93FE:  ADDS            R0, #0x58 ; 'X'
B9400:  ADD             R1, R0
B9402:  LDRSH.W         R3, [R1,R2,LSL#1]
B9406:  LDRSH.W         R6, [R0,R2,LSL#1]
B940A:  CMP             R6, R3
B940C:  MOV             R3, R2
B940E:  IT LE
B9410:  ADDLE           R3, LR
B9412:  LDRH.W          R3, [R4,R3,LSL#1]
B9416:  STRH.W          R3, [R0,R2,LSL#1]
B941A:  ADDS            R2, #1
B941C:  CMP             LR, R2
B941E:  BNE             loc_B9402
B9420:  LDR.W           R2, [R11,#0x1C]
B9424:  LDR.W           R1, [R11,#0x14]
B9428:  CLZ.W           R0, R2
B942C:  ADD             R0, R1
B942E:  SUB.W           R5, R0, #0x20 ; ' '
B9432:  LDR.W           R0, [R7,#var_D0]
B9436:  LSLS            R3, R0, #3
B9438:  CMP.W           R5, R0,LSL#3
B943C:  STR.W           R3, [R7,#var_BC]
B9440:  BGE             loc_B94AA
B9442:  CMP             R5, #1
B9444:  BNE             loc_B94D6
B9446:  MOV             R0, R11
B9448:  MOVS            R1, #0xF
B944A:  BLX             j_ec_dec_bit_logp
B944E:  CMP             R0, #0
B9450:  BEQ             loc_B94E8
B9452:  SUB.W           LR, R7, #-var_100
B9456:  LDR.W           R4, [R7,#src]
B945A:  STR.W           R0, [LR]
B945E:  LDR.W           R1, [R11,#0x14]
B9462:  LDR.W           R2, [R11,#0x1C]
B9466:  B               loc_B94B4
B9468:  LDR.W           R4, [R7,#var_7C]
B946C:  MOV             R0, R9
B946E:  LDR.W           R2, [R7,#var_90]
B9472:  MOV             R1, R4
B9474:  BL              sub_BA15C
B9478:  LDR.W           R0, [R9,#0x10]
B947C:  SUB             SP, SP, #0x10
B947E:  ADD.W           R2, R8, #0x10
B9482:  ADD.W           R1, R9, #0x50 ; 'P'
B9486:  MOV             R3, R10
B9488:  STRD.W          R0, R2, [SP,#0x118+var_118]
B948C:  MOV             R2, R4
B948E:  STR             R1, [SP,#0x118+var_110]
B9490:  LDR             R0, [R7,#arg_8]
B9492:  LDR.W           R1, [R7,#var_9C]
B9496:  STR             R0, [SP,#0x118+var_10C]
B9498:  SUB.W           R0, R7, #-var_34
B949C:  BL              sub_BAF30
B94A0:  ADD             SP, SP, #0x10
B94A2:  LDR.W           R1, [R9,#0x10]
B94A6:  B.W             loc_BA118
B94AA:  SUB.W           LR, R7, #-var_100
B94AE:  MOVS            R0, #1
B94B0:  STR.W           R0, [LR]
B94B4:  LDR.W           R0, [R7,#var_BC]
B94B8:  CLZ.W           R2, R2
B94BC:  MOV             R3, R0
B94BE:  ADD.W           R0, R3, #0x20 ; ' '
B94C2:  SUBS            R0, R0, R1
B94C4:  MOV             R5, R3
B94C6:  SUBS            R0, R0, R2
B94C8:  ADD             R0, R1
B94CA:  STR.W           R0, [R11,#0x14]
B94CE:  MOVS            R0, #1
B94D0:  STR.W           R0, [R7,#var_FC]
B94D4:  B               loc_B94FE
B94D6:  MOVS            R0, #0
B94D8:  SUB.W           LR, R7, #-var_100
B94DC:  STR.W           R0, [R7,#var_FC]
B94E0:  MOVS            R0, #0
B94E2:  STR.W           R0, [LR]
B94E6:  B               loc_B94FE
B94E8:  MOVS            R0, #0
B94EA:  SUB.W           LR, R7, #-var_100
B94EE:  STR.W           R0, [R7,#var_FC]
B94F2:  MOVS            R0, #0
B94F4:  MOVS            R5, #1
B94F6:  STR.W           R0, [LR]
B94FA:  LDR.W           R4, [R7,#src]
B94FE:  MOVS            R1, #0
B9500:  STR.W           R9, [R7,#var_C0]
B9504:  STR.W           R1, [R7,#var_80]
B9508:  LDR.W           R1, [R7,#var_94]
B950C:  STR.W           R10, [R7,#var_78]
B9510:  CBNZ            R1, loc_B957A
B9512:  LDR.W           R2, [R7,#var_BC]
B9516:  ADD.W           R1, R5, #0x10
B951A:  LDR.W           R6, [R7,#var_98]
B951E:  MOV.W           R9, #0
B9522:  CMP             R1, R2
B9524:  MOV.W           R0, #0
B9528:  BGT             loc_B95CC
B952A:  MOV             R0, R11
B952C:  MOVS            R1, #1
B952E:  BLX             j_ec_dec_bit_logp
B9532:  CBZ             R0, loc_B9586
B9534:  MOV             R0, R11
B9536:  MOVS            R1, #6
B9538:  BLX             j_ec_dec_uint
B953C:  MOV             R6, R0
B953E:  ADDS            R1, R6, #4
B9540:  MOV             R0, R11
B9542:  BLX             j_ec_dec_bits
B9546:  MOV             R10, R0
B9548:  MOV             R0, R11
B954A:  MOVS            R1, #3
B954C:  BLX             j_ec_dec_bits
B9550:  MOV             R9, R0
B9552:  MOVS            R0, #0x10
B9554:  LSLS            R0, R6
B9556:  LDR.W           R2, [R11,#0x1C]
B955A:  ADD             R0, R10
B955C:  LDR.W           R1, [R11,#0x14]
B9560:  SUBS            R3, R0, #1
B9562:  CLZ.W           R0, R2
B9566:  ADD             R0, R1
B9568:  LDR.W           R1, [R7,#var_BC]
B956C:  SUBS            R0, #0x1E
B956E:  STR.W           R3, [R7,#var_80]
B9572:  CMP             R0, R1
B9574:  BLE             loc_B9598
B9576:  MOVS            R0, #0
B9578:  B               loc_B95A6
B957A:  MOV.W           R9, #0
B957E:  MOVS            R0, #0
B9580:  LDR.W           R6, [R7,#var_98]
B9584:  B               loc_B95CC
B9586:  MOVS            R0, #0
B9588:  MOV.W           R9, #0
B958C:  STR.W           R0, [R7,#var_80]
B9590:  MOVS            R0, #0
B9592:  LDR.W           R4, [R7,#src]
B9596:  B               loc_B95BA
B9598:  LDR.W           R1, =(unk_58F1D - 0xB95A4)
B959C:  MOV             R0, R11
B959E:  MOVS            R2, #2
B95A0:  ADD             R1, PC; unk_58F1D
B95A2:  BLX             j_ec_dec_icdf
B95A6:  ADD.W           R2, R9, R9,LSL#1
B95AA:  LDR.W           R4, [R7,#src]
B95AE:  LDR.W           R6, [R7,#var_98]
B95B2:  MOV.W           R1, #0xC00
B95B6:  ADD.W           R9, R1, R2,LSL#10
B95BA:  LDR.W           R1, [R11,#0x1C]
B95BE:  LDR.W           R2, [R11,#0x14]
B95C2:  CLZ.W           R1, R1
B95C6:  ADD             R1, R2
B95C8:  SUB.W           R5, R1, #0x20 ; ' '
B95CC:  LDR.W           R1, [R7,#var_90]
B95D0:  STR.W           R0, [R7,#var_84]
B95D4:  MOVS            R0, #0
B95D6:  CMP             R1, #1
B95D8:  STR.W           R0, [R7,#var_B8]
B95DC:  BLT             loc_B960A
B95DE:  LDR.W           R2, [R7,#var_BC]
B95E2:  ADDS            R1, R5, #3
B95E4:  CMP             R1, R2
B95E6:  BGT             loc_B960A
B95E8:  MOV             R0, R11
B95EA:  MOVS            R1, #3
B95EC:  BLX             j_ec_dec_bit_logp
B95F0:  STR.W           R0, [R7,#var_B8]
B95F4:  LDR.W           R1, [R11,#0x1C]
B95F8:  LDR.W           R0, [R11,#0x14]
B95FC:  CLZ.W           R1, R1
B9600:  LDR.W           R4, [R7,#src]
B9604:  ADD             R0, R1
B9606:  SUB.W           R5, R0, #0x20 ; ' '
B960A:  LDR.W           R0, [R7,#var_B8]
B960E:  LDR.W           R1, [R7,#var_CC]
B9612:  CMP             R0, #0
B9614:  MOV             R2, R0
B9616:  ADD.W           R0, R5, #3
B961A:  IT NE
B961C:  MOVNE           R2, R1
B961E:  LDR.W           R1, [R7,#var_BC]
B9622:  STR.W           R2, [R7,#var_F4]
B9626:  CMP             R0, R1
B9628:  BLE             loc_B962E
B962A:  MOVS            R0, #0
B962C:  B               loc_B963A
B962E:  MOV             R0, R11
B9630:  MOVS            R1, #3
B9632:  BLX             j_ec_dec_bit_logp
B9636:  LDR.W           R4, [R7,#src]
B963A:  SUB             SP, SP, #0x10
B963C:  STRD.W          R0, R11, [SP,#0x118+var_118]
B9640:  MOV             R3, R4
B9642:  LDR.W           R5, [R7,#var_A8]
B9646:  LDR.W           R0, [R7,#var_90]
B964A:  LDR.W           R1, [R7,#var_94]
B964E:  STR             R6, [SP,#0x118+var_110]
B9650:  MOV             R2, R5
B9652:  MOV             R6, R0
B9654:  MOV             R0, R8
B9656:  STR             R6, [SP,#0x118+var_10C]
B9658:  BLX             j_unquant_coarse_energy
B965C:  ADD             SP, SP, #0x10
B965E:  LDR.W           R12, [R7,#var_AC]
B9662:  MOVS            R0, #7
B9664:  ADD.W           R0, R0, R12,LSL#2
B9668:  BIC.W           R0, R0, #7
B966C:  SUB.W           R0, SP, R0
B9670:  STR.W           R0, [R7,#var_D8]
B9674:  MOV             SP, R0
B9676:  LDR.W           R3, [R11,#0x1C]
B967A:  MOVS            R1, #4
B967C:  LDR.W           R0, [R11,#0x14]
B9680:  LDR.W           R2, [R11,#4]
B9684:  CLZ.W           R3, R3
B9688:  LDR.W           R4, [R7,#var_B8]
B968C:  ADD             R0, R3
B968E:  SUBS            R0, #0x20 ; ' '
B9690:  CMP             R4, #0
B9692:  MOV.W           R2, R2,LSL#3
B9696:  IT NE
B9698:  MOVNE           R1, #2
B969A:  MOVS            R4, #0
B969C:  CMP             R6, #1
B969E:  BLT             loc_B96AC
B96A0:  ORR.W           R3, R1, #1
B96A4:  ADD             R3, R0
B96A6:  CMP             R3, R2
B96A8:  IT LS
B96AA:  MOVLS           R4, #1
B96AC:  LDR.W           R3, [R7,#var_94]
B96B0:  STR.W           R9, [R7,#var_88]
B96B4:  CMP             R3, R5
B96B6:  STR.W           R11, [R7,#var_8C]
B96BA:  STR.W           R4, [R7,#var_A0]
B96BE:  BGE             loc_B96E6
B96C0:  SUB.W           R8, R2, R4
B96C4:  LDR.W           R2, [R7,#var_B8]
B96C8:  MOV.W           R9, #5
B96CC:  CMP             R2, #0
B96CE:  ADD.W           R2, R0, R1
B96D2:  IT NE
B96D4:  MOVNE.W         R9, #4
B96D8:  LDR.W           R4, [R7,#var_D8]
B96DC:  CMP             R2, R8
B96DE:  BLS             loc_B96EC
B96E0:  MOV.W           R10, #0
B96E4:  B               loc_B9708
B96E6:  MOV.W           R10, #0
B96EA:  B               loc_B9756
B96EC:  MOV             R0, R11
B96EE:  BLX             j_ec_dec_bit_logp
B96F2:  LDR.W           R1, [R11,#0x1C]
B96F6:  MOV             R10, R0
B96F8:  LDR.W           R0, [R11,#0x14]
B96FC:  CLZ.W           R1, R1
B9700:  LDR.W           R12, [R7,#var_AC]
B9704:  ADD             R0, R1
B9706:  SUBS            R0, #0x20 ; ' '
B9708:  LDR.W           R2, [R7,#var_94]
B970C:  ADDS            R1, R2, #1
B970E:  CMP             R1, R5
B9710:  STR.W           R10, [R4,R2,LSL#2]
B9714:  BEQ             loc_B9756
B9716:  SUBS            R1, R5, #1
B9718:  LDR.W           R6, [R7,#var_8C]
B971C:  SUBS            R5, R1, R2
B971E:  ADD.W           R1, R4, R2,LSL#2
B9722:  ADD.W           R11, R1, #4
B9726:  MOV             R4, R10
B9728:  ADD.W           R1, R0, R9
B972C:  CMP             R1, R8
B972E:  BHI             loc_B974E
B9730:  MOV             R0, R6
B9732:  MOV             R1, R9
B9734:  BLX             j_ec_dec_bit_logp
B9738:  LDR             R2, [R6,#0x1C]
B973A:  EORS            R4, R0
B973C:  LDR             R1, [R6,#0x14]
B973E:  ORR.W           R10, R10, R4
B9742:  CLZ.W           R0, R2
B9746:  LDR.W           R12, [R7,#var_AC]
B974A:  ADD             R0, R1
B974C:  SUBS            R0, #0x20 ; ' '
B974E:  STR.W           R4, [R11],#4
B9752:  SUBS            R5, #1
B9754:  BNE             loc_B9728
B9756:  LDR.W           R0, [R7,#var_A0]
B975A:  CMP             R0, #1
B975C:  BNE             loc_B9796
B975E:  LDR.W           R0, =(tf_select_table_ptr - 0xB976C)
B9762:  MOVS            R1, #2
B9764:  LDR.W           R3, [R7,#var_B8]
B9768:  ADD             R0, PC; tf_select_table_ptr
B976A:  LDR.W           R2, [R7,#var_90]
B976E:  LDR.W           R8, [R7,#var_B0]
B9772:  LDR             R0, [R0]; tf_select_table
B9774:  ORR.W           R1, R1, R3,LSL#2
B9778:  ADD             R1, R10
B977A:  LDR.W           R4, [R7,#var_A8]
B977E:  ADD.W           R0, R0, R2,LSL#3
B9782:  ADD.W           R2, R10, R3,LSL#2
B9786:  LDRD.W          R9, R5, [R7,#var_98]
B978A:  LDRB            R1, [R0,R1]
B978C:  LDRB            R0, [R0,R2]
B978E:  CMP             R0, R1
B9790:  BNE             loc_B97AE
B9792:  MOVS            R2, #0
B9794:  B               loc_B97BE
B9796:  MOVS            R2, #0
B9798:  LDR.W           R10, [R7,#var_78]
B979C:  LDR.W           R8, [R7,#var_B0]
B97A0:  LDR.W           R4, [R7,#var_A8]
B97A4:  LDRD.W          R9, R5, [R7,#var_98]
B97A8:  CMP             R5, R4
B97AA:  BLT             loc_B97C6
B97AC:  B               loc_B97F6
B97AE:  LDR.W           R0, [R7,#var_8C]
B97B2:  MOVS            R1, #1
B97B4:  BLX             j_ec_dec_bit_logp
B97B8:  LDR.W           R12, [R7,#var_AC]
B97BC:  LSLS            R2, R0, #1
B97BE:  LDR.W           R10, [R7,#var_78]
B97C2:  CMP             R5, R4
B97C4:  BGE             loc_B97F6
B97C6:  LDR.W           R3, [R7,#var_B8]
B97CA:  SUBS            R1, R4, R5
B97CC:  LDR.W           R6, [R7,#var_90]
B97D0:  LDR.W           R0, [R7,#var_D8]
B97D4:  ADD.W           R2, R2, R3,LSL#2
B97D8:  LDR.W           R3, =(tf_select_table_ptr - 0xB97E4)
B97DC:  ADD.W           R0, R0, R5,LSL#2
B97E0:  ADD             R3, PC; tf_select_table_ptr
B97E2:  LDR             R3, [R3]; tf_select_table
B97E4:  ADD.W           R3, R3, R6,LSL#3
B97E8:  LDR             R6, [R0]
B97EA:  SUBS            R1, #1
B97EC:  ADD             R6, R2
B97EE:  LDRSB           R6, [R3,R6]
B97F0:  STR.W           R6, [R0],#4
B97F4:  BNE             loc_B97E8
B97F6:  LDR.W           R11, [R7,#var_8C]
B97FA:  MOV.W           R6, R12,LSL#2
B97FE:  LDR.W           R1, [R11,#0x1C]
B9802:  LDR.W           R0, [R11,#0x14]
B9806:  CLZ.W           R1, R1
B980A:  ADD             R0, R1
B980C:  LDR.W           R1, [R7,#var_BC]
B9810:  SUBS            R0, #0x1C
B9812:  CMP             R0, R1
B9814:  MOV.W           R0, #2
B9818:  BGT             loc_B9828
B981A:  LDR.W           R1, =(unk_58F20 - 0xB9826)
B981E:  MOV             R0, R11
B9820:  MOVS            R2, #5
B9822:  ADD             R1, PC; unk_58F20
B9824:  BLX             j_ec_dec_icdf
B9828:  SUB.W           LR, R7, #-var_100
B982C:  STR.W           R0, [R7,#var_F8]
B9830:  ADDS            R0, R6, #7
B9832:  STR.W           R6, [LR,#-4]
B9836:  BIC.W           R6, R0, #7
B983A:  SUB.W           R1, SP, R6
B983E:  MOV             SP, R1
B9840:  MOV             R0, R8
B9842:  LDR.W           R8, [R7,#var_90]
B9846:  MOV             R3, R9
B9848:  STR.W           R1, [R7,#var_A0]
B984C:  MOV             R2, R8
B984E:  BLX             j_init_caps
B9852:  STR.W           R6, [R7,#var_D4]
B9856:  SUB.W           R6, SP, R6
B985A:  MOV             SP, R6
B985C:  LDR.W           R0, [R7,#var_D0]
B9860:  MOV.W           R9, R0,LSL#6
B9864:  MOV             R0, R11
B9866:  BLX             j_ec_tell_frac
B986A:  LDR.W           R1, [R7,#var_A4]
B986E:  MOVS            R2, #6
B9870:  MOVS            R3, #0
B9872:  MOV             R11, R5
B9874:  ADDS            R1, #2
B9876:  STR.W           R1, [R7,#var_E0]
B987A:  STR.W           R9, [R7,#var_D0]
B987E:  B               loc_B988E
B9880:  LDR.W           R2, [R7,#var_EC]
B9884:  MOVS            R1, #2
B9886:  SUBS            R2, #1
B9888:  CMP             R2, #2
B988A:  IT LE
B988C:  MOVLE           R2, R1
B988E:  LSLS            R1, R2, #3
B9890:  STR.W           R2, [R7,#var_EC]
B9894:  STR.W           R1, [R7,#var_DC]
B9898:  CMP             R11, R4
B989A:  BGE             loc_B994A
B989C:  LDR.W           R1, [R7,#var_DC]
B98A0:  MOV             R5, R11
B98A2:  ADDS            R2, R1, R0
B98A4:  LDR.W           R1, [R7,#var_E0]
B98A8:  ADD.W           R1, R1, R11,LSL#1
B98AC:  ADD.W           R11, R5, #1
B98B0:  CMP             R2, R9
B98B2:  BLT             loc_B98C2
B98B4:  ADDS            R1, #2
B98B6:  STR.W           R3, [R6,R5,LSL#2]
B98BA:  CMP             R11, R4
B98BC:  MOV             R5, R11
B98BE:  BLT             loc_B98AC
B98C0:  B               loc_B994A
B98C2:  LDRSH.W         R2, [R1,#-2]
B98C6:  MOV.W           R10, #0
B98CA:  LDRSH.W         R1, [R1]
B98CE:  SUBS            R1, R1, R2
B98D0:  LDR.W           R2, [R7,#var_98]
B98D4:  MULS            R1, R2
B98D6:  LSL.W           R1, R1, R8
B98DA:  CMP             R1, #0x30 ; '0'
B98DC:  MOV             R4, R1
B98DE:  MOV.W           R2, R1,LSL#3
B98E2:  IT LE
B98E4:  MOVLE           R4, #0x30 ; '0'
B98E6:  CMP             R2, R4
B98E8:  IT LT
B98EA:  LSLLT           R4, R1, #3
B98EC:  LDR.W           R1, [R7,#var_EC]
B98F0:  STR.W           R4, [R7,#var_A4]
B98F4:  LDR.W           R2, [R7,#var_A0]
B98F8:  LDR.W           R2, [R2,R5,LSL#2]
B98FC:  CMP             R10, R2
B98FE:  BGE             loc_B9936
B9900:  LDR.W           R8, [R7,#var_8C]
B9904:  MOV             R0, R8
B9906:  BLX             j_ec_dec_bit_logp
B990A:  MOV             R4, R0
B990C:  MOV             R0, R8
B990E:  BLX             j_ec_tell_frac
B9912:  CBZ             R4, loc_B9930
B9914:  LDR.W           R1, [R7,#var_A4]
B9918:  ADD.W           R2, R0, #8
B991C:  LDR.W           R8, [R7,#var_90]
B9920:  MOVS            R3, #0
B9922:  SUB.W           R9, R9, R1
B9926:  ADD             R10, R1
B9928:  MOVS            R1, #1
B992A:  CMP             R2, R9
B992C:  BLT             loc_B98F4
B992E:  B               loc_B9936
B9930:  LDR.W           R8, [R7,#var_90]
B9934:  MOVS            R3, #0
B9936:  STR.W           R10, [R6,R5,LSL#2]
B993A:  CMP.W           R10, #1
B993E:  LDR.W           R10, [R7,#var_78]
B9942:  LDR.W           R4, [R7,#var_A8]
B9946:  BLT             loc_B9898
B9948:  B               loc_B9880
B994A:  LDR.W           R1, [R7,#var_D4]
B994E:  SUB.W           R1, SP, R1
B9952:  STR.W           R1, [R7,#var_A4]
B9956:  MOV             SP, R1
B9958:  ADDS            R0, #0x30 ; '0'
B995A:  CMP             R0, R9
B995C:  BLE             loc_B9968
B995E:  MOV.W           R11, #5
B9962:  LDR.W           R5, [R7,#var_8C]
B9966:  B               loc_B997C
B9968:  LDR.W           R1, =(unk_58F24 - 0xB9976)
B996C:  MOVS            R2, #7
B996E:  LDR.W           R5, [R7,#var_8C]
B9972:  ADD             R1, PC; unk_58F24
B9974:  MOV             R0, R5
B9976:  BLX             j_ec_dec_icdf
B997A:  MOV             R11, R0
B997C:  MOV             R0, R5
B997E:  LDR.W           R9, [R7,#var_98]
B9982:  BLX             j_ec_tell_frac
B9986:  LDR.W           R1, [R7,#var_D0]
B998A:  MOVS            R5, #0
B998C:  MOV             R3, R6
B998E:  CMP.W           R8, #2
B9992:  SUB.W           R0, R1, R0
B9996:  SUB.W           R12, R0, #1
B999A:  BLT             loc_B99B4
B999C:  LDR.W           R1, [R7,#var_B8]
B99A0:  MOVS            R2, #0
B99A2:  CBZ             R1, loc_B99B6
B99A4:  MOVS            R1, #0x10
B99A6:  MOVS            R2, #0
B99A8:  ADD.W           R1, R1, R8,LSL#3
B99AC:  CMP             R12, R1
B99AE:  IT GE
B99B0:  MOVGE           R2, #1
B99B2:  B               loc_B99B6
B99B4:  MOVS            R2, #0
B99B6:  LDR.W           R1, [R7,#var_D4]
B99BA:  SUB.W           LR, SP, R1
B99BE:  MOV             SP, LR
B99C0:  SUB.W           R0, SP, R1
B99C4:  MOV             SP, R0
B99C6:  SUB             SP, SP, #0x40 ; '@'
B99C8:  STR             R5, [SP,#0x148+var_110]
B99CA:  CMP             R2, #0
B99CC:  STRD.W          R5, R5, [SP,#0x148+var_118]
B99D0:  LDR.W           R1, [R7,#var_8C]
B99D4:  STRD.W          R8, R1, [SP,#0x148+var_120]
B99D8:  SUB.W           R1, R7, #-var_70
B99DC:  STR             R1, [SP,#0x148+var_134]
B99DE:  STR.W           R2, [R7,#var_DC]
B99E2:  IT NE
B99E4:  MOVNE           R2, #8
B99E6:  STR.W           R9, [SP,#0x148+var_124]
B99EA:  SUB.W           R1, R12, R2
B99EE:  STR             R0, [SP,#0x148+var_128]
B99F0:  STR.W           R0, [R7,#var_EC]
B99F4:  SUB.W           R0, R7, #-var_6C
B99F8:  STR             R1, [SP,#0x148+var_138]
B99FA:  STR             R0, [SP,#0x148+var_13C]
B99FC:  SUB.W           R0, R7, #-var_68
B9A00:  STR.W           R2, [R7,#var_E0]
B9A04:  MOV             R2, R4
B9A06:  STRD.W          R11, R0, [SP,#0x148+var_144]
B9A0A:  MOV             R11, R9
B9A0C:  LDR.W           R9, [R7,#var_94]
B9A10:  LDR.W           R6, [R7,#var_B0]
B9A14:  LDR.W           R8, [R7,#var_A4]
B9A18:  LDR.W           R0, [R7,#var_A0]
B9A1C:  MOV             R1, R9
B9A1E:  STR.W           R8, [SP,#0x148+var_12C]
B9A22:  STR.W           LR, [SP,#0x148+var_130]
B9A26:  STR             R0, [SP,#0x148+var_148]
B9A28:  MOV             R0, R6
B9A2A:  STR.W           LR, [R7,#var_D4]
B9A2E:  BLX             j_clt_compute_allocation
B9A32:  ADD             SP, SP, #0x40 ; '@'
B9A34:  STR.W           R0, [R7,#var_A0]
B9A38:  SUB             SP, SP, #0x10
B9A3A:  LDR.W           R0, [R7,#var_8C]
B9A3E:  MOV             R1, R9
B9A40:  STR.W           R8, [SP,#0x118+var_118]
B9A44:  MOV             R2, R4
B9A46:  STRD.W          R0, R11, [SP,#0x118+var_114]
B9A4A:  MOV             R0, R6
B9A4C:  LDR.W           R3, [R7,#src]
B9A50:  BLX             j_unquant_fine_energy
B9A54:  ADD             SP, SP, #0x10
B9A56:  LDR.W           R0, [R7,#var_74]
B9A5A:  MOV.W           R1, #0x800
B9A5E:  LDR.W           R11, [R7,#var_7C]
B9A62:  SUB.W           R4, R7, #-var_2C
B9A66:  ADD.W           R0, R0, R0,LSR#31
B9A6A:  ADD.W           R0, R1, R0,LSR#1
B9A6E:  SUB.W           R0, R0, R11
B9A72:  LSLS            R6, R0, #2
B9A74:  LDR.W           R0, [R4,R5,LSL#2]; dest
B9A78:  MOV             R2, R6; n
B9A7A:  ADD.W           R1, R0, R11,LSL#2; src
B9A7E:  BLX             j_memmove
B9A82:  ADDS            R5, #1
B9A84:  CMP             R5, R10
B9A86:  BLT             loc_B9A74
B9A88:  LDR.W           R0, [R7,#var_AC]
B9A8C:  LDR.W           R9, [R7,#var_98]
B9A90:  MUL.W           R10, R0, R9
B9A94:  MUL.W           R0, R9, R11
B9A98:  ADD.W           R1, R10, #7
B9A9C:  BIC.W           R1, R1, #7
B9AA0:  SUB.W           R2, SP, R1
B9AA4:  MOVS            R1, #7
B9AA6:  ADD.W           R0, R1, R0,LSL#1
B9AAA:  BIC.W           R0, R0, #7
B9AAE:  MOV             SP, R2
B9AB0:  SUB.W           R4, SP, R0
B9AB4:  MOV             SP, R4
B9AB6:  LDR.W           R6, [R7,#var_C0]
B9ABA:  LDRD.W          R0, R1, [R6,#0x20]
B9ABE:  LDR.W           R3, [R7,#var_68]
B9AC2:  LDRD.W          R5, R12, [R7,#var_70]
B9AC6:  SUB             SP, SP, #0x50 ; 'P'
B9AC8:  STRD.W          R1, R0, [SP,#0x158+var_114]
B9ACC:  ADD.W           R0, R6, #0x28 ; '('
B9AD0:  LDR.W           R1, [R7,#var_D0]
B9AD4:  CMP.W           R9, #2
B9AD8:  LDR.W           R6, [R7,#var_E0]
B9ADC:  STR             R3, [SP,#0x158+var_138]
B9ADE:  SUB.W           R1, R1, R6
B9AE2:  LDR.W           R3, [R7,#var_D8]
B9AE6:  STRD.W          R3, R1, [SP,#0x158+var_134]
B9AEA:  LDR.W           R6, [R7,#var_8C]
B9AEE:  LDR.W           R1, [R7,#var_90]
B9AF2:  STR             R5, [SP,#0x158+var_12C]
B9AF4:  STR             R6, [SP,#0x158+var_128]; int
B9AF6:  STR             R1, [SP,#0x158+var_124]
B9AF8:  LDR.W           R1, [R7,#var_A0]
B9AFC:  STRD.W          R1, R0, [SP,#0x158+var_120]
B9B00:  MOV.W           R0, #0
B9B04:  MOV.W           R1, #0
B9B08:  STR             R0, [SP,#0x158+var_118]
B9B0A:  IT EQ
B9B0C:  ADDEQ.W         R1, R4, R11,LSL#1
B9B10:  STR.W           R4, [R7,#var_A0]
B9B14:  STRD.W          R4, R1, [SP,#0x158+var_158]
B9B18:  STR.W           R2, [R7,#var_D0]
B9B1C:  STRD.W          R2, R0, [SP,#0x158+var_150]
B9B20:  LDR.W           R0, [R7,#var_D4]
B9B24:  STR             R0, [SP,#0x158+var_148]
B9B26:  LDR.W           R0, [R7,#var_F4]
B9B2A:  STR             R0, [SP,#0x158+var_144]
B9B2C:  LDR.W           R0, [R7,#var_F8]
B9B30:  STRD.W          R0, R12, [SP,#0x158+var_140]
B9B34:  MOVS            R0, #0
B9B36:  LDR.W           R4, [R7,#var_B0]
B9B3A:  LDR.W           R8, [R7,#var_94]
B9B3E:  LDR.W           R5, [R7,#var_A8]
B9B42:  MOV             R1, R4
B9B44:  MOV             R2, R8
B9B46:  MOV             R3, R5
B9B48:  BLX             j_quant_all_bands
B9B4C:  ADD             SP, SP, #0x50 ; 'P'
B9B4E:  LDR.W           R0, [R7,#var_DC]
B9B52:  CMP             R0, #1
B9B54:  BNE             loc_B9BF4
B9B56:  MOV             R0, R6
B9B58:  MOVS            R1, #1
B9B5A:  BLX             j_ec_dec_bits
B9B5E:  MOV             R9, R0
B9B60:  LDR             R0, [R6,#0x14]
B9B62:  LDR             R1, [R6,#0x1C]
B9B64:  SUB             SP, SP, #0x18
B9B66:  LDR.W           R2, [R7,#var_BC]
B9B6A:  CLZ.W           R1, R1
B9B6E:  ADDS            R2, #0x20 ; ' '
B9B70:  SUBS            R0, R2, R0
B9B72:  MOV             R2, R5
B9B74:  SUBS            R0, R0, R1
B9B76:  LDR.W           R1, [R7,#var_A4]
B9B7A:  STR             R1, [SP,#0x120+var_120]
B9B7C:  LDR.W           R1, [R7,#var_EC]
B9B80:  STRD.W          R1, R0, [SP,#0x120+var_11C]
B9B84:  MOV             R1, R8
B9B86:  LDR.W           R3, [R7,#src]
B9B8A:  LDR.W           R0, [R7,#var_98]
B9B8E:  STR             R6, [SP,#0x120+var_114]
B9B90:  STR             R0, [SP,#0x120+var_110]
B9B92:  MOV             R0, R4
B9B94:  BLX             j_unquant_energy_finalise
B9B98:  ADD             SP, SP, #0x18
B9B9A:  CMP.W           R9, #0
B9B9E:  LDR.W           R9, [R7,#var_98]
B9BA2:  LDR.W           R6, [R7,#var_C0]
B9BA6:  LDR.W           R5, [R7,#var_90]
B9BAA:  LDR.W           R8, [R7,#var_A0]
B9BAE:  BEQ             loc_B9C36
B9BB0:  LDRD.W          R0, R1, [R6,#0x24]
B9BB4:  SUB             SP, SP, #0x28 ; '('
B9BB6:  STRD.W          R1, R0, [SP,#0x130+var_110]
B9BBA:  MOV             R1, R8
B9BBC:  STRD.W          R9, R11, [SP,#0x130+var_130]
B9BC0:  MOV             R3, R5
B9BC2:  LDR.W           R0, [R7,#var_94]
B9BC6:  STR             R0, [SP,#0x130+var_128]
B9BC8:  LDR.W           R0, [R7,#var_A8]
B9BCC:  STR             R0, [SP,#0x130+var_124]
B9BCE:  LDR.W           R0, [R7,#src]
B9BD2:  STR             R0, [SP,#0x130+var_120]
B9BD4:  LDR.W           R0, [R7,#var_E4]
B9BD8:  STR             R0, [SP,#0x130+var_11C]
B9BDA:  LDR.W           R0, [R7,#var_E8]
B9BDE:  LDR.W           R2, [R7,#var_D0]
B9BE2:  STR             R0, [SP,#0x130+var_118]
B9BE4:  LDR.W           R0, [R7,#var_D4]
B9BE8:  STR             R0, [SP,#0x130+var_114]
B9BEA:  MOV             R0, R4
B9BEC:  BLX             j_anti_collapse
B9BF0:  ADD             SP, SP, #0x28 ; '('
B9BF2:  B               loc_B9C36
B9BF4:  LDR             R0, [R6,#0x14]
B9BF6:  LDR             R1, [R6,#0x1C]
B9BF8:  SUB             SP, SP, #0x18
B9BFA:  LDR.W           R2, [R7,#var_BC]
B9BFE:  CLZ.W           R1, R1
B9C02:  ADDS            R2, #0x20 ; ' '
B9C04:  SUBS            R0, R2, R0
B9C06:  MOV             R2, R5
B9C08:  SUBS            R0, R0, R1
B9C0A:  LDR.W           R1, [R7,#var_A4]
B9C0E:  STR             R1, [SP,#0x120+var_120]
B9C10:  LDR.W           R1, [R7,#var_EC]
B9C14:  STRD.W          R1, R0, [SP,#0x120+var_11C]; int
B9C18:  MOV             R0, R4
B9C1A:  STRD.W          R6, R9, [SP,#0x120+var_114]
B9C1E:  MOV             R1, R8
B9C20:  LDR.W           R3, [R7,#src]
B9C24:  BLX             j_unquant_energy_finalise
B9C28:  ADD             SP, SP, #0x18
B9C2A:  LDR.W           R6, [R7,#var_C0]
B9C2E:  LDR.W           R5, [R7,#var_90]
B9C32:  LDR.W           R8, [R7,#var_A0]
B9C36:  MOVS            R0, #0
B9C38:  CMP.W           R10, #0
B9C3C:  IT GT
B9C3E:  MOVGT           R0, #1
B9C40:  LDR.W           R1, [R7,#var_FC]
B9C44:  ANDS            R0, R1
B9C46:  CMP             R0, #1
B9C48:  BNE             loc_B9C6E
B9C4A:  LDR.W           R1, [R7,#var_74]
B9C4E:  MOVW            R0, #0x2030
B9C52:  ADD.W           R0, R0, R1,LSL#2
B9C56:  LDR.W           R1, [R7,#var_78]
B9C5A:  MLA.W           R0, R1, R0, R6
B9C5E:  MOV.W           R1, #0x9000
B9C62:  ADDS            R0, #0x58 ; 'X'
B9C64:  STRH.W          R1, [R0],#2
B9C68:  SUBS.W          R10, R10, #1
B9C6C:  BNE             loc_B9C64
B9C6E:  LDR             R0, [R6,#0x10]
B9C70:  LDR             R1, [R6,#0x24]
B9C72:  SUB             SP, SP, #0x28 ; '('
B9C74:  STR             R1, [SP,#0x130+var_110]; int
B9C76:  SUB.W           R6, R7, #-var_34
B9C7A:  LDR.W           R1, [R7,#var_94]
B9C7E:  STR             R1, [SP,#0x130+var_130]; int
B9C80:  MOV             R2, R6; int
B9C82:  LDR.W           R1, [R7,#var_F0]
B9C86:  STRD.W          R1, R9, [SP,#0x130+var_12C]; int
B9C8A:  SUB.W           R9, R7, #-var_100
B9C8E:  LDR.W           R1, [R7,#var_78]
B9C92:  STR             R1, [SP,#0x130+var_124]; int
B9C94:  LDR.W           R1, [R7,#var_B8]
B9C98:  STRD.W          R1, R5, [SP,#0x130+var_120]; int
B9C9C:  MOV             R1, R8; int
B9C9E:  LDR.W           R3, [R7,#src]; int
B9CA2:  STR             R0, [SP,#0x130+var_118]; int
B9CA4:  LDR.W           R0, [R9]
B9CA8:  STR             R0, [SP,#0x130+var_114]; int
B9CAA:  MOV             R0, R4; int
B9CAC:  BL              sub_BB284
B9CB0:  ADD             SP, SP, #0x28 ; '('
B9CB2:  CMP             R5, #0
B9CB4:  BEQ             loc_B9D6C
B9CB6:  LDR.W           R8, [R7,#var_C0]
B9CBA:  MOVS            R5, #0
B9CBC:  LDR.W           R9, [R7,#var_B0]
B9CC0:  LDR.W           R12, [R8,#0x24]
B9CC4:  MOVS            R0, #0xF
B9CC6:  LDRD.W          R3, R2, [R8,#0x3C]
B9CCA:  LDRSH.W         LR, [R8,#0x46]
B9CCE:  CMP             R3, #0xF
B9CD0:  IT LE
B9CD2:  MOVLE           R3, R0
B9CD4:  CMP             R2, #0xF
B9CD6:  IT LE
B9CD8:  MOVLE           R2, R0
B9CDA:  SUB.W           R0, R7, #-var_34
B9CDE:  STRD.W          R3, R2, [R8,#0x3C]
B9CE2:  LDR.W           R6, [R0,R5,LSL#2]
B9CE6:  LDRSH.W         R4, [R8,#0x44]
B9CEA:  LDRD.W          R11, R1, [R8,#0x48]
B9CEE:  LDR.W           R10, [R9,#0x34]
B9CF2:  LDR.W           R0, [R9,#0x24]
B9CF6:  SUB             SP, SP, #0x20 ; ' '
B9CF8:  STRD.W          R0, LR, [SP,#0x128+var_128]
B9CFC:  MOV             R0, R6
B9CFE:  STRD.W          R4, R1, [SP,#0x128+var_120]
B9D02:  MOV             R1, R6
B9D04:  STRD.W          R11, R10, [SP,#0x128+var_118]
B9D08:  LDR.W           R11, [R7,#var_74]
B9D0C:  STRD.W          R11, R12, [SP,#0x128+var_110]
B9D10:  BLX             j_comb_filter
B9D14:  ADD             SP, SP, #0x20 ; ' '
B9D16:  LDR.W           R10, [R8,#0x48]
B9D1A:  LDR.W           R0, [R9,#0x24]
B9D1E:  LDR.W           R12, [R9,#0x34]
B9D22:  LDRSH.W         R3, [R8,#0x44]
B9D26:  LDR.W           LR, [R8,#0x24]
B9D2A:  LDR.W           R2, [R8,#0x3C]
B9D2E:  SUB             SP, SP, #0x20 ; ' '
B9D30:  LDR.W           R1, [R7,#var_88]
B9D34:  LDR.W           R4, [R7,#var_7C]
B9D38:  SXTH            R1, R1
B9D3A:  SUBS            R4, R4, R0
B9D3C:  STRD.W          R4, R3, [SP,#0x128+var_128]
B9D40:  ADD.W           R0, R6, R0,LSL#2
B9D44:  STRD.W          R1, R10, [SP,#0x128+var_120]
B9D48:  LDR.W           R1, [R7,#var_84]
B9D4C:  LDR.W           R10, [R7,#var_78]
B9D50:  STRD.W          R1, R12, [SP,#0x128+var_118]
B9D54:  MOV             R1, R0
B9D56:  STRD.W          R11, LR, [SP,#0x128+var_110]
B9D5A:  LDR.W           R3, [R7,#var_80]
B9D5E:  BLX             j_comb_filter
B9D62:  ADD             SP, SP, #0x20 ; ' '
B9D64:  ADDS            R5, #1
B9D66:  CMP             R5, R10
B9D68:  BLT             loc_B9CC0
B9D6A:  B               loc_B9DD6
B9D6C:  LDR.W           R8, [R7,#var_C0]
B9D70:  MOVS            R4, #0
B9D72:  LDR.W           R9, [R7,#var_B0]
B9D76:  LDR.W           R12, [R8,#0x24]
B9D7A:  MOVS            R0, #0xF
B9D7C:  LDRD.W          R3, R2, [R8,#0x3C]
B9D80:  LDRSH.W         LR, [R8,#0x46]
B9D84:  CMP             R3, #0xF
B9D86:  IT LE
B9D88:  MOVLE           R3, R0
B9D8A:  CMP             R2, #0xF
B9D8C:  IT LE
B9D8E:  MOVLE           R2, R0
B9D90:  STRD.W          R3, R2, [R8,#0x3C]
B9D94:  LDR.W           R0, [R6,R4,LSL#2]
B9D98:  LDRSH.W         R11, [R8,#0x44]
B9D9C:  LDRD.W          R10, R6, [R8,#0x48]
B9DA0:  LDR.W           R1, [R9,#0x24]
B9DA4:  LDR.W           R5, [R9,#0x34]
B9DA8:  SUB             SP, SP, #0x20 ; ' '
B9DAA:  STRD.W          R1, LR, [SP,#0x128+var_128]
B9DAE:  STRD.W          R11, R6, [SP,#0x128+var_120]
B9DB2:  SUB.W           R6, R7, #-var_34
B9DB6:  LDR.W           R1, [R7,#var_74]
B9DBA:  STR.W           R10, [SP,#0x128+var_118]
B9DBE:  LDR.W           R10, [R7,#var_78]
B9DC2:  STR             R5, [SP,#0x128+var_114]
B9DC4:  STRD.W          R1, R12, [SP,#0x128+var_110]
B9DC8:  MOV             R1, R0
B9DCA:  BLX             j_comb_filter
B9DCE:  ADD             SP, SP, #0x20 ; ' '
B9DD0:  ADDS            R4, #1
B9DD2:  CMP             R4, R10
B9DD4:  BLT             loc_B9D76
B9DD6:  LDR.W           R1, [R8,#0x48]
B9DDA:  LDRH.W          R2, [R8,#0x44]
B9DDE:  LDR.W           R3, [R7,#var_88]
B9DE2:  LDR.W           R0, [R8,#0x3C]
B9DE6:  STRH.W          R3, [R8,#0x44]
B9DEA:  STRH.W          R2, [R8,#0x46]
B9DEE:  LDR.W           R2, [R7,#var_84]
B9DF2:  STRD.W          R2, R1, [R8,#0x48]
B9DF6:  LDR.W           R1, [R7,#var_80]
B9DFA:  STRD.W          R1, R0, [R8,#0x3C]
B9DFE:  LDR.W           R0, [R7,#var_90]
B9E02:  CMP             R0, #0
B9E04:  ITTT NE
B9E06:  STRHNE.W        R3, [R8,#0x46]
B9E0A:  STRNE.W         R1, [R8,#0x40]
B9E0E:  STRNE.W         R2, [R8,#0x4C]
B9E12:  LDR.W           R0, [R7,#var_98]
B9E16:  LDR.W           R9, [R7,#var_9C]
B9E1A:  LDRD.W          LR, R4, [R7,#var_AC]
B9E1E:  CMP             R0, #1
B9E20:  LDR.W           R11, [R7,#var_94]
B9E24:  LDR.W           R5, [R7,#n]
B9E28:  BNE             loc_B9E3C
B9E2A:  LDR.W           R1, [R7,#src]; src
B9E2E:  MOV             R2, R5; n
B9E30:  ADD.W           R0, R1, LR,LSL#1; dest
B9E34:  BLX             j_memcpy
B9E38:  LDR.W           LR, [R7,#var_AC]
B9E3C:  LDR.W           R0, [R7,#var_B8]
B9E40:  CBZ             R0, loc_B9E74
B9E42:  CMP             R5, #1
B9E44:  BLT             loc_B9EE6
B9E46:  LDR.W           R1, [R7,#var_74]
B9E4A:  MOVW            R0, #0x2030
B9E4E:  ADD.W           R0, R0, R1,LSL#2
B9E52:  MLA.W           R0, R10, R0, R8
B9E56:  ADDS            R0, #0x58 ; 'X'
B9E58:  LDRSH.W         R1, [R0]
B9E5C:  LDRSH.W         R2, [R0,LR,LSL#2]
B9E60:  CMP             R2, R1
B9E62:  IT LT
B9E64:  MOVLT           R1, R2
B9E66:  SUBS            R5, #1
B9E68:  STRH.W          R1, [R0,LR,LSL#2]
B9E6C:  ADD.W           R0, R0, #2
B9E70:  BNE             loc_B9E58
B9E72:  B               loc_B9EE6
B9E74:  SUB.W           LR, R7, #-var_100
B9E78:  LDRD.W          R0, R6, [R7,#var_E8]; dest
B9E7C:  MOV             R4, R9
B9E7E:  MOV             R1, R6; src
B9E80:  LDR.W           R9, [LR,#-4]
B9E84:  MOV             R2, R9; n
B9E86:  BLX             j_memcpy
B9E8A:  LDR.W           R1, [R7,#src]; src
B9E8E:  MOV             R2, R9; n
B9E90:  MOV             R0, R6; dest
B9E92:  MOV             R9, R4
B9E94:  LDR.W           R4, [R7,#var_A8]
B9E98:  BLX             j_memcpy
B9E9C:  LDR.W           R1, [R8,#0x34]
B9EA0:  MOV.W           R0, #0x400
B9EA4:  LDR.W           LR, [R7,#var_AC]
B9EA8:  CMP             R1, #0xA
B9EAA:  LDR.W           R1, [R7,#var_CC]
B9EAE:  IT LT
B9EB0:  SXTHLT          R0, R1
B9EB2:  CMP             R5, #1
B9EB4:  BLT             loc_B9EE6
B9EB6:  LDR.W           R2, [R7,#var_74]
B9EBA:  MOVW            R1, #0x2030
B9EBE:  ADD.W           R1, R1, R2,LSL#2
B9EC2:  ADD.W           R2, LR, LR,LSL#1
B9EC6:  MLA.W           R1, R10, R1, R8
B9ECA:  LSLS            R2, R2, #2
B9ECC:  ADDS            R1, #0x58 ; 'X'
B9ECE:  LDRSH           R3, [R1,R2]
B9ED0:  LDRSH.W         R6, [R1]
B9ED4:  ADD             R3, R0
B9ED6:  CMP             R3, R6
B9ED8:  IT LT
B9EDA:  MOVLT           R6, R3
B9EDC:  SUBS            R5, #1
B9EDE:  STRH            R6, [R1,R2]
B9EE0:  ADD.W           R1, R1, #2
B9EE4:  BNE             loc_B9ECE
B9EE6:  CMP.W           R11, #1
B9EEA:  BLT.W           loc_BA016
B9EEE:  LDR.W           R1, [R7,#var_74]
B9EF2:  MOVW            R0, #0x2030
B9EF6:  MOVS            R3, #0
B9EF8:  MOV.W           R6, #0x9000
B9EFC:  MOVS            R5, #0
B9EFE:  ADD.W           R0, R0, R1,LSL#2
B9F02:  MLA.W           R0, R10, R0, R8
B9F06:  ADDS            R0, #0x58 ; 'X'
B9F08:  ADD.W           R1, R0, LR,LSL#2
B9F0C:  ADD.W           R2, R0, LR,LSL#3
B9F10:  STRH.W          R3, [R0,R5,LSL#1]
B9F14:  STRH.W          R6, [R2,R5,LSL#1]
B9F18:  STRH.W          R6, [R1,R5,LSL#1]
B9F1C:  ADDS            R5, #1
B9F1E:  CMP             R11, R5
B9F20:  BNE             loc_B9F10
B9F22:  CMP             R4, LR
B9F24:  BGE             loc_B9F68
B9F26:  LDR.W           R1, [R7,#var_74]
B9F2A:  MOVW            R0, #0x2030
B9F2E:  LDR.W           R2, [R7,#var_A8]
B9F32:  MOVS            R6, #0
B9F34:  MOV.W           R5, #0x9000
B9F38:  MOVS            R4, #0
B9F3A:  ADD.W           R0, R0, R1,LSL#2
B9F3E:  MUL.W           R1, R10, R0
B9F42:  SUB.W           R0, LR, R2
B9F46:  ADD.W           R1, R1, R2,LSL#1
B9F4A:  ADD             R1, R8
B9F4C:  ADDS            R1, #0x58 ; 'X'
B9F4E:  ADD.W           R2, R1, LR,LSL#2
B9F52:  ADD.W           R3, R1, LR,LSL#3
B9F56:  STRH.W          R6, [R1,R4,LSL#1]
B9F5A:  STRH.W          R5, [R3,R4,LSL#1]
B9F5E:  STRH.W          R5, [R2,R4,LSL#1]
B9F62:  ADDS            R4, #1
B9F64:  CMP             R0, R4
B9F66:  BNE             loc_B9F56
B9F68:  LDR.W           R1, [R7,#var_74]
B9F6C:  MOVW            R0, #0x2030
B9F70:  ADD.W           R12, LR, LR,LSL#2
B9F74:  MOVS            R5, #0
B9F76:  MOV.W           R4, #0x9000
B9F7A:  ADD.W           R0, R0, R1,LSL#2
B9F7E:  MUL.W           R0, R10, R0
B9F82:  ADD.W           R1, R0, LR,LSL#1
B9F86:  ADD             R1, R8
B9F88:  ADD.W           R2, R1, #0x58 ; 'X'
B9F8C:  ADD.W           R1, R0, R12,LSL#1
B9F90:  ADD             R1, R8
B9F92:  ADD.W           R3, R1, #0x58 ; 'X'
B9F96:  ADD.W           R1, LR, LR,LSL#1
B9F9A:  ADD.W           R0, R0, R1,LSL#1
B9F9E:  ADD             R0, R8
B9FA0:  ADD.W           R6, R0, #0x58 ; 'X'
B9FA4:  MOVS            R0, #0
B9FA6:  STRH.W          R5, [R2,R0,LSL#1]
B9FAA:  STRH.W          R4, [R3,R0,LSL#1]
B9FAE:  STRH.W          R4, [R6,R0,LSL#1]
B9FB2:  ADDS            R0, #1
B9FB4:  CMP             R11, R0
B9FB6:  BNE             loc_B9FA6
B9FB8:  LDR.W           R5, [R7,#var_A8]
B9FBC:  CMP             R5, LR
B9FBE:  BGE             loc_BA0B2
B9FC0:  LDR.W           R2, [R7,#var_74]
B9FC4:  MOVW            R0, #0x2030
B9FC8:  MOVS            R4, #0
B9FCA:  ADD.W           R0, R0, R2,LSL#2
B9FCE:  SUB.W           R2, LR, R5
B9FD2:  MUL.W           R6, R10, R0
B9FD6:  ADD.W           R0, R6, LR,LSL#1
B9FDA:  ADD.W           R1, R6, R1,LSL#1
B9FDE:  ADD.W           R0, R0, R5,LSL#1
B9FE2:  ADD.W           R1, R1, R5,LSL#1
B9FE6:  ADD             R0, R8
B9FE8:  ADD             R1, R8
B9FEA:  ADD.W           R3, R0, #0x58 ; 'X'
B9FEE:  ADD.W           R0, R6, R12,LSL#1
B9FF2:  ADD.W           R0, R0, R5,LSL#1
B9FF6:  ADDS            R1, #0x58 ; 'X'
B9FF8:  ADD             R0, R8
B9FFA:  MOVS            R6, #0
B9FFC:  ADDS            R0, #0x58 ; 'X'
B9FFE:  MOV.W           R5, #0x9000
BA002:  STRH.W          R6, [R3,R4,LSL#1]
BA006:  STRH.W          R5, [R0,R4,LSL#1]
BA00A:  STRH.W          R5, [R1,R4,LSL#1]
BA00E:  ADDS            R4, #1
BA010:  CMP             R2, R4
BA012:  BNE             loc_BA002
BA014:  B               loc_BA0B2
BA016:  CMP             R4, LR
BA018:  BGE             loc_BA0B2
BA01A:  LDR.W           R1, [R7,#var_74]
BA01E:  MOVW            R0, #0x2030
BA022:  MOVS            R6, #0
BA024:  MOV.W           R5, #0x9000
BA028:  ADD.W           R0, R0, R1,LSL#2
BA02C:  MUL.W           R1, R10, R0
BA030:  SUB.W           R0, LR, R4
BA034:  ADD.W           R1, R1, R4,LSL#1
BA038:  MOVS            R4, #0
BA03A:  ADD             R1, R8
BA03C:  ADDS            R1, #0x58 ; 'X'
BA03E:  ADD.W           R2, R1, LR,LSL#2
BA042:  ADD.W           R3, R1, LR,LSL#3
BA046:  STRH.W          R6, [R1,R4,LSL#1]
BA04A:  STRH.W          R5, [R3,R4,LSL#1]
BA04E:  STRH.W          R5, [R2,R4,LSL#1]
BA052:  ADDS            R4, #1
BA054:  CMP             R0, R4
BA056:  BNE             loc_BA046
BA058:  LDR.W           R2, [R7,#var_74]
BA05C:  MOVW            R1, #0x2030
BA060:  LDR.W           R5, [R7,#var_A8]
BA064:  ADD.W           R6, LR, LR,LSL#1
BA068:  MOVS            R4, #0
BA06A:  ADD.W           R1, R1, R2,LSL#2
BA06E:  ADD.W           R2, LR, LR,LSL#2
BA072:  MUL.W           R3, R10, R1
BA076:  ADD.W           R1, R3, LR,LSL#1
BA07A:  ADD.W           R2, R3, R2,LSL#1
BA07E:  ADD.W           R3, R3, R6,LSL#1
BA082:  ADD.W           R1, R1, R5,LSL#1
BA086:  ADD.W           R2, R2, R5,LSL#1
BA08A:  ADD.W           R3, R3, R5,LSL#1
BA08E:  ADD             R1, R8
BA090:  ADD             R2, R8
BA092:  ADD             R3, R8
BA094:  ADDS            R1, #0x58 ; 'X'
BA096:  ADDS            R2, #0x58 ; 'X'
BA098:  ADDS            R3, #0x58 ; 'X'
BA09A:  MOVS            R6, #0
BA09C:  MOV.W           R5, #0x9000
BA0A0:  STRH.W          R6, [R1,R4,LSL#1]
BA0A4:  STRH.W          R5, [R2,R4,LSL#1]
BA0A8:  STRH.W          R5, [R3,R4,LSL#1]
BA0AC:  ADDS            R4, #1
BA0AE:  CMP             R0, R4
BA0B0:  BNE             loc_BA0A0
BA0B2:  LDR.W           R4, [R7,#var_8C]
BA0B6:  LDR.W           R1, [R8,#0x10]
BA0BA:  LDR             R0, [R4,#0x1C]
BA0BC:  STR.W           R0, [R8,#0x28]
BA0C0:  SUB             SP, SP, #0x10
BA0C2:  LDR.W           R2, [R7,#var_B0]
BA0C6:  ADD.W           R0, R8, #0x50 ; 'P'
BA0CA:  MOV             R3, R10
BA0CC:  ADDS            R2, #0x10
BA0CE:  STRD.W          R1, R2, [SP,#0x118+var_118]
BA0D2:  MOV             R1, R9
BA0D4:  STR             R0, [SP,#0x118+var_110]
BA0D6:  LDR             R0, [R7,#arg_8]
BA0D8:  LDR.W           R2, [R7,#var_7C]
BA0DC:  STR             R0, [SP,#0x118+var_10C]
BA0DE:  SUB.W           R0, R7, #-var_34
BA0E2:  BL              sub_BAF30
BA0E6:  ADD             SP, SP, #0x10
BA0E8:  MOVS            R0, #0
BA0EA:  STR.W           R0, [R8,#0x34]
BA0EE:  LDR             R1, [R4,#0x1C]
BA0F0:  LDR             R0, [R4,#0x14]
BA0F2:  CLZ.W           R1, R1
BA0F6:  ADD             R0, R1
BA0F8:  LDR.W           R1, [R7,#var_BC]
BA0FC:  SUBS            R0, #0x20 ; ' '
BA0FE:  CMP             R0, R1
BA100:  BLE             loc_BA108
BA102:  MOV             R0, #0xFFFFFFFD
BA106:  B               loc_BA120
BA108:  LDR             R0, [R4,#0x2C]
BA10A:  CMP             R0, #0
BA10C:  ITT NE
BA10E:  MOVNE           R0, #1
BA110:  STRNE.W         R0, [R8,#0x2C]
BA114:  LDR.W           R1, [R8,#0x10]
BA118:  LDR.W           R0, [R7,#var_C4]
BA11C:  BLX             sub_108848
BA120:  LDR             R1, =(__stack_chk_guard_ptr - 0xBA12A)
BA122:  LDR.W           R2, [R7,#var_24]
BA126:  ADD             R1, PC; __stack_chk_guard_ptr
BA128:  LDR             R1, [R1]; __stack_chk_guard
BA12A:  LDR             R1, [R1]
BA12C:  SUBS            R1, R1, R2
BA12E:  ITTTT EQ
BA130:  SUBEQ.W         R4, R7, #-var_1C
BA134:  MOVEQ           SP, R4
BA136:  POPEQ.W         {R8-R11}
BA13A:  POPEQ           {R4-R7,PC}
BA13C:  BLX             __stack_chk_fail
