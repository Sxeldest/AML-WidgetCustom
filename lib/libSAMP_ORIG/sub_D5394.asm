; =========================================================
; Game Engine Function: sub_D5394
; Address            : 0xD5394 - 0xD5E64
; =========================================================

D5394:  PUSH            {R4-R7,LR}
D5396:  ADD             R7, SP, #0xC
D5398:  PUSH.W          {R8-R11}
D539C:  SUB             SP, SP, #0xF4
D539E:  SUB.W           LR, R7, #-var_100
D53A2:  LDR.W           R11, [R7,#arg_4C]
D53A6:  STR.W           R3, [R7,#var_94]
D53AA:  MOV             R10, R1
D53AC:  STR.W           R0, [LR,#-0x10]
D53B0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xD53BC)
D53B4:  STR.W           R2, [R7,#var_E0]
D53B8:  ADD             R0, PC; __stack_chk_guard_ptr
D53BA:  LDR             R0, [R0]; __stack_chk_guard
D53BC:  LDR             R0, [R0]
D53BE:  STR.W           R0, [R7,#var_24]
D53C2:  RSB.W           R0, R11, R11,LSL#3
D53C6:  SUB.W           R1, SP, R0,LSL#3
D53CA:  LDR             R0, [R7,#arg_38]
D53CC:  STR.W           R1, [R7,#var_4C]
D53D0:  MOV             SP, R1
D53D2:  CMP             R0, #1
D53D4:  BLT.W           loc_D5E16
D53D8:  LDR             R0, [R7,#arg_2C]
D53DA:  SUB.W           R6, R7, #-var_100
D53DE:  MOVW            R1, #0x10EC
D53E2:  LDR.W           R12, [R7,#arg_8]
D53E6:  LDR.W           R2, [R6,#-0x10]
D53EA:  MOV.W           R6, #0x200
D53EE:  ASRS            R0, R0, #6
D53F0:  LDR.W           R9, [R7,#arg_28]
D53F4:  STR.W           R0, [R7,#var_E4]
D53F8:  ADDS            R4, R2, R1
D53FA:  LDRD.W          R3, R0, [R7,#arg_30]
D53FE:  MOVW            R1, #0x10F0
D5402:  ADDS            R5, R2, R1
D5404:  LDR             R1, [R7,#arg_1C]
D5406:  STR.W           R4, [R7,#var_D4]
D540A:  SUB.W           R6, R6, R3,LSR#1
D540E:  STR.W           R6, [R7,#var_CC]
D5412:  MOVW            R6, #0xFE00
D5416:  LDR.W           R8, [R7,#arg_40]
D541A:  MOVT            R6, #0xFFFF
D541E:  LDR.W           LR, [R7,#arg_50]
D5422:  ADD.W           R6, R6, R3,LSR#1
D5426:  STR.W           R6, [R7,#var_B8]
D542A:  LDR             R6, [R4]
D542C:  RSB.W           R4, R1, #2
D5430:  STR.W           R5, [R7,#var_D8]
D5434:  ADD             R6, R4
D5436:  LDR             R5, [R5]
D5438:  MOVS            R4, #0
D543A:  STR.W           R10, [R7,#var_98]
D543E:  ADD.W           R6, R12, R6,LSL#2
D5442:  STR.W           R6, [R7,#var_E8]
D5446:  RSB.W           R6, R1, #1
D544A:  ADD             R6, R5
D544C:  ADD.W           R6, R2, R6,LSL#2
D5450:  LDR.W           R2, [R7,#var_4C]
D5454:  ADD.W           R1, R6, #0x500
D5458:  STR.W           R1, [R7,#var_DC]
D545C:  ADD.W           R1, R2, #0xC
D5460:  STR.W           R1, [R7,#var_F0]
D5464:  ADD.W           R1, R2, #0x20 ; ' '
D5468:  STR.W           R1, [R7,#var_F4]
D546C:  ADD.W           R1, R2, #0x3C ; '<'
D5470:  STR.W           R1, [R7,#var_EC]
D5474:  ADD.W           R1, R10, #0x2C0
D5478:  SUB.W           R2, R7, #-var_100
D547C:  STR.W           R1, [R7,#var_F8]
D5480:  ADD.W           R1, R10, #0x180
D5484:  STR.W           R1, [R7,#var_FC]
D5488:  ADD.W           R1, R10, #0x4A8
D548C:  STR             R1, [R2]
D548E:  SUB.W           R2, R7, #-var_100
D5492:  ADDW            R1, R10, #0x4A4
D5496:  STR.W           R1, [R2,#-4]
D549A:  SXTH            R1, R3
D549C:  STR.W           R1, [R7,#var_9C]
D54A0:  RSB.W           R1, R0, #0x3B0
D54A4:  STR.W           R1, [R7,#var_C4]
D54A8:  SUB.W           R1, R0, #0x3B0
D54AC:  STR.W           R1, [R7,#var_C8]
D54B0:  ADD.W           R1, R0, #0x3B0
D54B4:  SUBS            R0, #0x50 ; 'P'
D54B6:  STR.W           R0, [R7,#var_BC]
D54BA:  MOV.W           R0, R9,ASR#16
D54BE:  STR.W           R1, [R7,#var_C0]
D54C2:  STR.W           R0, [R7,#var_A0]
D54C6:  SXTH.W          R0, R9
D54CA:  STR.W           R0, [R7,#var_A4]
D54CE:  SUB.W           R2, R7, #-var_100
D54D2:  LDR             R0, [R7,#arg_24]
D54D4:  LDR             R1, [R7,#arg_20]
D54D6:  SXTH            R0, R0
D54D8:  STR.W           R0, [R7,#var_A8]
D54DC:  SUB.W           R0, R8, #1
D54E0:  STR.W           R0, [R7,#var_5C]
D54E4:  MOV.W           R0, R8,ASR#1
D54E8:  STR.W           R0, [R7,#var_AC]
D54EC:  LDR             R0, [R7,#arg_48]
D54EE:  SXTH            R0, R0
D54F0:  STR.W           R0, [R7,#var_B0]
D54F4:  LDR             R0, [R7,#arg_44]
D54F6:  ASRS            R0, R0, #1
D54F8:  STR.W           R0, [R7,#var_B4]
D54FC:  ASRS            R0, R1, #0x10
D54FE:  STR.W           R0, [R2,#-8]
D5502:  SXTH            R0, R1
D5504:  SUB.W           R1, R7, #-var_100
D5508:  STR.W           R0, [R1,#-0xC]
D550C:  MOVS            R0, #0
D550E:  STR.W           R0, [R7,#var_48]
D5512:  B               loc_D5520
D5514:  MOVS            R6, #0
D5516:  MOVS            R5, #0
D5518:  CMP             R1, R12
D551A:  BLT.W           loc_D5C50
D551E:  B               loc_D5C94
D5520:  LDR.W           R0, [R7,#var_E0]
D5524:  STR.W           R4, [R7,#var_D0]
D5528:  CMP             R0, #2
D552A:  BNE             loc_D55B2
D552C:  LDR.W           R12, [R7,#var_E8]
D5530:  LDR.W           R0, [R12,#-0x10]
D5534:  STR.W           R0, [R7,#var_28]
D5538:  LDR             R0, [R7,#arg_14]
D553A:  LDRD.W          LR, R9, [R12,#-0xC]
D553E:  LDR.W           R6, [R12]
D5542:  MOV             R8, R0
D5544:  LDR.W           R3, [R12,#-4]
D5548:  LDRSH.W         R5, [R8]
D554C:  ADD.W           R12, R12, #4
D5550:  UXTH            R2, R6
D5552:  LDRSH.W         R0, [R8,#2]
D5556:  LDRSH.W         R1, [R8,#4]
D555A:  MULS            R2, R5
D555C:  LDRSH.W         R4, [R8,#6]
D5560:  ASRS            R2, R2, #0x10
D5562:  SMLABT.W        R2, R5, R6, R2
D5566:  SMLATB.W        R2, R3, R0, R2
D556A:  UXTH            R3, R3
D556C:  MULS            R0, R3
D556E:  ADD.W           R0, R2, R0,ASR#16
D5572:  UXTH.W          R2, R9
D5576:  SMLATB.W        R0, R9, R1, R0
D557A:  MULS            R1, R2
D557C:  LDRSH.W         R2, [R8,#8]
D5580:  STR.W           R12, [R7,#var_E8]
D5584:  ADD.W           R0, R0, R1,ASR#16
D5588:  UXTH.W          R1, LR
D558C:  MULS            R1, R4
D558E:  SMLATB.W        R0, LR, R4, R0
D5592:  LDR.W           R4, [R7,#var_28]
D5596:  LDR.W           LR, [R7,#arg_50]
D559A:  UXTH            R3, R4
D559C:  MULS            R3, R2
D559E:  ADD.W           R0, R0, R1,ASR#16
D55A2:  MOVS            R1, #4
D55A4:  SMLATB.W        R0, R4, R2, R0
D55A8:  ADD.W           R0, R0, R3,ASR#16
D55AC:  ADD.W           R0, R1, R0,LSL#1
D55B0:  B               loc_D55B4
D55B2:  MOVS            R0, #0
D55B4:  STR.W           R0, [R7,#var_50]
D55B8:  LDR             R0, [R7,#arg_1C]
D55BA:  CMP             R0, #1
D55BC:  BLT             loc_D5602
D55BE:  LDR.W           R6, [R7,#var_DC]
D55C2:  SUB.W           R8, R7, #-var_100
D55C6:  LDRD.W          R0, R1, [R6,#-8]
D55CA:  LDR             R2, [R6]
D55CC:  ADDS            R6, #4
D55CE:  LDR.W           R4, [R8,#-0xC]
D55D2:  SUB.W           R8, R7, #-var_100
D55D6:  ADD             R0, R2
D55D8:  STR.W           R6, [R7,#var_DC]
D55DC:  LDR.W           R5, [R8,#-8]
D55E0:  UXTH            R2, R0
D55E2:  MULS            R2, R4
D55E4:  SMULTB.W        R3, R1, R5
D55E8:  UXTH            R1, R1
D55EA:  MULS            R1, R5
D55EC:  SMLATB.W        R0, R0, R4, R3
D55F0:  ADD.W           R0, R0, R2,ASR#16
D55F4:  ADD.W           R0, R0, R1,ASR#16
D55F8:  LDR.W           R1, [R7,#var_50]
D55FC:  SUB.W           R0, R1, R0,LSL#2
D5600:  B               loc_D5604
D5602:  MOVS            R0, #0
D5604:  STR.W           R0, [R7,#var_58]
D5608:  LDR             R0, [R7,#arg_18]
D560A:  CMP.W           R11, #0
D560E:  BLE.W           loc_D5B42
D5612:  LDR             R1, [R7,#arg_10]
D5614:  SUB.W           LR, R7, #-var_100
D5618:  MOV.W           R12, #0
D561C:  LDRSH.W         R2, [R1]
D5620:  STR.W           R2, [R7,#var_60]
D5624:  LDRSH.W         R2, [R1,#2]
D5628:  STR.W           R2, [R7,#var_64]
D562C:  LDRSH.W         R2, [R1,#4]
D5630:  STR.W           R2, [R7,#var_68]
D5634:  LDRSH.W         R2, [R1,#6]
D5638:  STR.W           R2, [R7,#var_6C]
D563C:  LDR.W           R2, [R7,#var_5C]
D5640:  LDRSH.W         R2, [R0,R2,LSL#1]
D5644:  STR.W           R2, [R7,#var_70]
D5648:  LDRSH.W         R0, [R0]
D564C:  STR.W           R0, [R7,#var_74]
D5650:  LDRSH.W         R0, [R1,#0x12]
D5654:  STR.W           R0, [R7,#var_78]
D5658:  LDRSH.W         R0, [R1,#0x10]
D565C:  STR.W           R0, [R7,#var_7C]
D5660:  LDRSH.W         R0, [R1,#0xE]
D5664:  STR.W           R0, [R7,#var_80]
D5668:  LDRSH.W         R0, [R1,#0xC]
D566C:  STR.W           R0, [R7,#var_84]
D5670:  LDRSH.W         R0, [R1,#0xA]
D5674:  STR.W           R0, [R7,#var_88]
D5678:  LDRSH.W         R0, [R1,#8]
D567C:  STR.W           R0, [R7,#var_8C]
D5680:  LDR.W           R0, [R7,#var_48]
D5684:  ADDS            R0, #0xF
D5686:  STR.W           R0, [R7,#var_90]
D568A:  LDR.W           R0, [LR]
D568E:  SUB.W           LR, R7, #-var_100
D5692:  LDR.W           R1, [LR,#-4]
D5696:  STR.W           R1, [R7,#var_34]
D569A:  STR.W           R0, [R7,#var_28]
D569E:  MOVW            R0, #0x514
D56A2:  STR.W           R12, [R7,#var_38]
D56A6:  MLA.W           R12, R12, R0, R10
D56AA:  MOVW            R1, #0x636B
D56AE:  MOVW            R2, #0x8435
D56B2:  MOVT            R1, #0x3619
D56B6:  MOVT            R2, #0xBB3
D56BA:  LDR.W           R0, [R12,#0x508]
D56BE:  MLA.W           R0, R0, R2, R1
D56C2:  STR.W           R0, [R12,#0x508]
D56C6:  LDR.W           R1, [R7,#var_90]
D56CA:  LDR.W           R6, [R7,#var_60]
D56CE:  LDR.W           R0, [R12,R1,LSL#2]
D56D2:  ADD.W           R3, R12, R1,LSL#2
D56D6:  LDR.W           R1, [R7,#var_B4]
D56DA:  LDR.W           R5, [R3,#-4]
D56DE:  UXTH            R2, R0
D56E0:  SMLABT.W        R0, R6, R0, R1
D56E4:  MULS            R2, R6
D56E6:  LDR.W           R6, [R7,#var_64]
D56EA:  UXTH            R1, R5
D56EC:  MUL.W           LR, R1, R6
D56F0:  LDR.W           R1, [R3,#-8]
D56F4:  ADD.W           R0, R0, R2,ASR#16
D56F8:  UXTH            R2, R1
D56FA:  SMLATB.W        R0, R5, R6, R0
D56FE:  LDR.W           R6, [R7,#var_68]
D5702:  LDR.W           R5, [R3,#-0xC]
D5706:  MULS            R2, R6
D5708:  ADD.W           R0, R0, LR,ASR#16
D570C:  SMLATB.W        R0, R1, R6, R0
D5710:  LDR.W           R6, [R7,#var_6C]
D5714:  UXTH            R1, R5
D5716:  MUL.W           LR, R1, R6
D571A:  LDR.W           R1, [R3,#-0x10]
D571E:  ADD.W           R0, R0, R2,ASR#16
D5722:  SMLATB.W        R0, R5, R6, R0
D5726:  LDR.W           R6, [R7,#var_8C]
D572A:  UXTH            R2, R1
D572C:  LDR.W           R5, [R3,#-0x14]
D5730:  MULS            R2, R6
D5732:  ADD.W           R0, R0, LR,ASR#16
D5736:  SMLATB.W        R0, R1, R6, R0
D573A:  LDR.W           R6, [R7,#var_88]
D573E:  UXTH            R1, R5
D5740:  MUL.W           LR, R1, R6
D5744:  ADD.W           R0, R0, R2,ASR#16
D5748:  SMLATB.W        R2, R5, R6, R0
D574C:  LDRD.W          R9, R5, [R3,#-0x24]
D5750:  LDRD.W          R1, R0, [R3,#-0x1C]
D5754:  LDR.W           R6, [R7,#var_84]
D5758:  STR.W           R12, [R7,#var_2C]
D575C:  ADD.W           R2, R2, LR,ASR#16
D5760:  SMLATB.W        R2, R0, R6, R2
D5764:  UXTH            R0, R0
D5766:  MULS            R0, R6
D5768:  LDR.W           R6, [R7,#var_78]
D576C:  ADD.W           R0, R2, R0,ASR#16
D5770:  LDR.W           R2, [R7,#var_80]
D5774:  SMLATB.W        R0, R1, R2, R0
D5778:  UXTH            R1, R1
D577A:  MULS            R1, R2
D577C:  LDR.W           R2, [R7,#var_7C]
D5780:  ADD.W           R0, R0, R1,ASR#16
D5784:  UXTH            R1, R5
D5786:  MULS            R1, R2
D5788:  SMLATB.W        R0, R5, R2, R0
D578C:  UXTH.W          R2, R9
D5790:  MULS            R2, R6
D5792:  ADD.W           R0, R0, R1,ASR#16
D5796:  SMLATB.W        R0, R9, R6, R0
D579A:  LDR.W           R6, [R7,#var_B0]
D579E:  ADD.W           R8, R0, R2,ASR#16
D57A2:  ADD.W           R0, R12, #0x508
D57A6:  STR.W           R0, [R7,#var_3C]
D57AA:  LDR             R0, [R7,#arg_44]
D57AC:  CMP             R0, #0x10
D57AE:  BNE             loc_D5834
D57B0:  LDR             R0, [R7,#arg_10]
D57B2:  MOV             R12, R0
D57B4:  LDRSH.W         R1, [R12,#0x14]
D57B8:  LDRSH.W         R2, [R12,#0x16]
D57BC:  LDRSH.W         R11, [R12,#0x18]
D57C0:  LDRSH.W         LR, [R12,#0x1A]
D57C4:  LDRD.W          R4, R9, [R3,#-0x38]
D57C8:  LDRD.W          R5, R10, [R3,#-0x30]
D57CC:  LDR.W           R3, [R3,#-0x28]
D57D0:  SMLABT.W        R0, R1, R3, R8
D57D4:  UXTH            R3, R3
D57D6:  MULS            R1, R3
D57D8:  UXTH            R3, R4
D57DA:  ADD.W           R0, R0, R1,ASR#16
D57DE:  UXTH.W          R1, R10
D57E2:  MULS            R1, R2
D57E4:  SMLATB.W        R0, R10, R2, R0
D57E8:  LDRSH.W         R2, [R12,#0x1C]
D57EC:  MULS            R3, R2
D57EE:  ADD.W           R0, R0, R1,ASR#16
D57F2:  UXTH            R1, R5
D57F4:  SMLATB.W        R0, R5, R11, R0
D57F8:  MUL.W           R1, R1, R11
D57FC:  LDRSH.W         R5, [R12,#0x1E]
D5800:  LDR.W           R12, [R7,#var_2C]
D5804:  ADD.W           R0, R0, R1,ASR#16
D5808:  UXTH.W          R1, R9
D580C:  MUL.W           R10, R1, LR
D5810:  LDR.W           R1, [R7,#var_48]
D5814:  SMLATB.W        R0, R9, LR, R0
D5818:  LDR.W           R1, [R12,R1,LSL#2]
D581C:  ADD.W           R0, R0, R10,ASR#16
D5820:  SMLATB.W        R0, R4, R2, R0
D5824:  UXTH            R2, R1
D5826:  MULS            R2, R5
D5828:  ADD.W           R0, R0, R3,ASR#16
D582C:  SMLATB.W        R0, R1, R5, R0
D5830:  ADD.W           R8, R0, R2,ASR#16
D5834:  LDR.W           R1, [R12,#0x4A0]
D5838:  LDR.W           R3, [R12,#0x504]
D583C:  LDR.W           R2, [R12,#0x4A4]
D5840:  UXTH            R5, R1
D5842:  SMLABT.W        R3, R6, R1, R3
D5846:  MULS            R5, R6
D5848:  LDR.W           R4, [R7,#var_74]
D584C:  LDR.W           R0, [R7,#var_AC]
D5850:  ADD.W           R3, R3, R5,ASR#16
D5854:  STR.W           R3, [R12,#0x4A0]
D5858:  SUBS            R2, R2, R3
D585A:  UXTH            R5, R3
D585C:  SMLABT.W        R9, R4, R3, R0
D5860:  MUL.W           LR, R5, R4
D5864:  UXTH            R5, R2
D5866:  MUL.W           R0, R5, R6
D586A:  SMLABT.W        R1, R6, R2, R1
D586E:  ADD.W           LR, R9, LR,ASR#16
D5872:  ADD.W           R9, R1, R0,ASR#16
D5876:  MOV.W           R0, R8,LSL#4
D587A:  STR.W           R0, [R7,#var_30]
D587E:  LDR             R0, [R7,#arg_40]
D5880:  CMP             R0, #3
D5882:  BLT             loc_D58F6
D5884:  LDR.W           R0, [R7,#var_34]
D5888:  MOVS            R2, #0
D588A:  MOV             R12, R6
D588C:  LDR.W           R1, [R7,#var_28]
D5890:  LDR             R6, [R0]
D5892:  LDR             R3, [R7,#arg_18]
D5894:  LDR.W           R8, [R1,R2,LSL#2]
D5898:  STR.W           R9, [R0],#8
D589C:  SUB.W           R4, R8, R9
D58A0:  SMLABT.W        R6, R12, R4, R6
D58A4:  UXTH            R4, R4
D58A6:  MUL.W           R4, R4, R12
D58AA:  ADD.W           R6, R6, R4,ASR#16
D58AE:  ADD.W           R4, R3, R2,LSL#1
D58B2:  LDR             R3, [R0]
D58B4:  LDRSH.W         R5, [R4,#2]
D58B8:  SUBS            R3, R3, R6
D58BA:  STR.W           R6, [R1,R2,LSL#2]
D58BE:  UXTH            R1, R6
D58C0:  SMLABT.W        R10, R12, R3, R8
D58C4:  UXTH            R3, R3
D58C6:  LDRSH.W         R4, [R4,#4]
D58CA:  MUL.W           R8, R3, R12
D58CE:  UXTH.W          R3, R9
D58D2:  MULS            R3, R5
D58D4:  MUL.W           R11, R1, R4
D58D8:  SMLABT.W        R1, R5, R9, LR
D58DC:  ADD.W           R9, R10, R8,ASR#16
D58E0:  ADD.W           R1, R1, R3,ASR#16
D58E4:  LDR             R3, [R7,#arg_40]
D58E6:  SMLATB.W        R1, R6, R4, R1
D58EA:  ADD.W           LR, R1, R11,ASR#16
D58EE:  ADDS            R1, R2, #4
D58F0:  ADDS            R2, #2
D58F2:  CMP             R1, R3
D58F4:  BLT             loc_D588C
D58F6:  LDR.W           R0, [R7,#var_5C]
D58FA:  LDR.W           R3, [R7,#var_2C]
D58FE:  LDR             R1, [R7,#arg_50]
D5900:  ADD.W           R0, R3, R0,LSL#2
D5904:  STR.W           R9, [R0,#0x4A0]
D5908:  LDR.W           R0, [R3,#0x500]
D590C:  LDR.W           R6, [R7,#var_A0]
D5910:  LDR.W           R10, [R1]
D5914:  UXTH            R1, R0
D5916:  LDR.W           R4, [R7,#var_A8]
D591A:  MUL.W           R2, R1, R6
D591E:  LDR.W           R5, [R7,#var_70]
D5922:  ADD.W           R3, R3, R10,LSL#2
D5926:  MULS            R1, R4
D5928:  LDR.W           R3, [R3,#0x400]
D592C:  SMLABT.W        LR, R5, R9, LR
D5930:  ASRS            R2, R2, #0x10
D5932:  SMLATB.W        R2, R0, R6, R2
D5936:  LDR.W           R6, [R7,#var_A4]
D593A:  SMLATB.W        R12, R3, R6, R2
D593E:  UXTH            R2, R3
D5940:  MUL.W           R11, R2, R6
D5944:  LDR.W           R2, [R7,#var_94]
D5948:  LDR.W           R6, [R7,#var_48]
D594C:  ASRS            R3, R1, #0x10
D594E:  SMLATB.W        R0, R0, R4, R3
D5952:  LDR.W           R1, [R2,R6,LSL#2]
D5956:  UXTH.W          R2, R9
D595A:  MUL.W           R6, R2, R5
D595E:  LDR.W           R2, [R7,#var_3C]
D5962:  ADD.W           R5, R12, R11,ASR#16
D5966:  LDR.W           R8, [R2]
D596A:  LDR.W           R2, [R7,#var_30]
D596E:  ADD.W           R3, LR, R6,ASR#16
D5972:  CMP.W           R8, #0
D5976:  STR.W           R1, [R7,#var_3C]
D597A:  ADD.W           R3, R0, R3,LSL#1
D597E:  LDR.W           R0, [R7,#var_58]
D5982:  ADD             R0, R2
D5984:  MOV.W           R2, #1
D5988:  SUB.W           R0, R0, R3,LSL#2
D598C:  MOV.W           R3, R3,LSL#2
D5990:  SUB.W           R0, R0, R5,LSL#2
D5994:  ADD.W           R0, R2, R0,ASR#3
D5998:  MOV.W           R2, R5,LSL#2
D599C:  SUB.W           R11, R1, R0,ASR#1
D59A0:  MOV             R0, #0xFFFF8000
D59A8:  IT LT
D59AA:  RSBLT.W         R11, R11, #0
D59AE:  ADD.W           R0, R0, #0x400
D59B2:  LDR             R1, [R7,#arg_30]
D59B4:  CMP             R11, R0
D59B6:  IT LE
D59B8:  MOVLE           R11, R0
D59BA:  LDR             R0, [R7,#arg_34]
D59BC:  CMP.W           R11, #0x7800
D59C0:  IT GE
D59C2:  MOVGE.W         R11, #0x7800
D59C6:  LDR.W           R12, [R7,#var_38]
D59CA:  SUB.W           R0, R11, R0
D59CE:  CMP.W           R1, #0x800
D59D2:  STR.W           R10, [R7,#var_54]
D59D6:  STRD.W          R3, R2, [R7,#var_44]
D59DA:  BLE             loc_D59F6
D59DC:  LDR.W           R1, [R7,#var_B8]
D59E0:  CMP             R0, R1
D59E2:  BLE             loc_D59E8
D59E4:  SUBS            R0, R0, R1
D59E6:  B               loc_D59F6
D59E8:  LDR.W           R1, [R7,#var_CC]
D59EC:  CMP             R0, R1
D59EE:  BGE             loc_D5A0E
D59F0:  LDR.W           R1, [R7,#var_B8]
D59F4:  ADD             R0, R1
D59F6:  ASRS            R1, R0, #0xA
D59F8:  CMP             R1, #1
D59FA:  BLT             loc_D5A10
D59FC:  LDR.W           R0, [R7,#var_BC]
D5A00:  ADD.W           R9, R0, R1,LSL#10
D5A04:  ADD.W           R3, R9, #0x400
D5A08:  MOV             R10, R9
D5A0A:  MOV             LR, R3
D5A0C:  B               loc_D5A46
D5A0E:  ASRS            R1, R0, #0x1F
D5A10:  LDR.W           LR, [R7,#var_C0]
D5A14:  CMP             R1, #0
D5A16:  LDR.W           R10, [R7,#arg_34]
D5A1A:  MOV             R3, LR
D5A1C:  MOV             R9, R10
D5A1E:  BEQ             loc_D5A46
D5A20:  LDR.W           LR, [R7,#arg_34]
D5A24:  ADDS            R0, R1, #1
D5A26:  LDRD.W          R10, R9, [R7,#var_C8]
D5A2A:  MOV             R3, LR
D5A2C:  BEQ             loc_D5A46
D5A2E:  MOVS            R0, #0x50 ; 'P'
D5A30:  ORR.W           R0, R0, R1,LSL#10
D5A34:  LDR             R1, [R7,#arg_34]
D5A36:  ADD.W           R10, R0, R1
D5A3A:  RSB.W           R3, R10, #0xFC00
D5A3E:  RSB.W           R9, R10, #0
D5A42:  ADD.W           LR, R10, #0x400
D5A46:  LDR.W           R0, [R7,#var_9C]
D5A4A:  SXTH.W          R1, R9
D5A4E:  SUB.W           R4, R11, R10
D5A52:  SXTH            R3, R3
D5A54:  SMULBB.W        R1, R1, R0
D5A58:  SMLABB.W        R1, R4, R4, R1
D5A5C:  SUB.W           R4, R11, LR
D5A60:  SMULBB.W        R3, R3, R0
D5A64:  LDR.W           R0, [R7,#var_2C]
D5A68:  SMLABB.W        R4, R4, R4, R3
D5A6C:  LDR.W           R11, [R7,#arg_4C]
D5A70:  LDR.W           R6, [R0,#0x510]
D5A74:  MOV             R0, LR
D5A76:  ASRS            R5, R1, #0xA
D5A78:  MOV             R3, R5
D5A7A:  CMP.W           R5, R4,ASR#10
D5A7E:  IT LT
D5A80:  ASRLT           R3, R4, #0xA
D5A82:  IT LT
D5A84:  MOVLT           R0, R10
D5A86:  LDR.W           R2, [R7,#var_4C]
D5A8A:  ADD.W           R9, R3, R6
D5A8E:  RSB.W           R3, R12, R12,LSL#3
D5A92:  CMP.W           R5, R4,ASR#10
D5A96:  ADD.W           R12, R12, #1
D5A9A:  STR.W           R0, [R2,R3,LSL#3]
D5A9E:  ADD.W           R3, R2, R3,LSL#3
D5AA2:  MOV.W           R2, R4,ASR#10
D5AA6:  STR.W           R9, [R3,#0x20]
D5AAA:  IT LT
D5AAC:  MOVLT           R10, LR
D5AAE:  STR.W           R10, [R3,#0x1C]
D5AB2:  IT LT
D5AB4:  ASRLT           R2, R1, #0xA
D5AB6:  ADDS            R1, R2, R6
D5AB8:  STR             R1, [R3,#4]
D5ABA:  LSLS            R1, R0, #4
D5ABC:  CMP.W           R8, #0
D5AC0:  MOV.W           R2, #0
D5AC4:  IT LT
D5AC6:  SUBLT.W         R1, R2, R0,LSL#4
D5ACA:  LDR.W           R6, [R7,#var_50]
D5ACE:  CMP.W           R8, #0
D5AD2:  ADD.W           R0, R1, R6
D5AD6:  MOV.W           R1, R10,LSL#4
D5ADA:  STR             R0, [R3,#0x18]
D5ADC:  IT LT
D5ADE:  SUBLT.W         R1, R2, R10,LSL#4
D5AE2:  ADD             R1, R6
D5AE4:  LDR.W           R2, [R7,#var_30]
D5AE8:  LDR.W           R6, [R7,#var_3C]
D5AEC:  CMP             R12, R11
D5AEE:  ADD             R0, R2
D5AF0:  LDR.W           R5, [R7,#var_44]
D5AF4:  STR             R0, [R3,#8]
D5AF6:  ADD             R2, R1
D5AF8:  SUB.W           R0, R0, R6,LSL#4
D5AFC:  LDR.W           R4, [R7,#var_40]
D5B00:  STR             R0, [R3,#0x10]
D5B02:  SUB.W           R0, R0, R5
D5B06:  SUB.W           R6, R2, R6,LSL#4
D5B0A:  STR             R0, [R3,#0xC]
D5B0C:  SUB.W           R0, R0, R4
D5B10:  SUB.W           R5, R6, R5
D5B14:  STR             R0, [R3,#0x14]
D5B16:  SUB.W           R0, R5, R4
D5B1A:  ADD.W           R4, R3, #0x24 ; '$'
D5B1E:  STM             R4!, {R2,R5,R6}
D5B20:  STRD.W          R0, R1, [R3,#0x30]
D5B24:  LDR.W           R0, [R7,#var_28]
D5B28:  LDR.W           R10, [R7,#var_98]
D5B2C:  LDR.W           R1, [R7,#var_34]
D5B30:  ADDW            R0, R0, #0x514
D5B34:  ADDW            R1, R1, #0x514
D5B38:  STR.W           R1, [R7,#var_34]
D5B3C:  BNE.W           loc_D569A
D5B40:  B               loc_D5B4A
D5B42:  LDR.W           R0, [LR]
D5B46:  STR.W           R0, [R7,#var_54]
D5B4A:  LDR.W           R0, [R7,#var_54]
D5B4E:  MOV             R1, #0x66666667
D5B56:  LDR.W           LR, [R7,#arg_50]
D5B5A:  SUBS            R0, #1
D5B5C:  MOV             R3, R1
D5B5E:  SMMUL.W         R1, R0, R3
D5B62:  ASRS            R2, R1, #4
D5B64:  ADD.W           R1, R2, R1,LSR#31
D5B68:  ADD.W           R1, R1, R1,LSL#2
D5B6C:  SUB.W           R0, R0, R1,LSL#3
D5B70:  LDR             R1, [R7,#arg_54]
D5B72:  CMP             R0, #0
D5B74:  IT LT
D5B76:  ADDLT           R0, #0x28 ; '('
D5B78:  CMP.W           R11, #2
D5B7C:  ADD             R1, R0
D5B7E:  STR.W           R0, [LR]
D5B82:  LDR.W           R0, [R7,#var_4C]
D5B86:  SMMUL.W         R2, R1, R3
D5B8A:  LDR.W           R12, [R0,#4]
D5B8E:  MOV.W           R0, R2,ASR#4
D5B92:  ADD.W           R0, R0, R2,LSR#31
D5B96:  ADD.W           R0, R0, R0,LSL#2
D5B9A:  SUB.W           R8, R1, R0,LSL#3
D5B9E:  MOV.W           R1, #0
D5BA2:  BLT             loc_D5BBE
D5BA4:  LDR.W           R3, [R7,#var_EC]
D5BA8:  MOVS            R2, #1
D5BAA:  MOV             R0, R12
D5BAC:  LDR.W           R6, [R3],#0x38
D5BB0:  CMP             R6, R0
D5BB2:  ITT LT
D5BB4:  MOVLT           R1, R2
D5BB6:  MOVLT           R0, R6
D5BB8:  ADDS            R2, #1
D5BBA:  CMP             R11, R2
D5BBC:  BNE             loc_D5BAC
D5BBE:  MOVW            R0, #0x514
D5BC2:  CMP.W           R11, #1
D5BC6:  MLA.W           R0, R1, R0, R10
D5BCA:  ADD.W           R9, R0, R8,LSL#2
D5BCE:  BLT             loc_D5C0E
D5BD0:  LDR.W           R1, [R7,#var_FC]
D5BD4:  MOV             R3, R11
D5BD6:  LDR.W           R0, [R9,#0x180]
D5BDA:  MOV             R4, #0x7FFFFFF
D5BDE:  LDR.W           R2, [R7,#var_F4]
D5BE2:  ADD.W           R1, R1, R8,LSL#2
D5BE6:  LDR             R6, [R1]
D5BE8:  CMP             R6, R0
D5BEA:  BEQ             loc_D5BFC
D5BEC:  LDR.W           R6, [R2,#-0x1C]
D5BF0:  LDR             R5, [R2]
D5BF2:  ADD             R6, R4
D5BF4:  STR.W           R6, [R2,#-0x1C]
D5BF8:  ADDS            R6, R5, R4
D5BFA:  STR             R6, [R2]
D5BFC:  ADDS            R2, #0x38 ; '8'
D5BFE:  ADDW            R1, R1, #0x514
D5C02:  SUBS            R3, #1
D5C04:  BNE             loc_D5BE6
D5C06:  LDR.W           R0, [R7,#var_4C]
D5C0A:  LDR.W           R12, [R0,#4]
D5C0E:  LDR.W           R0, [R7,#var_4C]
D5C12:  CMP.W           R11, #2
D5C16:  LDR             R1, [R0,#0x20]
D5C18:  BLT.W           loc_D5514
D5C1C:  LDR.W           R3, [R7,#var_EC]
D5C20:  MOVS            R5, #0
D5C22:  MOVS            R2, #1
D5C24:  MOVS            R6, #0
D5C26:  LDR             R4, [R3,#0x1C]
D5C28:  LDR             R0, [R3]
D5C2A:  ADDS            R3, #0x38 ; '8'
D5C2C:  CMP             R4, R1
D5C2E:  IT LT
D5C30:  MOVLT           R5, R2
D5C32:  CMP             R0, R12
D5C34:  IT GT
D5C36:  MOVGT           R6, R2
D5C38:  CMP             R4, R1
D5C3A:  IT LT
D5C3C:  MOVLT           R1, R4
D5C3E:  CMP             R0, R12
D5C40:  ADD.W           R2, R2, #1
D5C44:  IT GT
D5C46:  MOVGT           R12, R0
D5C48:  CMP             R11, R2
D5C4A:  BNE             loc_D5C26
D5C4C:  CMP             R1, R12
D5C4E:  BGE             loc_D5C94
D5C50:  MOVW            R2, #0x514
D5C54:  LDR.W           R3, [R7,#var_48]
D5C58:  MLA.W           R0, R6, R2, R10
D5C5C:  MLA.W           R1, R5, R2, R10
D5C60:  SUB.W           R2, R2, R3,LSL#2; n
D5C64:  ADD.W           R0, R0, R3,LSL#2; dest
D5C68:  ADD.W           R1, R1, R3,LSL#2; src
D5C6C:  BLX             j_memcpy
D5C70:  LDR.W           R2, [R7,#var_4C]
D5C74:  RSB.W           R1, R5, R5,LSL#3
D5C78:  RSB.W           R0, R6, R6,LSL#3
D5C7C:  LDR.W           LR, [R7,#arg_50]
D5C80:  ADD.W           R1, R2, R1,LSL#3
D5C84:  ADDS            R1, #0x1C
D5C86:  ADD.W           R0, R2, R0,LSL#3
D5C8A:  LDM             R1!, {R2,R3,R6}
D5C8C:  STM             R0!, {R2,R3,R6}
D5C8E:  LDM.W           R1, {R2,R3,R5,R6}
D5C92:  STM             R0!, {R2,R3,R5,R6}
D5C94:  LDR             R0, [R7,#arg_3C]
D5C96:  MOV.W           R12, #1
D5C9A:  CMP             R0, #0
D5C9C:  ITTT LE
D5C9E:  LDRLE           R0, [R7,#arg_54]
D5CA0:  LDRLE.W         R1, [R7,#var_48]
D5CA4:  CMPLE           R1, R0
D5CA6:  BLT             loc_D5D34
D5CA8:  LDR             R1, [R7,#arg_54]
D5CAA:  LDR.W           R0, [R9,#0x220]
D5CAE:  LDR             R2, [R7,#arg_0]
D5CB0:  MOV             R5, R1
D5CB2:  LDR.W           R1, [R7,#var_48]
D5CB6:  ADD.W           R0, R12, R0,LSR#9
D5CBA:  SUBS            R1, R1, R5
D5CBC:  LSRS            R0, R0, #1
D5CBE:  STRB            R0, [R2,R1]
D5CC0:  LDR             R0, [R7,#arg_C]
D5CC2:  LDR.W           R2, [R9,#0x2C0]
D5CC6:  LDR.W           R0, [R0,R8,LSL#2]
D5CCA:  UXTH            R3, R2
D5CCC:  SXTH            R6, R0
D5CCE:  MULS            R3, R6
D5CD0:  ASRS            R3, R3, #0x10
D5CD2:  SMLABT.W        R3, R0, R2, R3
D5CD6:  ADD.W           R0, R12, R0,ASR#15
D5CDA:  ASRS            R0, R0, #1
D5CDC:  MLA.W           R0, R0, R2, R3
D5CE0:  MOV             R3, #0xFFFF8000
D5CE8:  ADD.W           R0, R12, R0,ASR#7
D5CEC:  ASRS            R2, R0, #1
D5CEE:  CMP             R2, R3
D5CF0:  MOV             R2, R3
D5CF2:  SUB.W           R3, R7, #-var_100
D5CF6:  IT GT
D5CF8:  ASRGT           R2, R0, #1
D5CFA:  MOVW            R0, #0x7FFF
D5CFE:  CMP             R2, R0
D5D00:  IT GE
D5D02:  MOVGE           R2, R0
D5D04:  LDR             R0, [R7,#arg_4]
D5D06:  STRH.W          R2, [R0,R1,LSL#1]
D5D0A:  LDR.W           R0, [R7,#var_D8]
D5D0E:  LDR.W           R2, [R3,#-0x10]
D5D12:  LDR.W           R1, [R9,#0x400]
D5D16:  LDR             R0, [R0]
D5D18:  SUBS            R0, R0, R5
D5D1A:  ADD.W           R0, R2, R0,LSL#2
D5D1E:  LDR             R2, [R7,#arg_8]
D5D20:  STR.W           R1, [R0,#0x500]
D5D24:  LDR.W           R0, [R7,#var_D4]
D5D28:  LDR.W           R1, [R9,#0x360]
D5D2C:  LDR             R0, [R0]
D5D2E:  SUBS            R0, R0, R5
D5D30:  STR.W           R1, [R2,R0,LSL#2]
D5D34:  LDR.W           R1, [R7,#var_D8]
D5D38:  MOV             R4, #0xFFFFFD80
D5D40:  CMP.W           R11, #1
D5D44:  MOV             R8, R4
D5D46:  MOVW            R4, #0xFEC0
D5D4A:  LDR             R0, [R1]
D5D4C:  MOVT            R4, #0xFFFF
D5D50:  MOV             R9, R4
D5D52:  ADD.W           R0, R0, #1
D5D56:  STR             R0, [R1]
D5D58:  LDR.W           R1, [R7,#var_D4]
D5D5C:  LDR             R0, [R1]
D5D5E:  ADD.W           R0, R0, #1
D5D62:  STR             R0, [R1]
D5D64:  LDR.W           R4, [R7,#var_D0]
D5D68:  BLT             loc_D5DF0
D5D6A:  LDR.W           R0, [R7,#var_F8]
D5D6E:  MOV             R2, R11
D5D70:  LDR.W           R1, [R7,#var_F0]
D5D74:  LDR.W           R3, [R1,#-4]
D5D78:  SUBS            R2, #1
D5D7A:  LDRD.W          R6, R5, [R1]
D5D7E:  STRD.W          R6, R5, [R0,#0x240]
D5D82:  ADD.W           R6, R4, R0
D5D86:  STR.W           R3, [R6,R8]
D5D8A:  LDR.W           R6, [LR]
D5D8E:  STR.W           R3, [R0,R6,LSL#2]
D5D92:  LDR.W           R3, [LR]
D5D96:  LDR.W           R6, [R1,#-0xC]
D5D9A:  ADD.W           R3, R0, R3,LSL#2
D5D9E:  STR.W           R6, [R3,#-0xA0]
D5DA2:  ADD.W           R6, R12, R6,ASR#9
D5DA6:  LDR.W           R3, [LR]
D5DAA:  LDR             R5, [R1,#0xC]
D5DAC:  ADD.W           R3, R0, R3,LSL#2
D5DB0:  MOV.W           R5, R5,LSL#1
D5DB4:  STR.W           R5, [R3,#0xA0]
D5DB8:  LDR.W           R3, [LR]
D5DBC:  LDR             R5, [R1,#8]
D5DBE:  ADD.W           R3, R0, R3,LSL#2
D5DC2:  STR.W           R5, [R3,#0x140]
D5DC6:  LDR.W           R3, [R0,#0x248]
D5DCA:  ADD.W           R3, R3, R6,ASR#1
D5DCE:  STR.W           R3, [R0,#0x248]
D5DD2:  LDR.W           R6, [LR]
D5DD6:  ADD.W           R6, R0, R6,LSL#2
D5DDA:  STR.W           R3, [R6,R9]
D5DDE:  LDR.W           R3, [R1,#-8]
D5DE2:  ADD.W           R1, R1, #0x38 ; '8'
D5DE6:  STR.W           R3, [R0,#0x250]
D5DEA:  ADDW            R0, R0, #0x514
D5DEE:  BNE             loc_D5D74
D5DF0:  LDR.W           R0, [LR]
D5DF4:  ADDS            R4, #4
D5DF6:  LDR             R2, [R7,#arg_C]
D5DF8:  LDR.W           R1, [R7,#var_E4]
D5DFC:  STR.W           R1, [R2,R0,LSL#2]
D5E00:  LDR.W           R0, [R7,#var_48]
D5E04:  MOV             R2, R0
D5E06:  LDR             R0, [R7,#arg_38]
D5E08:  ADDS            R2, #1
D5E0A:  CMP             R2, R0
D5E0C:  MOV             R1, R2
D5E0E:  STR.W           R1, [R7,#var_48]
D5E12:  BNE.W           loc_D5520
D5E16:  CMP.W           R11, #1
D5E1A:  BLT             loc_D5E44
D5E1C:  LDR             R0, [R7,#arg_38]
D5E1E:  MOV.W           R12, R0,LSL#2
D5E22:  ADD.W           LR, R10, R12
D5E26:  MOV             R2, R10
D5E28:  ADDW            R10, R10, #0x514
D5E2C:  SUBS.W          R11, R11, #1
D5E30:  LDM.W           LR!, {R0,R3-R6}
D5E34:  STM             R2!, {R0,R3-R6}
D5E36:  LDM.W           LR!, {R0,R3-R6}
D5E3A:  STM             R2!, {R0,R3-R6}
D5E3C:  LDM.W           LR, {R0,R1,R3-R6}
D5E40:  STM             R2!, {R0,R1,R3-R6}
D5E42:  BNE             loc_D5E22
D5E44:  LDR             R0, =(__stack_chk_guard_ptr - 0xD5E4E)
D5E46:  LDR.W           R1, [R7,#var_24]
D5E4A:  ADD             R0, PC; __stack_chk_guard_ptr
D5E4C:  LDR             R0, [R0]; __stack_chk_guard
D5E4E:  LDR             R0, [R0]
D5E50:  SUBS            R0, R0, R1
D5E52:  ITTTT EQ
D5E54:  SUBEQ.W         R4, R7, #-var_1C
D5E58:  MOVEQ           SP, R4
D5E5A:  POPEQ.W         {R8-R11}
D5E5E:  POPEQ           {R4-R7,PC}
D5E60:  BLX             __stack_chk_fail
