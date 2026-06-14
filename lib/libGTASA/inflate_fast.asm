; =========================================================
; Game Engine Function: inflate_fast
; Address            : 0x20E39C - 0x20E7D4
; =========================================================

20E39C:  PUSH            {R4-R7,LR}
20E39E:  ADD             R7, SP, #0xC
20E3A0:  PUSH.W          {R8-R11}
20E3A4:  SUB             SP, SP, #0x3C
20E3A6:  STRD.W          R3, R2, [SP,#0x58+var_34]
20E3AA:  LDRD.W          R11, R3, [R7,#arg_0]
20E3AE:  LDRD.W          R9, R8, [R11,#0x1C]
20E3B2:  LDRD.W          R2, LR, [R11,#0x30]
20E3B6:  LDRD.W          R6, R12, [R3]
20E3BA:  CMP             LR, R2
20E3BC:  BCS             loc_20E3CC
20E3BE:  MVN.W           R3, LR
20E3C2:  ADD             R3, R2
20E3C4:  ADD.W           R2, R11, #0x2C ; ','
20E3C8:  STR             R2, [SP,#0x58+var_4C]
20E3CA:  B               loc_20E3D8
20E3CC:  MOV             R3, R11
20E3CE:  LDR.W           R2, [R3,#0x2C]!
20E3D2:  STR             R3, [SP,#0x58+var_4C]
20E3D4:  SUB.W           R3, R2, LR
20E3D8:  LDR.W           R2, =(inflate_mask_ptr - 0x20E3E2)
20E3DC:  LDR             R5, [SP,#0x58+var_30]
20E3DE:  ADD             R2, PC; inflate_mask_ptr
20E3E0:  LDR             R2, [R2]; inflate_mask
20E3E2:  LDR.W           R0, [R2,R0,LSL#2]
20E3E6:  STR             R0, [SP,#0x58+var_20]
20E3E8:  LDR.W           R0, =(inflate_mask_ptr - 0x20E3F4)
20E3EC:  LDR.W           R1, [R2,R1,LSL#2]
20E3F0:  ADD             R0, PC; inflate_mask_ptr
20E3F2:  STR             R1, [SP,#0x58+var_38]
20E3F4:  MOV             R1, R3
20E3F6:  LDR             R4, [R0]; inflate_mask
20E3F8:  LDR.W           R0, =(inflate_mask_ptr - 0x20E402)
20E3FC:  STR             R4, [SP,#0x58+var_24]
20E3FE:  ADD             R0, PC; inflate_mask_ptr
20E400:  LDR             R0, [R0]; inflate_mask
20E402:  STR             R0, [SP,#0x58+var_3C]
20E404:  LDR.W           R0, =(inflate_mask_ptr - 0x20E40C)
20E408:  ADD             R0, PC; inflate_mask_ptr
20E40A:  LDR             R0, [R0]; inflate_mask
20E40C:  STR             R0, [SP,#0x58+var_40]
20E40E:  LDR.W           R0, =(inflate_mask_ptr - 0x20E416)
20E412:  ADD             R0, PC; inflate_mask_ptr
20E414:  LDR             R0, [R0]; inflate_mask
20E416:  STR             R0, [SP,#0x58+var_44]
20E418:  B               loc_20E478
20E41A:  ADD.W           R2, R12, LR
20E41E:  SUB.W           R3, R5, LR
20E422:  ADD.W           R0, R4, LR
20E426:  MOV             R10, R5
20E428:  MOV             R5, LR
20E42A:  VLD1.8          {D16-D17}, [R12]!
20E42E:  SUBS            R5, #0x10
20E430:  VST1.8          {D16-D17}, [R4]!
20E434:  BNE             loc_20E42A
20E436:  MOV             R4, R10
20E438:  CMP             R4, LR
20E43A:  LDRD.W          R12, LR, [SP,#0x58+var_2C]
20E43E:  BNE.W           loc_20E71A
20E442:  B               loc_20E726
20E444:  STR.W           R10, [SP,#0x58+var_50]
20E448:  MOV             R10, R2
20E44A:  ADD.W           R2, R12, R10
20E44E:  SUB.W           R0, R5, R10
20E452:  ADD.W           R11, R4, R10
20E456:  STR             R5, [SP,#0x58+var_54]
20E458:  MOV             R8, R10
20E45A:  MOV             R5, R10
20E45C:  MOV             R10, R4
20E45E:  VLD1.8          {D16-D17}, [R12]!
20E462:  SUBS            R5, #0x10
20E464:  VST1.8          {D16-D17}, [R10]!
20E468:  BNE             loc_20E45E
20E46A:  LDR             R4, [SP,#0x58+var_54]
20E46C:  LDR.W           R10, [SP,#0x58+var_50]
20E470:  CMP             R4, R8
20E472:  BNE.W           loc_20E6AC
20E476:  B               loc_20E6B8
20E478:  CMP.W           R9, #0x13
20E47C:  BHI             loc_20E4BA
20E47E:  RSB.W           R3, R9, #0x13
20E482:  MOV             R10, R1
20E484:  BIC.W           R2, R3, #7
20E488:  MOV             R1, R5
20E48A:  ADD.W           R0, R6, R3,LSR#3
20E48E:  LSRS            R3, R3, #3
20E490:  ADDS            R0, #1
20E492:  MOV             R5, R9
20E494:  LDRB.W          R4, [R6],#1
20E498:  LSLS            R4, R5
20E49A:  ADDS            R5, #8
20E49C:  ORR.W           R8, R8, R4
20E4A0:  CMP             R5, #0x14
20E4A2:  BCC             loc_20E494
20E4A4:  SUB.W           R6, R12, #1
20E4A8:  ADD             R2, R9
20E4AA:  LDR             R4, [SP,#0x58+var_24]
20E4AC:  SUB.W           R12, R6, R3
20E4B0:  ADD.W           R9, R2, #8
20E4B4:  MOV             R5, R1
20E4B6:  MOV             R6, R0
20E4B8:  MOV             R1, R10
20E4BA:  LDR             R0, [SP,#0x58+var_20]
20E4BC:  AND.W           R0, R0, R8
20E4C0:  LDRB.W          R2, [R5,R0,LSL#3]
20E4C4:  ADD.W           R0, R5, R0,LSL#3
20E4C8:  CBZ             R2, loc_20E4F8
20E4CA:  LDRB            R3, [R0,#1]
20E4CC:  SUB.W           R9, R9, R3
20E4D0:  LSR.W           R8, R8, R3
20E4D4:  LSLS            R3, R2, #0x1B
20E4D6:  BMI             loc_20E50E
20E4D8:  LSLS            R3, R2, #0x19
20E4DA:  BMI.W           loc_20E74E
20E4DE:  LDR             R3, [R0,#4]
20E4E0:  LDR.W           R2, [R4,R2,LSL#2]
20E4E4:  ADD.W           R0, R0, R3,LSL#3
20E4E8:  AND.W           R3, R2, R8
20E4EC:  LDRB.W          R2, [R0,R3,LSL#3]
20E4F0:  ADD.W           R0, R0, R3,LSL#3
20E4F4:  CMP             R2, #0
20E4F6:  BNE             loc_20E4CA
20E4F8:  LDRB            R2, [R0,#1]
20E4FA:  ADDS            R0, #4
20E4FC:  SUBS            R1, #1
20E4FE:  LDR             R0, [R0]
20E500:  SUB.W           R9, R9, R2
20E504:  LSR.W           R8, R8, R2
20E508:  STRB.W          R0, [LR],#1
20E50C:  B               loc_20E72C
20E50E:  STRD.W          R12, LR, [SP,#0x58+var_2C]
20E512:  AND.W           R4, R2, #0xF
20E516:  LDR             R2, [SP,#0x58+var_3C]
20E518:  LDR.W           R12, [R0,#4]
20E51C:  LSR.W           R3, R8, R4
20E520:  STR             R1, [SP,#0x58+var_48]
20E522:  LDR.W           R11, [R2,R4,LSL#2]
20E526:  SUB.W           R2, R9, R4
20E52A:  CMP             R2, #0xE
20E52C:  BHI             loc_20E566
20E52E:  ADD.W           R0, R4, #0xE
20E532:  ADD.W           LR, R6, #1
20E536:  SUB.W           R5, R0, R9
20E53A:  LSRS            R0, R5, #3
20E53C:  BIC.W           R5, R5, #7
20E540:  ADD             R5, R9
20E542:  ADD.W           R9, R5, #8
20E546:  LDRB.W          R5, [R6],#1
20E54A:  LSLS            R5, R2
20E54C:  ADDS            R2, #8
20E54E:  ORRS            R3, R5
20E550:  CMP             R2, #0xF
20E552:  BCC             loc_20E546
20E554:  LDR             R6, [SP,#0x58+var_2C]
20E556:  SUB.W           R2, R9, R4
20E55A:  ADD.W           R4, LR, R0
20E55E:  SUBS            R6, #1
20E560:  SUBS            R0, R6, R0
20E562:  STR             R0, [SP,#0x58+var_2C]
20E564:  B               loc_20E568
20E566:  MOV             R4, R6
20E568:  LDR             R0, [SP,#0x58+var_38]
20E56A:  LDR             R1, [SP,#0x58+var_34]
20E56C:  AND.W           R6, R3, R0
20E570:  ADD.W           R0, R1, R6,LSL#3
20E574:  LDRB.W          R6, [R1,R6,LSL#3]
20E578:  LDR             R1, [SP,#0x58+var_40]
20E57A:  LDRB            R5, [R0,#1]
20E57C:  TST.W           R6, #0x10
20E580:  SUB.W           R9, R2, R5
20E584:  LSR.W           LR, R3, R5
20E588:  BNE             loc_20E5B6
20E58A:  LSLS            R2, R6, #0x19
20E58C:  BMI.W           loc_20E7A4
20E590:  LDR             R2, [R0,#4]
20E592:  LDR.W           R3, [R1,R6,LSL#2]
20E596:  AND.W           R3, R3, LR
20E59A:  ADD.W           R2, R0, R2,LSL#3
20E59E:  ADD.W           R0, R2, R3,LSL#3
20E5A2:  LDRB.W          R6, [R2,R3,LSL#3]
20E5A6:  LDRB            R5, [R0,#1]
20E5A8:  TST.W           R6, #0x10
20E5AC:  SUB.W           R9, R9, R5
20E5B0:  LSR.W           LR, LR, R5
20E5B4:  BEQ             loc_20E58A
20E5B6:  AND.W           R3, R6, #0xF
20E5BA:  AND.W           R10, R11, R8
20E5BE:  CMP             R9, R3
20E5C0:  BCS             loc_20E5FC
20E5C2:  SUBS            R5, R3, #1
20E5C4:  SUB.W           R5, R5, R9
20E5C8:  BIC.W           R8, R5, #7
20E5CC:  MOV.W           R11, R5,LSR#3
20E5D0:  ADD.W           R5, R4, R5,LSR#3
20E5D4:  ADDS            R6, R5, #1
20E5D6:  MOV             R5, R9
20E5D8:  LDRB.W          R2, [R4],#1
20E5DC:  LSLS            R2, R5
20E5DE:  ADDS            R5, #8
20E5E0:  ORR.W           LR, LR, R2
20E5E4:  CMP             R5, R3
20E5E6:  BCC             loc_20E5D8
20E5E8:  LDR             R2, [SP,#0x58+var_2C]
20E5EA:  SUBS            R2, #1
20E5EC:  SUB.W           R2, R2, R11
20E5F0:  STR             R2, [SP,#0x58+var_2C]
20E5F2:  ADD.W           R2, R9, R8
20E5F6:  ADD.W           R9, R2, #8
20E5FA:  B               loc_20E5FE
20E5FC:  MOV             R6, R4
20E5FE:  LDR             R1, [SP,#0x58+var_44]
20E600:  ADD             R10, R12
20E602:  LDR.W           R11, [R7,#arg_0]
20E606:  LDR.W           R8, [SP,#0x58+var_28]
20E60A:  LDR.W           R4, [R1,R3,LSL#2]
20E60E:  LDR.W           R5, [R11,#0x28]
20E612:  LDR             R1, [R0,#4]
20E614:  AND.W           R11, R4, LR
20E618:  SUB.W           R2, R8, R5
20E61C:  ADD.W           R0, R11, R1
20E620:  CMP             R0, R2
20E622:  BLS             loc_20E672
20E624:  STRD.W          R1, R5, [SP,#0x58+var_54]
20E628:  SUBS            R4, R0, R2
20E62A:  LDR             R1, [SP,#0x58+var_4C]
20E62C:  CMP             R10, R4
20E62E:  LDR.W           R8, [R1]
20E632:  SUB.W           R12, R8, R4
20E636:  BLS             loc_20E69A
20E638:  STR.W           R10, [SP,#0x58+var_58]
20E63C:  CMP             R4, #0x10
20E63E:  LDRD.W          R1, R0, [SP,#0x58+var_54]
20E642:  ADD             R0, R1
20E644:  LDR             R1, [SP,#0x58+var_48]
20E646:  ADD             R0, R11
20E648:  LDR.W           R11, [SP,#0x58+var_28]
20E64C:  SUB.W           R10, R0, R11
20E650:  BCC             loc_20E6A8
20E652:  BIC.W           R2, R4, #0xF
20E656:  CBZ             R2, loc_20E6A4
20E658:  MOV             R5, R4
20E65A:  LDR             R4, [SP,#0x58+var_28]
20E65C:  CMP             R4, R8
20E65E:  ITT CC
20E660:  ADDCC           R0, R4, R5
20E662:  CMPCC           R12, R0
20E664:  BCS.W           loc_20E444
20E668:  MOV             R11, R4
20E66A:  MOV             R0, R5
20E66C:  MOV             R2, R12
20E66E:  MOV             R4, R5
20E670:  B               loc_20E6AC
20E672:  SUB.W           R0, R8, R0
20E676:  SUB.W           R4, R10, #2
20E67A:  ADD.W           R12, R0, #2
20E67E:  LDR.W           R11, [R7,#arg_0]
20E682:  LDRB            R2, [R0]
20E684:  STRB.W          R2, [R8]
20E688:  LDRB            R2, [R0,#1]
20E68A:  STRB.W          R2, [R8,#1]
20E68E:  ADD.W           R8, R8, #2
20E692:  STR.W           R8, [SP,#0x58+var_28]
20E696:  LDR             R1, [SP,#0x58+var_48]
20E698:  B               loc_20E6CE
20E69A:  MOV             R4, R10
20E69C:  LDR.W           R11, [R7,#arg_0]
20E6A0:  LDR             R1, [SP,#0x58+var_48]
20E6A2:  B               loc_20E6CE
20E6A4:  LDR.W           R11, [SP,#0x58+var_28]
20E6A8:  MOV             R0, R4
20E6AA:  MOV             R2, R12
20E6AC:  LDRB.W          R5, [R2],#1
20E6B0:  SUBS            R0, #1
20E6B2:  STRB.W          R5, [R11],#1
20E6B6:  BNE             loc_20E6AC
20E6B8:  LDR             R0, [SP,#0x58+var_28]
20E6BA:  LDR.W           R11, [R7,#arg_0]
20E6BE:  ADD             R0, R10
20E6C0:  STR             R0, [SP,#0x58+var_28]
20E6C2:  LDR.W           R10, [SP,#0x58+var_58]
20E6C6:  LDR.W           R12, [R11,#0x28]
20E6CA:  SUB.W           R4, R10, R4
20E6CE:  SUB.W           R1, R1, R10
20E6D2:  SUB.W           R9, R9, R3
20E6D6:  LSR.W           R8, LR, R3
20E6DA:  CMP             R4, #0x10
20E6DC:  BCC             loc_20E70C
20E6DE:  BIC.W           LR, R4, #0xF
20E6E2:  CMP.W           LR, #0
20E6E6:  BEQ             loc_20E70C
20E6E8:  ADD.W           R0, R12, R4
20E6EC:  MOV             R5, R4
20E6EE:  LDR             R4, [SP,#0x58+var_28]
20E6F0:  CMP             R4, R0
20E6F2:  ITT CC
20E6F4:  ADDCC           R0, R4, R5
20E6F6:  CMPCC           R12, R0
20E6F8:  BCS.W           loc_20E41A
20E6FC:  MOV             R2, R12
20E6FE:  MOV             R0, R4
20E700:  MOV             LR, R4
20E702:  MOV             R3, R5
20E704:  LDR.W           R12, [SP,#0x58+var_2C]
20E708:  MOV             R4, R5
20E70A:  B               loc_20E71A
20E70C:  LDR.W           LR, [SP,#0x58+var_28]
20E710:  MOV             R2, R12
20E712:  MOV             R3, R4
20E714:  LDR.W           R12, [SP,#0x58+var_2C]
20E718:  MOV             R0, LR
20E71A:  LDRB.W          R5, [R2],#1
20E71E:  SUBS            R3, #1
20E720:  STRB.W          R5, [R0],#1
20E724:  BNE             loc_20E71A
20E726:  ADD             LR, R4
20E728:  LDR             R4, [SP,#0x58+var_24]
20E72A:  LDR             R5, [SP,#0x58+var_30]
20E72C:  CMP.W           R12, #0xA
20E730:  ITT CS
20E732:  LSRCS           R0, R1, #1
20E734:  CMPCS           R0, #0x80
20E736:  BHI.W           loc_20E478
20E73A:  LDR             R4, [R7,#arg_4]
20E73C:  LDR             R0, [R4,#4]
20E73E:  SUB.W           R1, R0, R12
20E742:  MOV.W           R0, R9,LSR#3
20E746:  CMP             R0, R1
20E748:  MOV.W           R0, #0
20E74C:  B               loc_20E77A
20E74E:  LDR             R4, [R7,#arg_4]
20E750:  LSLS            R0, R2, #0x1A
20E752:  BMI             loc_20E76A
20E754:  LDR             R0, [R4,#4]
20E756:  ADR             R1, aInvalidLiteral_0; "invalid literal/length code"
20E758:  STR             R1, [R4,#0x18]
20E75A:  SUB.W           R1, R0, R12
20E75E:  MOV.W           R0, R9,LSR#3
20E762:  CMP             R0, R1
20E764:  MOV             R0, #0xFFFFFFFD
20E768:  B               loc_20E77A
20E76A:  LDR             R0, [R4,#4]
20E76C:  SUB.W           R1, R0, R12
20E770:  MOV.W           R0, R9,LSR#3
20E774:  CMP             R0, R1
20E776:  MOV.W           R0, #1
20E77A:  IT CC
20E77C:  MOVCC.W         R1, R9,LSR#3
20E780:  ADD.W           R2, R1, R12
20E784:  SUB.W           R3, R9, R1,LSL#3
20E788:  STRD.W          R3, R8, [R11,#0x1C]
20E78C:  LDR             R3, [R4]
20E78E:  SUBS            R1, R6, R1
20E790:  LDR             R5, [R4,#8]
20E792:  SUBS            R3, R1, R3
20E794:  ADD             R3, R5
20E796:  STM             R4!, {R1-R3}
20E798:  STR.W           LR, [R11,#0x34]
20E79C:  ADD             SP, SP, #0x3C ; '<'
20E79E:  POP.W           {R8-R11}
20E7A2:  POP             {R4-R7,PC}
20E7A4:  LDR             R0, [R7,#arg_4]
20E7A6:  ADR             R1, aInvalidDistanc_0; "invalid distance code"
20E7A8:  MOV             R6, R4
20E7AA:  MOV             R8, LR
20E7AC:  LDR.W           R11, [R7,#arg_0]
20E7B0:  MOV             R3, R0
20E7B2:  LDR             R0, [R3,#4]
20E7B4:  MOV             R4, R3
20E7B6:  STR             R1, [R3,#0x18]
20E7B8:  LDR             R2, [SP,#0x58+var_2C]
20E7BA:  SUBS            R1, R0, R2
20E7BC:  MOV.W           R0, R9,LSR#3
20E7C0:  CMP             R0, R1
20E7C2:  MOV             R0, #0xFFFFFFFD
20E7C6:  IT CC
20E7C8:  MOVCC.W         R1, R9,LSR#3
20E7CC:  LDR.W           LR, [SP,#0x58+var_28]
20E7D0:  ADD             R2, R1
20E7D2:  B               loc_20E784
