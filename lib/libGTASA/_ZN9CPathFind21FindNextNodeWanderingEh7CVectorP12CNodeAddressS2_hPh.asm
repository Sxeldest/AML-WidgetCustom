; =========================================================
; Game Engine Function: _ZN9CPathFind21FindNextNodeWanderingEh7CVectorP12CNodeAddressS2_hPh
; Address            : 0x3164B4 - 0x316878
; =========================================================

3164B4:  PUSH            {R4-R7,LR}
3164B6:  ADD             R7, SP, #0xC
3164B8:  PUSH.W          {R8-R11}
3164BC:  SUB             SP, SP, #0x24
3164BE:  MOV             R4, R0
3164C0:  LDRD.W          R12, R0, [R7,#arg_0]
3164C4:  LDR.W           R10, [R7,#arg_8]
3164C8:  MOVW            R8, #0xFFFF
3164CC:  CMP             R0, #0
3164CE:  BEQ             loc_316588
3164D0:  LDR.W           R11, [R0]
3164D4:  MOVW            R5, #0xFFFF
3164D8:  UXTH.W          R0, R11
3164DC:  MOV.W           LR, R11,LSR#16
3164E0:  CMP             R0, R8
3164E2:  BEQ             loc_31658C
3164E4:  ADD.W           R0, R4, R0,LSL#2
3164E8:  LDR.W           R0, [R0,#0x804]
3164EC:  CMP             R0, #0
3164EE:  BEQ.W           loc_316860
3164F2:  RSB.W           R6, LR, LR,LSL#3
3164F6:  MOV             R5, LR
3164F8:  MOV             R9, R5
3164FA:  VMOV.F32        S0, #0.125
3164FE:  ADD.W           R0, R0, R6,LSL#2
316502:  VMOV            S8, R3
316506:  VMOV            S10, R2
31650A:  LDRSH.W         LR, [R0,#8]
31650E:  LDRSH.W         R6, [R0,#0xA]
316512:  LDRSH.W         R5, [R0,#0xC]
316516:  VMOV            S4, LR
31651A:  MOV             LR, R9
31651C:  VMOV            S2, R6
316520:  VMOV            S6, R5
316524:  MOV             R5, R11
316526:  VCVT.F32.S32    S2, S2
31652A:  VCVT.F32.S32    S4, S4
31652E:  VCVT.F32.S32    S6, S6
316532:  LDRB            R0, [R0,#0x16]
316534:  VMUL.F32        S2, S2, S0
316538:  VMUL.F32        S4, S4, S0
31653C:  VMUL.F32        S6, S6, S0
316540:  VSUB.F32        S2, S8, S2
316544:  VSUB.F32        S4, S10, S4
316548:  VMOV            S8, R12
31654C:  VSUB.F32        S6, S8, S6
316550:  VMUL.F32        S2, S2, S2
316554:  VMUL.F32        S4, S4, S4
316558:  VMUL.F32        S6, S6, S6
31655C:  VADD.F32        S2, S4, S2
316560:  VMOV            S4, R0
316564:  VCVT.F32.U32    S4, S4
316568:  VADD.F32        S2, S2, S6
31656C:  VMOV.F32        S6, #7.0
316570:  VMUL.F32        S0, S4, S0
316574:  VSQRT.F32       S2, S2
316578:  VMAX.F32        D0, D0, D3
31657C:  VCMPE.F32       S2, S0
316580:  VMRS            APSR_nzcv, FPSCR
316584:  BGT             loc_31658C
316586:  B               loc_3165B6
316588:  MOVW            R5, #0xFFFF
31658C:  MOVW            R6, #0x23FE
316590:  MOVS            R0, #0
316592:  MOVT            R6, #0x4974
316596:  STRD.W          R1, R6, [SP,#0x40+var_40]
31659A:  MOV             R1, R2
31659C:  STRD.W          R0, R0, [SP,#0x40+var_38]
3165A0:  MOV             R2, R3
3165A2:  STRD.W          R0, R0, [SP,#0x40+var_30]
3165A6:  MOV             R3, R12
3165A8:  STR             R0, [SP,#0x40+var_28]
3165AA:  MOV             R0, R4
3165AC:  MOV             R6, LR
3165AE:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
3165B2:  MOV             LR, R6
3165B4:  MOV             R11, R0
3165B6:  UXTH.W          R0, R11
3165BA:  CMP             R0, R8
3165BC:  STR             R5, [SP,#0x40+var_20]
3165BE:  BEQ.W           loc_3167E2
3165C2:  ADD.W           R0, R4, R0,LSL#2
3165C6:  LDR.W           R9, [R0,#0x804]
3165CA:  CMP.W           R9, #0
3165CE:  BEQ.W           loc_3167E2
3165D2:  LDR             R0, [R7,#arg_C]
3165D4:  STR.W           LR, [SP,#0x40+var_24]
3165D8:  VLDR            S2, =0.7854
3165DC:  VMOV            S0, R0
3165E0:  VCVT.F32.U32    S0, S0
3165E4:  STRH.W          R8, [R10]
3165E8:  VMUL.F32        S0, S0, S2
3165EC:  VMOV            R6, S0
3165F0:  MOV             R0, R6; x
3165F2:  BLX             sinf
3165F6:  MOV             R8, R0
3165F8:  MOV             R0, R6; x
3165FA:  BLX             cosf
3165FE:  MOV.W           R2, R11,LSR#16
316602:  LSLS            R1, R2, #3
316604:  SUB.W           R1, R1, R11,LSR#16
316608:  ADD.W           R1, R9, R1,LSL#2
31660C:  LDRH.W          R3, [R1,#0x18]!
316610:  LDRB            R6, [R1,#2]
316612:  ORR.W           R12, R3, R6,LSL#16
316616:  TST.W           R12, #0xF
31661A:  BEQ.W           loc_3167C4
31661E:  VMOV.F32        S4, #-2.0
316622:  VLDR            S6, =-1000000.0
316626:  VMOV            S0, R0
31662A:  RSB.W           R0, R2, R2,LSL#3
31662E:  VMOV.I32        D16, #0x3E000000
316632:  MOVS            R6, #0
316634:  ADD.W           R3, R9, R0,LSL#2
316638:  VMOV            S2, R8
31663C:  ADD.W           R10, R3, #8
316640:  ADD.W           R2, R3, #0x10
316644:  ADDS            R3, #0x12
316646:  MOV.W           LR, #0
31664A:  LDRH            R0, [R3]
31664C:  LDRSH.W         R5, [R2]
316650:  ADD.W           R0, R4, R0,LSL#2
316654:  ADD             R5, R6
316656:  LDR.W           R0, [R0,#0xA44]
31665A:  LDR.W           R8, [R0,R5,LSL#2]
31665E:  UXTH.W          R0, R8
316662:  ADD.W           R0, R4, R0,LSL#2
316666:  LDR.W           R6, [R0,#0x804]
31666A:  CMP             R6, #0
31666C:  BEQ.W           loc_3167AA
316670:  MOV.W           R9, R8,LSR#16
316674:  MOVS.W          R0, R12,LSL#26
316678:  BMI             loc_31668A
31667A:  RSB.W           R0, R9, R9,LSL#3
31667E:  ADD.W           R0, R6, R0,LSL#2
316682:  LDRH            R0, [R0,#0x18]
316684:  LSLS            R0, R0, #0x1A
316686:  BMI.W           loc_3167AA
31668A:  MOVS.W          R0, R12,LSL#21
31668E:  BMI             loc_3166A0
316690:  RSB.W           R0, R9, R9,LSL#3
316694:  ADD.W           R0, R6, R0,LSL#2
316698:  LDRH            R0, [R0,#0x18]
31669A:  LSLS            R0, R0, #0x15
31669C:  BMI.W           loc_3167AA
3166A0:  RSB.W           R0, R9, R9,LSL#3
3166A4:  VLD1.32         {D17[0]}, [R10@32]
3166A8:  ADD.W           R0, R6, R0,LSL#2
3166AC:  ADDS            R0, #8
3166AE:  VMOVL.S16       Q10, D17
3166B2:  VLD1.32         {D18[0]}, [R0@32]
3166B6:  VCVT.F32.S32    D17, D20
3166BA:  VMOVL.S16       Q9, D18
3166BE:  VMUL.F32        D17, D17, D16
3166C2:  VCVT.F32.S32    D18, D18
3166C6:  VMUL.F32        D18, D18, D16
3166CA:  VSUB.F32        D4, D18, D17
3166CE:  VMUL.F32        D5, D4, D4
3166D2:  VADD.F32        S10, S10, S11
3166D6:  VSQRT.F32       S12, S10
3166DA:  VDIV.F32        S10, S9, S12
3166DE:  VDIV.F32        S12, S8, S12
3166E2:  VMUL.F32        S8, S0, S10
3166E6:  VMUL.F32        S14, S2, S12
3166EA:  VADD.F32        S8, S14, S8
3166EE:  VCMPE.F32       S8, S6
3166F2:  VMRS            APSR_nzcv, FPSCR
3166F6:  BLT             loc_3167AA
3166F8:  VABS.F32        S6, S10
3166FC:  LDR             R0, [R7,#arg_8]
3166FE:  VCMPE.F32       S12, #0.0
316702:  VMRS            APSR_nzcv, FPSCR
316706:  STR.W           R8, [R0]
31670A:  BGE             loc_316726
31670C:  VNEG.F32        S14, S12
316710:  VADD.F32        S6, S6, S6
316714:  VCMPE.F32       S6, S14
316718:  VMRS            APSR_nzcv, FPSCR
31671C:  BGE             loc_31673C
31671E:  LDR             R0, [R7,#arg_10]
316720:  MOVS            R6, #6
316722:  STRB            R6, [R0]
316724:  B               loc_3167A6
316726:  VADD.F32        S6, S6, S6
31672A:  VCMPE.F32       S12, S6
31672E:  VMRS            APSR_nzcv, FPSCR
316732:  BLE             loc_316768
316734:  LDR             R0, [R7,#arg_10]
316736:  MOVS            R6, #2
316738:  STRB            R6, [R0]
31673A:  B               loc_3167A6
31673C:  VMUL.F32        S6, S12, S4
316740:  VCMPE.F32       S10, S6
316744:  VMRS            APSR_nzcv, FPSCR
316748:  BGT             loc_316776
31674A:  VADD.F32        S6, S12, S12
31674E:  VCMPE.F32       S10, S6
316752:  VMRS            APSR_nzcv, FPSCR
316756:  BLT             loc_31678C
316758:  VCMPE.F32       S10, #0.0
31675C:  MOVS            R0, #5
31675E:  VMRS            APSR_nzcv, FPSCR
316762:  IT GT
316764:  MOVGT           R0, #7
316766:  B               loc_3167A2
316768:  VADD.F32        S6, S12, S12
31676C:  VCMPE.F32       S10, S6
316770:  VMRS            APSR_nzcv, FPSCR
316774:  BLE             loc_31677E
316776:  LDR             R0, [R7,#arg_10]
316778:  MOVS            R6, #0
31677A:  STRB            R6, [R0]
31677C:  B               loc_3167A6
31677E:  VMUL.F32        S6, S12, S4
316782:  VCMPE.F32       S10, S6
316786:  VMRS            APSR_nzcv, FPSCR
31678A:  BGE             loc_316794
31678C:  LDR             R0, [R7,#arg_10]
31678E:  MOVS            R6, #4
316790:  STRB            R6, [R0]
316792:  B               loc_3167A6
316794:  VCMPE.F32       S10, #0.0
316798:  MOVS            R0, #3
31679A:  VMRS            APSR_nzcv, FPSCR
31679E:  IT GT
3167A0:  MOVGT           R0, #1
3167A2:  LDR             R6, [R7,#arg_10]
3167A4:  STRB            R0, [R6]
3167A6:  VMOV.F32        S6, S8
3167AA:  LDRB            R0, [R1,#2]
3167AC:  ADD.W           LR, LR, #1
3167B0:  LDRH            R6, [R1]
3167B2:  ORR.W           R12, R6, R0,LSL#16
3167B6:  SXTH.W          R6, LR
3167BA:  AND.W           R0, R12, #0xF
3167BE:  CMP             R6, R0
3167C0:  BLT.W           loc_31664A
3167C4:  LDR             R0, [R7,#arg_4]
3167C6:  MOVW            R8, #0xFFFF
3167CA:  LDR             R5, [R7,#arg_8]
3167CC:  STR.W           R11, [R0]
3167D0:  MOV             R0, R11
3167D2:  MOV             R10, R5
3167D4:  LDRH.W          R1, [R10]
3167D8:  LDRD.W          LR, R3, [SP,#0x40+var_24]
3167DC:  CMP             R1, R8
3167DE:  BEQ             loc_3167EC
3167E0:  B               loc_3167FC
3167E2:  STRH.W          R8, [R10]
3167E6:  MOVW            R0, #0xFFFF
3167EA:  LDR             R3, [SP,#0x40+var_20]
3167EC:  LDR             R2, [R7,#arg_10]
3167EE:  MOVS            R1, #0
3167F0:  STRB            R1, [R2]
3167F2:  PKHBT.W         R1, R0, R11
3167F6:  STR.W           R1, [R10]
3167FA:  MOV             R1, R0
3167FC:  UXTH            R0, R3
3167FE:  UXTH            R1, R1
316800:  CMP             R1, R0
316802:  BNE             loc_316870
316804:  CMP             R0, R8
316806:  BEQ             loc_316870
316808:  LDRH.W          R2, [R10,#2]
31680C:  UXTH.W          R1, LR
316810:  CMP             R2, R1
316812:  BNE             loc_316870
316814:  ADD.W           R0, R4, R0,LSL#2
316818:  LDR.W           R0, [R0,#0x804]
31681C:  CMP             R0, #0
31681E:  ITTTT NE
316820:  RSBNE.W         R1, R1, R1,LSL#3
316824:  ADDNE.W         R0, R0, R1,LSL#2
316828:  LDRHNE          R1, [R0,#0x18]
31682A:  ANDSNE.W        R1, R1, #0xF
31682E:  BEQ             loc_316870
316830:  LDRH            R2, [R0,#0x12]
316832:  BIC.W           R1, R1, #0xFF000000
316836:  LDRSH.W         R0, [R0,#0x10]
31683A:  ADD.W           R2, R4, R2,LSL#2
31683E:  LDR.W           R2, [R2,#0xA44]
316842:  ADD.W           R0, R2, R0,LSL#2
316846:  MOVS            R2, #0
316848:  LDR.W           R3, [R0,R2,LSL#2]
31684C:  UXTH            R6, R3
31684E:  ADD.W           R6, R4, R6,LSL#2
316852:  LDR.W           R6, [R6,#0x804]
316856:  CBNZ            R6, loc_31686C
316858:  ADDS            R2, #1
31685A:  CMP             R2, R1
31685C:  BLT             loc_316848
31685E:  B               loc_316870
316860:  LDR             R1, [R7,#arg_10]
316862:  MOVS            R0, #0
316864:  STRH.W          R8, [R10]
316868:  STRB            R0, [R1]
31686A:  B               loc_316870
31686C:  STR.W           R3, [R10]
316870:  ADD             SP, SP, #0x24 ; '$'
316872:  POP.W           {R8-R11}
316876:  POP             {R4-R7,PC}
