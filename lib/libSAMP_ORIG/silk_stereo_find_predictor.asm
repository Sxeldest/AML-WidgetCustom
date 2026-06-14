; =========================================================
; Game Engine Function: silk_stereo_find_predictor
; Address            : 0xCC3D0 - 0xCC7F0
; =========================================================

CC3D0:  PUSH            {R4-R7,LR}
CC3D2:  ADD             R7, SP, #0xC
CC3D4:  PUSH.W          {R8-R11}
CC3D8:  SUB             SP, SP, #0x2C
CC3DA:  STR             R0, [SP,#0x48+var_3C]
CC3DC:  MOV             R6, R1
CC3DE:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xCC3EC)
CC3E2:  MOV             R4, R2
CC3E4:  LDR.W           R10, [R7,#arg_0]
CC3E8:  ADD             R0, PC; __stack_chk_guard_ptr
CC3EA:  STR             R3, [SP,#0x48+var_34]
CC3EC:  LDR             R1, [R0]; __stack_chk_guard
CC3EE:  ADD             R0, SP, #0x48+var_2C
CC3F0:  MOV             R3, R10
CC3F2:  LDR             R2, [R1]
CC3F4:  ADD             R1, SP, #0x48+var_24
CC3F6:  STR             R2, [SP,#0x48+var_20]
CC3F8:  MOV             R2, R6
CC3FA:  BLX             j_silk_sum_sqr_shift
CC3FE:  ADD             R0, SP, #0x48+var_30
CC400:  ADD             R1, SP, #0x48+var_28
CC402:  MOV             R2, R4
CC404:  MOV             R3, R10
CC406:  BLX             j_silk_sum_sqr_shift
CC40A:  LDRD.W          R0, R1, [SP,#0x48+var_28]
CC40E:  LDR             R2, [SP,#0x48+var_30]
CC410:  CMP             R1, R0
CC412:  MOV             R3, R0
CC414:  IT GT
CC416:  MOVGT           R3, R1
CC418:  AND.W           R5, R3, #1
CC41C:  ADD.W           R8, R5, R3
CC420:  MOV             R3, R10
CC422:  SUB.W           R0, R8, R0
CC426:  SUB.W           R1, R8, R1
CC42A:  ASR.W           R0, R2, R0
CC42E:  MOV             R2, R8
CC430:  STR             R0, [SP,#0x48+var_30]
CC432:  LDR             R0, [SP,#0x48+var_2C]
CC434:  ASRS            R0, R1
CC436:  CMP             R0, #1
CC438:  IT LE
CC43A:  MOVLE           R0, #1
CC43C:  MOV             R1, R4
CC43E:  STR             R0, [SP,#0x48+var_2C]
CC440:  MOV             R0, R6
CC442:  BLX             j_silk_inner_prod_aligned_scale
CC446:  CMP             R0, #0
CC448:  MOV             R1, R0
CC44A:  IT MI
CC44C:  NEGMI           R1, R0
CC44E:  LDR.W           R10, [SP,#0x48+var_2C]
CC452:  CLZ.W           R9, R1
CC456:  STR             R0, [SP,#0x48+var_40]
CC458:  SUB.W           R1, R9, #1
CC45C:  CMP.W           R10, #0
CC460:  LSL.W           R5, R0, R1
CC464:  MOV             R0, R10
CC466:  IT MI
CC468:  RSBMI.W         R0, R10, #0
CC46C:  UXTH.W          R11, R5
CC470:  CLZ.W           R4, R0
CC474:  SUBS            R0, R4, #1
CC476:  LSL.W           R6, R10, R0
CC47A:  MOV             R0, #0x1FFFFFFF
CC47E:  ASRS            R1, R6, #0x10
CC480:  BLX             sub_108848
CC484:  SXTH            R1, R0
CC486:  MUL.W           R2, R11, R1
CC48A:  MOV             R11, #0xFFFFC000
CC492:  ASRS            R2, R2, #0x10
CC494:  SMLATB.W        R2, R5, R0, R2
CC498:  SMMUL.W         R3, R2, R6
CC49C:  SUB.W           R3, R5, R3,LSL#3
CC4A0:  UXTH            R6, R3
CC4A2:  SMLABT.W        R0, R0, R3, R2
CC4A6:  MULS            R1, R6
CC4A8:  ADD.W           R0, R0, R1,ASR#16
CC4AC:  RSB.W           R1, R4, #1
CC4B0:  ADD             R1, R9
CC4B2:  ADD.W           R2, R1, #0xF
CC4B6:  CMP.W           R2, #0xFFFFFFFF
CC4BA:  BLE             loc_CC4C8
CC4BC:  MOVS            R1, #0
CC4BE:  CMP             R2, #0x20 ; ' '
CC4C0:  IT LT
CC4C2:  ASRLT.W         R1, R0, R2
CC4C6:  B               loc_CC4FA
CC4C8:  NEGS            R1, R2
CC4CA:  MOV             R2, #0x7FFFFFFF
CC4CE:  MOV.W           R3, #0x80000000
CC4D2:  LSRS            R2, R1
CC4D4:  ASRS            R3, R1
CC4D6:  CMP             R3, R2
CC4D8:  BLE             loc_CC4E8
CC4DA:  CMP             R0, R3
CC4DC:  MOV             R6, R3
CC4DE:  BGT             loc_CC4F6
CC4E0:  CMP             R0, R2
CC4E2:  IT LT
CC4E4:  MOVLT           R0, R2
CC4E6:  B               loc_CC4F4
CC4E8:  CMP             R0, R2
CC4EA:  MOV             R6, R2
CC4EC:  BGT             loc_CC4F6
CC4EE:  CMP             R0, R3
CC4F0:  IT LT
CC4F2:  MOVLT           R0, R3
CC4F4:  MOV             R6, R0
CC4F6:  LSL.W           R1, R6, R1
CC4FA:  CMP             R1, R11
CC4FC:  LDR             R6, [R7,#arg_4]
CC4FE:  IT GT
CC500:  MOVGT           R11, R1
CC502:  MOV.W           R4, R8,ASR#1
CC506:  CMP.W           R11, #0x4000
CC50A:  IT GE
CC50C:  MOVGE.W         R11, #0x4000
CC510:  UXTH.W          R0, R11
CC514:  SXTH.W          LR, R11
CC518:  MUL.W           R0, LR, R0
CC51C:  ASRS            R0, R0, #0x10
CC51E:  SMLABT.W        R1, R11, R11, R0
CC522:  LDR             R0, [SP,#0x48+var_34]
CC524:  LDR             R0, [R0]
CC526:  CMP             R1, #0
CC528:  MOV             R3, R1
CC52A:  IT MI
CC52C:  NEGMI           R3, R1
CC52E:  CMP             R3, R6
CC530:  IT LT
CC532:  MOVLT           R3, R6
CC534:  CMP.W           R10, #0
CC538:  BLE             loc_CC558
CC53A:  CLZ.W           R5, R10
CC53E:  STR             R4, [SP,#0x48+var_44]
CC540:  RSBS.W          R8, R5, #0x18
CC544:  MOV             R4, R10
CC546:  RSB.W           R2, R8, #0
CC54A:  BEQ             loc_CC574
CC54C:  CMP.W           R8, #0xFFFFFFFF
CC550:  BLE             loc_CC566
CC552:  ROR.W           R4, R10, R8
CC556:  B               loc_CC574
CC558:  NEGS            R6, R0
CC55A:  SXTH.W          R12, R3
CC55E:  SMULTB.W        R6, R6, R3
CC562:  MOVS            R3, #0
CC564:  B               loc_CC610
CC566:  ADD.W           R4, R8, #0x20 ; ' '
CC56A:  LSL.W           R6, R10, R2
CC56E:  LSR.W           R4, R10, R4
CC572:  ORRS            R4, R6
CC574:  AND.W           R6, R4, #0x7F
CC578:  STR             R2, [SP,#0x48+var_48]
CC57A:  MOV.W           R2, #0xD50000
CC57E:  TST.W           R5, #1
CC582:  MUL.W           R6, R2, R6
CC586:  MOV.W           R4, #0x8000
CC58A:  IT EQ
CC58C:  MOVWEQ          R4, #0xB486
CC590:  MOV.W           R12, R5,LSR#1
CC594:  LSR.W           R4, R4, R12
CC598:  MOV.W           R9, #0x8000
CC59C:  UXTH            R2, R4
CC59E:  CMP.W           R8, #0
CC5A2:  MOV.W           R6, R6,LSR#16
CC5A6:  MUL.W           R2, R6, R2
CC5AA:  SMLABT.W        R4, R6, R4, R4
CC5AE:  SXTH            R6, R3
CC5B0:  STR             R6, [SP,#0x48+var_38]
CC5B2:  ADD.W           R2, R4, R2,LSR#16
CC5B6:  LDR             R4, [SP,#0x48+var_44]
CC5B8:  LSL.W           R2, R2, R4
CC5BC:  SUB.W           R2, R2, R0
CC5C0:  SMULTB.W        R6, R2, R3
CC5C4:  MOV             R3, R10
CC5C6:  BEQ             loc_CC5E4
CC5C8:  CMP.W           R8, #0xFFFFFFFF
CC5CC:  BLE             loc_CC5D4
CC5CE:  ROR.W           R3, R10, R8
CC5D2:  B               loc_CC5E4
CC5D4:  LDR             R2, [SP,#0x48+var_48]
CC5D6:  ADD.W           R3, R8, #0x20 ; ' '
CC5DA:  LSR.W           R3, R10, R3
CC5DE:  LSL.W           R2, R10, R2
CC5E2:  ORRS            R3, R2
CC5E4:  AND.W           R2, R3, #0x7F
CC5E8:  MOV.W           R3, #0xD50000
CC5EC:  TST.W           R5, #1
CC5F0:  MUL.W           R2, R3, R2
CC5F4:  IT EQ
CC5F6:  MOVWEQ          R9, #0xB486
CC5FA:  LSR.W           R3, R9, R12
CC5FE:  UXTH            R5, R3
CC600:  LDR.W           R12, [SP,#0x48+var_38]
CC604:  LSRS            R2, R2, #0x10
CC606:  MULS            R5, R2
CC608:  SMLABT.W        R2, R2, R3, R3
CC60C:  ADD.W           R3, R2, R5,LSR#16
CC610:  SXTH            R2, R1
CC612:  UXTH.W          R5, R10
CC616:  MULS            R2, R5
CC618:  LDR             R5, [SP,#0x48+var_40]
CC61A:  ADD             R6, R0
CC61C:  LSLS            R3, R4
CC61E:  SUBS            R0, R3, R0
CC620:  UXTH            R3, R5
CC622:  UXTH            R0, R0
CC624:  MUL.W           R3, LR, R3
CC628:  MUL.W           R0, R0, R12
CC62C:  ASRS            R2, R2, #0x10
CC62E:  SMLATB.W        R1, R10, R1, R2
CC632:  ASRS            R3, R3, #0x10
CC634:  SMLABT.W        R3, LR, R5, R3
CC638:  ADD.W           R2, R6, R0,ASR#16
CC63C:  LDR             R6, [SP,#0x48+var_34]
CC63E:  STR             R2, [R6]
CC640:  LDR             R0, [SP,#0x48+var_30]
CC642:  SUB.W           R0, R0, R3,LSL#4
CC646:  ADD.W           R3, R0, R1,LSL#6
CC64A:  STR             R3, [SP,#0x48+var_30]
CC64C:  LDR             R0, [R6,#4]
CC64E:  CMP             R3, #1
CC650:  BLT             loc_CC674
CC652:  MOV             R10, R4
CC654:  CLZ.W           R4, R3
CC658:  RSBS.W          R1, R4, #0x18
CC65C:  MOV             R5, R3
CC65E:  RSB.W           R8, R1, #0
CC662:  STR.W           R12, [SP,#0x48+var_38]
CC666:  BEQ             loc_CC688
CC668:  CMP.W           R1, #0xFFFFFFFF
CC66C:  BLE             loc_CC67A
CC66E:  ROR.W           R5, R3, R1
CC672:  B               loc_CC688
CC674:  MOVS            R5, #0
CC676:  MOVS            R1, #0
CC678:  B               loc_CC6FE
CC67A:  ADD.W           R5, R1, #0x20 ; ' '
CC67E:  LSL.W           R6, R3, R8
CC682:  LSR.W           R5, R3, R5
CC686:  ORRS            R5, R6
CC688:  AND.W           R6, R5, #0x7F
CC68C:  MOV.W           R12, #0xD50000
CC690:  TST.W           R4, #1
CC694:  MOV.W           R4, R4,LSR#1
CC698:  MUL.W           R5, R6, R12
CC69C:  MOV.W           R6, #0x8000
CC6A0:  IT EQ
CC6A2:  MOVWEQ          R6, #0xB486
CC6A6:  CMP             R1, #0
CC6A8:  LSR.W           R4, R6, R4
CC6AC:  UXTH.W          LR, R4
CC6B0:  MOV.W           R9, R4,ASR#16
CC6B4:  MOV.W           R5, R5,LSR#16
CC6B8:  MUL.W           R6, R5, LR
CC6BC:  SMLABT.W        R5, R5, R4, R4
CC6C0:  ADD.W           R5, R5, R6,LSR#16
CC6C4:  LSL.W           R5, R5, R10
CC6C8:  BEQ             loc_CC6E2
CC6CA:  CMP.W           R1, #0xFFFFFFFF
CC6CE:  BLE             loc_CC6D4
CC6D0:  RORS            R3, R1
CC6D2:  B               loc_CC6E2
CC6D4:  ADDS            R1, #0x20 ; ' '
CC6D6:  LSL.W           R6, R3, R8
CC6DA:  LSR.W           R1, R3, R1
CC6DE:  ORR.W           R3, R1, R6
CC6E2:  AND.W           R1, R3, #0x7F
CC6E6:  MUL.W           R1, R1, R12
CC6EA:  LDR.W           R12, [SP,#0x48+var_38]
CC6EE:  LSRS            R1, R1, #0x10
CC6F0:  MUL.W           R3, R1, LR
CC6F4:  SMLABB.W        R1, R1, R9, R4
CC6F8:  MOV             R4, R10
CC6FA:  ADD.W           R1, R1, R3,LSR#16
CC6FE:  LSLS            R1, R4
CC700:  SUBS            R3, R5, R0
CC702:  SUBS            R1, R1, R0
CC704:  SMLABT.W        R0, R12, R3, R0
CC708:  UXTH            R1, R1
CC70A:  MUL.W           R1, R1, R12
CC70E:  ADD.W           R4, R0, R1,ASR#16
CC712:  CMP             R4, #0
CC714:  MOV             R0, R4
CC716:  IT MI
CC718:  NEGMI           R0, R4
CC71A:  CMP             R2, #1
CC71C:  CLZ.W           R9, R0
CC720:  IT LE
CC722:  MOVLE           R2, #1
CC724:  SUB.W           R0, R9, #1
CC728:  CMP             R2, #0
CC72A:  LSL.W           R6, R4, R0
CC72E:  MOV             R0, R2
CC730:  IT MI
CC732:  NEGMI           R0, R2
CC734:  UXTH.W          R8, R6
CC738:  CLZ.W           R10, R0
CC73C:  SUB.W           R0, R10, #1
CC740:  LSL.W           R5, R2, R0
CC744:  MOV             R0, #0x1FFFFFFF
CC748:  ASRS            R1, R5, #0x10
CC74A:  BLX             sub_108848
CC74E:  SXTH            R1, R0
CC750:  MUL.W           R2, R8, R1
CC754:  ASRS            R2, R2, #0x10
CC756:  SMLATB.W        R2, R6, R0, R2
CC75A:  SMMUL.W         R3, R2, R5
CC75E:  SUB.W           R3, R6, R3,LSL#3
CC762:  UXTH            R6, R3
CC764:  SMLABT.W        R0, R0, R3, R2
CC768:  MULS            R1, R6
CC76A:  LDR             R2, [SP,#0x48+var_34]
CC76C:  STR             R4, [R2,#4]
CC76E:  ADD.W           R0, R0, R1,ASR#16
CC772:  RSB.W           R1, R10, #1
CC776:  ADD             R1, R9
CC778:  ADD.W           R2, R1, #0xE
CC77C:  CMP.W           R2, #0xFFFFFFFF
CC780:  BLE             loc_CC78E
CC782:  MOVS            R1, #0
CC784:  CMP             R2, #0x20 ; ' '
CC786:  IT LT
CC788:  ASRLT.W         R1, R0, R2
CC78C:  B               loc_CC7C0
CC78E:  NEGS            R1, R2
CC790:  MOV             R2, #0x7FFFFFFF
CC794:  MOV.W           R3, #0x80000000
CC798:  LSRS            R2, R1
CC79A:  ASRS            R3, R1
CC79C:  CMP             R3, R2
CC79E:  BLE             loc_CC7AE
CC7A0:  CMP             R0, R3
CC7A2:  MOV             R6, R3
CC7A4:  BGT             loc_CC7BC
CC7A6:  CMP             R0, R2
CC7A8:  IT LT
CC7AA:  MOVLT           R0, R2
CC7AC:  B               loc_CC7BA
CC7AE:  CMP             R0, R2
CC7B0:  MOV             R6, R2
CC7B2:  BGT             loc_CC7BC
CC7B4:  CMP             R0, R3
CC7B6:  IT LT
CC7B8:  MOVLT           R0, R3
CC7BA:  MOV             R6, R0
CC7BC:  LSL.W           R1, R6, R1
CC7C0:  CMP             R1, #0
CC7C2:  MOVW            R0, #0x7FFF
CC7C6:  IT LE
CC7C8:  MOVLE           R1, #0
CC7CA:  CMP             R1, R0
CC7CC:  IT GE
CC7CE:  MOVGE           R1, R0
CC7D0:  LDR             R0, [SP,#0x48+var_3C]
CC7D2:  STR             R1, [R0]
CC7D4:  LDR             R0, =(__stack_chk_guard_ptr - 0xCC7DC)
CC7D6:  LDR             R1, [SP,#0x48+var_20]
CC7D8:  ADD             R0, PC; __stack_chk_guard_ptr
CC7DA:  LDR             R0, [R0]; __stack_chk_guard
CC7DC:  LDR             R0, [R0]
CC7DE:  SUBS            R0, R0, R1
CC7E0:  ITTTT EQ
CC7E2:  MOVEQ           R0, R11
CC7E4:  ADDEQ           SP, SP, #0x2C ; ','
CC7E6:  POPEQ.W         {R8-R11}
CC7EA:  POPEQ           {R4-R7,PC}
CC7EC:  BLX             __stack_chk_fail
