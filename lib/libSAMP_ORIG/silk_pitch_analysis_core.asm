; =========================================================
; Game Engine Function: silk_pitch_analysis_core
; Address            : 0xCE290 - 0xCF000
; =========================================================

CE290:  PUSH            {R4-R7,LR}
CE292:  ADD             R7, SP, #0xC
CE294:  PUSH.W          {R8-R11}
CE298:  SUB             SP, SP, #0x11C
CE29A:  MOV             R6, SP
CE29C:  MOV             R5, R0
CE29E:  STRD.W          R2, R3, [R6,#0x138+var_12C]
CE2A2:  SUB.W           R8, R7, #-var_D8
CE2A6:  STR             R1, [R6,#0x138+var_120]
CE2A8:  LDR             R1, [R7,#arg_18]
CE2AA:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xCE2B8)
CE2AE:  LDR             R2, [R7,#arg_10]
CE2B0:  ADD.W           R1, R1, R1,LSL#2
CE2B4:  ADD             R0, PC; __stack_chk_guard_ptr
CE2B6:  ADD.W           R9, R1, #0x14
CE2BA:  STR.W           R1, [R7,#var_E0]
CE2BE:  LDR             R0, [R0]; __stack_chk_guard
CE2C0:  SUB.W           R1, R7, #-var_D8
CE2C4:  MUL.W           R11, R9, R2
CE2C8:  MOV             R2, R5
CE2CA:  LDR             R0, [R0]
CE2CC:  STR.W           R0, [R7,#var_DC]
CE2D0:  SUB.W           R0, R7, #-var_D4
CE2D4:  MOV             R3, R11
CE2D6:  BLX             j_silk_sum_sqr_shift
CE2DA:  MOVS            R0, #7
CE2DC:  MOV             R3, R8
CE2DE:  ADD.W           R0, R0, R11,LSL#1
CE2E2:  BIC.W           R1, R0, #7
CE2E6:  LDRD.W          R0, R2, [R3]
CE2EA:  CLZ.W           R2, R2
CE2EE:  RSB.W           R2, R2, #3
CE2F2:  ADD             R0, R2
CE2F4:  SUB.W           R2, SP, R1
CE2F8:  STR             R0, [R3]
CE2FA:  MOV             SP, R2
CE2FC:  MOV.W           R8, R9,LSL#3
CE300:  CMP             R0, #1
CE302:  BLT             loc_CE328
CE304:  ADDS            R0, #1
CE306:  CMP.W           R11, #1
CE30A:  MOV.W           R0, R0,ASR#1
CE30E:  STR             R0, [R3]
CE310:  BLT             loc_CE32A
CE312:  MOV             R1, R11
CE314:  MOV             R4, R2
CE316:  LDRSH.W         R3, [R5],#2
CE31A:  SUBS            R1, #1
CE31C:  ASR.W           R3, R3, R0
CE320:  STRH.W          R3, [R4],#2
CE324:  BNE             loc_CE316
CE326:  B               loc_CE32A
CE328:  MOV             R2, R5
CE32A:  LDR             R1, [R7,#arg_10]
CE32C:  MOV.W           R0, R9,LSL#4
CE330:  CMP             R1, #8
CE332:  IT EQ
CE334:  MOVEQ           R0, #2
CE336:  ADDS            R0, #7
CE338:  BIC.W           R0, R0, #7
CE33C:  SUB.W           R10, SP, R0
CE340:  MOV             SP, R10
CE342:  CMP             R1, #0x10
CE344:  STR             R2, [R6,#4]
CE346:  BNE             loc_CE35E
CE348:  SUB.W           R5, R7, #-var_40
CE34C:  MOVS            R0, #0
CE34E:  STRD.W          R0, R0, [R7,#var_40]
CE352:  MOV             R1, R10
CE354:  MOV             R0, R5
CE356:  MOV             R3, R11
CE358:  BLX             j_silk_resampler_down2
CE35C:  B               loc_CE386
CE35E:  CMP             R1, #0xC
CE360:  BNE             loc_CE380
CE362:  SUB.W           R5, R7, #-var_40
CE366:  MOVS            R0, #0
CE368:  STRD.W          R0, R0, [R7,#var_30]
CE36C:  MOV             R1, R10
CE36E:  STRD.W          R0, R0, [R7,#var_38]
CE372:  MOV             R3, R11
CE374:  STRD.W          R0, R0, [R7,#var_40]
CE378:  MOV             R0, R5
CE37A:  BLX             j_silk_resampler_down2_3
CE37E:  B               loc_CE386
CE380:  SUB.W           R5, R7, #-var_40
CE384:  MOV             R10, R2
CE386:  MOVS            R0, #0
CE388:  MOVW            R4, #0x8000
CE38C:  STRD.W          R0, R0, [R7,#var_40]
CE390:  ADD.W           R0, R8, #7
CE394:  BIC.W           R0, R0, #7
CE398:  MOVT            R4, #0xFFFF
CE39C:  SUB.W           R11, SP, R0
CE3A0:  MOV             SP, R11
CE3A2:  MOV             R0, R5
CE3A4:  MOV             R1, R11
CE3A6:  MOV             R2, R10
CE3A8:  MOV             R3, R8
CE3AA:  STR.W           R10, [R6,#0x34]
CE3AE:  BLX             j_silk_resampler_down2
CE3B2:  LDR.W           R0, [R7,#var_E0]
CE3B6:  CMN.W           R0, #0x13
CE3BA:  BLT             loc_CE3EE
CE3BC:  MOV.W           R0, R9,LSL#2
CE3C0:  MOVW            R1, #0x7FFF
CE3C4:  SUBS            R0, #0x50 ; 'P'
CE3C6:  ADD.W           R2, R11, R0,LSL#1
CE3CA:  LDRSH.W         R3, [R2,#0x9C]
CE3CE:  LDRSH.W         R5, [R2,#0x9E]
CE3D2:  ADD             R3, R5
CE3D4:  CMP             R3, R4
CE3D6:  IT LE
CE3D8:  MOVLE           R3, R4
CE3DA:  CMP             R3, R1
CE3DC:  IT GE
CE3DE:  MOVGE           R3, R1
CE3E0:  STRH.W          R3, [R2,#0x9E]
CE3E4:  ADD.W           R2, R0, #0x50 ; 'P'
CE3E8:  SUBS            R0, #1
CE3EA:  CMP             R2, #2
CE3EC:  BGT             loc_CE3C6
CE3EE:  LDRD.W          R0, R4, [R7,#arg_18]
CE3F2:  MOV             R1, R0
CE3F4:  ADD.W           R0, R1, R1,LSL#5
CE3F8:  STR             R0, [R6,#0x38]
CE3FA:  SUB.W           R0, SP, R0,LSL#3; int
CE3FE:  MOV             SP, R0
CE400:  SUB.W           R2, SP, #0x108
CE404:  STR.W           R2, [R7,#var_F8]
CE408:  MOV             SP, R2
CE40A:  ASRS            R5, R1, #1
CE40C:  STR.W           R0, [R7,#var_E8]
CE410:  ADD.W           R1, R5, R5,LSL#6
CE414:  LSLS            R1, R1, #1; n
CE416:  BLX             sub_10967C
CE41A:  CMP             R5, #1
CE41C:  STR.W           R5, [R7,#var_FC]
CE420:  BLT.W           loc_CE668
CE424:  LDR.W           R0, [R7,#var_E8]
CE428:  ADD.W           R8, R11, #0xA0
CE42C:  ADDS            R0, #2
CE42E:  STR.W           R0, [R7,#var_EC]
CE432:  LDR.W           R0, [R7,#var_F8]
CE436:  ADDS            R0, #0xFC
CE438:  STR.W           R0, [R7,#var_E4]
CE43C:  MOVS            R0, #0
CE43E:  STR.W           R0, [R7,#var_F0]
CE442:  STR.W           R11, [R7,#var_E0]
CE446:  SUB             SP, SP, #8
CE448:  MOVS            R0, #0x41 ; 'A'
CE44A:  SUB.W           R1, R8, #0x90
CE44E:  STRD.W          R0, R4, [SP,#0x140+var_140]
CE452:  MOV             R0, R8
CE454:  LDR.W           R5, [R7,#var_F8]
CE458:  MOVS            R3, #0x28 ; '('
CE45A:  MOV             R2, R5
CE45C:  BLX             j_celt_pitch_xcorr_c
CE460:  ADD             SP, SP, #8
CE462:  MOV             R0, R8
CE464:  MOV             R1, R8
CE466:  MOVS            R2, #0x28 ; '('
CE468:  MOV             R3, R4
CE46A:  LDR.W           R10, [R5,#0x100]
CE46E:  BLX             j_silk_inner_prod_aligned
CE472:  MOV             R5, R0
CE474:  SUB.W           R0, R8, #0x10
CE478:  MOVS            R2, #0x28 ; '('
CE47A:  MOV             R3, R4
CE47C:  MOV             R1, R0
CE47E:  STR.W           R8, [R7,#var_F4]
CE482:  BLX             j_silk_inner_prod_aligned
CE486:  MOVW            R1, #0x8F00
CE48A:  MOVW            R2, #:lower16:(aZnst6Ndk113Rot_0+0x3B); ""
CE48E:  ADD             R0, R5
CE490:  MOVT            R1, #0xFFFD
CE494:  MOVT            R2, #:upper16:(aZnst6Ndk113Rot_0+0x3B); ""
CE498:  ADD.W           R8, R0, R2
CE49C:  SUBS            R1, R1, R0
CE49E:  IT LT
CE4A0:  MOVLT           R1, R8
CE4A2:  CLZ.W           R9, R1
CE4A6:  SUB.W           R0, R9, #1
CE4AA:  LSL.W           R11, R8, R0
CE4AE:  MOV             R0, #0x1FFFFFFF
CE4B2:  MOV.W           R1, R11,ASR#16
CE4B6:  BLX             sub_108848
CE4BA:  CMP.W           R10, #0
CE4BE:  MOV             R2, R10
CE4C0:  IT MI
CE4C2:  RSBMI.W         R2, R10, #0
CE4C6:  SXTH.W          R12, R0
CE4CA:  CLZ.W           R2, R2
CE4CE:  SUBS            R3, R2, #1
CE4D0:  LSL.W           R3, R10, R3
CE4D4:  UXTH            R4, R3
CE4D6:  MUL.W           R4, R4, R12
CE4DA:  ASRS            R4, R4, #0x10
CE4DC:  SMLATB.W        R4, R3, R0, R4
CE4E0:  SMMUL.W         R1, R4, R11
CE4E4:  SUB.W           R1, R3, R1,LSL#3
CE4E8:  UXTH            R3, R1
CE4EA:  SMLABT.W        R0, R0, R1, R4
CE4EE:  MUL.W           R3, R3, R12
CE4F2:  RSB.W           R1, R9, #1
CE4F6:  ADD             R1, R2
CE4F8:  ADDS            R1, #0x1C
CE4FA:  CMP             R1, #0xD
CE4FC:  ADD.W           R0, R0, R3,ASR#16
CE500:  BGT             loc_CE528
CE502:  RSB.W           R1, R1, #0xE
CE506:  LDR.W           R5, [R7,#var_E8]
CE50A:  MOV             R2, #0x7FFFFFFF
CE50E:  MOV.W           R3, #0x80000000
CE512:  LSRS            R2, R1
CE514:  ASRS            R3, R1
CE516:  CMP             R3, R2
CE518:  BLE             loc_CE53E
CE51A:  CMP             R0, R3
CE51C:  MOV             R4, R3
CE51E:  BGT             loc_CE54C
CE520:  CMP             R0, R2
CE522:  IT LT
CE524:  MOVLT           R0, R2
CE526:  B               loc_CE54A
CE528:  SUB.W           R2, R1, #0xE
CE52C:  CMP             R1, #0x2E ; '.'
CE52E:  MOV.W           R1, #0
CE532:  IT LT
CE534:  ASRLT.W         R1, R0, R2
CE538:  LDR.W           R5, [R7,#var_E8]
CE53C:  B               loc_CE550
CE53E:  CMP             R0, R2
CE540:  MOV             R4, R2
CE542:  BGT             loc_CE54C
CE544:  CMP             R0, R3
CE546:  IT LT
CE548:  MOVLT           R0, R3
CE54A:  MOV             R4, R0
CE54C:  LSL.W           R1, R4, R1
CE550:  LDR.W           R0, [R7,#var_F0]
CE554:  MOV.W           R10, #0
CE558:  LDR.W           R11, [R7,#var_EC]
CE55C:  ADD.W           R0, R0, R0,LSL#6
CE560:  STRH.W          R1, [R5,R0,LSL#1]
CE564:  LDR.W           R0, [R7,#var_E0]
CE568:  ADD             R0, R10
CE56A:  LDRSH.W         R1, [R0,#0x8E]
CE56E:  LDRSH.W         R0, [R0,#0xDE]
CE572:  SMULBB.W        R1, R1, R1
CE576:  MLS.W           R0, R0, R0, R1
CE57A:  ADDS.W          R8, R8, R0
CE57E:  MOV             R0, R8
CE580:  IT MI
CE582:  RSBMI.W         R0, R8, #0
CE586:  CLZ.W           R9, R0
CE58A:  SUB.W           R0, R9, #1
CE58E:  LSL.W           R4, R8, R0
CE592:  MOV             R0, #0x1FFFFFFF
CE596:  ASRS            R1, R4, #0x10
CE598:  BLX             sub_108848
CE59C:  LDR.W           R1, [R7,#var_E4]
CE5A0:  LDR.W           R2, [R1,R10,LSL#1]
CE5A4:  SXTH            R1, R0
CE5A6:  CMP             R2, #0
CE5A8:  MOV             R3, R2
CE5AA:  IT MI
CE5AC:  NEGMI           R3, R2
CE5AE:  CLZ.W           R3, R3
CE5B2:  SUBS            R5, R3, #1
CE5B4:  LSLS            R2, R5
CE5B6:  UXTH            R5, R2
CE5B8:  MULS            R5, R1
CE5BA:  ASRS            R5, R5, #0x10
CE5BC:  SMLATB.W        R5, R2, R0, R5
CE5C0:  SMMUL.W         R4, R4, R5
CE5C4:  SUB.W           R2, R2, R4,LSL#3
CE5C8:  UXTH            R4, R2
CE5CA:  SMLABT.W        R0, R0, R2, R5
CE5CE:  MULS            R1, R4
CE5D0:  ADD.W           R0, R0, R1,ASR#16
CE5D4:  RSB.W           R1, R9, #1
CE5D8:  ADD             R1, R3
CE5DA:  ADDS            R1, #0x1C
CE5DC:  CMP             R1, #0xD
CE5DE:  BGT             loc_CE602
CE5E0:  RSB.W           R1, R1, #0xE
CE5E4:  MOV             R2, #0x7FFFFFFF
CE5E8:  MOV.W           R3, #0x80000000
CE5EC:  LSRS            R2, R1
CE5EE:  ASRS            R3, R1
CE5F0:  CMP             R3, R2
CE5F2:  BLE             loc_CE614
CE5F4:  CMP             R0, R3
CE5F6:  MOV             R4, R3
CE5F8:  BGT             loc_CE622
CE5FA:  CMP             R0, R2
CE5FC:  IT LT
CE5FE:  MOVLT           R0, R2
CE600:  B               loc_CE620
CE602:  SUB.W           R2, R1, #0xE
CE606:  CMP             R1, #0x2E ; '.'
CE608:  MOV.W           R1, #0
CE60C:  IT LT
CE60E:  ASRLT.W         R1, R0, R2
CE612:  B               loc_CE626
CE614:  CMP             R0, R2
CE616:  MOV             R4, R2
CE618:  BGT             loc_CE622
CE61A:  CMP             R0, R3
CE61C:  IT LT
CE61E:  MOVLT           R0, R3
CE620:  MOV             R4, R0
CE622:  LSL.W           R1, R4, R1
CE626:  SUB.W           R10, R10, #2
CE62A:  STRH.W          R1, [R11],#2
CE62E:  ADDS.W          R0, R10, #0x80
CE632:  BNE             loc_CE564
CE634:  LDR.W           R0, [R7,#var_EC]
CE638:  LDR.W           R11, [R7,#var_E0]
CE63C:  ADDS            R0, #0x82
CE63E:  STR.W           R0, [R7,#var_EC]
CE642:  LDR.W           R0, [R7,#var_F0]
CE646:  ADD.W           R11, R11, #0x50 ; 'P'
CE64A:  LDR.W           R8, [R7,#var_F4]
CE64E:  LDR             R4, [R7,#arg_1C]
CE650:  MOV             R2, R0
CE652:  LDR.W           R0, [R7,#var_FC]
CE656:  ADDS            R2, #1
CE658:  ADD.W           R8, R8, #0x50 ; 'P'
CE65C:  CMP             R2, R0
CE65E:  MOV             R1, R2
CE660:  STR.W           R1, [R7,#var_F0]
CE664:  BNE.W           loc_CE442
CE668:  LDRD.W          R10, R0, [R7,#arg_14]
CE66C:  CMP             R0, #4
CE66E:  BNE             loc_CE6B4
CE670:  MOVW            R0, #0x8000
CE674:  LDR.W           R8, [R6,#0x18]
CE678:  MOVT            R0, #0xFFFF
CE67C:  LDR.W           R11, [R7,#var_E8]
CE680:  ADD.W           R0, R0, #0x7B80
CE684:  MOVS            R1, #0
CE686:  ADD.W           R2, R11, R1,LSL#1
CE68A:  LDRSH.W         R3, [R2,#0x80]
CE68E:  LDRSH.W         R5, [R2,#0x102]
CE692:  ADD             R3, R5
CE694:  UXTH            R5, R3
CE696:  LSRS            R4, R3, #0x10
CE698:  MULS            R5, R0
CE69A:  MLA.W           R3, R4, R0, R3
CE69E:  ADDS            R0, #0x10
CE6A0:  ADD.W           R3, R3, R5,LSR#16
CE6A4:  STRH.W          R3, [R2,#0x80]
CE6A8:  ADD.W           R2, R1, #0x48 ; 'H'
CE6AC:  SUBS            R1, #1
CE6AE:  CMP             R2, #8
CE6B0:  BGT             loc_CE686
CE6B2:  B               loc_CE6F0
CE6B4:  MOVW            R0, #0x8000
CE6B8:  LDR.W           R8, [R6,#0x18]
CE6BC:  MOVT            R0, #0xFFFF
CE6C0:  LDR.W           R11, [R7,#var_E8]
CE6C4:  ADD.W           R0, R0, #0x7B80
CE6C8:  MOVS            R1, #0x40 ; '@'
CE6CA:  LDRSH.W         R2, [R11,R1,LSL#1]
CE6CE:  LSLS            R5, R2, #1
CE6D0:  LSRS            R3, R2, #0xF
CE6D2:  UXTH            R5, R5
CE6D4:  MULS            R3, R0
CE6D6:  MULS            R5, R0
CE6D8:  ADDS            R0, #0x10
CE6DA:  ADD.W           R2, R3, R2,LSL#1
CE6DE:  ADD.W           R2, R2, R5,LSR#16
CE6E2:  STRH.W          R2, [R11,R1,LSL#1]
CE6E6:  ADD.W           R2, R1, #8
CE6EA:  SUBS            R1, #1
CE6EC:  CMP             R2, #8
CE6EE:  BGT             loc_CE6CA
CE6F0:  MOVS            R0, #4
CE6F2:  ADD.W           R4, R0, R10,LSL#1
CE6F6:  SUB.W           R1, R7, #-var_A0
CE6FA:  MOV             R0, R11
CE6FC:  MOVS            R2, #0x41 ; 'A'
CE6FE:  MOV             R3, R4
CE700:  LDR.W           R9, [R7,#arg_0]
CE704:  BLX             j_silk_insertion_sort_decreasing_int16
CE708:  LDRSH.W         R2, [R11]
CE70C:  MOVW            R0, #0xCCC
CE710:  CMP             R2, R0
CE712:  BGT             loc_CE726
CE714:  LDR             R0, [R7,#arg_18]
CE716:  LSLS            R1, R0, #2; n
CE718:  MOV             R0, R8; int
CE71A:  BLX             sub_10967C
CE71E:  MOVS            R5, #0
CE720:  STR.W           R5, [R9]
CE724:  B               loc_CEC02
CE726:  LDR             R0, [R7,#arg_10]
CE728:  MOV.W           R12, #0xFFFFFFFF
CE72C:  ADD.W           R9, R0, R0,LSL#3
CE730:  MOV.W           R0, R10,LSL#1
CE734:  CMN.W           R0, #3
CE738:  BLT             loc_CE778
CE73A:  LDR             R0, [R7,#arg_8]
CE73C:  UXTH            R1, R0
CE73E:  MULS            R1, R2
CE740:  ASRS            R1, R1, #0x10
CE742:  SMLATB.W        R1, R0, R2, R1
CE746:  CMP             R1, R2
CE748:  BGE             loc_CE77C
CE74A:  ADD.W           R2, R11, #2
CE74E:  MOVS            R3, #0
CE750:  MOV.W           LR, #0x10
CE754:  SUB.W           R5, R7, #-var_A0
CE758:  MOV             R0, R5
CE75A:  LDR.W           R5, [R0,R3,LSL#2]
CE75E:  ADD.W           R5, LR, R5,LSL#1
CE762:  STR.W           R5, [R0,R3,LSL#2]
CE766:  ADDS            R5, R3, #1
CE768:  CMP             R5, R4
CE76A:  BGE             loc_CE778
CE76C:  LDRSH.W         R3, [R2,R3,LSL#1]
CE770:  CMP             R1, R3
CE772:  MOV             R3, R5
CE774:  BLT             loc_CE754
CE776:  B               loc_CE77E
CE778:  MOV             R5, R4
CE77A:  B               loc_CE77E
CE77C:  MOVS            R5, #0
CE77E:  ADD.W           R0, R12, R9,LSL#1
CE782:  STR             R0, [R6,#0x14]
CE784:  LDR             R0, [R7,#arg_10]
CE786:  MOV.W           R10, R0,LSL#1
CE78A:  ADD.W           R0, R0, R0,LSL#2
CE78E:  STR             R0, [R6]
CE790:  LDR             R0, [R6,#0x38]
CE792:  MOV.W           R8, R0,LSL#3
CE796:  SUB.W           R0, SP, #0x110; int
CE79A:  MOV             SP, R0
CE79C:  MOV.W           R1, #0x10C; n
CE7A0:  STR             R0, [R6,#0x38]
CE7A2:  BLX             sub_10967C
CE7A6:  CMP             R5, #1
CE7A8:  BLT             loc_CE7CA
CE7AA:  LDR.W           LR, [R6,#0x38]
CE7AE:  SUB.W           R0, R7, #-var_A0
CE7B2:  MOVS            R1, #1
CE7B4:  LDR.W           R2, [R0],#4
CE7B8:  SUBS            R5, #1
CE7BA:  ADD.W           R2, LR, R2,LSL#1
CE7BE:  STRH.W          R1, [R2,#-0x1A]
CE7C2:  BNE             loc_CE7B4
CE7C4:  LDRH.W          R0, [LR,#0x108]
CE7C8:  B               loc_CE7D0
CE7CA:  MOVS            R0, #0
CE7CC:  LDR.W           LR, [R6,#0x38]
CE7D0:  LDR             R1, [R7,#arg_4]
CE7D2:  MOV.W           R12, R9,LSL#1
CE7D6:  STR.W           R1, [R7,#var_FC]
CE7DA:  MOVS            R1, #0
CE7DC:  ADD.W           R2, LR, R1,LSL#1
CE7E0:  LDRH.W          R3, [R2,#0x106]
CE7E4:  LDRH.W          R5, [R2,#0x10A]
CE7E8:  ADD             R0, R3
CE7EA:  ADD             R0, R5
CE7EC:  STRH.W          R0, [R2,#0x10A]
CE7F0:  ADD.W           R0, R1, #0x92
CE7F4:  SUBS            R1, #1
CE7F6:  CMP             R0, #0x10
CE7F8:  MOV             R0, R3
CE7FA:  BGT             loc_CE7DC
CE7FC:  SUB.W           R0, LR, #0x18
CE800:  MOVS            R1, #0x10
CE802:  MOVS            R2, #0
CE804:  STR.W           R2, [R7,#var_F8]
CE808:  B               loc_CE81E
CE80A:  LDR.W           R5, [R7,#var_F8]
CE80E:  SUB.W           R3, R7, #-var_A0
CE812:  SUBS            R2, R1, #1
CE814:  STR.W           R2, [R3,R5,LSL#2]
CE818:  ADDS            R5, #1
CE81A:  STR.W           R5, [R7,#var_F8]
CE81E:  CMP             R1, #0x90
CE820:  BGE             loc_CE82E
CE822:  LDRSH.W         R2, [R0,R1,LSL#1]
CE826:  ADDS            R1, #1
CE828:  CMP             R2, #1
CE82A:  BLT             loc_CE81E
CE82C:  B               loc_CE80A
CE82E:  LDRH.W          R1, [LR,#0x106]
CE832:  MOVS            R0, #0
CE834:  LDRH.W          R2, [LR,#0x108]
CE838:  ADD.W           R5, LR, R0,LSL#1
CE83C:  MOV             R3, R1
CE83E:  ADD             R2, R3
CE840:  LDRH.W          R1, [R5,#0x104]
CE844:  LDRH.W          R4, [R5,#0x10A]
CE848:  ADD             R2, R1
CE84A:  ADD             R2, R4
CE84C:  STRH.W          R2, [R5,#0x10A]
CE850:  ADD.W           R2, R0, #0x92
CE854:  SUBS            R0, #1
CE856:  CMP             R2, #0x10
CE858:  MOV             R2, R3
CE85A:  BGT             loc_CE838
CE85C:  LDR             R4, [R6,#0x34]
CE85E:  MOVS            R2, #:lower16:(elf_hash_bucket+0x10D6)
CE860:  ADD.W           R0, LR, #6
CE864:  MOVS            R1, #0
CE866:  MOVT            R2, #:upper16:(elf_hash_bucket+0x10D6)
CE86A:  MOVS            R5, #0
CE86C:  LDRSH.W         R3, [R0,R1,LSL#1]
CE870:  CMP             R3, #1
CE872:  ITTT GE
CE874:  ADDGE           R3, R1, R2
CE876:  STRHGE.W        R3, [LR,R5,LSL#1]
CE87A:  ADDGE           R5, #1
CE87C:  ADDS            R1, #1
CE87E:  CMP             R1, #0x83
CE880:  BNE             loc_CE86C
CE882:  MOV             R0, R11; int
CE884:  MOV             R1, R8; n
CE886:  STR.W           R12, [R6,#0x30]
CE88A:  STR.W           R10, [R6,#8]
CE88E:  BLX             sub_10967C
CE892:  LDR             R1, [R7,#arg_18]
CE894:  CMP             R1, #1
CE896:  BLT.W           loc_CE9E8
CE89A:  ADD.W           R4, R4, #0x140
CE89E:  MOVS            R0, #0
CE8A0:  STRD.W          R5, R0, [R7,#var_F4]
CE8A4:  LDR             R3, [R7,#arg_1C]
CE8A6:  MOV             R0, R4
CE8A8:  MOV             R1, R4
CE8AA:  MOVS            R2, #0x28 ; '('
CE8AC:  BLX             j_silk_inner_prod_aligned
CE8B0:  CMP             R5, #1
CE8B2:  BLT.W           loc_CE9CC
CE8B6:  ADDS            R0, #1
CE8B8:  STR.W           R0, [R7,#var_EC]
CE8BC:  LDR.W           R0, [R7,#var_F0]
CE8C0:  MOV             R1, #0xFFFFFFF2
CE8C4:  LDR.W           R9, [R6,#0x38]
CE8C8:  LDR.W           R10, [R7,#var_F4]
CE8CC:  ADD.W           R0, R0, R0,LSL#5
CE8D0:  STR.W           R4, [R7,#var_E0]
CE8D4:  ADD.W           R0, R1, R0,LSL#2
CE8D8:  STR.W           R0, [R7,#var_E4]
CE8DC:  LDRSH.W         R8, [R9]
CE8E0:  MOV             R0, R4
CE8E2:  MOVS            R2, #0x28 ; '('
CE8E4:  SUB.W           R11, R4, R8,LSL#1
CE8E8:  LDR             R4, [R7,#arg_1C]
CE8EA:  MOV             R1, R11
CE8EC:  MOV             R3, R4
CE8EE:  BLX             j_silk_inner_prod_aligned
CE8F2:  MOV             R5, R0
CE8F4:  CMP             R5, #1
CE8F6:  BLT             loc_CE986
CE8F8:  MOV             R0, R11
CE8FA:  MOV             R1, R11
CE8FC:  MOVS            R2, #0x28 ; '('
CE8FE:  MOV             R3, R4
CE900:  BLX             j_silk_inner_prod_aligned
CE904:  LDR.W           R1, [R7,#var_EC]
CE908:  ADDS            R0, R0, R1
CE90A:  MOV             R1, R0
CE90C:  IT MI
CE90E:  NEGMI           R1, R0
CE910:  CLZ.W           R11, R1
CE914:  SUB.W           R1, R11, #1
CE918:  LSL.W           R4, R0, R1
CE91C:  MOV             R0, #0x1FFFFFFF
CE920:  ASRS            R1, R4, #0x10
CE922:  BLX             sub_108848
CE926:  CLZ.W           R2, R5
CE92A:  SXTH            R1, R0
CE92C:  SUBS            R3, R2, #1
CE92E:  LSL.W           R3, R5, R3
CE932:  UXTH            R5, R3
CE934:  MULS            R5, R1
CE936:  ASRS            R5, R5, #0x10
CE938:  SMLABT.W        R5, R0, R3, R5
CE93C:  SMMUL.W         R4, R5, R4
CE940:  SUB.W           R3, R3, R4,LSL#3
CE944:  UXTH            R4, R3
CE946:  SMLABT.W        R0, R0, R3, R5
CE94A:  MULS            R1, R4
CE94C:  ADD.W           R0, R0, R1,ASR#16
CE950:  RSB.W           R1, R11, #1
CE954:  ADD             R1, R2
CE956:  ADDS            R1, #0x1C
CE958:  CMP             R1, #0xD
CE95A:  BGT             loc_CE98A
CE95C:  RSB.W           R1, R1, #0xE
CE960:  LDR.W           R11, [R7,#var_E8]
CE964:  LDR.W           R4, [R7,#var_E0]
CE968:  MOV             R2, #0x7FFFFFFF
CE96C:  MOV.W           R3, #0x80000000
CE970:  LSRS            R2, R1
CE972:  ASRS            R3, R1
CE974:  CMP             R3, R2
CE976:  BLE             loc_CE9A4
CE978:  CMP             R0, R3
CE97A:  MOV             R5, R3
CE97C:  BGT             loc_CE9B2
CE97E:  CMP             R0, R2
CE980:  IT LT
CE982:  MOVLT           R0, R2
CE984:  B               loc_CE9B0
CE986:  MOVS            R1, #0
CE988:  B               loc_CE99A
CE98A:  SUB.W           R2, R1, #0xE
CE98E:  CMP             R1, #0x2E ; '.'
CE990:  MOV.W           R1, #0
CE994:  IT LT
CE996:  ASRLT.W         R1, R0, R2
CE99A:  LDR.W           R11, [R7,#var_E8]
CE99E:  LDR.W           R4, [R7,#var_E0]
CE9A2:  B               loc_CE9B6
CE9A4:  CMP             R0, R2
CE9A6:  MOV             R5, R2
CE9A8:  BGT             loc_CE9B2
CE9AA:  CMP             R0, R3
CE9AC:  IT LT
CE9AE:  MOVLT           R0, R3
CE9B0:  MOV             R5, R0
CE9B2:  LSL.W           R1, R5, R1
CE9B6:  LDR.W           R0, [R7,#var_E4]
CE9BA:  ADD.W           R9, R9, #2
CE9BE:  SUBS.W          R10, R10, #1
CE9C2:  ADD             R0, R8
CE9C4:  STRH.W          R1, [R11,R0,LSL#1]
CE9C8:  BNE.W           loc_CE8DC
CE9CC:  LDR.W           R0, [R7,#var_F0]
CE9D0:  ADDS            R4, #0x50 ; 'P'
CE9D2:  LDR             R1, [R7,#arg_18]
CE9D4:  LDR.W           R5, [R7,#var_F4]
CE9D8:  MOV             R2, R0
CE9DA:  ADDS            R2, #1
CE9DC:  CMP             R2, R1
CE9DE:  MOV             R0, R2
CE9E0:  STR.W           R0, [R7,#var_F0]
CE9E4:  BNE.W           loc_CE8A4
CE9E8:  LDR             R0, [R7,#arg_4]
CE9EA:  CMP             R0, #1
CE9EC:  BLT             loc_CEA08
CE9EE:  LDR             R1, [R7,#arg_10]
CE9F0:  CMP             R1, #0xC
CE9F2:  BNE             loc_CEA0C
CE9F4:  MOVW            R1, #0x5556
CE9F8:  LSLS            R0, R0, #1
CE9FA:  MOVT            R1, #0x5555
CE9FE:  SMMUL.W         R0, R0, R1
CEA02:  ADD.W           R0, R0, R0,LSR#31
CEA06:  B               loc_CEA16
CEA08:  MOVS            R0, #0
CEA0A:  B               loc_CEA20
CEA0C:  MOVS            R2, #0
CEA0E:  CMP             R1, #0x10
CEA10:  IT EQ
CEA12:  MOVEQ           R2, #1
CEA14:  LSRS            R0, R2
CEA16:  STR.W           R0, [R7,#var_FC]
CEA1A:  BLX             j_silk_lin2log
CEA1E:  LDR             R1, [R7,#arg_18]
CEA20:  STR             R0, [R6,#0x24]
CEA22:  MOV.W           R10, #3
CEA26:  CMP             R1, #4
CEA28:  BNE             loc_CEA4A
CEA2A:  LDR.W           R0, =(silk_CB_lags_stage2_ptr - 0xCEA3A)
CEA2E:  MOV.W           R8, #0xB
CEA32:  LDR             R2, [R7,#arg_14]
CEA34:  LDR             R3, [R7,#arg_10]
CEA36:  ADD             R0, PC; silk_CB_lags_stage2_ptr
CEA38:  CMP             R2, #0
CEA3A:  MOV.W           R2, #3
CEA3E:  IT GT
CEA40:  MOVGT           R2, #0xB
CEA42:  CMP             R3, #8
CEA44:  IT EQ
CEA46:  MOVEQ           R10, R2
CEA48:  B               loc_CEA54
CEA4A:  LDR.W           R0, =(silk_CB_lags_stage2_10_ms_ptr - 0xCEA56)
CEA4E:  MOV.W           R8, #3
CEA52:  ADD             R0, PC; silk_CB_lags_stage2_10_ms_ptr
CEA54:  LDR             R0, [R0]
CEA56:  STR.W           R0, [R7,#var_F4]
CEA5A:  LDR.W           R0, [R7,#var_F8]
CEA5E:  CMP             R0, #1
CEA60:  BLT.W           loc_CEBF4
CEA64:  MOVS            R0, #0
CEA66:  LDR             R2, [R7,#arg_C]
CEA68:  MOVT            R0, #0x666
CEA6C:  LDR.W           R9, [R7,#var_F4]
CEA70:  MULS            R0, R1
CEA72:  MOVS            R3, #0
CEA74:  SMULBB.W        R2, R1, R2
CEA78:  STR             R2, [R6,#0x28]
CEA7A:  MOV.W           R2, #0x80000000
CEA7E:  MOV.W           LR, R0,ASR#16
CEA82:  MOV.W           R0, R10,LSL#2
CEA86:  STR             R0, [R6,#0x1C]
CEA88:  MOV.W           R0, #0xFFFFFFFF
CEA8C:  STR             R0, [R6,#0x38]
CEA8E:  LDR.W           R0, =(silk_CB_lags_stage2_ptr - 0xCEA9A)
CEA92:  STR.W           LR, [R6,#0x2C]
CEA96:  ADD             R0, PC; silk_CB_lags_stage2_ptr
CEA98:  LDR             R0, [R0]; silk_CB_lags_stage2
CEA9A:  STR             R0, [R6,#0x20]
CEA9C:  MOV.W           R0, #0x80000000
CEAA0:  STR             R0, [R6,#0x34]
CEAA2:  MOVS            R0, #0
CEAA4:  STR.W           R0, [R7,#var_E0]
CEAA8:  SUB.W           R0, R7, #-var_A0
CEAAC:  CMP             R1, #1
CEAAE:  STR.W           R2, [R7,#var_EC]
CEAB2:  LDR.W           R0, [R0,R3,LSL#2]
CEAB6:  STR.W           R3, [R7,#var_F0]
CEABA:  STR.W           R0, [R7,#var_E4]
CEABE:  BLT             loc_CEB00
CEAC0:  SUB.W           LR, R0, #0xE
CEAC4:  SUB.W           R4, R7, #-var_D0
CEAC8:  MOV.W           R12, #0
CEACC:  MOVS            R2, #0
CEACE:  LDR             R1, [R7,#arg_18]
CEAD0:  MOV             R3, R9
CEAD2:  STR.W           R12, [R4,R2,LSL#2]
CEAD6:  MOV             R0, LR
CEAD8:  MOVS            R4, #0
CEADA:  LDRSB           R5, [R2,R3]
CEADC:  ADD             R3, R8
CEADE:  SUBS            R1, #1
CEAE0:  ADD             R5, R0
CEAE2:  ADD.W           R0, R0, #0x84
CEAE6:  LDRSH.W         R5, [R11,R5,LSL#1]
CEAEA:  ADD             R4, R5
CEAEC:  BNE             loc_CEADA
CEAEE:  SUB.W           R0, R7, #-var_D0
CEAF2:  STR.W           R4, [R0,R2,LSL#2]
CEAF6:  ADDS            R2, #1
CEAF8:  MOV             R4, R0
CEAFA:  CMP             R2, R10
CEAFC:  BLT             loc_CEACE
CEAFE:  B               loc_CEB0C
CEB00:  SUB.W           R4, R7, #-var_D0
CEB04:  LDR             R1, [R6,#0x1C]; n
CEB06:  MOV             R0, R4; int
CEB08:  BLX             sub_10967C
CEB0C:  MOV.W           R9, #0x80000000
CEB10:  MOVS            R0, #0
CEB12:  MOV.W           R11, #0
CEB16:  LDR.W           R1, [R4,R0,LSL#2]
CEB1A:  CMP             R1, R9
CEB1C:  ITT GT
CEB1E:  MOVGT           R11, R0
CEB20:  MOVGT           R9, R1
CEB22:  ADDS            R0, #1
CEB24:  CMP             R0, R10
CEB26:  BLT             loc_CEB16
CEB28:  LDR.W           R0, [R7,#var_E4]
CEB2C:  BLX             j_silk_lin2log
CEB30:  LDR             R3, [R6,#0x2C]
CEB32:  SXTH            R1, R0
CEB34:  SMULBB.W        R1, R1, R3
CEB38:  SUB.W           R5, R9, R1,ASR#7
CEB3C:  LDR.W           R1, [R7,#var_FC]
CEB40:  CMP             R1, #1
CEB42:  BLT             loc_CEB68
CEB44:  LDR             R1, [R7,#arg_0]
CEB46:  LDR             R2, [R6,#0x24]
CEB48:  LDRSH.W         R1, [R1]
CEB4C:  SUBS            R0, R0, R2
CEB4E:  SMULBB.W        R2, R0, R0
CEB52:  SMULBB.W        R0, R1, R3
CEB56:  LSRS            R1, R2, #7
CEB58:  ASRS            R0, R0, #0xF
CEB5A:  MULS            R0, R1
CEB5C:  MOVS            R1, #0x40 ; '@'
CEB5E:  ADD.W           R1, R1, R2,LSR#7
CEB62:  BLX             sub_108848
CEB66:  SUBS            R5, R5, R0
CEB68:  LDRD.W          R3, R2, [R7,#var_F0]
CEB6C:  CMP             R5, R2
CEB6E:  LDR             R1, [R7,#arg_18]
CEB70:  ITT GT
CEB72:  LDRGT           R0, [R6,#0x28]
CEB74:  CMPGT           R9, R0
CEB76:  BLE             loc_CEBA4
CEB78:  LDR             R0, [R6,#0x20]
CEB7A:  LDRSB.W         R0, [R0,R11]
CEB7E:  CMP             R0, #0x11
CEB80:  IT LT
CEB82:  MOVLT           R2, R5
CEB84:  LDR             R0, [R6,#0x34]
CEB86:  IT LT
CEB88:  MOVLT           R0, R9
CEB8A:  LDR.W           R4, [R7,#var_E4]
CEB8E:  STR             R0, [R6,#0x34]
CEB90:  LDR             R0, [R6,#0x38]
CEB92:  IT LT
CEB94:  MOVLT           R0, R4
CEB96:  STR             R0, [R6,#0x38]
CEB98:  LDR.W           R0, [R7,#var_E0]
CEB9C:  IT LT
CEB9E:  MOVLT           R0, R11
CEBA0:  STR.W           R0, [R7,#var_E0]
CEBA4:  LDR.W           R0, [R7,#var_F8]
CEBA8:  ADDS            R3, #1
CEBAA:  LDR.W           R11, [R7,#var_E8]
CEBAE:  LDR.W           R9, [R7,#var_F4]
CEBB2:  CMP             R3, R0
CEBB4:  BNE.W           loc_CEAA8
CEBB8:  LDR.W           R9, [R6,#0x38]
CEBBC:  ADDS.W          R0, R9, #1
CEBC0:  BEQ             loc_CEBF4
CEBC2:  LDR             R0, [R6,#0x34]
CEBC4:  MOV             R4, R1
CEBC6:  BLX             sub_108848
CEBCA:  LDR             R1, [R7,#arg_0]
CEBCC:  LSLS            R0, R0, #2
CEBCE:  STR             R0, [R1]
CEBD0:  LDR             R0, [R7,#arg_10]
CEBD2:  CMP             R0, #8
CEBD4:  BLE             loc_CEC2E
CEBD6:  CMP             R0, #0xC
CEBD8:  MOV             R12, R4
CEBDA:  BNE             loc_CEC64
CEBDC:  SXTH.W          R0, R9
CEBE0:  LDR.W           R10, [R6,#0x18]
CEBE4:  ADD.W           R0, R0, R0,LSL#1
CEBE8:  LDR             R1, [R6,#4]
CEBEA:  LDR.W           LR, [R7,#arg_1C]
CEBEE:  ASRS            R0, R0, #1
CEBF0:  LDR             R4, [R6,#8]
CEBF2:  B               loc_CEC80
CEBF4:  LDR             R0, [R6,#0x18]; int
CEBF6:  LSLS            R1, R1, #2; n
CEBF8:  BLX             sub_10967C
CEBFC:  LDR             R0, [R7,#arg_0]
CEBFE:  MOVS            R5, #0
CEC00:  STR             R5, [R0]
CEC02:  LDR             R0, [R6,#0xC]
CEC04:  STRH            R5, [R0]
CEC06:  MOVS            R0, #1
CEC08:  LDR             R1, [R6,#0x10]
CEC0A:  STRB            R5, [R1]
CEC0C:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xCEC18)
CEC10:  LDR.W           R2, [R7,#var_DC]
CEC14:  ADD             R1, PC; __stack_chk_guard_ptr
CEC16:  LDR             R1, [R1]; __stack_chk_guard
CEC18:  LDR             R1, [R1]
CEC1A:  SUBS            R1, R1, R2
CEC1C:  ITTTT EQ
CEC1E:  SUBEQ.W         R4, R7, #-var_1C
CEC22:  MOVEQ           SP, R4
CEC24:  POPEQ.W         {R8-R11}
CEC28:  POPEQ           {R4-R7,PC}
CEC2A:  BLX             __stack_chk_fail
CEC2E:  LDR             R2, [R6,#0x18]
CEC30:  CMP             R4, #1
CEC32:  LDR.W           R5, [R7,#var_E0]
CEC36:  MOV             R3, R4
CEC38:  BLT             loc_CEC5C
CEC3A:  LDR.W           R0, [R7,#var_F4]
CEC3E:  ADD             R0, R5
CEC40:  LDRSB.W         R1, [R0]
CEC44:  ADD             R0, R8
CEC46:  ADD             R1, R9
CEC48:  CMP             R1, #0x10
CEC4A:  IT LE
CEC4C:  MOVLE           R1, #0x10
CEC4E:  CMP             R1, #0x90
CEC50:  IT GE
CEC52:  MOVGE           R1, #0x90
CEC54:  SUBS            R3, #1
CEC56:  STR.W           R1, [R2],#4
CEC5A:  BNE             loc_CEC40
CEC5C:  MOVW            R0, #0xFFF0
CEC60:  ADD             R0, R9
CEC62:  B               loc_CEFF8
CEC64:  CMP             R0, #0x10
CEC66:  LDR             R1, [R6,#4]
CEC68:  LDR             R4, [R6,#8]
CEC6A:  ITTE NE
CEC6C:  SXTHNE.W        R0, R9
CEC70:  ADDNE.W         R0, R0, R0,LSL#1
CEC74:  MOVEQ.W         R0, R9,LSL#1
CEC78:  LDR.W           LR, [R7,#arg_1C]
CEC7C:  LDR.W           R10, [R6,#0x18]
CEC80:  LDR             R2, [R6,#0x30]
CEC82:  CMP             R4, R2
CEC84:  BGE             loc_CEC96
CEC86:  LDR.W           R8, [R6,#0x14]
CEC8A:  CMP             R0, R2
CEC8C:  BGE             loc_CECA6
CEC8E:  CMP             R0, R4
CEC90:  IT LT
CEC92:  MOVLT           R0, R4
CEC94:  B               loc_CECA4
CEC96:  CMP             R0, R4
CEC98:  MOV             R8, R4
CEC9A:  BGT             loc_CECA6
CEC9C:  LDR             R2, [R6,#0x14]
CEC9E:  CMP             R0, R2
CECA0:  IT LT
CECA2:  MOVLT           R0, R2
CECA4:  MOV             R8, R0
CECA6:  LDR             R2, [R6,#0x14]
CECA8:  ADD.W           R0, R8, #2
CECAC:  CMP             R0, R2
CECAE:  IT LT
CECB0:  MOVLT           R2, R0
CECB2:  SUB.W           R0, R8, #2
CECB6:  CMP             R0, R4
CECB8:  STR             R2, [R6,#0x14]
CECBA:  IT LE
CECBC:  MOVLE           R0, R4
CECBE:  CMP.W           R12, #1
CECC2:  STR             R0, [R6,#0x38]
CECC4:  BLT             loc_CECE6
CECC6:  LDR             R0, =(silk_CB_lags_stage2_ptr - 0xCECD2)
CECC8:  MOV             R5, R12
CECCA:  LDR.W           R2, [R7,#var_E0]
CECCE:  ADD             R0, PC; silk_CB_lags_stage2_ptr
CECD0:  LDR             R0, [R0]; silk_CB_lags_stage2
CECD2:  ADD             R0, R2
CECD4:  MOV             R2, R10
CECD6:  LDRSB.W         R3, [R0],#0xB
CECDA:  SUBS            R5, #1
CECDC:  ADD.W           R3, R8, R3,LSL#1
CECE0:  STR.W           R3, [R2],#4
CECE4:  BNE             loc_CECD6
CECE6:  CMP.W           R12, #4
CECEA:  STR.W           R8, [R7,#var_E8]
CECEE:  BNE             loc_CED0A
CECF0:  LDR             R0, =(silk_nb_cbk_searchs_stage3_ptr - 0xCECF8)
CECF2:  LDR             R2, =(silk_CB_lags_stage3_ptr - 0xCECFE)
CECF4:  ADD             R0, PC; silk_nb_cbk_searchs_stage3_ptr
CECF6:  LDR.W           R11, [R7,#arg_14]
CECFA:  ADD             R2, PC; silk_CB_lags_stage3_ptr
CECFC:  LDR             R0, [R0]; silk_nb_cbk_searchs_stage3
CECFE:  LDR             R2, [R2]; silk_CB_lags_stage3
CED00:  MOV             R3, R11
CED02:  STR             R2, [R6,#0x1C]
CED04:  LDRSB           R2, [R0,R3]
CED06:  MOVS            R0, #0x22 ; '"'
CED08:  B               loc_CED1C
CED0A:  LDR             R0, =(silk_CB_lags_stage3_10_ms_ptr - 0xCED16)
CED0C:  MOVS            R2, #0xC
CED0E:  LDR.W           R11, [R7,#arg_14]
CED12:  ADD             R0, PC; silk_CB_lags_stage3_10_ms_ptr
CED14:  LDR             R0, [R0]; silk_CB_lags_stage3_10_ms
CED16:  MOV             R3, R11
CED18:  STR             R0, [R6,#0x1C]
CED1A:  MOVS            R0, #0xC
CED1C:  STR             R0, [R6,#0x20]
CED1E:  MUL.W           R0, R12, R2
CED22:  STR.W           R2, [R7,#var_FC]
CED26:  MOVS            R2, #7
CED28:  ADD.W           R0, R0, R0,LSL#2
CED2C:  ADD.W           R0, R2, R0,LSL#2
CED30:  BIC.W           R0, R0, #7
CED34:  SUB.W           R9, SP, R0
CED38:  MOV             SP, R9
CED3A:  SUB.W           R0, SP, R0
CED3E:  MOV             SP, R0
CED40:  SUB             SP, SP, #0x10
CED42:  STRD.W          R12, R3, [SP,#0x148+var_148]
CED46:  MOV             R5, R12
CED48:  LDR.W           R11, [R6]
CED4C:  MOV             R4, LR
CED4E:  LDR             R2, [R6,#0x38]
CED50:  MOV             R8, R1
CED52:  STR.W           LR, [SP,#0x148+var_140]
CED56:  MOV             R3, R11
CED58:  STR             R0, [R6,#0x24]
CED5A:  BL              sub_CF028
CED5E:  ADD             SP, SP, #0x10
CED60:  SUB             SP, SP, #0x10
CED62:  LDR             R0, [R7,#arg_14]
CED64:  MOV             R1, R8
CED66:  STR             R5, [SP,#0x148+var_148]
CED68:  MOV             R3, R11
CED6A:  STRD.W          R0, R4, [SP,#0x148+var_144]
CED6E:  MOV             R0, R9
CED70:  LDR             R4, [R6,#0x38]
CED72:  STR.W           R9, [R6,#0x28]
CED76:  MOV             R2, R4
CED78:  BL              sub_CF258
CED7C:  ADD             SP, SP, #0x10
CED7E:  MUL.W           R2, R11, R5
CED82:  ADD.W           R0, R8, R11,LSL#3
CED86:  LDR             R3, [R7,#arg_1C]
CED88:  MOV             R1, R0
CED8A:  BLX             j_silk_inner_prod_aligned
CED8E:  LDR.W           R1, [R7,#var_E8]
CED92:  MOV             R5, R0
CED94:  MOVW            R0, #0x666
CED98:  BLX             sub_108848
CED9C:  STR             R0, [R6,#0x2C]
CED9E:  MOVS            R0, #0
CEDA0:  STR.W           R0, [R7,#var_E0]
CEDA4:  LDR             R0, [R6,#0x14]
CEDA6:  CMP             R4, R0
CEDA8:  BLE             loc_CEDB8
CEDAA:  LDR.W           LR, [R7,#arg_18]
CEDAE:  LDR.W           R12, [R6,#0x30]
CEDB2:  LDR.W           R8, [R6,#8]
CEDB6:  B               loc_CEF8E
CEDB8:  LDR.W           R1, [R7,#var_FC]
CEDBC:  ADDS            R0, R5, #1
CEDBE:  STR.W           R0, [R7,#var_EC]
CEDC2:  LDR.W           LR, [R7,#arg_18]
CEDC6:  ADD.W           R0, R1, R1,LSL#2
CEDCA:  LDR.W           R12, [R6,#0x30]
CEDCE:  MOV             R5, R1
CEDD0:  MOV.W           R9, R0,LSL#2
CEDD4:  LDR             R0, =(silk_CB_lags_stage3_ptr - 0xCEDDA)
CEDD6:  ADD             R0, PC; silk_CB_lags_stage3_ptr
CEDD8:  LDR             R0, [R0]; silk_CB_lags_stage3
CEDDA:  STR             R0, [R6,#0x34]
CEDDC:  MOV.W           R0, #0x80000000
CEDE0:  STR.W           R0, [R7,#var_E4]
CEDE4:  LDRD.W          R4, R11, [R6,#0x24]
CEDE8:  LDR.W           R8, [R6,#8]
CEDEC:  CMP             R5, #1
CEDEE:  BLT.W           loc_CEF7A
CEDF2:  LDR.W           R3, [R7,#var_E4]
CEDF6:  MOV.W           R8, #0
CEDFA:  MOV             R10, R4
CEDFC:  STR             R4, [R6,#0x24]
CEDFE:  STR.W           R11, [R6,#0x28]
CEE02:  CMP.W           LR, #1
CEE06:  BLT             loc_CEEC4
CEE08:  LDR.W           R4, [R7,#var_EC]
CEE0C:  MOVS            R1, #0
CEE0E:  MOV             R2, LR
CEE10:  MOVS            R0, #0
CEE12:  STR.W           R3, [R7,#var_E4]
CEE16:  LDR.W           R3, [R11,R1]
CEE1A:  SUBS            R2, #1
CEE1C:  LDR.W           R5, [R10,R1]
CEE20:  ADD             R1, R9
CEE22:  ADD             R4, R3
CEE24:  ADD             R0, R5
CEE26:  BNE             loc_CEE16
CEE28:  CMP             R0, #1
CEE2A:  BLT             loc_CEED0
CEE2C:  CLZ.W           R1, R0
CEE30:  STR.W           R1, [R7,#var_F0]
CEE34:  SUBS            R1, #1
CEE36:  CMP             R4, #0
CEE38:  LSL.W           R5, R0, R1
CEE3C:  MOV             R0, R4
CEE3E:  IT MI
CEE40:  NEGMI           R0, R4
CEE42:  CLZ.W           R0, R0
CEE46:  STR.W           R0, [R7,#var_F4]
CEE4A:  SUBS            R0, #1
CEE4C:  LSL.W           R0, R4, R0
CEE50:  STR.W           R0, [R7,#var_F8]
CEE54:  ASRS            R1, R0, #0x10
CEE56:  MOV             R0, #0x1FFFFFFF
CEE5A:  BLX             sub_108848
CEE5E:  UXTH            R1, R5
CEE60:  SXTH            R2, R0
CEE62:  MULS            R1, R2
CEE64:  LDR.W           R3, [R7,#var_F8]
CEE68:  ASRS            R1, R1, #0x10
CEE6A:  SMLABT.W        R1, R0, R5, R1
CEE6E:  SMMUL.W         R3, R1, R3
CEE72:  SUB.W           R3, R5, R3,LSL#3
CEE76:  UXTH            R5, R3
CEE78:  SMLABT.W        R0, R0, R3, R1
CEE7C:  MULS            R2, R5
CEE7E:  LDR.W           R1, [R7,#var_F4]
CEE82:  RSB.W           R1, R1, #1
CEE86:  ADD.W           R0, R0, R2,ASR#16
CEE8A:  LDR.W           R2, [R7,#var_F0]
CEE8E:  ADD             R1, R2
CEE90:  ADDS            R1, #0x1C
CEE92:  CMP             R1, #0xD
CEE94:  BGT             loc_CEED8
CEE96:  RSB.W           R12, R1, #0xE
CEE9A:  MOV             R1, #0x7FFFFFFF
CEE9E:  LDR.W           R5, [R7,#var_FC]
CEEA2:  LSR.W           R2, R1, R12
CEEA6:  MOV.W           R1, #0x80000000
CEEAA:  ASR.W           R3, R1, R12
CEEAE:  CMP             R3, R2
CEEB0:  BLE             loc_CEEF2
CEEB2:  LDR.W           LR, [R7,#arg_18]
CEEB6:  CMP             R0, R3
CEEB8:  MOV             R1, R3
CEEBA:  BGT             loc_CEF04
CEEBC:  CMP             R0, R2
CEEBE:  IT LT
CEEC0:  MOVLT           R0, R2
CEEC2:  B               loc_CEF02
CEEC4:  MOVS            R0, #0
CEEC6:  LDR.W           R4, [R7,#var_EC]
CEECA:  CMP             R0, R3
CEECC:  BGT             loc_CEF2A
CEECE:  B               loc_CEF52
CEED0:  MOVS            R0, #0
CEED2:  LDR.W           R5, [R7,#var_FC]
CEED6:  B               loc_CEF22
CEED8:  SUB.W           R2, R1, #0xE
CEEDC:  CMP             R1, #0x2E ; '.'
CEEDE:  MOV.W           R1, #0
CEEE2:  LDR.W           LR, [R7,#arg_18]
CEEE6:  IT LT
CEEE8:  ASRLT.W         R1, R0, R2
CEEEC:  LDR.W           R5, [R7,#var_FC]
CEEF0:  B               loc_CEF08
CEEF2:  LDR.W           LR, [R7,#arg_18]
CEEF6:  CMP             R0, R2
CEEF8:  MOV             R1, R2
CEEFA:  BGT             loc_CEF04
CEEFC:  CMP             R0, R3
CEEFE:  IT LT
CEF00:  MOVLT           R0, R3
CEF02:  MOV             R1, R0
CEF04:  LSL.W           R1, R1, R12
CEF08:  LDR             R0, [R6,#0x2C]
CEF0A:  MOVW            R2, #0x7FFF
CEF0E:  UXTH            R3, R1
CEF10:  LDR.W           R12, [R6,#0x30]
CEF14:  MLS.W           R0, R8, R0, R2
CEF18:  SXTH            R2, R0
CEF1A:  MULS            R2, R3
CEF1C:  ASRS            R2, R2, #0x10
CEF1E:  SMLATB.W        R0, R1, R0, R2
CEF22:  LDR.W           R3, [R7,#var_E4]
CEF26:  CMP             R0, R3
CEF28:  BLE             loc_CEF52
CEF2A:  LDR             R1, [R6,#0x34]
CEF2C:  LDR             R2, [R6,#0x38]
CEF2E:  LDRSB.W         R1, [R1,R8]
CEF32:  ADD             R1, R2
CEF34:  CMP             R1, R12
CEF36:  IT LT
CEF38:  MOVLT           R3, R0
CEF3A:  LDR.W           R0, [R7,#var_E8]
CEF3E:  IT LT
CEF40:  MOVLT           R0, R2
CEF42:  STR.W           R0, [R7,#var_E8]
CEF46:  LDR.W           R0, [R7,#var_E0]
CEF4A:  IT LT
CEF4C:  MOVLT           R0, R8
CEF4E:  STR.W           R0, [R7,#var_E0]
CEF52:  ADD.W           R8, R8, #1
CEF56:  ADD.W           R10, R10, #0x14
CEF5A:  ADD.W           R11, R11, #0x14
CEF5E:  CMP             R8, R5
CEF60:  BNE.W           loc_CEE02
CEF64:  SUB.W           R0, R7, #-var_D8
CEF68:  STR.W           R3, [R7,#var_E4]
CEF6C:  LDR.W           R10, [R6,#0x18]
CEF70:  STR             R4, [R0,#4]
CEF72:  LDR.W           R8, [R6,#8]
CEF76:  LDRD.W          R4, R11, [R6,#0x24]
CEF7A:  LDR             R2, [R6,#0x38]
CEF7C:  ADDS            R4, #4
CEF7E:  LDR             R1, [R6,#0x14]
CEF80:  ADD.W           R11, R11, #4
CEF84:  ADDS            R0, R2, #1
CEF86:  STR             R0, [R6,#0x38]
CEF88:  CMP             R2, R1
CEF8A:  BLT.W           loc_CEDEC
CEF8E:  LDR.W           R3, [R7,#var_E8]
CEF92:  CMP.W           LR, #1
CEF96:  LDR             R5, [R6,#0x20]
CEF98:  BLT             loc_CEFF0
CEF9A:  CMP             R8, R12
CEF9C:  BLE             loc_CEFC8
CEF9E:  LDR.W           R0, [R7,#var_E0]
CEFA2:  LDR             R1, [R6,#0x1C]
CEFA4:  ADD             R0, R1
CEFA6:  LDRSB.W         R1, [R0]
CEFAA:  ADD             R0, R5
CEFAC:  ADD             R1, R3
CEFAE:  CMP             R1, R12
CEFB0:  MOV             R2, R1
CEFB2:  IT LT
CEFB4:  MOVLT           R2, R12
CEFB6:  CMP             R1, R8
CEFB8:  IT GT
CEFBA:  MOVGT           R2, R8
CEFBC:  SUBS.W          LR, LR, #1
CEFC0:  STR.W           R2, [R10],#4
CEFC4:  BNE             loc_CEFA6
CEFC6:  B               loc_CEFF0
CEFC8:  LDR.W           R0, [R7,#var_E0]
CEFCC:  LDR             R1, [R6,#0x1C]
CEFCE:  ADD             R0, R1
CEFD0:  LDRSB.W         R1, [R0]
CEFD4:  ADD             R0, R5
CEFD6:  ADD             R1, R3
CEFD8:  CMP             R1, R8
CEFDA:  MOV             R2, R1
CEFDC:  IT LT
CEFDE:  MOVLT           R2, R8
CEFE0:  CMP             R1, R12
CEFE2:  IT GT
CEFE4:  MOVGT           R2, R12
CEFE6:  SUBS.W          LR, LR, #1
CEFEA:  STR.W           R2, [R10],#4
CEFEE:  BNE             loc_CEFD0
CEFF0:  SUB.W           R0, R3, R8
CEFF4:  LDR.W           R5, [R7,#var_E0]
CEFF8:  LDR             R1, [R6,#0xC]
CEFFA:  STRH            R0, [R1]
CEFFC:  MOVS            R0, #0
CEFFE:  B               loc_CEC08
