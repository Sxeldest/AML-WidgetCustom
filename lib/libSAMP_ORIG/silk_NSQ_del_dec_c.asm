; =========================================================
; Game Engine Function: silk_NSQ_del_dec_c
; Address            : 0xD4518 - 0xD5386
; =========================================================

D4518:  PUSH            {R4-R7,LR}
D451A:  ADD             R7, SP, #0xC
D451C:  PUSH.W          {R8-R11}
D4520:  SUB             SP, SP, #0xC4
D4522:  STR.W           R2, [R7,#var_88]
D4526:  MOV             R2, R1
D4528:  LDR.W           R1, =(__stack_chk_guard_ptr - 0xD4538)
D452C:  STR.W           R3, [R7,#var_48]
D4530:  MOVW            R3, #0x10E8
D4534:  ADD             R1, PC; __stack_chk_guard_ptr
D4536:  LDR             R1, [R1]; __stack_chk_guard
D4538:  LDR             R1, [R1]
D453A:  STR.W           R1, [R7,#var_24]
D453E:  MOVW            R1, #0x1214
D4542:  STR.W           R0, [R7,#var_CC]
D4546:  LDR.W           R8, [R0,R1]
D454A:  MOVW            R0, #0x514
D454E:  STR.W           R2, [R7,#var_44]
D4552:  LDR             R2, [R2,R3]
D4554:  MUL.W           R1, R8, R0; n
D4558:  STR.W           R2, [R7,#var_80]
D455C:  ADDS            R0, R1, #7
D455E:  BIC.W           R0, R0, #7
D4562:  SUB.W           R0, SP, R0; int
D4566:  MOV             SP, R0
D4568:  MOV             R2, R0
D456A:  STR.W           R2, [R7,#var_38]
D456E:  BLX             sub_10967C
D4572:  CMP.W           R8, #1
D4576:  BLT             loc_D4624
D4578:  LDR.W           R2, [R7,#var_44]
D457C:  MOVW            R0, #0x10E4
D4580:  LDR.W           R1, [R7,#var_CC]
D4584:  MOV.W           R11, #0
D4588:  LDR.W           R9, [R7,#var_38]
D458C:  LDR             R0, [R2,R0]
D458E:  STR.W           R0, [R7,#var_2C]
D4592:  MOVW            R0, #0x11F0
D4596:  LDR             R0, [R1,R0]
D4598:  MOV.W           R1, #0x10E0
D459C:  LDR             R1, [R2,R1]
D459E:  STR.W           R1, [R7,#var_30]
D45A2:  ADD.W           R1, R2, #0x1080
D45A6:  STR.W           R1, [R7,#src]
D45AA:  ADD.W           R1, R2, #0xF00
D45AE:  STR.W           R1, [R7,#var_3C]
D45B2:  LDR.W           R1, [R7,#var_88]
D45B6:  ADD.W           R0, R2, R0,LSL#2
D45BA:  LDRB.W          R1, [R1,#0x22]
D45BE:  STR.W           R1, [R7,#var_40]
D45C2:  LDR.W           R10, [R0,#0x4FC]
D45C6:  LDR.W           R0, [R7,#var_40]
D45CA:  LDR.W           R1, [R7,#var_30]
D45CE:  ADD             R0, R11
D45D0:  STR.W           R10, [R9,#0x400]
D45D4:  STR.W           R1, [R9,#0x500]
D45D8:  AND.W           R0, R0, #3
D45DC:  LDR.W           R1, [R7,#var_2C]
D45E0:  LDR.W           R12, [R7,#var_3C]
D45E4:  STR.W           R1, [R9,#0x504]
D45E8:  MOV             R1, R9
D45EA:  STR.W           R0, [R9,#0x508]
D45EE:  STR.W           R0, [R9,#0x50C]
D45F2:  MOVS            R0, #0
D45F4:  STR.W           R0, [R9,#0x510]
D45F8:  LDM.W           R12!, {R2-R6}
D45FC:  STM             R1!, {R2-R6}
D45FE:  LDM.W           R12!, {R2-R6}
D4602:  STM             R1!, {R2-R6}
D4604:  LDM.W           R12, {R0,R2-R6}
D4608:  STM             R1!, {R0,R2-R6}
D460A:  ADD.W           R0, R9, #0x4A0; dest
D460E:  MOVS            R2, #0x60 ; '`'; n
D4610:  LDR.W           R1, [R7,#src]; src
D4614:  BLX             j_memcpy
D4618:  ADD.W           R11, R11, #1
D461C:  ADDW            R9, R9, #0x514
D4620:  CMP             R11, R8
D4622:  BLT             loc_D45C6
D4624:  LDR.W           R0, [R7,#var_88]
D4628:  MOVW            R3, #0x11EC
D462C:  LDR.W           R2, [R7,#var_CC]
D4630:  LDR             R4, [R7,#arg_20]
D4632:  LDRSB.W         R1, [R0,#0x1E]
D4636:  STR.W           R1, [R7,#var_30]
D463A:  ADDS            R1, R2, R3
D463C:  LDRSB.W         LR, [R0,#0x1D]
D4640:  MOVS            R0, #0
D4642:  STR.W           R0, [R7,#var_28]
D4646:  LDR             R0, [R2,R3]
D4648:  STR.W           R1, [R7,#var_50]
D464C:  CMP             R0, #0x28 ; '('
D464E:  UXTB.W          R3, LR
D4652:  MOV             R1, R0
D4654:  STR.W           R1, [R7,#src]
D4658:  IT GE
D465A:  MOVGE           R1, #0x28 ; '('
D465C:  CMP             R3, #2
D465E:  STR.W           R3, [R7,#var_2C]
D4662:  STR.W           R8, [R7,#var_54]
D4666:  BNE             loc_D468C
D4668:  MOVW            R3, #0x11E4
D466C:  LDR.W           R12, [R7,#var_44]
D4670:  LDR             R3, [R2,R3]
D4672:  CMP             R3, #1
D4674:  BLT             loc_D46A4
D4676:  MOVS            R6, #0
D4678:  LDR.W           R5, [R4,R6,LSL#2]
D467C:  ADDS            R6, #1
D467E:  SUBS            R5, #3
D4680:  CMP             R1, R5
D4682:  IT GE
D4684:  MOVGE           R1, R5
D4686:  CMP             R6, R3
D4688:  BLT             loc_D4678
D468A:  B               loc_D46A4
D468C:  LDR.W           R2, [R7,#var_80]
D4690:  LDR.W           R12, [R7,#var_44]
D4694:  CMP             R2, #1
D4696:  BLT             loc_D46A4
D4698:  LDR.W           R2, [R7,#var_80]
D469C:  SUBS            R3, R2, #3
D469E:  CMP             R1, R3
D46A0:  IT GE
D46A2:  MOVGE           R1, R3
D46A4:  LDR.W           R6, [R7,#var_CC]
D46A8:  MOVW            R9, #0x11F0
D46AC:  STR.W           R1, [R7,#var_98]
D46B0:  MOVW            R1, #0x11E8
D46B4:  LDR             R5, [R6,R1]
D46B6:  MOVS            R1, #7
D46B8:  LDR.W           R3, [R6,R9]
D46BC:  ADD             R5, R3
D46BE:  ADD.W           R4, R1, R5,LSL#2
D46C2:  BIC.W           R2, R4, #7
D46C6:  LDR.W           R4, [R7,#var_88]
D46CA:  LDRB.W          R11, [R4,#0x1F]
D46CE:  SUB.W           R4, SP, R2
D46D2:  ADD.W           R2, R1, R5,LSL#1
D46D6:  STR.W           R4, [R7,#var_7C]
D46DA:  BIC.W           R2, R2, #7
D46DE:  MOV             SP, R4
D46E0:  LDR.W           R0, [R7,#src]
D46E4:  SUB.W           R8, SP, R2
D46E8:  ADD.W           R1, R1, R0,LSL#2
D46EC:  BIC.W           R1, R1, #7
D46F0:  MOV             SP, R8
D46F2:  SUB.W           R1, SP, R1
D46F6:  STR.W           R1, [R7,#var_64]
D46FA:  MOV             SP, R1
D46FC:  SUB.W           R1, SP, #0xA0
D4700:  STR.W           R1, [R7,#var_A4]
D4704:  MOV             SP, R1
D4706:  MOVW            R5, #0x10EC
D470A:  MOVW            R1, #0x10F0
D470E:  STR.W           R3, [R12,R5]
D4712:  CMP.W           R11, #4
D4716:  MOV.W           R4, #0
D471A:  STR.W           R3, [R12,R1]
D471E:  ADD             R1, R12
D4720:  MOV.W           R10, #0
D4724:  STR.W           R1, [R7,#var_4C]
D4728:  ADD.W           R1, R6, R9
D472C:  STR.W           R1, [R7,#var_BC]
D4730:  ADD.W           R1, R12, R3,LSL#1
D4734:  IT NE
D4736:  MOVNE           R4, #1
D4738:  STR.W           R1, [R7,#var_40]
D473C:  MOVW            R1, #0x11E4
D4740:  ADDS            R2, R6, R1
D4742:  STR.W           R2, [R7,#var_A0]
D4746:  LDR             R3, [R6,R1]
D4748:  CMP             R3, #1
D474A:  BLT.W           loc_D5194
D474E:  LDR.W           R1, =(silk_Quantization_Offsets_Q10_ptr - 0xD4762)
D4752:  MOV             R2, #0xFFFFFFFC
D4756:  AND.W           R2, R2, LR,LSL#1
D475A:  LDR.W           R0, [R7,#var_30]
D475E:  ADD             R1, PC; silk_Quantization_Offsets_Q10_ptr
D4760:  LDR.W           R3, [R7,#var_38]
D4764:  LDR.W           R11, [R7,#var_4C]
D4768:  MOVW            LR, #0x8000
D476C:  LDR             R1, [R1]; silk_Quantization_Offsets_Q10
D476E:  MOVT            LR, #0xFFFF
D4772:  LDR.W           R9, [R7,#arg_20]
D4776:  ADD             R1, R2
D4778:  MOVW            R2, #0x1214
D477C:  ADD             R2, R6
D477E:  STR.W           R2, [R7,#var_8C]
D4782:  ADD.W           R2, R12, R5
D4786:  STR.W           R2, [R7,#var_B8]
D478A:  MOVW            R2, #0x121C
D478E:  LDRSH.W         R1, [R1,R0,LSL#1]
D4792:  ADD             R2, R6
D4794:  STR.W           R2, [R7,#var_AC]
D4798:  MOVW            R2, #0x10F8
D479C:  ADD             R2, R12
D479E:  STR.W           R2, [R7,#var_90]
D47A2:  MOVW            R2, #0x13E4
D47A6:  STR.W           R1, [R7,#var_A8]
D47AA:  ADD             R2, R6
D47AC:  STR.W           R2, [R7,#var_D0]
D47B0:  MOVS            R2, #3
D47B2:  LDR             R1, [R7,#arg_28]
D47B4:  EOR.W           R2, R2, R4,LSL#1
D47B8:  STR.W           R2, [R7,#var_C0]
D47BC:  MOVW            R2, #0x10FC
D47C0:  LDR.W           R5, [R7,#var_40]
D47C4:  ADD             R2, R12
D47C6:  STR.W           R2, [R7,#var_94]
D47CA:  LDR.W           R2, [R7,#var_98]
D47CE:  SXTH            R1, R1
D47D0:  STR.W           R1, [R7,#var_C8]
D47D4:  ADD.W           R1, R6, #0x1240
D47D8:  NEGS            R2, R2
D47DA:  STR.W           R2, [R7,#var_D4]
D47DE:  ADD.W           R2, R3, #0x4A0
D47E2:  STR.W           R2, [R7,#var_C4]
D47E6:  ADD.W           R2, R3, #0x510
D47EA:  STR.W           R2, [R7,#var_D8]
D47EE:  ADDW            R2, R3, #0xA24
D47F2:  STR.W           R2, [R7,#var_DC]
D47F6:  STR.W           R1, [R7,#var_B0]
D47FA:  ADD.W           R1, R6, #0x1220
D47FE:  LDR.W           R2, [R7,#var_48]
D4802:  MOV             R0, R8
D4804:  LDR.W           R3, [R7,#var_2C]
D4808:  MOV.W           R8, #0
D480C:  LDR.W           R12, [R7,#src]
D4810:  STR.W           R1, [R7,#var_9C]
D4814:  EOR.W           R1, R4, #1
D4818:  STR.W           R1, [R7,#var_B4]
D481C:  LDR             R1, [R7,#arg_0]
D481E:  STR.W           R1, [R7,#var_5C]
D4822:  STR.W           R0, [R7,#var_60]
D4826:  B               loc_D4942
D4828:  LDR.W           R0, [R7,#var_88]
D482C:  LDR.W           LR, [R7,#var_7C]
D4830:  LDRB            R0, [R0,#0x1D]
D4832:  STR.W           R0, [R7,#var_2C]
D4836:  LDR             R0, [R7,#arg_1C]
D4838:  LDR.W           R10, [R7,#var_54]
D483C:  LDR.W           R2, [R7,#var_90]
D4840:  MOV             R1, R0
D4842:  LDR.W           R0, [R1,R10,LSL#2]
D4846:  STR             R0, [R2]
D4848:  LDR.W           R0, [R7,#var_8C]
D484C:  LDR.W           R4, [R7,#var_50]
D4850:  LDR.W           R12, [R1,R10,LSL#2]
D4854:  LDR.W           R11, [R0]
D4858:  LDR             R0, [R4]
D485A:  LDR.W           R9, [R7,#var_38]
D485E:  LDR.W           R4, [R7,#var_5C]
D4862:  LDR.W           R8, [R7,#var_68]
D4866:  LDR.W           R3, [R7,#var_AC]
D486A:  LDR.W           R6, [R7,#var_9C]
D486E:  LDR.W           R5, [R7,#var_B0]
D4872:  LDR             R1, [R7,#arg_14]
D4874:  LDR             R2, [R7,#arg_18]
D4876:  LDR             R3, [R3]
D4878:  LDR             R6, [R6]
D487A:  LDR             R5, [R5]
D487C:  LDR.W           R1, [R1,R10,LSL#2]
D4880:  LDR.W           R2, [R2,R10,LSL#2]
D4884:  SUB             SP, SP, #0x58 ; 'X'
D4886:  STRD.W          R3, R6, [SP,#0x138+var_F8]
D488A:  SUB.W           R3, R7, #-var_28
D488E:  STRD.W          R5, R11, [SP,#0x138+var_F0]
D4892:  STR             R3, [SP,#0x138+var_E8]
D4894:  LDR.W           R3, [R7,#var_98]
D4898:  STR             R3, [SP,#0x138+var_E4]
D489A:  LDR.W           R3, [R7,#var_74]
D489E:  STRD.W          R3, R1, [SP,#0x138+var_118]
D48A2:  STRD.W          R2, R12, [SP,#0x138+var_110]
D48A6:  LDR             R1, [R7,#arg_24]
D48A8:  STR             R1, [SP,#0x138+var_108]
D48AA:  LDR.W           R1, [R7,#var_A8]
D48AE:  STRD.W          R1, R0, [SP,#0x138+var_104]
D48B2:  MOV             R1, R9
D48B4:  LDR.W           R5, [R7,#var_40]
D48B8:  STR.W           R8, [SP,#0x138+var_FC]
D48BC:  STR             R4, [SP,#0x138+var_138]
D48BE:  STRD.W          R5, LR, [SP,#0x138+var_134]
D48C2:  LDR.W           R0, [R7,#var_A4]
D48C6:  STR             R0, [SP,#0x138+var_12C]
D48C8:  LDR.W           R0, [R7,#var_58]
D48CC:  STR             R0, [SP,#0x138+var_128]
D48CE:  LDR.W           R0, [R7,#var_70]
D48D2:  STR             R0, [SP,#0x138+var_124]
D48D4:  LDR.W           R0, [R7,#var_6C]
D48D8:  STR             R0, [SP,#0x138+var_120]
D48DA:  LDR.W           R0, [R7,#var_80]
D48DE:  STR             R0, [SP,#0x138+var_11C]
D48E0:  LDR.W           R0, [R7,#var_2C]
D48E4:  LDR.W           R3, [R7,#var_64]
D48E8:  SXTB            R2, R0
D48EA:  LDR.W           R0, [R7,#var_44]
D48EE:  BL              sub_D5394
D48F2:  ADD             SP, SP, #0x58 ; 'X'
D48F4:  LDR.W           R1, [R7,#var_A0]
D48F8:  ADD.W           R10, R10, #1
D48FC:  LDR.W           R0, [R7,#var_50]
D4900:  MOV             R6, R10
D4902:  LDR             R3, [R1]
D4904:  LDR.W           R12, [R0]
D4908:  CMP             R10, R3
D490A:  LDR.W           R10, [R7,#arg_20]
D490E:  ADD             R4, R12
D4910:  STR.W           R4, [R7,#var_5C]
D4914:  ADD.W           R5, R5, R12,LSL#1
D4918:  MOV             R9, R10
D491A:  BGE.W           loc_D517E
D491E:  LDR.W           R1, [R7,#var_88]
D4922:  MOVW            LR, #0x8000
D4926:  LDR.W           R2, [R7,#var_48]
D492A:  ADD.W           R8, R8, #1
D492E:  MOVT            LR, #0xFFFF
D4932:  MOV             R10, R6
D4934:  ADD.W           R2, R2, R12,LSL#1
D4938:  LDRB            R3, [R1,#0x1D]
D493A:  LDR.W           R11, [R7,#var_4C]
D493E:  LDR.W           R0, [R7,#var_60]
D4942:  LDR             R1, [R7,#arg_10]
D4944:  MOVS            R4, #0
D4946:  STR.W           R2, [R7,#var_48]
D494A:  LDR             R2, [R7,#arg_4]
D494C:  LDR.W           R6, [R1,R10,LSL#2]
D4950:  LDR.W           R1, [R7,#var_94]
D4954:  STR             R4, [R1]
D4956:  LDR.W           R1, [R7,#var_B4]
D495A:  STR.W           R5, [R7,#var_40]
D495E:  ORR.W           R1, R1, R10,LSR#1
D4962:  STR.W           R10, [R7,#var_54]
D4966:  STR.W           R6, [R7,#var_30]
D496A:  ADD.W           R1, R2, R1,LSL#5
D496E:  STR.W           R1, [R7,#var_58]
D4972:  UXTB            R1, R3
D4974:  CMP             R1, #2
D4976:  BNE.W           loc_D4B3C
D497A:  LDR.W           R1, [R9,R10,LSL#2]
D497E:  STR.W           R1, [R7,#var_80]
D4982:  LDR.W           R1, [R7,#var_C0]
D4986:  TST.W           R10, R1
D498A:  BEQ             loc_D4992
D498C:  MOVS            R4, #0
D498E:  MOVS            R3, #2
D4990:  B               loc_D4B3C
D4992:  CMP.W           R10, #2
D4996:  BNE             loc_D49D4
D4998:  LDR.W           R1, [R7,#var_8C]
D499C:  MOV             R8, LR
D499E:  STR.W           R12, [R7,#src]
D49A2:  MOV.W           R12, #0
D49A6:  LDR             R2, [R1]
D49A8:  CMP             R2, #2
D49AA:  BLT             loc_D49DA
D49AC:  LDR.W           R1, [R7,#var_38]
D49B0:  MOVS            R6, #1
D49B2:  LDR.W           R5, [R7,#var_DC]
D49B6:  LDR.W           R3, [R1,#0x510]
D49BA:  MOV             R1, #0x7FFFFFF
D49BE:  LDR             R4, [R5]
D49C0:  ADDW            R5, R5, #0x514
D49C4:  CMP             R4, R3
D49C6:  ITT LT
D49C8:  MOVLT           R12, R6
D49CA:  MOVLT           R3, R4
D49CC:  ADDS            R6, #1
D49CE:  CMP             R6, R2
D49D0:  BLT             loc_D49BE
D49D2:  B               loc_D49DE
D49D4:  LDR.W           R5, [R7,#var_44]
D49D8:  B               loc_D4AE4
D49DA:  MOV             R1, #0x7FFFFFF
D49DE:  LDR.W           LR, [R7,#var_44]
D49E2:  CMP             R2, #1
D49E4:  LDR.W           R4, [R7,#var_98]
D49E8:  BLT             loc_D4A06
D49EA:  LDR.W           R6, [R7,#var_D8]
D49EE:  MOVS            R3, #0
D49F0:  CMP             R12, R3
D49F2:  ADD.W           R3, R3, #1
D49F6:  ITTT NE
D49F8:  LDRNE           R5, [R6]
D49FA:  ADDNE           R5, R5, R1
D49FC:  STRNE           R5, [R6]
D49FE:  ADDW            R6, R6, #0x514
D4A02:  CMP             R3, R2
D4A04:  BLT             loc_D49F0
D4A06:  CMP             R4, #1
D4A08:  BLT             loc_D4AD2
D4A0A:  LDR.W           R0, [R7,#var_28]
D4A0E:  MOV.W           R10, #1
D4A12:  LDR.W           LR, [R7,#var_5C]
D4A16:  ADDS            R2, R0, R4
D4A18:  LDR.W           R0, [R7,#var_D4]
D4A1C:  LDR.W           R9, [R7,#var_38]
D4A20:  MOVW            R1, #0x6667
D4A24:  SUBS            R2, #1
D4A26:  MOVT            R1, #0x6666
D4A2A:  SMMUL.W         R3, R2, R1
D4A2E:  MOVW            R1, #0x514
D4A32:  MLA.W           R6, R12, R1, R9
D4A36:  LDR             R1, [R7,#arg_1C]
D4A38:  ASRS            R5, R3, #4
D4A3A:  ADD.W           R3, R5, R3,LSR#31
D4A3E:  ADD.W           R3, R3, R3,LSL#2
D4A42:  SUB.W           R2, R2, R3,LSL#3
D4A46:  CMP             R2, #0
D4A48:  IT LT
D4A4A:  ADDLT           R2, #0x28 ; '('
D4A4C:  ADD.W           R3, R6, R2,LSL#2
D4A50:  LDR.W           R6, [R3,#0x220]
D4A54:  ADD.W           R6, R10, R6,LSR#9
D4A58:  LSRS            R6, R6, #1
D4A5A:  STRB.W          R6, [LR,R0]
D4A5E:  LDR             R5, [R1,#4]
D4A60:  LDR.W           R6, [R3,#0x2C0]
D4A64:  SXTH            R1, R5
D4A66:  UXTH            R4, R6
D4A68:  MULS            R1, R4
D4A6A:  ASRS            R1, R1, #0x10
D4A6C:  SMLABT.W        R1, R5, R6, R1
D4A70:  ADD.W           R5, R10, R5,ASR#15
D4A74:  ASRS            R5, R5, #1
D4A76:  MLA.W           R1, R5, R6, R1
D4A7A:  ADD.W           R1, R10, R1,ASR#13
D4A7E:  ASRS            R6, R1, #1
D4A80:  CMP             R6, R8
D4A82:  MOV             R6, R8
D4A84:  IT GT
D4A86:  ASRGT           R6, R1, #1
D4A88:  MOVW            R1, #0x7FFF
D4A8C:  CMP             R6, R1
D4A8E:  IT GE
D4A90:  MOVGE           R6, R1
D4A92:  LDR.W           R1, [R7,#var_40]
D4A96:  STRH.W          R6, [R1,R0,LSL#1]
D4A9A:  LDR.W           R1, [R11]
D4A9E:  LDR.W           R4, [R7,#var_44]
D4AA2:  ADD             R1, R0
D4AA4:  ADDS            R0, #1
D4AA6:  LDR.W           R3, [R3,#0x400]
D4AAA:  ADD.W           R1, R4, R1,LSL#2
D4AAE:  STR.W           R3, [R1,#0x500]
D4AB2:  BNE             loc_D4A20
D4AB4:  LDR.W           R0, [R7,#var_50]
D4AB8:  MOV.W           R8, #0
D4ABC:  LDR.W           R10, [R7,#var_54]
D4AC0:  LDR.W           R5, [R7,#var_44]
D4AC4:  LDR.W           R12, [R0]
D4AC8:  LDR.W           R0, [R7,#var_60]
D4ACC:  LDR.W           R9, [R7,#arg_20]
D4AD0:  B               loc_D4AE4
D4AD2:  LDR.W           R0, [R7,#var_60]
D4AD6:  MOV             R5, LR
D4AD8:  LDR.W           R10, [R7,#var_54]
D4ADC:  MOV.W           R8, #0
D4AE0:  LDR.W           R12, [R7,#src]
D4AE4:  LDR.W           R1, [R7,#var_80]
D4AE8:  MOV             R2, #0xFFFFFFFE
D4AEC:  LDR.W           R3, [R7,#var_9C]
D4AF0:  SUBS            R1, R2, R1
D4AF2:  LDR.W           R2, [R7,#var_BC]
D4AF6:  LDR.W           R6, [R7,#var_D0]
D4AFA:  LDR             R3, [R3]
D4AFC:  MOV             R4, R2
D4AFE:  LDR             R2, [R4]
D4B00:  LDR             R6, [R6]
D4B02:  ADD             R1, R2
D4B04:  SUBS            R1, R1, R3
D4B06:  MLA.W           R12, R12, R10, R1
D4B0A:  STRD.W          R3, R6, [SP,#0xE0+var_E8]!
D4B0E:  SUBS            R3, R2, R1
D4B10:  LDR.W           R2, [R7,#var_58]
D4B14:  ADD.W           R0, R0, R1,LSL#1
D4B18:  ADD.W           R1, R5, R12,LSL#1
D4B1C:  BLX             j_silk_LPC_analysis_filter
D4B20:  ADD             SP, SP, #8
D4B22:  LDR.W           R1, [R7,#var_B8]
D4B26:  LDR             R0, [R4]
D4B28:  MOVS            R4, #1
D4B2A:  STR             R0, [R1]
D4B2C:  LDR.W           R0, [R7,#var_94]
D4B30:  STR             R4, [R0]
D4B32:  LDR.W           R0, [R7,#var_88]
D4B36:  LDR.W           R6, [R7,#var_30]
D4B3A:  LDRB            R3, [R0,#0x1D]
D4B3C:  LDR             R0, [R7,#arg_1C]
D4B3E:  STR.W           R4, [R7,#var_78]
D4B42:  LSLS            R4, R6, #0xF
D4B44:  STR.W           R3, [R7,#var_2C]
D4B48:  LDR.W           R1, [R0,R10,LSL#2]
D4B4C:  MOVS            R0, #1
D4B4E:  STR.W           R1, [R7,#src]
D4B52:  CMP             R1, #1
D4B54:  IT GT
D4B56:  MOVGT           R0, R1
D4B58:  CMP             R0, #0
D4B5A:  MOV             R1, R0
D4B5C:  IT MI
D4B5E:  NEGMI           R1, R0
D4B60:  CLZ.W           R5, R1
D4B64:  SUBS            R1, R5, #1
D4B66:  LSL.W           R6, R0, R1
D4B6A:  MOV             R0, #0x1FFFFFFF
D4B6E:  ASRS            R1, R6, #0x10
D4B70:  BLX             sub_108848
D4B74:  UXTH            R1, R6
D4B76:  SXTH            R2, R0
D4B78:  MULS            R1, R2
D4B7A:  MOVS            R3, #1
D4B7C:  ADD.W           R3, R3, R0,ASR#15
D4B80:  ASRS            R3, R3, #1
D4B82:  ASRS            R1, R1, #0x10
D4B84:  SMLABT.W        R1, R0, R6, R1
D4B88:  NEGS            R1, R1
D4B8A:  LSLS            R1, R1, #3
D4B8C:  MULS            R3, R1
D4B8E:  UXTH            R6, R1
D4B90:  MULS            R2, R6
D4B92:  ADD.W           R3, R3, R0,LSL#16
D4B96:  SMLATB.W        R0, R1, R0, R3
D4B9A:  LDR.W           R1, [R9,R10,LSL#2]
D4B9E:  STR.W           R1, [R7,#var_84]
D4BA2:  LDR.W           R1, [R7,#var_8C]
D4BA6:  ADD.W           R0, R0, R2,ASR#16
D4BAA:  LDR             R1, [R1]
D4BAC:  STR.W           R1, [R7,#var_3C]
D4BB0:  RSB.W           R1, R5, #0x3E ; '>'
D4BB4:  CMP             R1, #0x2F ; '/'
D4BB6:  STR.W           R8, [R7,#var_68]
D4BBA:  BGT             loc_D4BE2
D4BBC:  RSB.W           R1, R1, #0x2F ; '/'
D4BC0:  LDR.W           R5, [R7,#var_50]
D4BC4:  MOV             R2, #0x7FFFFFFF
D4BC8:  MOV.W           R3, #0x80000000
D4BCC:  LSRS            R2, R1
D4BCE:  ASRS            R3, R1
D4BD0:  CMP             R3, R2
D4BD2:  BLE             loc_D4BF8
D4BD4:  CMP             R0, R3
D4BD6:  MOV             R6, R3
D4BD8:  BGT             loc_D4C06
D4BDA:  CMP             R0, R2
D4BDC:  IT LT
D4BDE:  MOVLT           R0, R2
D4BE0:  B               loc_D4C04
D4BE2:  SUB.W           R2, R1, #0x2F ; '/'
D4BE6:  CMP             R1, #0x4F ; 'O'
D4BE8:  MOV.W           R9, #0
D4BEC:  IT LT
D4BEE:  ASRLT.W         R9, R0, R2
D4BF2:  LDR.W           R5, [R7,#var_50]
D4BF6:  B               loc_D4C0A
D4BF8:  CMP             R0, R2
D4BFA:  MOV             R6, R2
D4BFC:  BGT             loc_D4C06
D4BFE:  CMP             R0, R3
D4C00:  IT LT
D4C02:  MOVLT           R0, R3
D4C04:  MOV             R6, R0
D4C06:  LSL.W           R9, R6, R1
D4C0A:  MOVW            R0, #0xFFFF
D4C0E:  LDR.W           R11, [R7,#var_48]
D4C12:  BIC.W           R0, R4, R0
D4C16:  STR.W           R0, [R7,#var_6C]
D4C1A:  LDR             R0, [R5]
D4C1C:  ADD.W           LR, R10, R10,LSL#1
D4C20:  LDR.W           R12, [R7,#var_64]
D4C24:  ADD.W           R8, R10, R10,LSL#2
D4C28:  CMP             R0, #1
D4C2A:  BLT             loc_D4C60
D4C2C:  MOVS            R1, #1
D4C2E:  ADD.W           R2, R1, R9,ASR#4
D4C32:  ADD.W           R6, R1, R2,ASR#16
D4C36:  SBFX.W          R5, R2, #1, #0x10
D4C3A:  MOVS            R2, #0
D4C3C:  ASRS            R6, R6, #1
D4C3E:  LDRSH.W         R3, [R11,R2,LSL#1]
D4C42:  UXTH.W          R10, R3
D4C46:  SMULBB.W        R1, R6, R3
D4C4A:  MUL.W           R4, R10, R5
D4C4E:  SMLABT.W        R1, R5, R3, R1
D4C52:  ADD.W           R1, R1, R4,ASR#16
D4C56:  STR.W           R1, [R12,R2,LSL#2]
D4C5A:  ADDS            R2, #1
D4C5C:  CMP             R2, R0
D4C5E:  BLT             loc_D4C3E
D4C60:  LDR.W           R1, [R7,#var_30]
D4C64:  LDR.W           R2, [R7,#var_6C]
D4C68:  LDR.W           R12, [R7,#var_38]
D4C6C:  ORR.W           R1, R2, R1,ASR#2
D4C70:  STR.W           R1, [R7,#var_74]
D4C74:  LDR             R1, [R7,#arg_C]
D4C76:  LDR.W           R11, [R7,#var_4C]
D4C7A:  ADD.W           R1, R1, LR,LSL#4
D4C7E:  STR.W           R1, [R7,#var_6C]
D4C82:  LDR             R1, [R7,#arg_8]
D4C84:  LDR.W           LR, [R7,#var_7C]
D4C88:  ADD.W           R1, R1, R8,LSL#1
D4C8C:  STR.W           R1, [R7,#var_70]
D4C90:  LDR.W           R1, [R7,#var_78]
D4C94:  LDR.W           R8, [R7,#var_60]
D4C98:  LDR.W           R10, [R7,#var_54]
D4C9C:  CBZ             R1, loc_D4CF0
D4C9E:  CMP.W           R10, #0
D4CA2:  BNE             loc_D4CB8
D4CA4:  LDR.W           R2, [R7,#var_C8]
D4CA8:  UXTH.W          R1, R9
D4CAC:  MULS            R1, R2
D4CAE:  ASRS            R1, R1, #0x10
D4CB0:  SMLATB.W        R1, R9, R2, R1
D4CB4:  MOV.W           R9, R1,LSL#2
D4CB8:  LDR.W           R1, [R7,#var_B8]
D4CBC:  LDR.W           R3, [R7,#var_84]
D4CC0:  LDR             R2, [R1]
D4CC2:  MOV             R1, #0xFFFFFFFE
D4CC6:  SUBS            R1, R1, R3
D4CC8:  ADDS            R3, R2, R1
D4CCA:  CMP             R3, R2
D4CCC:  BGE             loc_D4CF0
D4CCE:  UXTH.W          R6, R9
D4CD2:  MOV.W           R1, R9,ASR#16
D4CD6:  LDRSH.W         R5, [R8,R3,LSL#1]
D4CDA:  MUL.W           R4, R6, R5
D4CDE:  SMULBB.W        R5, R1, R5
D4CE2:  ADD.W           R5, R5, R4,ASR#16
D4CE6:  STR.W           R5, [LR,R3,LSL#2]
D4CEA:  ADDS            R3, #1
D4CEC:  CMP             R3, R2
D4CEE:  BLT             loc_D4CD6
D4CF0:  LDR.W           R1, [R7,#var_90]
D4CF4:  LDR.W           R2, [R7,#src]
D4CF8:  LDR             R1, [R1]
D4CFA:  CMP             R2, R1
D4CFC:  BNE             loc_D4D10
D4CFE:  MOV             R9, R12
D4D00:  LDR.W           R4, [R7,#var_5C]
D4D04:  LDR.W           R8, [R7,#var_68]
D4D08:  MOV             R12, R2
D4D0A:  LDR.W           R11, [R7,#var_3C]
D4D0E:  B               loc_D4866
D4D10:  CMP             R1, #0
D4D12:  MOV             R0, R1
D4D14:  IT MI
D4D16:  NEGMI           R0, R1
D4D18:  CMP             R2, #0
D4D1A:  CLZ.W           R8, R0
D4D1E:  LDR.W           R9, [R7,#var_44]
D4D22:  SUB.W           R0, R8, #1
D4D26:  LSL.W           R6, R1, R0
D4D2A:  MOV             R0, R2
D4D2C:  IT MI
D4D2E:  NEGMI           R0, R2
D4D30:  CLZ.W           R5, R0
D4D34:  SUBS            R0, R5, #1
D4D36:  LSL.W           R4, R2, R0
D4D3A:  MOV             R0, #0x1FFFFFFF
D4D3E:  ASRS            R1, R4, #0x10
D4D40:  BLX             sub_108848
D4D44:  UXTH            R1, R6
D4D46:  SXTH            R2, R0
D4D48:  MULS            R1, R2
D4D4A:  ASRS            R1, R1, #0x10
D4D4C:  SMLABT.W        R1, R0, R6, R1
D4D50:  SMMUL.W         R3, R1, R4
D4D54:  SUB.W           R3, R6, R3,LSL#3
D4D58:  UXTH            R6, R3
D4D5A:  SMLABT.W        R0, R0, R3, R1
D4D5E:  MULS            R2, R6
D4D60:  ADD.W           R1, R0, R2,ASR#16
D4D64:  RSB.W           R0, R5, #1
D4D68:  ADD             R0, R8
D4D6A:  ADDS            R0, #0x1C
D4D6C:  CMP             R0, #0xF
D4D6E:  BGT             loc_D4D96
D4D70:  RSB.W           R0, R0, #0x10
D4D74:  LDR.W           LR, [R7,#var_7C]
D4D78:  MOV             R2, #0x7FFFFFFF
D4D7C:  MOV.W           R3, #0x80000000
D4D80:  LSRS            R2, R0
D4D82:  ASRS            R3, R0
D4D84:  CMP             R3, R2
D4D86:  BLE             loc_D4DAC
D4D88:  CMP             R1, R3
D4D8A:  MOV             R6, R3
D4D8C:  BGT             loc_D4DBA
D4D8E:  CMP             R1, R2
D4D90:  IT LT
D4D92:  MOVLT           R1, R2
D4D94:  B               loc_D4DB8
D4D96:  SUB.W           R2, R0, #0x10
D4D9A:  CMP             R0, #0x30 ; '0'
D4D9C:  MOV.W           R10, #0
D4DA0:  IT LT
D4DA2:  ASRLT.W         R10, R1, R2
D4DA6:  LDR.W           LR, [R7,#var_7C]
D4DAA:  B               loc_D4DBE
D4DAC:  CMP             R1, R2
D4DAE:  MOV             R6, R2
D4DB0:  BGT             loc_D4DBA
D4DB2:  CMP             R1, R3
D4DB4:  IT LT
D4DB6:  MOVLT           R1, R3
D4DB8:  MOV             R6, R1
D4DBA:  LSL.W           R10, R6, R0
D4DBE:  LDR.W           R0, [R7,#var_BC]
D4DC2:  LDR             R1, [R0]
D4DC4:  MOVS            R0, #1
D4DC6:  CMP             R1, #1
D4DC8:  BLT             loc_D4E06
D4DCA:  LDR.W           R2, [R11]
D4DCE:  UXTH.W          R12, R10
D4DD2:  MOV.W           R3, R10,ASR#16
D4DD6:  SUBS            R1, R2, R1
D4DD8:  ADD.W           R6, R9, R1,LSL#2
D4DDC:  ADDS            R1, #1
D4DDE:  LDR.W           R5, [R6,#0x500]
D4DE2:  SXTH            R4, R5
D4DE4:  ADD.W           R5, R0, R5,ASR#15
D4DE8:  MUL.W           R2, R4, R12
D4DEC:  ASRS            R5, R5, #1
D4DEE:  SMULBB.W        R4, R4, R3
D4DF2:  ADD.W           R2, R4, R2,ASR#16
D4DF6:  MLA.W           R2, R5, R10, R2
D4DFA:  STR.W           R2, [R6,#0x500]
D4DFE:  LDR.W           R2, [R11]
D4E02:  CMP             R1, R2
D4E04:  BLT             loc_D4DD8
D4E06:  LDR.W           R0, [R7,#var_2C]
D4E0A:  UXTB            R1, R0
D4E0C:  CMP             R1, #2
D4E0E:  BNE             loc_D4E66
D4E10:  LDR.W           R0, [R7,#var_94]
D4E14:  LDR             R1, [R0]
D4E16:  CBNZ            R1, loc_D4E66
D4E18:  LDR.W           R0, [R7,#var_B8]
D4E1C:  LDR.W           R1, [R7,#var_84]
D4E20:  LDR             R2, [R0]
D4E22:  LDR.W           R0, [R7,#var_98]
D4E26:  SUB.W           R12, R2, R0
D4E2A:  MOV             R0, #0xFFFFFFFE
D4E2E:  SUBS            R3, R0, R1
D4E30:  ADD             R2, R3
D4E32:  CMP             R2, R12
D4E34:  BGE             loc_D4E66
D4E36:  UXTH.W          R3, R10
D4E3A:  MOV.W           R6, R10,ASR#16
D4E3E:  LDR.W           R5, [LR,R2,LSL#2]
D4E42:  MOVS            R0, #1
D4E44:  SXTH            R4, R5
D4E46:  ADD.W           R5, R0, R5,ASR#15
D4E4A:  MUL.W           R1, R4, R3
D4E4E:  ASRS            R5, R5, #1
D4E50:  SMULBB.W        R4, R4, R6
D4E54:  ADD.W           R1, R4, R1,ASR#16
D4E58:  MLA.W           R1, R5, R10, R1
D4E5C:  STR.W           R1, [LR,R2,LSL#2]
D4E60:  ADDS            R2, #1
D4E62:  CMP             R2, R12
D4E64:  BLT             loc_D4E3E
D4E66:  LDR.W           R0, [R7,#var_3C]
D4E6A:  CMP             R0, #1
D4E6C:  MOVW            R0, #0x514
D4E70:  BLT.W           loc_D4836
D4E74:  LDR.W           LR, [R7,#var_38]
D4E78:  UXTH.W          R11, R10
D4E7C:  LDR.W           R1, [R7,#var_C4]
D4E80:  MOV.W           R8, R10,ASR#16
D4E84:  MOVS            R5, #0
D4E86:  STR.W           R1, [R7,#var_2C]
D4E8A:  MOVS            R2, #1
D4E8C:  LDR.W           R1, [R7,#var_38]
D4E90:  MLA.W           R4, R5, R0, R1
D4E94:  STR.W           LR, [R7,#src]
D4E98:  STR.W           R5, [R7,#var_30]
D4E9C:  LDR.W           R6, [R4,#0x504]
D4EA0:  LDR.W           LR, [R4,#0x500]
D4EA4:  SXTH            R3, R6
D4EA6:  MUL.W           R9, R3, R11
D4EAA:  SMULBB.W        R3, R3, R8
D4EAE:  ADD.W           R9, R3, R9,ASR#16
D4EB2:  ADD.W           R3, R2, R6,ASR#15
D4EB6:  ASRS            R3, R3, #1
D4EB8:  MLA.W           R6, R3, R10, R9
D4EBC:  SXTH.W          R3, LR
D4EC0:  MUL.W           R9, R3, R11
D4EC4:  SMULBB.W        R3, R3, R8
D4EC8:  ADD.W           R9, R3, R9,ASR#16
D4ECC:  ADD.W           R3, R2, LR,ASR#15
D4ED0:  ASRS            R3, R3, #1
D4ED2:  MLA.W           LR, R3, R10, R9
D4ED6:  MUL.W           R9, R5, R0
D4EDA:  LDR.W           R0, [R1,R9]
D4EDE:  SXTH            R3, R0
D4EE0:  MUL.W           R12, R3, R11
D4EE4:  SMULBB.W        R3, R3, R8
D4EE8:  ADD.W           R12, R3, R12,ASR#16
D4EEC:  ADD.W           R3, R2, R0,ASR#15
D4EF0:  ASRS            R3, R3, #1
D4EF2:  MLA.W           R3, R3, R10, R12
D4EF6:  STR.W           R3, [R1,R9]
D4EFA:  STR.W           LR, [R4,#0x500]
D4EFE:  STR.W           R6, [R4,#0x504]
D4F02:  LDR.W           R1, [R7,#var_2C]
D4F06:  LDRD.W          R9, LR, [R4,#4]
D4F0A:  LDRD.W          R5, R12, [R4,#0xC]
D4F0E:  SXTH.W          R3, R9
D4F12:  MUL.W           R0, R3, R11
D4F16:  SMULBB.W        R3, R3, R8
D4F1A:  ADD.W           R0, R3, R0,ASR#16
D4F1E:  ADD.W           R3, R2, R9,ASR#15
D4F22:  ASRS            R3, R3, #1
D4F24:  MLA.W           R3, R3, R10, R0
D4F28:  ADD.W           R0, R4, #0x14
D4F2C:  STR             R3, [R4,#4]
D4F2E:  SXTH.W          R3, LR
D4F32:  MUL.W           R9, R3, R11
D4F36:  SMULBB.W        R3, R3, R8
D4F3A:  ADD.W           R9, R3, R9,ASR#16
D4F3E:  ADD.W           R3, R2, LR,ASR#15
D4F42:  ASRS            R3, R3, #1
D4F44:  MLA.W           R3, R3, R10, R9
D4F48:  STR             R3, [R4,#8]
D4F4A:  SXTH            R3, R5
D4F4C:  MUL.W           LR, R3, R11
D4F50:  SMULBB.W        R3, R3, R8
D4F54:  ADD.W           LR, R3, LR,ASR#16
D4F58:  ADD.W           R3, R2, R5,ASR#15
D4F5C:  ASRS            R3, R3, #1
D4F5E:  MLA.W           R3, R3, R10, LR
D4F62:  STR             R3, [R4,#0xC]
D4F64:  LDR.W           LR, [R4,#0x1C]
D4F68:  SXTH.W          R3, LR
D4F6C:  MUL.W           R5, R3, R11
D4F70:  SMULBB.W        R3, R3, R8
D4F74:  ADD.W           R5, R3, R5,ASR#16
D4F78:  ADD.W           R3, R2, LR,ASR#15
D4F7C:  ASRS            R3, R3, #1
D4F7E:  MLA.W           LR, R3, R10, R5
D4F82:  LDR             R5, [R4,#0x18]
D4F84:  SXTH            R3, R5
D4F86:  MUL.W           R9, R3, R11
D4F8A:  SMULBB.W        R3, R3, R8
D4F8E:  ADD.W           R9, R3, R9,ASR#16
D4F92:  ADD.W           R3, R2, R5,ASR#15
D4F96:  ASRS            R3, R3, #1
D4F98:  MLA.W           R5, R3, R10, R9
D4F9C:  SXTH.W          R3, R12
D4FA0:  MUL.W           R9, R3, R11
D4FA4:  SMULBB.W        R3, R3, R8
D4FA8:  ADD.W           R9, R3, R9,ASR#16
D4FAC:  ADD.W           R3, R2, R12,ASR#15
D4FB0:  ASRS            R3, R3, #1
D4FB2:  MLA.W           R3, R3, R10, R9
D4FB6:  STR             R3, [R4,#0x10]
D4FB8:  LDR.W           R12, [R4,#0x14]
D4FBC:  SXTH.W          R3, R12
D4FC0:  MUL.W           R9, R3, R11
D4FC4:  SMULBB.W        R3, R3, R8
D4FC8:  ADD.W           R9, R3, R9,ASR#16
D4FCC:  ADD.W           R3, R2, R12,ASR#15
D4FD0:  ASRS            R3, R3, #1
D4FD2:  MLA.W           R3, R3, R10, R9
D4FD6:  MOV.W           R9, #1
D4FDA:  STM.W           R0, {R3,R5,LR}
D4FDE:  LDR.W           R12, [R4,#0x20]
D4FE2:  SXTH.W          R3, R12
D4FE6:  MUL.W           LR, R3, R11
D4FEA:  SMULBB.W        R3, R3, R8
D4FEE:  ADD.W           LR, R3, LR,ASR#16
D4FF2:  ADD.W           R3, R9, R12,ASR#15
D4FF6:  ASRS            R3, R3, #1
D4FF8:  MLA.W           R3, R3, R10, LR
D4FFC:  STR             R3, [R4,#0x20]
D4FFE:  LDR.W           R12, [R4,#0x24]
D5002:  SXTH.W          R3, R12
D5006:  MUL.W           LR, R3, R11
D500A:  SMULBB.W        R3, R3, R8
D500E:  ADD.W           LR, R3, LR,ASR#16
D5012:  ADD.W           R3, R9, R12,ASR#15
D5016:  ASRS            R3, R3, #1
D5018:  MLA.W           R3, R3, R10, LR
D501C:  STR             R3, [R4,#0x24]
D501E:  LDR.W           R12, [R4,#0x28]
D5022:  SXTH.W          R3, R12
D5026:  MUL.W           LR, R3, R11
D502A:  SMULBB.W        R3, R3, R8
D502E:  ADD.W           LR, R3, LR,ASR#16
D5032:  ADD.W           R3, R9, R12,ASR#15
D5036:  ASRS            R3, R3, #1
D5038:  MLA.W           R3, R3, R10, LR
D503C:  STR             R3, [R4,#0x28]
D503E:  LDR.W           R12, [R4,#0x2C]
D5042:  SXTH.W          R3, R12
D5046:  MUL.W           LR, R3, R11
D504A:  SMULBB.W        R3, R3, R8
D504E:  ADD.W           LR, R3, LR,ASR#16
D5052:  ADD.W           R3, R9, R12,ASR#15
D5056:  ASRS            R3, R3, #1
D5058:  MLA.W           R3, R3, R10, LR
D505C:  STR             R3, [R4,#0x2C]
D505E:  LDR.W           R12, [R4,#0x30]
D5062:  SXTH.W          R3, R12
D5066:  MUL.W           LR, R3, R11
D506A:  SMULBB.W        R3, R3, R8
D506E:  ADD.W           LR, R3, LR,ASR#16
D5072:  ADD.W           R3, R9, R12,ASR#15
D5076:  ASRS            R3, R3, #1
D5078:  MLA.W           R3, R3, R10, LR
D507C:  STR             R3, [R4,#0x30]
D507E:  LDR.W           R12, [R4,#0x34]
D5082:  SXTH.W          R3, R12
D5086:  MUL.W           LR, R3, R11
D508A:  SMULBB.W        R3, R3, R8
D508E:  ADD.W           LR, R3, LR,ASR#16
D5092:  ADD.W           R3, R9, R12,ASR#15
D5096:  ASRS            R3, R3, #1
D5098:  MLA.W           R3, R3, R10, LR
D509C:  STR             R3, [R4,#0x34]
D509E:  LDR.W           R12, [R4,#0x38]
D50A2:  SXTH.W          R3, R12
D50A6:  MUL.W           LR, R3, R11
D50AA:  SMULBB.W        R3, R3, R8
D50AE:  ADD.W           LR, R3, LR,ASR#16
D50B2:  ADD.W           R3, R9, R12,ASR#15
D50B6:  ASRS            R3, R3, #1
D50B8:  MLA.W           R3, R3, R10, LR
D50BC:  STR             R3, [R4,#0x38]
D50BE:  LDR.W           R12, [R4,#0x3C]
D50C2:  SXTH.W          R3, R12
D50C6:  MUL.W           LR, R3, R11
D50CA:  SMULBB.W        R3, R3, R8
D50CE:  ADD.W           LR, R3, LR,ASR#16
D50D2:  ADD.W           R3, R9, R12,ASR#15
D50D6:  ASRS            R3, R3, #1
D50D8:  MLA.W           R3, R3, R10, LR
D50DC:  STR             R3, [R4,#0x3C]
D50DE:  MOVS            R3, #0
D50E0:  LDR.W           R4, [R1,R3,LSL#2]
D50E4:  SXTH            R6, R4
D50E6:  MUL.W           R5, R6, R11
D50EA:  SMULBB.W        R6, R6, R8
D50EE:  ADD.W           R6, R6, R5,ASR#16
D50F2:  ADD.W           R5, R9, R4,ASR#15
D50F6:  ASRS            R5, R5, #1
D50F8:  MLA.W           R6, R5, R10, R6
D50FC:  STR.W           R6, [R1,R3,LSL#2]
D5100:  ADDS            R3, #1
D5102:  CMP             R3, #0x18
D5104:  BNE             loc_D50E0
D5106:  LDR.W           LR, [R7,#src]
D510A:  MOVS            R3, #0
D510C:  ADD.W           R6, LR, R3,LSL#2
D5110:  ADDS            R3, #1
D5112:  CMP             R3, #0x28 ; '('
D5114:  LDR.W           R5, [R6,#0x360]
D5118:  LDR.W           R4, [R6,#0x400]
D511C:  SXTH            R2, R5
D511E:  MUL.W           R1, R2, R11
D5122:  SXTH            R0, R4
D5124:  SMULBB.W        R2, R2, R8
D5128:  MUL.W           R12, R0, R11
D512C:  SMULBB.W        R0, R0, R8
D5130:  ADD.W           R1, R2, R1,ASR#16
D5134:  ADD.W           R2, R9, R5,ASR#15
D5138:  MOV.W           R2, R2,ASR#1
D513C:  MLA.W           R1, R2, R10, R1
D5140:  ADD.W           R2, R9, R4,ASR#15
D5144:  ADD.W           R0, R0, R12,ASR#16
D5148:  MOV.W           R2, R2,ASR#1
D514C:  MLA.W           R0, R2, R10, R0
D5150:  STR.W           R1, [R6,#0x360]
D5154:  STR.W           R0, [R6,#0x400]
D5158:  BNE             loc_D510C
D515A:  LDR.W           R1, [R7,#var_2C]
D515E:  ADDW            LR, LR, #0x514
D5162:  LDR.W           R5, [R7,#var_30]
D5166:  LDR.W           R0, [R7,#var_3C]
D516A:  ADDW            R1, R1, #0x514
D516E:  ADDS            R5, #1
D5170:  CMP             R5, R0
D5172:  MOVW            R0, #0x514
D5176:  BNE.W           loc_D4E86
D517A:  B.W             loc_D4828
D517E:  LDR.W           R1, [R7,#var_8C]
D5182:  STR.W           R12, [R7,#src]
D5186:  LDR.W           R9, [R7,#var_5C]
D518A:  LDR.W           R8, [R1]
D518E:  LDR.W           R2, [R7,#var_44]
D5192:  B               loc_D51A2
D5194:  LDR.W           R9, [R7,#arg_0]
D5198:  MOV             R2, R12
D519A:  LDR.W           R5, [R7,#var_40]
D519E:  LDR.W           R8, [R7,#var_54]
D51A2:  MOVW            R1, #0x10E8
D51A6:  ADD.W           R11, R2, R1
D51AA:  LDR.W           R1, [R7,#var_CC]
D51AE:  MOVW            R2, #0x11E8
D51B2:  MOV             R12, R5
D51B4:  CMP.W           R8, #2
D51B8:  ADD.W           R10, R1, R2
D51BC:  BLT             loc_D51E6
D51BE:  LDR.W           R1, [R7,#var_38]
D51C2:  MOVS            R5, #1
D51C4:  MOV             R6, R1
D51C6:  ADDW            R2, R6, #0xA24
D51CA:  LDR.W           R6, [R6,#0x510]
D51CE:  MOVS            R1, #0
D51D0:  LDR             R4, [R2]
D51D2:  ADDW            R2, R2, #0x514
D51D6:  CMP             R4, R6
D51D8:  ITT LT
D51DA:  MOVLT           R1, R5
D51DC:  MOVLT           R6, R4
D51DE:  ADDS            R5, #1
D51E0:  CMP             R5, R8
D51E2:  BLT             loc_D51D0
D51E4:  B               loc_D51E8
D51E6:  MOVS            R1, #0
D51E8:  MOVW            R2, #0x514
D51EC:  LDR.W           R6, [R7,#var_38]
D51F0:  MLA.W           R8, R1, R2, R6
D51F4:  LDR.W           R2, [R7,#var_88]
D51F8:  LDR.W           R1, [R8,#0x50C]
D51FC:  STRB.W          R1, [R2,#0x22]
D5200:  LDR.W           R2, [R7,#var_98]
D5204:  CMP             R2, #1
D5206:  BLT             loc_D52DE
D5208:  LDR             R0, [R7,#arg_1C]
D520A:  MOVS            R4, #1
D520C:  STRD.W          R11, R10, [R7,#var_3C]
D5210:  MOV             R10, R12
D5212:  ADD.W           R0, R0, R3,LSL#2
D5216:  LDR.W           R3, [R0,#-4]
D521A:  LDR.W           R0, [R7,#var_28]
D521E:  ADDS            R5, R0, R2
D5220:  MOVS            R0, #1
D5222:  ADD.W           R1, R0, R3,ASR#21
D5226:  NEGS            R2, R2
D5228:  ASRS            R0, R1, #1
D522A:  STR.W           R0, [R7,#var_30]
D522E:  SBFX.W          LR, R3, #6, #0x10
D5232:  LDR.W           R11, [R7,#var_44]
D5236:  LDR.W           R3, [R7,#var_30]
D523A:  STR.W           R8, [R7,#var_2C]
D523E:  MOV             R8, #0xFFFF8000
D5246:  MOVW            R0, #0x6667
D524A:  SUBS            R5, #1
D524C:  MOVT            R0, #0x6666
D5250:  MOV             R12, R9
D5252:  SMMUL.W         R6, R5, R0
D5256:  ASRS            R0, R6, #4
D5258:  ADD.W           R0, R0, R6,LSR#31
D525C:  ADD.W           R0, R0, R0,LSL#2
D5260:  SUB.W           R5, R5, R0,LSL#3
D5264:  CMP             R5, #0
D5266:  IT LT
D5268:  ADDLT           R5, #0x28 ; '('
D526A:  LDR.W           R0, [R7,#var_2C]
D526E:  ADD.W           R0, R0, R5,LSL#2
D5272:  LDR.W           R6, [R0,#0x220]
D5276:  ADD.W           R6, R4, R6,LSR#9
D527A:  LSRS            R6, R6, #1
D527C:  STRB.W          R6, [R9,R2]
D5280:  LDR.W           R6, [R0,#0x2C0]
D5284:  UXTH            R1, R6
D5286:  MUL.W           R9, R6, R3
D528A:  MUL.W           R1, R1, LR
D528E:  SMLABT.W        R6, LR, R6, R9
D5292:  MOV             R9, R12
D5294:  ADD.W           R1, R6, R1,ASR#16
D5298:  ADD.W           R1, R4, R1,ASR#7
D529C:  ASRS            R6, R1, #1
D529E:  CMP             R6, R8
D52A0:  MOV             R6, R8
D52A2:  IT GT
D52A4:  ASRGT           R6, R1, #1
D52A6:  MOVW            R1, #0x7FFF
D52AA:  CMP             R6, R1
D52AC:  IT GE
D52AE:  MOVGE           R6, R1
D52B0:  STRH.W          R6, [R10,R2,LSL#1]
D52B4:  LDR.W           R1, [R7,#var_4C]
D52B8:  LDR.W           R0, [R0,#0x400]
D52BC:  LDR             R1, [R1]
D52BE:  ADD             R1, R2
D52C0:  ADDS            R2, #1
D52C2:  ADD.W           R1, R11, R1,LSL#2
D52C6:  STR.W           R0, [R1,#0x500]
D52CA:  BNE             loc_D5246
D52CC:  LDR.W           R0, [R7,#var_50]
D52D0:  LDR             R0, [R0]
D52D2:  STR.W           R0, [R7,#src]
D52D6:  LDRD.W          R11, R10, [R7,#var_3C]
D52DA:  LDR.W           R8, [R7,#var_2C]
D52DE:  LDR.W           R0, [R7,#src]
D52E2:  LDR.W           R9, [R7,#var_44]
D52E6:  ADD.W           R12, R8, R0,LSL#2
D52EA:  ADD.W           R1, R9, #0xF00
D52EE:  LDM.W           R12!, {R2-R6}
D52F2:  STM             R1!, {R2-R6}
D52F4:  LDM.W           R12!, {R2-R6}
D52F8:  STM             R1!, {R2-R6}
D52FA:  LDM.W           R12, {R0,R2-R6}
D52FE:  STM             R1!, {R0,R2-R6}
D5300:  ADD.W           R1, R8, #0x4A0; src
D5304:  ADD.W           R0, R9, #0x1080; dest
D5308:  MOVS            R2, #0x60 ; '`'; n
D530A:  BLX             j_memcpy
D530E:  LDR.W           R0, [R8,#0x500]
D5312:  MOV.W           R2, #0x10E0
D5316:  LDR.W           R1, [R8,#0x504]
D531A:  STR.W           R0, [R9,R2]
D531E:  MOVW            R0, #0x10E4
D5322:  STR.W           R1, [R9,R0]
D5326:  LDR.W           R0, [R7,#var_A0]
D532A:  LDR             R1, [R7,#arg_20]
D532C:  LDR             R0, [R0]
D532E:  ADD.W           R0, R1, R0,LSL#2
D5332:  LDR.W           R0, [R0,#-4]
D5336:  STR.W           R0, [R11]
D533A:  LDR.W           R1, [R7,#var_BC]
D533E:  LDR.W           R0, [R10]
D5342:  MOV             R4, R1
D5344:  LDR             R2, [R4]
D5346:  ADD.W           R1, R9, R0,LSL#1; src
D534A:  MOV             R0, R9; dest
D534C:  LSLS            R2, R2, #1; n
D534E:  BLX             j_memmove
D5352:  LDR.W           R1, [R10]
D5356:  ADD.W           R0, R9, #0x500; dest
D535A:  LDR             R2, [R4]
D535C:  ADD.W           R1, R0, R1,LSL#2; src
D5360:  LSLS            R2, R2, #2; n
D5362:  BLX             j_memmove
D5366:  LDR             R0, =(__stack_chk_guard_ptr - 0xD5370)
D5368:  LDR.W           R1, [R7,#var_24]
D536C:  ADD             R0, PC; __stack_chk_guard_ptr
D536E:  LDR             R0, [R0]; __stack_chk_guard
D5370:  LDR             R0, [R0]
D5372:  SUBS            R0, R0, R1
D5374:  ITTTT EQ
D5376:  SUBEQ.W         R4, R7, #-var_1C
D537A:  MOVEQ           SP, R4
D537C:  POPEQ.W         {R8-R11}
D5380:  POPEQ           {R4-R7,PC}
D5382:  BLX             __stack_chk_fail
