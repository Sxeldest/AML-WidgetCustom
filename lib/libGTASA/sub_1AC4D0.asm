; =========================================================
; Game Engine Function: sub_1AC4D0
; Address            : 0x1AC4D0 - 0x1AC968
; =========================================================

1AC4D0:  PUSH            {R4-R7,LR}
1AC4D2:  ADD             R7, SP, #0xC
1AC4D4:  PUSH.W          {R8-R11}
1AC4D8:  SUB             SP, SP, #4
1AC4DA:  VPUSH           {D8-D11}
1AC4DE:  SUB             SP, SP, #0x38
1AC4E0:  MOV             R11, R0
1AC4E2:  MOV.W           R0, #0xFFFFFFFF
1AC4E6:  STR             R3, [SP,#0x78+var_74]
1AC4E8:  MOV             R9, R1
1AC4EA:  STR             R0, [R3]
1AC4EC:  LDR.W           R1, [R9,#4]
1AC4F0:  LDR.W           R0, [R9]
1AC4F4:  VLDR            S16, =0.0
1AC4F8:  STRD.W          R0, R1, [SP,#0x78+var_50]
1AC4FC:  SUBS            R1, R2, #1; switch 4 cases
1AC4FE:  CMP             R1, #3
1AC500:  BHI.W           def_1AC506; jumptable 001AC506 default case
1AC504:  LDR             R4, [R7,#arg_0]
1AC506:  TBH.W           [PC,R1,LSL#1]; switch jump
1AC50A:  DCW 4; jump table for switch statement
1AC50C:  DCW 0x1A1
1AC50E:  DCW 0x8B
1AC510:  DCW 0x113
1AC512:  LDRB.W          R1, [R9,#4]; jumptable 001AC506 case 1
1AC516:  UXTB            R6, R0
1AC518:  CMP             R1, R6
1AC51A:  BLS.W           def_1AC506; jumptable 001AC506 default case
1AC51E:  VLDR            S18, =0.0
1AC522:  VMOV.I32        Q5, #0
1AC526:  ADD.W           R10, SP, #0x78+var_70
1AC52A:  MOVS            R5, #0
1AC52C:  VMOV.F32        S16, S18
1AC530:  MOV             R8, R10
1AC532:  MOVS            R0, #0xFF
1AC534:  VST1.64         {D10-D11}, [R8]!
1AC538:  ADD             R1, SP, #0x78+var_44
1AC53A:  ADD             R3, SP, #0x78+var_50
1AC53C:  MOVS            R2, #5
1AC53E:  STR.W           R5, [R8]
1AC542:  STRB.W          R0, [SP,#0x78+var_58]
1AC546:  MOV             R0, R11
1AC548:  STRB.W          R6, [SP,#0x78+var_4C]
1AC54C:  STR             R5, [SP,#0x78+var_44]
1AC54E:  STR             R5, [SP,#0x78+var_5C]
1AC550:  STR.W           R10, [SP,#0x78+var_78]
1AC554:  BL              sub_1ACA96
1AC558:  VLDR            S0, [SP,#0x78+var_70]
1AC55C:  VCMPE.F32       S0, #0.0
1AC560:  VMRS            APSR_nzcv, FPSCR
1AC564:  ITTTT GT
1AC566:  VLDRGT          S2, [R4]
1AC56A:  VSUBGT.F32      S2, S2, S0
1AC56E:  VCMPEGT.F32     S2, #0.0
1AC572:  VMRSGT          APSR_nzcv, FPSCR
1AC576:  BLE             loc_1AC614
1AC578:  VLDR            S4, [R4,#4]
1AC57C:  VLDR            S12, [SP,#0x78+var_6C]
1AC580:  VLDR            S6, [R4,#8]
1AC584:  VLDR            S14, [SP,#0x78+var_68]
1AC588:  VSUB.F32        S4, S4, S12
1AC58C:  VLDR            S8, [R4,#0xC]
1AC590:  VMUL.F32        S12, S12, S12
1AC594:  VSUB.F32        S6, S6, S14
1AC598:  VLDR            S1, [SP,#0x78+var_64]
1AC59C:  VMUL.F32        S14, S14, S14
1AC5A0:  VLDR            S10, [R4,#0x10]
1AC5A4:  VSUB.F32        S8, S8, S1
1AC5A8:  VLDR            S3, [R8]
1AC5AC:  VSUB.F32        S10, S10, S3
1AC5B0:  VMUL.F32        S4, S4, S4
1AC5B4:  VMUL.F32        S6, S6, S6
1AC5B8:  VADD.F32        S12, S12, S14
1AC5BC:  VMUL.F32        S8, S8, S8
1AC5C0:  VMUL.F32        S10, S10, S10
1AC5C4:  VADD.F32        S4, S4, S6
1AC5C8:  VMUL.F32        S6, S1, S1
1AC5CC:  VADD.F32        S4, S4, S8
1AC5D0:  VMUL.F32        S8, S3, S3
1AC5D4:  VADD.F32        S6, S12, S6
1AC5D8:  VADD.F32        S4, S4, S10
1AC5DC:  VADD.F32        S6, S6, S8
1AC5E0:  VDIV.F32        S2, S4, S2
1AC5E4:  VDIV.F32        S0, S6, S0
1AC5E8:  VADD.F32        S0, S0, S2
1AC5EC:  VCMPE.F32       S0, S16
1AC5F0:  VMRS            APSR_nzcv, FPSCR
1AC5F4:  BLE             loc_1AC604
1AC5F6:  LDR             R0, [SP,#0x78+var_74]
1AC5F8:  VMOV.F32        S16, S0
1AC5FC:  VMOV.F32        S18, S0
1AC600:  STR             R6, [R0]
1AC602:  B               loc_1AC614
1AC604:  VCMPE.F32       S0, S18
1AC608:  VMOV.F32        S18, S0
1AC60C:  VMRS            APSR_nzcv, FPSCR
1AC610:  BLT.W           def_1AC506; jumptable 001AC506 default case
1AC614:  LDRB.W          R0, [R9,#4]
1AC618:  ADDS            R6, #1
1AC61A:  CMP             R6, R0
1AC61C:  BLT             loc_1AC530
1AC61E:  B               def_1AC506; jumptable 001AC506 default case
1AC620:  LDRB.W          R6, [R9,#2]; jumptable 001AC506 case 3
1AC624:  LDRB.W          R0, [R9,#6]
1AC628:  CMP             R6, R0
1AC62A:  BCS.W           def_1AC506; jumptable 001AC506 default case
1AC62E:  VLDR            S18, =0.0
1AC632:  VMOV.I32        Q5, #0
1AC636:  ADD.W           R10, SP, #0x78+var_70
1AC63A:  MOVS            R5, #0
1AC63C:  VMOV.F32        S16, S18
1AC640:  MOV             R8, R10
1AC642:  MOVS            R0, #0xFF
1AC644:  VST1.64         {D10-D11}, [R8]!
1AC648:  ADD             R1, SP, #0x78+var_44
1AC64A:  ADD             R3, SP, #0x78+var_50
1AC64C:  MOVS            R2, #5
1AC64E:  STR.W           R5, [R8]
1AC652:  STRB.W          R0, [SP,#0x78+var_58]
1AC656:  MOV             R0, R11
1AC658:  STRB.W          R6, [SP,#0x78+var_4C+2]
1AC65C:  STR             R5, [SP,#0x78+var_44]
1AC65E:  STR             R5, [SP,#0x78+var_5C]
1AC660:  STR.W           R10, [SP,#0x78+var_78]
1AC664:  BL              sub_1ACA96
1AC668:  VLDR            S0, [SP,#0x78+var_70]
1AC66C:  VCMPE.F32       S0, #0.0
1AC670:  VMRS            APSR_nzcv, FPSCR
1AC674:  ITTTT GT
1AC676:  VLDRGT          S2, [R4]
1AC67A:  VSUBGT.F32      S2, S2, S0
1AC67E:  VCMPEGT.F32     S2, #0.0
1AC682:  VMRSGT          APSR_nzcv, FPSCR
1AC686:  BLE             loc_1AC724
1AC688:  VLDR            S4, [R4,#4]
1AC68C:  VLDR            S12, [SP,#0x78+var_6C]
1AC690:  VLDR            S6, [R4,#8]
1AC694:  VLDR            S14, [SP,#0x78+var_68]
1AC698:  VSUB.F32        S4, S4, S12
1AC69C:  VLDR            S8, [R4,#0xC]
1AC6A0:  VMUL.F32        S12, S12, S12
1AC6A4:  VSUB.F32        S6, S6, S14
1AC6A8:  VLDR            S1, [SP,#0x78+var_64]
1AC6AC:  VMUL.F32        S14, S14, S14
1AC6B0:  VLDR            S10, [R4,#0x10]
1AC6B4:  VSUB.F32        S8, S8, S1
1AC6B8:  VLDR            S3, [R8]
1AC6BC:  VSUB.F32        S10, S10, S3
1AC6C0:  VMUL.F32        S4, S4, S4
1AC6C4:  VMUL.F32        S6, S6, S6
1AC6C8:  VADD.F32        S12, S12, S14
1AC6CC:  VMUL.F32        S8, S8, S8
1AC6D0:  VMUL.F32        S10, S10, S10
1AC6D4:  VADD.F32        S4, S4, S6
1AC6D8:  VMUL.F32        S6, S1, S1
1AC6DC:  VADD.F32        S4, S4, S8
1AC6E0:  VMUL.F32        S8, S3, S3
1AC6E4:  VADD.F32        S6, S12, S6
1AC6E8:  VADD.F32        S4, S4, S10
1AC6EC:  VADD.F32        S6, S6, S8
1AC6F0:  VDIV.F32        S2, S4, S2
1AC6F4:  VDIV.F32        S0, S6, S0
1AC6F8:  VADD.F32        S0, S0, S2
1AC6FC:  VCMPE.F32       S0, S16
1AC700:  VMRS            APSR_nzcv, FPSCR
1AC704:  BLE             loc_1AC714
1AC706:  LDR             R0, [SP,#0x78+var_74]
1AC708:  VMOV.F32        S16, S0
1AC70C:  VMOV.F32        S18, S0
1AC710:  STR             R6, [R0]
1AC712:  B               loc_1AC724
1AC714:  VCMPE.F32       S0, S18
1AC718:  VMOV.F32        S18, S0
1AC71C:  VMRS            APSR_nzcv, FPSCR
1AC720:  BLT.W           def_1AC506; jumptable 001AC506 default case
1AC724:  LDRB.W          R0, [R9,#6]
1AC728:  ADDS            R6, #1
1AC72A:  CMP             R6, R0
1AC72C:  BLT             loc_1AC640
1AC72E:  B               def_1AC506; jumptable 001AC506 default case
1AC730:  LDRB.W          R6, [R9,#3]; jumptable 001AC506 case 4
1AC734:  LDRB.W          R0, [R9,#7]
1AC738:  CMP             R6, R0
1AC73A:  BCS.W           def_1AC506; jumptable 001AC506 default case
1AC73E:  VLDR            S18, =0.0
1AC742:  VMOV.I32        Q5, #0
1AC746:  ADD.W           R10, SP, #0x78+var_70
1AC74A:  MOV.W           R8, #0
1AC74E:  VMOV.F32        S16, S18
1AC752:  MOV             R5, R10
1AC754:  MOVS            R0, #0xFF
1AC756:  VST1.64         {D10-D11}, [R5]!
1AC75A:  ADD             R1, SP, #0x78+var_44
1AC75C:  ADD             R3, SP, #0x78+var_50
1AC75E:  MOVS            R2, #5
1AC760:  STR.W           R8, [R5]
1AC764:  STRB.W          R0, [SP,#0x78+var_58]
1AC768:  MOV             R0, R11
1AC76A:  STRB.W          R6, [SP,#0x78+var_4C+3]
1AC76E:  STR.W           R8, [SP,#0x78+var_44]
1AC772:  STR.W           R8, [SP,#0x78+var_5C]
1AC776:  STR.W           R10, [SP,#0x78+var_78]
1AC77A:  BL              sub_1ACA96
1AC77E:  VLDR            S0, [SP,#0x78+var_70]
1AC782:  VCMPE.F32       S0, #0.0
1AC786:  VMRS            APSR_nzcv, FPSCR
1AC78A:  ITTTT GT
1AC78C:  VLDRGT          S2, [R4]
1AC790:  VSUBGT.F32      S2, S2, S0
1AC794:  VCMPEGT.F32     S2, #0.0
1AC798:  VMRSGT          APSR_nzcv, FPSCR
1AC79C:  BLE             loc_1AC83A
1AC79E:  VLDR            S4, [R4,#4]
1AC7A2:  VLDR            S12, [SP,#0x78+var_6C]
1AC7A6:  VLDR            S6, [R4,#8]
1AC7AA:  VLDR            S14, [SP,#0x78+var_68]
1AC7AE:  VSUB.F32        S4, S4, S12
1AC7B2:  VLDR            S8, [R4,#0xC]
1AC7B6:  VMUL.F32        S12, S12, S12
1AC7BA:  VSUB.F32        S6, S6, S14
1AC7BE:  VLDR            S1, [SP,#0x78+var_64]
1AC7C2:  VMUL.F32        S14, S14, S14
1AC7C6:  VLDR            S10, [R4,#0x10]
1AC7CA:  VSUB.F32        S8, S8, S1
1AC7CE:  VLDR            S3, [R5]
1AC7D2:  VSUB.F32        S10, S10, S3
1AC7D6:  VMUL.F32        S4, S4, S4
1AC7DA:  VMUL.F32        S6, S6, S6
1AC7DE:  VADD.F32        S12, S12, S14
1AC7E2:  VMUL.F32        S8, S8, S8
1AC7E6:  VMUL.F32        S10, S10, S10
1AC7EA:  VADD.F32        S4, S4, S6
1AC7EE:  VMUL.F32        S6, S1, S1
1AC7F2:  VADD.F32        S4, S4, S8
1AC7F6:  VMUL.F32        S8, S3, S3
1AC7FA:  VADD.F32        S6, S12, S6
1AC7FE:  VADD.F32        S4, S4, S10
1AC802:  VADD.F32        S6, S6, S8
1AC806:  VDIV.F32        S2, S4, S2
1AC80A:  VDIV.F32        S0, S6, S0
1AC80E:  VADD.F32        S0, S0, S2
1AC812:  VCMPE.F32       S0, S16
1AC816:  VMRS            APSR_nzcv, FPSCR
1AC81A:  BLE             loc_1AC82A
1AC81C:  LDR             R0, [SP,#0x78+var_74]
1AC81E:  VMOV.F32        S16, S0
1AC822:  VMOV.F32        S18, S0
1AC826:  STR             R6, [R0]
1AC828:  B               loc_1AC83A
1AC82A:  VCMPE.F32       S0, S18
1AC82E:  VMOV.F32        S18, S0
1AC832:  VMRS            APSR_nzcv, FPSCR
1AC836:  BLT.W           def_1AC506; jumptable 001AC506 default case
1AC83A:  LDRB.W          R0, [R9,#7]
1AC83E:  ADDS            R6, #1
1AC840:  CMP             R6, R0
1AC842:  BLT             loc_1AC752
1AC844:  B               def_1AC506; jumptable 001AC506 default case
1AC846:  ALIGN 4
1AC848:  DCFS 0.0
1AC84C:  LDRB.W          R6, [R9,#1]; jumptable 001AC506 case 2
1AC850:  LDRB.W          R0, [R9,#5]
1AC854:  CMP             R6, R0
1AC856:  BCS             def_1AC506; jumptable 001AC506 default case
1AC858:  VLDR            S18, =0.0
1AC85C:  VMOV.I32        Q5, #0
1AC860:  ADD.W           R10, SP, #0x78+var_70
1AC864:  MOVS            R5, #0
1AC866:  VMOV.F32        S16, S18
1AC86A:  MOV             R8, R10
1AC86C:  MOVS            R0, #0xFF
1AC86E:  VST1.64         {D10-D11}, [R8]!
1AC872:  ADD             R1, SP, #0x78+var_44
1AC874:  ADD             R3, SP, #0x78+var_50
1AC876:  MOVS            R2, #5
1AC878:  STR.W           R5, [R8]
1AC87C:  STRB.W          R0, [SP,#0x78+var_58]
1AC880:  MOV             R0, R11
1AC882:  STRB.W          R6, [SP,#0x78+var_4C+1]
1AC886:  STR             R5, [SP,#0x78+var_44]
1AC888:  STR             R5, [SP,#0x78+var_5C]
1AC88A:  STR.W           R10, [SP,#0x78+var_78]
1AC88E:  BL              sub_1ACA96
1AC892:  VLDR            S0, [SP,#0x78+var_70]
1AC896:  VCMPE.F32       S0, #0.0
1AC89A:  VMRS            APSR_nzcv, FPSCR
1AC89E:  ITTTT GT
1AC8A0:  VLDRGT          S2, [R4]
1AC8A4:  VSUBGT.F32      S2, S2, S0
1AC8A8:  VCMPEGT.F32     S2, #0.0
1AC8AC:  VMRSGT          APSR_nzcv, FPSCR
1AC8B0:  BLE             loc_1AC94C
1AC8B2:  VLDR            S4, [R4,#4]
1AC8B6:  VLDR            S12, [SP,#0x78+var_6C]
1AC8BA:  VLDR            S6, [R4,#8]
1AC8BE:  VLDR            S14, [SP,#0x78+var_68]
1AC8C2:  VSUB.F32        S4, S4, S12
1AC8C6:  VLDR            S8, [R4,#0xC]
1AC8CA:  VMUL.F32        S12, S12, S12
1AC8CE:  VSUB.F32        S6, S6, S14
1AC8D2:  VLDR            S1, [SP,#0x78+var_64]
1AC8D6:  VMUL.F32        S14, S14, S14
1AC8DA:  VLDR            S10, [R4,#0x10]
1AC8DE:  VSUB.F32        S8, S8, S1
1AC8E2:  VLDR            S3, [R8]
1AC8E6:  VSUB.F32        S10, S10, S3
1AC8EA:  VMUL.F32        S4, S4, S4
1AC8EE:  VMUL.F32        S6, S6, S6
1AC8F2:  VADD.F32        S12, S12, S14
1AC8F6:  VMUL.F32        S8, S8, S8
1AC8FA:  VMUL.F32        S10, S10, S10
1AC8FE:  VADD.F32        S4, S4, S6
1AC902:  VMUL.F32        S6, S1, S1
1AC906:  VADD.F32        S4, S4, S8
1AC90A:  VMUL.F32        S8, S3, S3
1AC90E:  VADD.F32        S6, S12, S6
1AC912:  VADD.F32        S4, S4, S10
1AC916:  VADD.F32        S6, S6, S8
1AC91A:  VDIV.F32        S2, S4, S2
1AC91E:  VDIV.F32        S0, S6, S0
1AC922:  VADD.F32        S0, S0, S2
1AC926:  VCMPE.F32       S0, S16
1AC92A:  VMRS            APSR_nzcv, FPSCR
1AC92E:  BLE             loc_1AC93E
1AC930:  LDR             R0, [SP,#0x78+var_74]
1AC932:  VMOV.F32        S16, S0
1AC936:  VMOV.F32        S18, S0
1AC93A:  STR             R6, [R0]
1AC93C:  B               loc_1AC94C
1AC93E:  VCMPE.F32       S0, S18
1AC942:  VMOV.F32        S18, S0
1AC946:  VMRS            APSR_nzcv, FPSCR
1AC94A:  BLT             def_1AC506; jumptable 001AC506 default case
1AC94C:  LDRB.W          R0, [R9,#5]
1AC950:  ADDS            R6, #1
1AC952:  CMP             R6, R0
1AC954:  BLT             loc_1AC86A
1AC956:  VMOV.F32        S0, S16; jumptable 001AC506 default case
1AC95A:  ADD             SP, SP, #0x38 ; '8'
1AC95C:  VPOP            {D8-D11}
1AC960:  ADD             SP, SP, #4
1AC962:  POP.W           {R8-R11}
1AC966:  POP             {R4-R7,PC}
