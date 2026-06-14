; =========================================================
; Game Engine Function: INT123_synth_1to1_s32
; Address            : 0x2394A0 - 0x23993C
; =========================================================

2394A0:  PUSH            {R4-R7,LR}
2394A2:  ADD             R7, SP, #0xC
2394A4:  PUSH.W          {R8-R11}
2394A8:  SUB             SP, SP, #0xC
2394AA:  MOV             R5, R2
2394AC:  MOV             R2, R0
2394AE:  STR             R3, [SP,#0x28+var_20]
2394B0:  MOVW            R12, #0xB2A8
2394B4:  MOVW            R0, #0xB2A0
2394B8:  LDR.W           LR, [R5,R12]
2394BC:  LDR             R6, [R5,R0]
2394BE:  MOVW            R0, #0x4848
2394C2:  LDR             R0, [R5,R0]
2394C4:  CBZ             R0, loc_2394EE
2394C6:  ADD.W           R0, R5, R1,LSL#8
2394CA:  MOVW            R4, #0x4850
2394CE:  ADD             R4, R0
2394D0:  MOVS            R0, #0
2394D2:  ADDS            R3, R4, R0
2394D4:  VLDR            D16, [R3]
2394D8:  ADDS            R3, R2, R0
2394DA:  ADDS            R0, #8
2394DC:  VLDR            D17, [R3]
2394E0:  CMP.W           R0, #0x100
2394E4:  VMUL.F64        D16, D17, D16
2394E8:  VSTR            D16, [R3]
2394EC:  BNE             loc_2394D2
2394EE:  ADD.W           R4, R6, LR
2394F2:  MOVW            R0, #0x4838
2394F6:  CBZ             R1, loc_239502
2394F8:  LDR.W           R10, [R5,R0]
2394FC:  ADDS            R4, #4
2394FE:  MOVS            R1, #1
239500:  B               loc_239510
239502:  LDR             R1, [R5,R0]
239504:  ADDS            R1, #0xF
239506:  AND.W           R10, R1, #0xF
23950A:  STR.W           R10, [R5,R0]
23950E:  MOVS            R1, #0
239510:  ADD.W           R0, R5, R12
239514:  STR             R0, [SP,#0x28+var_28]
239516:  ADD.W           R0, R5, R1,LSL#3
23951A:  MOVW            R1, #0x4820
23951E:  ADD             R1, R0
239520:  MOVS.W          R3, R10,LSL#31
239524:  BNE             loc_239544
239526:  MOVW            R3, #0x4824
23952A:  LDR             R1, [R1]
23952C:  LDR.W           R8, [R0,R3]
239530:  ADD.W           R0, R1, R10,LSL#3
239534:  ADD.W           R1, R8, R10,LSL#3
239538:  ADDS            R1, #8
23953A:  BLX             j_INT123_dct64
23953E:  ADD.W           R10, R10, #1
239542:  B               loc_239562
239544:  ADD.W           R3, R10, #1
239548:  LDR.W           R8, [R1]
23954C:  MOVW            R1, #0x4824
239550:  AND.W           R3, R3, #0xF
239554:  LDR             R0, [R0,R1]
239556:  ADD.W           R1, R8, R10,LSL#3
23955A:  ADD.W           R0, R0, R3,LSL#3
23955E:  BLX             j_INT123_dct64
239562:  MOVW            R0, #0x4844
239566:  VLDR            D16, =65536.0
23956A:  LDR.W           LR, [R5,R0]
23956E:  RSB.W           R0, R10, #0x1F0
239572:  VLDR            D17, =2.14748365e9
239576:  ADD.W           R2, LR, R0,LSL#3
23957A:  SUB.W           R0, LR, R10,LSL#3
23957E:  ADD.W           R5, R0, #0x80
239582:  RSB.W           R0, R10, #0x210
239586:  VLDR            D18, =-2.14748365e9
23958A:  MOVS            R3, #0
23958C:  STR             R0, [SP,#0x28+var_24]
23958E:  MOV             R1, #0x7FFFFFFF
239592:  MOV.W           R11, #0x80000000
239596:  MOV             R6, R8
239598:  MOVS            R0, #0
23959A:  VLDM            R6, {D19-D22}
23959E:  MOV.W           R9, R3,LSL#1
2395A2:  VLDM            R5, {D23-D26}
2395A6:  VMUL.F64        D20, D24, D20
2395AA:  VMUL.F64        D19, D23, D19
2395AE:  VMUL.F64        D21, D25, D21
2395B2:  VSUB.F64        D19, D19, D20
2395B6:  VMUL.F64        D22, D26, D22
2395BA:  VADD.F64        D19, D19, D21
2395BE:  VLDR            D20, [R6,#0x20]
2395C2:  VLDR            D23, [R5,#0x20]
2395C6:  VSUB.F64        D19, D19, D22
2395CA:  VMUL.F64        D20, D23, D20
2395CE:  VLDR            D21, [R6,#0x28]
2395D2:  VLDR            D24, [R5,#0x28]
2395D6:  VADD.F64        D19, D19, D20
2395DA:  VMUL.F64        D21, D24, D21
2395DE:  VLDR            D22, [R6,#0x30]
2395E2:  VLDR            D23, [R5,#0x30]
2395E6:  VSUB.F64        D19, D19, D21
2395EA:  VMUL.F64        D22, D23, D22
2395EE:  VLDR            D20, [R6,#0x38]
2395F2:  VLDR            D24, [R5,#0x38]
2395F6:  VADD.F64        D19, D19, D22
2395FA:  VMUL.F64        D20, D24, D20
2395FE:  VLDR            D21, [R6,#0x40]
239602:  VLDR            D23, [R5,#0x40]
239606:  VSUB.F64        D19, D19, D20
23960A:  VMUL.F64        D21, D23, D21
23960E:  VLDR            D22, [R6,#0x48]
239612:  VLDR            D24, [R5,#0x48]
239616:  VADD.F64        D19, D19, D21
23961A:  VMUL.F64        D22, D24, D22
23961E:  VLDR            D20, [R6,#0x50]
239622:  VLDR            D23, [R5,#0x50]
239626:  VSUB.F64        D19, D19, D22
23962A:  VMUL.F64        D20, D23, D20
23962E:  VLDR            D21, [R6,#0x58]
239632:  VLDR            D24, [R5,#0x58]
239636:  VADD.F64        D19, D19, D20
23963A:  VMUL.F64        D21, D24, D21
23963E:  VLDR            D22, [R6,#0x60]
239642:  VLDR            D23, [R5,#0x60]
239646:  VSUB.F64        D19, D19, D21
23964A:  VMUL.F64        D22, D23, D22
23964E:  VLDR            D20, [R6,#0x68]
239652:  VLDR            D24, [R5,#0x68]
239656:  VADD.F64        D19, D19, D22
23965A:  VMUL.F64        D20, D24, D20
23965E:  VLDR            D21, [R6,#0x70]
239662:  VLDR            D23, [R5,#0x70]
239666:  VSUB.F64        D19, D19, D20
23966A:  VMUL.F64        D21, D23, D21
23966E:  VLDR            D22, [R6,#0x78]
239672:  VLDR            D24, [R5,#0x78]
239676:  VADD.F64        D19, D19, D21
23967A:  VMUL.F64        D20, D24, D22
23967E:  VSUB.F64        D19, D19, D20
239682:  VMUL.F64        D19, D19, D16
239686:  VCMPE.F64       D19, D17
23968A:  VMRS            APSR_nzcv, FPSCR
23968E:  BLE             loc_239698
239690:  STR.W           R1, [R4,R9,LSL#2]
239694:  ADDS            R0, #1
239696:  B               loc_2396B6
239698:  VCMPE.F64       D19, D18
23969C:  VMRS            APSR_nzcv, FPSCR
2396A0:  BGE             loc_2396AA
2396A2:  STR.W           R11, [R4,R9,LSL#2]
2396A6:  ADDS            R0, #1
2396A8:  B               loc_2396B6
2396AA:  VCVT.S32.F64    S0, D19
2396AE:  VMOV            R12, S0
2396B2:  STR.W           R12, [R4,R9,LSL#2]
2396B6:  ADDS            R3, #1
2396B8:  ADDS            R6, #0x80
2396BA:  ADD.W           R5, R5, #0x100
2396BE:  CMP             R3, #0x10
2396C0:  BNE.W           loc_23959A
2396C4:  LDR             R1, [SP,#0x28+var_24]
2396C6:  ADD.W           R3, R8, #0x810
2396CA:  VLDR            D19, [R2,#0x110]
2396CE:  VLDR            D24, [R3]
2396D2:  ADD.W           R1, LR, R1,LSL#3
2396D6:  VLDR            D20, [R2,#0x120]
2396DA:  VMUL.F64        D19, D19, D24
2396DE:  VLDR            D23, [R1]
2396E2:  ADD.W           R1, R8, #0x800
2396E6:  VLDR            D21, [R2,#0x130]
2396EA:  VLDR            D25, [R1]
2396EE:  ADD.W           R1, R8, #0x820
2396F2:  VLDR            D22, [R2,#0x140]
2396F6:  VMUL.F64        D23, D23, D25
2396FA:  VLDR            D24, [R1]
2396FE:  ADD.W           R1, R8, #0x830
239702:  VADD.F64        D19, D23, D19
239706:  VMUL.F64        D20, D20, D24
23970A:  VLDR            D25, [R1]
23970E:  ADD.W           R1, R8, #0x840
239712:  VADD.F64        D19, D19, D20
239716:  VMUL.F64        D21, D21, D25
23971A:  VLDR            D23, [R1]
23971E:  ADD.W           R1, R8, #0x850
239722:  VADD.F64        D19, D19, D21
239726:  VMUL.F64        D22, D22, D23
23972A:  VLDR            D24, [R1]
23972E:  ADD.W           R1, R8, #0x860
239732:  VLDR            D20, [R2,#0x150]
239736:  VADD.F64        D19, D19, D22
23973A:  VMUL.F64        D20, D20, D24
23973E:  VLDR            D23, [R1]
239742:  ADD.W           R1, R8, #0x870
239746:  VLDR            D22, [R2,#0x160]
23974A:  VADD.F64        D19, D19, D20
23974E:  VMUL.F64        D22, D22, D23
239752:  VLDR            D21, [R2,#0x170]
239756:  ADD.W           R2, R8, #0x780
23975A:  VLDR            D24, [R1]
23975E:  VADD.F64        D19, D19, D22
239762:  VMUL.F64        D20, D21, D24
239766:  VADD.F64        D19, D19, D20
23976A:  VMUL.F64        D19, D19, D16
23976E:  VCMPE.F64       D19, D17
239772:  VMRS            APSR_nzcv, FPSCR
239776:  BLE             loc_23977E
239778:  MOV             R1, #0x7FFFFFFF
23977C:  B               loc_23978C
23977E:  VCMPE.F64       D19, D18
239782:  VMRS            APSR_nzcv, FPSCR
239786:  BGE             loc_239794
239788:  MOV.W           R1, #0x80000000
23978C:  STR.W           R1, [R4,#0x80]
239790:  ADDS            R0, #1
239792:  B               loc_23979C
239794:  VCVT.S32.F64    S0, D19
239798:  VSTR            S0, [R4,#0x80]
23979C:  ADD.W           R1, LR, R10,LSL#3
2397A0:  ADD.W           R3, R4, #0x88
2397A4:  MOVS            R6, #0
2397A6:  MOV             LR, #0x7FFFFFFF
2397AA:  MOV.W           R12, #0x80000000
2397AE:  ADDS            R4, R1, R6
2397B0:  VLDM            R2, {D19-D22}
2397B4:  ADD.W           R5, R4, #0xF70
2397B8:  VLDR            D23, [R5]
2397BC:  ADDW            R5, R4, #0xF78
2397C0:  VLDR            D24, [R5]
2397C4:  ADDW            R5, R4, #0xF68
2397C8:  VMUL.F64        D20, D23, D20
2397CC:  VNMUL.F64       D19, D24, D19
2397D0:  VLDR            D23, [R5]
2397D4:  ADD.W           R5, R4, #0xF60
2397D8:  VSUB.F64        D19, D19, D20
2397DC:  VMUL.F64        D21, D23, D21
2397E0:  VLDR            D24, [R5]
2397E4:  ADDW            R5, R4, #0xF58
2397E8:  VSUB.F64        D19, D19, D21
2397EC:  VMUL.F64        D20, D24, D22
2397F0:  VLDR            D23, [R5]
2397F4:  ADD.W           R5, R4, #0xF50
2397F8:  VLDR            D22, [R2,#0x20]
2397FC:  VSUB.F64        D19, D19, D20
239800:  VMUL.F64        D22, D23, D22
239804:  VLDR            D24, [R5]
239808:  ADDW            R5, R4, #0xF48
23980C:  VLDR            D21, [R2,#0x28]
239810:  VSUB.F64        D19, D19, D22
239814:  VMUL.F64        D20, D24, D21
239818:  VLDR            D23, [R5]
23981C:  ADD.W           R5, R4, #0xF40
239820:  VLDR            D22, [R2,#0x30]
239824:  VSUB.F64        D19, D19, D20
239828:  VMUL.F64        D22, D23, D22
23982C:  VLDR            D24, [R5]
239830:  ADDW            R5, R4, #0xF38
239834:  VLDR            D21, [R2,#0x38]
239838:  VSUB.F64        D19, D19, D22
23983C:  VMUL.F64        D20, D24, D21
239840:  VLDR            D23, [R5]
239844:  ADD.W           R5, R4, #0xF30
239848:  VLDR            D22, [R2,#0x40]
23984C:  VSUB.F64        D19, D19, D20
239850:  VMUL.F64        D22, D23, D22
239854:  VLDR            D24, [R5]
239858:  ADDW            R5, R4, #0xF28
23985C:  VLDR            D21, [R2,#0x48]
239860:  VSUB.F64        D19, D19, D22
239864:  VMUL.F64        D20, D24, D21
239868:  VLDR            D23, [R5]
23986C:  ADD.W           R5, R4, #0xF20
239870:  VLDR            D22, [R2,#0x50]
239874:  VSUB.F64        D19, D19, D20
239878:  VMUL.F64        D22, D23, D22
23987C:  VLDR            D24, [R5]
239880:  ADDW            R5, R4, #0xF18
239884:  VLDR            D21, [R2,#0x58]
239888:  VSUB.F64        D19, D19, D22
23988C:  VMUL.F64        D20, D24, D21
239890:  VLDR            D23, [R5]
239894:  ADD.W           R5, R4, #0xF10
239898:  VLDR            D22, [R2,#0x60]
23989C:  VSUB.F64        D19, D19, D20
2398A0:  VMUL.F64        D22, D23, D22
2398A4:  VLDR            D24, [R5]
2398A8:  ADDW            R5, R4, #0xF08
2398AC:  VLDR            D21, [R2,#0x68]
2398B0:  ADD.W           R4, R4, #0xF00
2398B4:  VSUB.F64        D19, D19, D22
2398B8:  VMUL.F64        D20, D24, D21
2398BC:  VLDR            D22, [R2,#0x70]
2398C0:  VLDR            D23, [R5]
2398C4:  VSUB.F64        D19, D19, D20
2398C8:  VMUL.F64        D22, D23, D22
2398CC:  VLDR            D21, [R2,#0x78]
2398D0:  VLDR            D24, [R4]
2398D4:  VSUB.F64        D19, D19, D22
2398D8:  VMUL.F64        D20, D24, D21
2398DC:  VSUB.F64        D19, D19, D20
2398E0:  VMUL.F64        D19, D19, D16
2398E4:  VCMPE.F64       D19, D17
2398E8:  VMRS            APSR_nzcv, FPSCR
2398EC:  BLE             loc_2398F6
2398EE:  STR.W           LR, [R3]
2398F2:  ADDS            R0, #1
2398F4:  B               loc_239910
2398F6:  VCMPE.F64       D19, D18
2398FA:  VMRS            APSR_nzcv, FPSCR
2398FE:  BGE             loc_239908
239900:  STR.W           R12, [R3]
239904:  ADDS            R0, #1
239906:  B               loc_239910
239908:  VCVT.S32.F64    S0, D19
23990C:  VSTR            S0, [R3]
239910:  SUB.W           R6, R6, #0x100
239914:  SUBS            R2, #0x80
239916:  ADDS            R3, #8
239918:  CMN.W           R6, #0xF00
23991C:  BNE.W           loc_2397AE
239920:  LDR             R1, [SP,#0x28+var_20]
239922:  CMP             R1, #0
239924:  ITTTT NE
239926:  LDRNE           R1, [SP,#0x28+var_28]
239928:  MOVNE           R2, R1
23992A:  LDRNE           R1, [R2]
23992C:  ADDNE.W         R1, R1, #0x100
239930:  IT NE
239932:  STRNE           R1, [R2]
239934:  ADD             SP, SP, #0xC
239936:  POP.W           {R8-R11}
23993A:  POP             {R4-R7,PC}
