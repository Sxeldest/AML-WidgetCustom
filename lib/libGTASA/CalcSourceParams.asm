; =========================================================
; Game Engine Function: CalcSourceParams
; Address            : 0x25B390 - 0x25C336
; =========================================================

25B390:  PUSH            {R4-R7,LR}
25B392:  ADD             R7, SP, #0xC
25B394:  PUSH.W          {R8-R11}
25B398:  SUB             SP, SP, #4
25B39A:  VPUSH           {D8-D15}
25B39E:  SUB             SP, SP, #0x108; float
25B3A0:  MOV             R4, SP
25B3A2:  BFC.W           R4, #0, #4
25B3A6:  MOV             SP, R4
25B3A8:  MOV             R2, R1
25B3AA:  MOVW            R1, #:lower16:(elf_hash_chain+0x604C)
25B3AE:  LDR.W           R6, [R2,#0x88]
25B3B2:  MOVT            R1, #:upper16:(elf_hash_chain+0x604C)
25B3B6:  VMOV.F32        Q8, #1.0
25B3BA:  LDRB            R1, [R6,R1]
25B3BC:  STR             R1, [SP,#0x168+var_F8]
25B3BE:  ADD             R1, SP, #0x168+var_C8
25B3C0:  VST1.64         {D16-D17}, [R1@128]
25B3C4:  VLDR            S0, [R2,#0x60]
25B3C8:  VSTR            S0, [SP,#0x168+var_FC]
25B3CC:  VLDR            S0, [R0,#0x64]
25B3D0:  VSTR            S0, [SP,#0x168+var_100]
25B3D4:  VLDR            S0, [R2,#0x68]
25B3D8:  VSTR            S0, [SP,#0x168+var_120]
25B3DC:  LDR             R1, [R2,#4]
25B3DE:  STR             R2, [SP,#0x168+var_108]
25B3E0:  VLDR            S0, [R2,#0x64]
25B3E4:  VSTR            S0, [SP,#0x168+var_124]
25B3E8:  LDR             R2, [R6,#0x10]
25B3EA:  STR             R2, [SP,#0x168+var_E4]
25B3EC:  LDR             R2, [R6,#0x3C]
25B3EE:  VLDR            S24, [R1,#0x30]
25B3F2:  VLDR            S0, [R1,#0x34]
25B3F6:  CMP             R2, #1
25B3F8:  VSTR            S0, [SP,#0x168+var_134]
25B3FC:  VLDR            S18, [R0,#4]
25B400:  VLDR            S28, [R0,#0xC]
25B404:  VLDR            S26, [R0,#0x10]
25B408:  VLDR            S0, [R0]
25B40C:  VSTR            S0, [SP,#0x168+var_E8]
25B410:  VLDR            S0, [R0,#0x28]
25B414:  VSTR            S0, [SP,#0x168+var_D0]
25B418:  LDR             R1, [R0,#0x68]
25B41A:  STR             R1, [SP,#0x168+var_138]
25B41C:  MOVW            R1, #0x4150
25B420:  ADD.W           R3, R6, R1
25B424:  MOVW            R1, #0x2E10
25B428:  VLDR            S22, [R0,#0x2C]
25B42C:  VLDR            S31, [R0,#0x30]
25B430:  VLDR            S17, [R0,#0x40]
25B434:  VLDR            S16, [R0,#0x44]
25B438:  STR             R3, [R0,R1]
25B43A:  ADD.W           R1, R6, #0x10000
25B43E:  ADD.W           R3, R1, #0x6180
25B442:  VLDR            S25, [R0,#0x48]
25B446:  MOVW            R1, #0x2E18
25B44A:  VLDR            S4, [R0,#0x34]
25B44E:  VLDR            S6, [R0,#0x38]
25B452:  VLDR            S8, [R0,#0x3C]
25B456:  VLDR            S0, [R0,#0x1C]
25B45A:  VSTR            D0, [SP,#0x168+var_F0]
25B45E:  VLDR            S0, [R0,#0x20]
25B462:  STR             R3, [R0,R1]
25B464:  ADD.W           R1, R6, #0x16000
25B468:  VMOV            D18, D0
25B46C:  VLDR            S3, [R0,#0x24]
25B470:  ADD.W           R3, R1, #0x150
25B474:  VLDR            S0, [R0,#0x14]
25B478:  VSTR            S0, [SP,#0x168+var_118]
25B47C:  VLDR            S0, [R0,#0x18]
25B480:  STR             R6, [SP,#0x168+var_D8]
25B482:  VLDR            S15, [R0,#0x5C]
25B486:  LDRB.W          R1, [R0,#0x55]
25B48A:  STR             R1, [SP,#0x168+var_10C]
25B48C:  MOVW            R1, #0x2E14
25B490:  STR             R3, [R0,R1]
25B492:  LDRB.W          R1, [R0,#0x56]
25B496:  STR             R1, [SP,#0x168+var_D4]
25B498:  LDRB.W          R1, [R0,#0x57]
25B49C:  STR             R1, [SP,#0x168+var_110]
25B49E:  STR             R0, [SP,#0x168+var_CC]
25B4A0:  VLDR            S10, [R0,#0x60]
25B4A4:  STR             R2, [SP,#0x168+var_E0]
25B4A6:  BLT             loc_25B588
25B4A8:  VMOV.F32        S12, #1.0
25B4AC:  LDR             R1, [SP,#0x168+var_D8]
25B4AE:  LDR             R2, [SP,#0x168+var_CC]
25B4B0:  MOVW            R0, #0x5830
25B4B4:  ADD.W           R1, R1, #0x16000
25B4B8:  ADD.W           R9, SP, #0x168+var_90
25B4BC:  ADD             R0, R2
25B4BE:  ADD.W           R3, R2, #0xAC
25B4C2:  LDR             R2, [SP,#0x168+var_E0]
25B4C4:  ADD.W           LR, R1, #0x1A4
25B4C8:  ADD.W           R10, SP, #0x168+var_A0
25B4CC:  ADD             R5, SP, #0x168+x
25B4CE:  VLDR            S14, =0.99426
25B4D2:  MOVS            R6, #0
25B4D4:  VLDR            S1, =343.3
25B4D8:  B               loc_25B542
25B4DA:  LDRB.W          R11, [R8,#0xBC]
25B4DE:  ADD.W           R12, R9, R6
25B4E2:  CMP.W           R11, #0
25B4E6:  BEQ             loc_25B510
25B4E8:  CMP.W           R1, #0x8000
25B4EC:  MOV.W           R4, #0
25B4F0:  VSTR            S10, [R12]
25B4F4:  IT NE
25B4F6:  MOVNE           R4, #1
25B4F8:  CMP             R1, #1
25B4FA:  IT NE
25B4FC:  MOVNE           R1, #0
25B4FE:  TEQ.W           R1, R4
25B502:  BEQ             loc_25B520
25B504:  MOVS            R1, #0
25B506:  VMOV.F32        S5, S12
25B50A:  STR.W           R1, [R10,R6]
25B50E:  B               loc_25B576
25B510:  VMOV.F32        S5, S14
25B514:  MOVS            R1, #0
25B516:  VSTR            S3, [R12]
25B51A:  STR.W           R1, [R10,R6]
25B51E:  B               loc_25B576
25B520:  VLDR            S7, [R8,#0x30]
25B524:  ADD.W           R1, R10, R6
25B528:  VLDR            S5, [R8,#0x2C]
25B52C:  VADD.F32        S7, S10, S7
25B530:  VSTR            S7, [R12]
25B534:  VLDR            S7, [R8,#0x14]
25B538:  VMUL.F32        S7, S7, S1
25B53C:  VSTR            S7, [R1]
25B540:  B               loc_25B576
25B542:  ADD.W           R1, R6, R6,LSL#1
25B546:  CMP             R6, #0
25B548:  LDR.W           R8, [R3,R1]
25B54C:  BNE             loc_25B558
25B54E:  CMP.W           R8, #0
25B552:  IT EQ
25B554:  LDREQ.W         R8, [LR]
25B558:  CMP.W           R8, #0
25B55C:  ITT NE
25B55E:  LDRNE.W         R1, [R8]
25B562:  CMPNE           R1, #0
25B564:  BNE             loc_25B4DA
25B566:  MOV.W           R8, #0
25B56A:  VMOV.F32        S5, S12
25B56E:  STR.W           R8, [R9,R6]
25B572:  STR.W           R8, [R10,R6]
25B576:  ADDS            R1, R5, R6
25B578:  SUBS            R2, #1
25B57A:  ADD.W           R6, R6, #4
25B57E:  VSTR            S5, [R1]
25B582:  STR.W           R8, [R0],#0x54
25B586:  BNE             loc_25B542
25B588:  LDR             R3, [SP,#0x168+var_CC]
25B58A:  VSTR            S0, [SP,#0x168+var_11C]
25B58E:  LDRB.W          R0, [R3,#0x4C]
25B592:  LDR             R6, [SP,#0x168+var_108]
25B594:  CMP             R0, #0
25B596:  LDR.W           R9, [R6,#4]
25B59A:  BEQ             loc_25B5C2
25B59C:  VLDR            S12, [R9,#0x80]
25B5A0:  VLDR            S10, [R9,#0x7C]
25B5A4:  VADD.F32        S0, S8, S12
25B5A8:  VLDR            S2, [R9,#0x78]
25B5AC:  VSTR            S0, [SP,#0x168+var_128]
25B5B0:  VADD.F32        S0, S6, S10
25B5B4:  VSTR            S0, [SP,#0x168+var_12C]
25B5B8:  VADD.F32        S0, S4, S2
25B5BC:  VSTR            S0, [SP,#0x168+var_130]
25B5C0:  B               loc_25B70E
25B5C2:  VLDR            S14, [R9,#0x50]
25B5C6:  VMOV.F32        S0, S25
25B5CA:  VLDR            S10, [R9,#0x48]
25B5CE:  VMOV.F32        S25, S31
25B5D2:  VLDR            S5, [R9,#0x3C]
25B5D6:  VMUL.F32        S21, S16, S14
25B5DA:  VLDR            S12, [R9,#0x4C]
25B5DE:  VMUL.F32        S30, S16, S10
25B5E2:  VMUL.F32        S31, S17, S5
25B5E6:  VLDR            S1, [R9,#0x38]
25B5EA:  VMUL.F32        S16, S16, S12
25B5EE:  VLDR            S7, [R9,#0x40]
25B5F2:  VMUL.F32        S2, S17, S1
25B5F6:  VLDR            S19, [SP,#0x168+var_D0]
25B5FA:  VLDR            S13, [R9,#0x58]
25B5FE:  VMUL.F32        S9, S6, S14
25B602:  VSTR            S15, [SP,#0x168+var_13C]
25B606:  VMUL.F32        S11, S4, S7
25B60A:  VLDR            S15, [R9,#0x5C]
25B60E:  VMUL.F32        S17, S17, S7
25B612:  VLDR            S20, [R9,#0x60]
25B616:  VMUL.F32        S14, S22, S14
25B61A:  VSTR            S3, [SP,#0x168+var_F4]
25B61E:  VMUL.F32        S7, S19, S7
25B622:  VADD.F32        S16, S31, S16
25B626:  VADD.F32        S2, S2, S30
25B62A:  VMUL.F32        S30, S19, S1
25B62E:  VMUL.F32        S1, S4, S1
25B632:  VMUL.F32        S4, S4, S5
25B636:  VADD.F32        S9, S11, S9
25B63A:  VMUL.F32        S3, S8, S20
25B63E:  VSTR            S16, [SP,#0x168+var_114]
25B642:  VMUL.F32        S16, S22, S10
25B646:  VMUL.F32        S10, S6, S10
25B64A:  VLDR            S31, [R9,#0x70]
25B64E:  VMUL.F32        S6, S6, S12
25B652:  VLDR            S23, [R9,#0x6C]
25B656:  VMUL.F32        S11, S8, S15
25B65A:  VMUL.F32        S8, S8, S13
25B65E:  VMUL.F32        S12, S22, S12
25B662:  VADD.F32        S9, S9, S3
25B666:  VMUL.F32        S22, S0, S20
25B66A:  VADD.F32        S10, S1, S10
25B66E:  VADD.F32        S4, S4, S6
25B672:  VLDR            S6, =0.0
25B676:  VADD.F32        S16, S30, S16
25B67A:  VMUL.F32        S1, S31, S6
25B67E:  VMUL.F32        S30, S23, S6
25B682:  VADD.F32        S14, S7, S14
25B686:  VLDR            S7, [R9,#0x68]
25B68A:  VMUL.F32        S5, S19, S5
25B68E:  VADD.F32        S8, S10, S8
25B692:  VADD.F32        S4, S4, S11
25B696:  VMUL.F32        S11, S25, S15
25B69A:  VMUL.F32        S15, S0, S15
25B69E:  VMUL.F32        S10, S25, S13
25B6A2:  VMUL.F32        S13, S0, S13
25B6A6:  VLDR            S0, [SP,#0x168+var_114]
25B6AA:  VMUL.F32        S6, S7, S6
25B6AE:  VADD.F32        S12, S5, S12
25B6B2:  VADD.F32        S5, S17, S21
25B6B6:  VMUL.F32        S17, S25, S20
25B6BA:  VADD.F32        S3, S0, S15
25B6BE:  VLDR            S15, [SP,#0x168+var_13C]
25B6C2:  VADD.F32        S0, S9, S1
25B6C6:  VADD.F32        S10, S16, S10
25B6CA:  VADD.F32        S2, S2, S13
25B6CE:  VADD.F32        S12, S12, S11
25B6D2:  VADD.F32        S5, S5, S22
25B6D6:  VADD.F32        S14, S14, S17
25B6DA:  VADD.F32        S16, S3, S30
25B6DE:  VLDR            S3, [SP,#0x168+var_F4]
25B6E2:  VSTR            S0, [SP,#0x168+var_128]
25B6E6:  VADD.F32        S0, S4, S30
25B6EA:  VADD.F32        S17, S2, S6
25B6EE:  VADD.F32        S22, S23, S12
25B6F2:  VADD.F32        S25, S5, S1
25B6F6:  VADD.F32        S31, S31, S14
25B6FA:  VSTR            S0, [SP,#0x168+var_12C]
25B6FE:  VADD.F32        S0, S8, S6
25B702:  VSTR            S0, [SP,#0x168+var_130]
25B706:  VADD.F32        S0, S7, S10
25B70A:  VSTR            S0, [SP,#0x168+var_D0]
25B70E:  VLDR            S0, [SP,#0x168+var_D0]
25B712:  VMUL.F32        S4, S22, S22
25B716:  VMUL.F32        S6, S31, S31
25B71A:  LDR.W           R10, [SP,#0x168+var_E0]
25B71E:  VMUL.F32        S2, S0, S0
25B722:  VNEG.F32        S20, S31
25B726:  VNEG.F32        S19, S22
25B72A:  VNEG.F32        S0, S0
25B72E:  VADD.F32        S2, S4, S2
25B732:  VADD.F32        S4, S6, S2
25B736:  VCMPE.F32       S4, #0.0
25B73A:  VMRS            APSR_nzcv, FPSCR
25B73E:  BLE             loc_25B758
25B740:  VSQRT.F32       S2, S4
25B744:  VMOV.F32        S6, #1.0
25B748:  VDIV.F32        S2, S6, S2
25B74C:  VMUL.F32        S20, S2, S20
25B750:  VMUL.F32        S19, S2, S19
25B754:  VMUL.F32        S0, S2, S0
25B758:  VMUL.F32        S2, S17, S17
25B75C:  VLDR            D6, [SP,#0x168+var_F0]
25B760:  VMUL.F32        S6, S16, S16
25B764:  VMUL.F32        S8, S25, S25
25B768:  VADD.F32        S2, S6, S2
25B76C:  VADD.F32        S6, S8, S2
25B770:  VCMPE.F32       S6, #0.0
25B774:  VMRS            APSR_nzcv, FPSCR
25B778:  BLE             loc_25B792
25B77A:  VSQRT.F32       S2, S6
25B77E:  VMOV.F32        S6, #1.0
25B782:  VDIV.F32        S2, S6, S2
25B786:  VMUL.F32        S25, S25, S2
25B78A:  VMUL.F32        S16, S16, S2
25B78E:  VMUL.F32        S17, S17, S2
25B792:  CMP.W           R10, #1
25B796:  BLT             loc_25B7D2
25B798:  CMP.W           R10, #4
25B79C:  BCC             loc_25B7BA
25B79E:  BIC.W           R0, R10, #3
25B7A2:  CBZ             R0, loc_25B7BA
25B7A4:  VMOV.F32        Q8, #1.0
25B7A8:  ADD             R1, SP, #0x168+var_80
25B7AA:  MOV             R2, R0
25B7AC:  VST1.32         {D16-D17}, [R1]!
25B7B0:  SUBS            R2, #4
25B7B2:  BNE             loc_25B7AC
25B7B4:  CMP             R10, R0
25B7B6:  BNE             loc_25B7BC
25B7B8:  B               loc_25B7D2
25B7BA:  MOVS            R0, #0
25B7BC:  ADD             R2, SP, #0x168+var_80
25B7BE:  SUB.W           R1, R10, R0
25B7C2:  ADD.W           R0, R2, R0,LSL#2
25B7C6:  MOV.W           R2, #0x3F800000
25B7CA:  STR.W           R2, [R0],#4
25B7CE:  SUBS            R1, #1
25B7D0:  BNE             loc_25B7CA
25B7D2:  VSTR            S0, [SP,#0x168+var_114]
25B7D6:  VMOV.F32        S10, #1.0
25B7DA:  VSQRT.F32       S0, S4
25B7DE:  LDRB.W          R0, [R6,#0x5C]
25B7E2:  ADD.W           R1, R3, #0x50 ; 'P'
25B7E6:  CMP             R0, #0
25B7E8:  MOVW            R0, #0xD001
25B7EC:  IT EQ
25B7EE:  ADDEQ.W         R1, R6, #0x58 ; 'X'
25B7F2:  LDR             R1, [R1]
25B7F4:  SUBS            R0, R1, R0
25B7F6:  CMP             R0, #5; switch 6 cases
25B7F8:  VSTR            D0, [SP,#0x168+var_108]
25B7FC:  VSTR            S31, [SP,#0x168+var_F4]
25B800:  VSTR            D11, [SP,#0x168+var_E0]
25B804:  BHI             def_25B80E; jumptable 0025B80E default case
25B806:  VMOV            D2, D0
25B80A:  VMOV            D11, D0
25B80E:  TBB.W           [PC,R0]; switch jump
25B812:  DCB 3; jump table for switch statement
25B813:  DCB 0x61
25B814:  DCB 0x2B
25B815:  DCB 0x1F
25B816:  DCB 0xAC
25B817:  DCB 0xA1
25B818:  VMOV            D11, D0; jumptable 0025B80E case 0
25B81C:  VMOV            D2, D0
25B820:  VCMPE.F32       S12, #0.0
25B824:  VMRS            APSR_nzcv, FPSCR
25B828:  BGT             loc_25B8F8
25B82A:  B               loc_25B9DA
25B82C:  CMP             R1, #0; jumptable 0025B80E default case
25B82E:  ITE EQ
25B830:  VMOVEQ          D2, D6
25B834:  VMOVNE          D2, D0
25B838:  B               loc_25B9DA
25B83A:  ALIGN 4
25B83C:  DCFS 0.99426
25B840:  DCFS 343.3
25B844:  DCFS 0.0
25B848:  DCFS 0.00001
25B84C:  DCFS 114.59
25B850:  VMAX.F32        D16, D6, D0; jumptable 0025B80E case 3
25B854:  VMOV            D0, D18
25B858:  VMIN.F32        D2, D16, D0
25B85C:  VCMPE.F32       S0, S12
25B860:  VMRS            APSR_nzcv, FPSCR
25B864:  BLT.W           loc_25B9DA
25B868:  VMOV            D0, D18; jumptable 0025B80E case 2
25B86C:  VCMP.F32        S0, S12
25B870:  VMRS            APSR_nzcv, FPSCR
25B874:  BEQ.W           loc_25B9DA
25B878:  VSUB.F32        S6, S4, S12
25B87C:  VLDR            S8, =0.0
25B880:  VSUB.F32        S2, S0, S12
25B884:  CMP.W           R10, #1
25B888:  VMUL.F32        S0, S3, S6
25B88C:  VDIV.F32        S10, S0, S2
25B890:  VMOV.F32        S0, #1.0
25B894:  VSUB.F32        S10, S0, S10
25B898:  VMAX.F32        D5, D5, D4
25B89C:  BLT.W           loc_25C320
25B8A0:  VMOV            D16, D5
25B8A4:  ADD             R0, SP, #0x168+var_90
25B8A6:  ADD             R1, SP, #0x168+var_80
25B8A8:  MOV             R2, R10
25B8AA:  VLDR            S10, [R0]
25B8AE:  SUBS            R2, #1
25B8B0:  ADD.W           R0, R0, #4
25B8B4:  VMUL.F32        S10, S6, S10
25B8B8:  VDIV.F32        S10, S10, S2
25B8BC:  VSUB.F32        S10, S0, S10
25B8C0:  VMAX.F32        D5, D5, D4
25B8C4:  VSTR            S10, [R1]
25B8C8:  ADD.W           R1, R1, #4
25B8CC:  BNE             loc_25B8AA
25B8CE:  VMOV            D5, D16
25B8D2:  B               loc_25B9DA
25B8D4:  VMAX.F32        D16, D6, D0; jumptable 0025B80E case 1
25B8D8:  VMOV            D0, D18
25B8DC:  VCMPE.F32       S12, #0.0
25B8E0:  VMRS            APSR_nzcv, FPSCR
25B8E4:  VMIN.F32        D11, D16, D0
25B8E8:  BLE             loc_25B9D6
25B8EA:  VMOV            D2, D11
25B8EE:  VCMPE.F32       S0, S12
25B8F2:  VMRS            APSR_nzcv, FPSCR
25B8F6:  BLT             loc_25B9DA
25B8F8:  VSUB.F32        S2, S22, S12
25B8FC:  VMOV.F32        S10, #1.0
25B900:  VMUL.F32        S0, S3, S2
25B904:  VADD.F32        S0, S12, S0
25B908:  VCMPE.F32       S0, #0.0
25B90C:  VDIV.F32        S4, S12, S0
25B910:  VMRS            APSR_nzcv, FPSCR
25B914:  IT GT
25B916:  VMOVGT.F32      S10, S4
25B91A:  CMP.W           R10, #1
25B91E:  BLT.W           loc_25C32E
25B922:  ADD             R0, SP, #0x168+var_90
25B924:  ADD             R1, SP, #0x168+var_80
25B926:  MOV             R2, R10
25B928:  VLDR            S0, [R0]
25B92C:  VMUL.F32        S0, S2, S0
25B930:  VADD.F32        S0, S12, S0
25B934:  VCMPE.F32       S0, #0.0
25B938:  VMRS            APSR_nzcv, FPSCR
25B93C:  BLE             loc_25B946
25B93E:  VDIV.F32        S0, S12, S0
25B942:  VSTR            S0, [R1]
25B946:  SUBS            R2, #1
25B948:  ADD.W           R1, R1, #4
25B94C:  ADD.W           R0, R0, #4
25B950:  BNE             loc_25B928
25B952:  B               loc_25B9D6
25B954:  VMAX.F32        D16, D6, D0; jumptable 0025B80E case 5
25B958:  VMOV            D0, D18
25B95C:  VMIN.F32        D11, D16, D0
25B960:  VCMPE.F32       S0, S12
25B964:  VMRS            APSR_nzcv, FPSCR
25B968:  BLT             loc_25B9D6
25B96A:  VCMPE.F32       S12, #0.0; jumptable 0025B80E case 4
25B96E:  VMRS            APSR_nzcv, FPSCR
25B972:  BLE             loc_25B9D6
25B974:  VCMPE.F32       S22, #0.0
25B978:  VMRS            APSR_nzcv, FPSCR
25B97C:  BLE             loc_25B9D6
25B97E:  VDIV.F32        S2, S22, S12
25B982:  VMOV            R0, S3
25B986:  VSTR            S15, [SP,#0x168+var_13C]
25B98A:  VMOV            R8, S2
25B98E:  EOR.W           R1, R0, #0x80000000; y
25B992:  MOV             R0, R8; x
25B994:  BLX             powf
25B998:  VMOV            S10, R0
25B99C:  CMP.W           R10, #1
25B9A0:  BLT.W           loc_25C326
25B9A4:  ADD             R4, SP, #0x168+var_90
25B9A6:  ADD             R5, SP, #0x168+var_80
25B9A8:  MOV             R6, R10
25B9AA:  VSTR            D5, [SP,#0x168+var_148]
25B9AE:  LDR.W           R0, [R4],#4
25B9B2:  EOR.W           R1, R0, #0x80000000; y
25B9B6:  MOV             R0, R8; x
25B9B8:  BLX             powf
25B9BC:  STR.W           R0, [R5],#4
25B9C0:  SUBS            R6, #1
25B9C2:  BNE             loc_25B9AE
25B9C4:  VMOV            D2, D11
25B9C8:  VLDR            D6, [SP,#0x168+var_F0]
25B9CC:  VLDR            S15, [SP,#0x168+var_13C]
25B9D0:  VLDR            D5, [SP,#0x168+var_148]
25B9D4:  B               loc_25B9DA
25B9D6:  VMOV            D2, D11
25B9DA:  VMUL.F32        S30, S18, S10
25B9DE:  CMP.W           R10, #1
25B9E2:  BLT             loc_25BA02
25B9E4:  ADD             R0, SP, #0x168+var_80
25B9E6:  ADD             R1, SP, #0x168+var_B0
25B9E8:  MOV             R2, R10
25B9EA:  VLDR            S0, [R0]
25B9EE:  SUBS            R2, #1
25B9F0:  ADD.W           R0, R0, #4
25B9F4:  VMUL.F32        S0, S18, S0
25B9F8:  VSTR            S0, [R1]
25B9FC:  ADD.W           R1, R1, #4
25BA00:  BNE             loc_25B9EA
25BA02:  VMOV            D11, D2
25BA06:  VCMPE.F32       S15, #0.0
25BA0A:  VMRS            APSR_nzcv, FPSCR
25BA0E:  VMOV.F32        S21, S20
25BA12:  VMOV.F32        S18, #1.0
25BA16:  ITT GT
25BA18:  VCMPEGT.F32     S22, S12
25BA1C:  VMRSGT          APSR_nzcv, FPSCR
25BA20:  BLE             loc_25BAA2
25BA22:  VSUB.F32        S2, S22, S12
25BA26:  VLDR            S0, =0.0
25BA2A:  MOVW            R0, #0x87D3
25BA2E:  VMOV.F32        S20, S30
25BA32:  MOVT            R0, #0x3F7E; x
25BA36:  VMOV            D15, D5
25BA3A:  VMAX.F32        D0, D1, D0
25BA3E:  VLDR            S2, [SP,#0x168+var_134]
25BA42:  VMUL.F32        S0, S2, S0
25BA46:  VMUL.F32        S0, S15, S0
25BA4A:  VMOV            R8, S0
25BA4E:  MOV             R1, R8; y
25BA50:  BLX             powf
25BA54:  VMOV            S18, R0
25BA58:  CMP.W           R10, #1
25BA5C:  BLT             loc_25BA9A
25BA5E:  LDR             R0, [SP,#0x168+x]; x
25BA60:  MOV             R1, R8; y
25BA62:  BLX             powf
25BA66:  CMP.W           R10, #1
25BA6A:  STR             R0, [SP,#0x168+var_C8]
25BA6C:  BEQ             loc_25BA9A
25BA6E:  ADD             R0, SP, #0x168+x
25BA70:  SUB.W           R6, R10, #1
25BA74:  ADDS            R4, R0, #4
25BA76:  ADD             R0, SP, #0x168+var_C8
25BA78:  ORR.W           R5, R0, #4
25BA7C:  LDR.W           R0, [R4],#4; x
25BA80:  MOV             R1, R8; y
25BA82:  BLX             powf
25BA86:  VLDR            S0, [R5]
25BA8A:  VMOV            S2, R0
25BA8E:  SUBS            R6, #1
25BA90:  VMUL.F32        S0, S2, S0
25BA94:  VSTM            R5!, {S0}
25BA98:  BNE             loc_25BA7C
25BA9A:  VMOV            D5, D15
25BA9E:  VMOV.F32        S30, S20
25BAA2:  LDR             R0, [SP,#0x168+var_D4]
25BAA4:  CBZ             R0, loc_25BB0A
25BAA6:  CMP.W           R10, #1
25BAAA:  BLT             loc_25BB0A
25BAAC:  VLDR            S2, =0.00001
25BAB0:  VMOV.F32        S0, #1.0
25BAB4:  MOVW            R8, #0x126F
25BAB8:  ADD             R4, SP, #0x168+var_A0
25BABA:  VMAX.F32        D1, D5, D1
25BABE:  ADD             R5, SP, #0x168+var_B0
25BAC0:  MOVT            R8, #0x3A83
25BAC4:  MOV             R6, R10
25BAC6:  VDIV.F32        S0, S0, S2
25BACA:  VMOV.F32        S2, #-1.0
25BACE:  VADD.F32        S20, S0, S2
25BAD2:  VLDR            S0, [R4]
25BAD6:  VCMPE.F32       S0, #0.0
25BADA:  VMRS            APSR_nzcv, FPSCR
25BADE:  BLE             loc_25BAFE
25BAE0:  VDIV.F32        S0, S20, S0
25BAE4:  MOV             R0, R8; x
25BAE6:  VMOV            R1, S0; y
25BAEA:  BLX             powf
25BAEE:  VLDR            S0, [R5]
25BAF2:  VMOV            S2, R0
25BAF6:  VMUL.F32        S0, S2, S0
25BAFA:  VSTR            S0, [R5]
25BAFE:  SUBS            R6, #1
25BB00:  ADD.W           R5, R5, #4
25BB04:  ADD.W           R4, R4, #4
25BB08:  BNE             loc_25BAD2
25BB0A:  VLDR            S22, [SP,#0x168+var_114]
25BB0E:  VMUL.F32        S2, S19, S16
25BB12:  VMUL.F32        S4, S21, S25
25BB16:  VMUL.F32        S0, S22, S17
25BB1A:  VADD.F32        S0, S2, S0
25BB1E:  VADD.F32        S0, S4, S0
25BB22:  VMOV            R0, S0; x
25BB26:  BLX             acosf
25BB2A:  LDR.W           R1, =(ConeScale_ptr - 0x25BB3A)
25BB2E:  VMOV            S0, R0
25BB32:  VLDR            S4, [SP,#0x168+var_118]
25BB36:  ADD             R1, PC; ConeScale_ptr
25BB38:  LDR             R1, [R1]; ConeScale
25BB3A:  VLDR            S2, [R1]
25BB3E:  VMUL.F32        S0, S0, S2
25BB42:  VLDR            S2, =114.59
25BB46:  VMUL.F32        S0, S0, S2
25BB4A:  VLDR            S2, [SP,#0x168+var_11C]
25BB4E:  VCMPE.F32       S0, S4
25BB52:  VMRS            APSR_nzcv, FPSCR
25BB56:  BLE             loc_25BB9E
25BB58:  VCMPE.F32       S0, S2
25BB5C:  VMRS            APSR_nzcv, FPSCR
25BB60:  BGT             loc_25BB9E
25BB62:  VSUB.F32        S2, S2, S4
25BB66:  LDR             R6, [SP,#0x168+var_CC]
25BB68:  VSUB.F32        S0, S0, S4
25BB6C:  VLDR            S4, [R6,#8]
25BB70:  VLDR            S6, [R6,#0x58]
25BB74:  LDR.W           R8, [SP,#0x168+var_D8]
25BB78:  VDIV.F32        S0, S0, S2
25BB7C:  VMOV.F32        S2, #-1.0
25BB80:  VADD.F32        S6, S6, S2
25BB84:  VADD.F32        S2, S4, S2
25BB88:  VMOV.F32        S4, #1.0
25BB8C:  VMUL.F32        S6, S0, S6
25BB90:  VMUL.F32        S2, S0, S2
25BB94:  VADD.F32        S0, S6, S4
25BB98:  VADD.F32        S2, S2, S4
25BB9C:  B               loc_25BBC0
25BB9E:  LDR             R6, [SP,#0x168+var_CC]
25BBA0:  VCMPE.F32       S0, S2
25BBA4:  LDR.W           R8, [SP,#0x168+var_D8]
25BBA8:  VMRS            APSR_nzcv, FPSCR
25BBAC:  BLE             loc_25BBB8
25BBAE:  VLDR            S2, [R6,#8]
25BBB2:  VLDR            S0, [R6,#0x58]
25BBB6:  B               loc_25BBC0
25BBB8:  VMOV.F32        S0, #1.0
25BBBC:  VMOV.F32        S2, S0
25BBC0:  LDR             R0, [SP,#0x168+var_D4]
25BBC2:  CBZ             R0, loc_25BBE2
25BBC4:  CMP.W           R10, #1
25BBC8:  BLT             loc_25BBE2
25BBCA:  ADD             R0, SP, #0x168+var_B0
25BBCC:  MOV             R1, R10
25BBCE:  VLDR            S4, [R0]
25BBD2:  SUBS            R1, #1
25BBD4:  VMUL.F32        S4, S2, S4
25BBD8:  VSTR            S4, [R0]
25BBDC:  ADD.W           R0, R0, #4
25BBE0:  BNE             loc_25BBCE
25BBE2:  VMUL.F32        S2, S30, S2
25BBE6:  LDR             R0, [SP,#0x168+var_10C]
25BBE8:  VMUL.F32        S16, S18, S0
25BBEC:  CMP             R0, #0
25BBEE:  IT EQ
25BBF0:  VMOVEQ.F32      S16, S18
25BBF4:  LDR             R0, [SP,#0x168+var_110]
25BBF6:  CBZ             R0, loc_25BC16
25BBF8:  CMP.W           R10, #1
25BBFC:  BLT             loc_25BC16
25BBFE:  ADD             R0, SP, #0x168+var_C8
25BC00:  MOV             R1, R10
25BC02:  VLDR            S4, [R0]
25BC06:  SUBS            R1, #1
25BC08:  VMUL.F32        S4, S0, S4
25BC0C:  VSTR            S4, [R0]
25BC10:  ADD.W           R0, R0, #4
25BC14:  BNE             loc_25BC02
25BC16:  VMAX.F32        D16, D14, D1
25BC1A:  VLDR            S30, [SP,#0x168+var_F4]
25BC1E:  CMP.W           R10, #1
25BC22:  BLT             loc_25BC7A
25BC24:  CMP.W           R10, #4
25BC28:  BCC             loc_25BC56
25BC2A:  BIC.W           R0, R10, #3
25BC2E:  CBZ             R0, loc_25BC56
25BC30:  VDUP.32         Q9, D13[0]
25BC34:  ADD             R1, SP, #0x168+var_B0
25BC36:  MOV             R2, R0
25BC38:  VDUP.32         Q10, D14[0]
25BC3C:  VLD1.32         {D22-D23}, [R1]
25BC40:  SUBS            R2, #4
25BC42:  VMAX.F32        Q11, Q10, Q11
25BC46:  VMIN.F32        Q11, Q11, Q9
25BC4A:  VST1.32         {D22-D23}, [R1]!
25BC4E:  BNE             loc_25BC3C
25BC50:  CMP             R10, R0
25BC52:  BNE             loc_25BC58
25BC54:  B               loc_25BC7A
25BC56:  MOVS            R0, #0
25BC58:  ADD             R2, SP, #0x168+var_B0
25BC5A:  SUB.W           R1, R10, R0
25BC5E:  ADD.W           R0, R2, R0,LSL#2
25BC62:  VLDR            S0, [R0]
25BC66:  SUBS            R1, #1
25BC68:  VMAX.F32        D17, D14, D0
25BC6C:  VMIN.F32        D0, D17, D13
25BC70:  VSTR            S0, [R0]
25BC74:  ADD.W           R0, R0, #4
25BC78:  BNE             loc_25BC62
25BC7A:  VLDR            S2, [SP,#0x168+var_FC]
25BC7E:  VMIN.F32        D0, D16, D13
25BC82:  VLDR            S4, [SP,#0x168+var_100]
25BC86:  CMP.W           R10, #1
25BC8A:  VLDR            S18, [R6,#0xA8]
25BC8E:  VMUL.F32        S4, S2, S4
25BC92:  VLDR            S2, [R6,#0xA4]
25BC96:  BLT             loc_25BCD6
25BC98:  ADD.W           R0, R6, #0xB0
25BC9C:  ADD             R1, SP, #0x168+var_B0
25BC9E:  ADD             R2, SP, #0x168+var_C8
25BCA0:  MOV             R3, R10
25BCA2:  VLDR            S6, [R0]
25BCA6:  SUBS            R3, #1
25BCA8:  VLDR            S10, [R1]
25BCAC:  VMUL.F32        S6, S24, S6
25BCB0:  VLDR            S8, [R0,#4]
25BCB4:  ADD.W           R0, R0, #0xC
25BCB8:  VMUL.F32        S6, S10, S6
25BCBC:  VSTR            S6, [R1]
25BCC0:  ADD.W           R1, R1, #4
25BCC4:  VLDR            S6, [R2]
25BCC8:  VMUL.F32        S6, S8, S6
25BCCC:  VSTR            S6, [R2]
25BCD0:  ADD.W           R2, R2, #4
25BCD4:  BNE             loc_25BCA2
25BCD6:  VCMPE.F32       S4, #0.0
25BCDA:  VMRS            APSR_nzcv, FPSCR
25BCDE:  BLE             loc_25BD82
25BCE0:  VLDR            S6, [SP,#0x168+var_120]
25BCE4:  VLDR            S8, [SP,#0x168+var_124]
25BCE8:  VMUL.F32        S8, S6, S8
25BCEC:  VMOV.F32        S6, #1.0
25BCF0:  VCMPE.F32       S8, S6
25BCF4:  VMRS            APSR_nzcv, FPSCR
25BCF8:  BGE             loc_25BD06
25BCFA:  VDIV.F32        S8, S6, S8
25BCFE:  VMUL.F32        S4, S4, S8
25BD02:  VMOV.F32        S8, S6
25BD06:  VLDR            S10, [R9,#0x78]
25BD0A:  VLDR            S12, [R9,#0x7C]
25BD0E:  VLDR            S3, [SP,#0x168+var_130]
25BD12:  VMUL.F32        S10, S22, S10
25BD16:  VLDR            S5, [SP,#0x168+var_12C]
25BD1A:  VMUL.F32        S12, S19, S12
25BD1E:  VMUL.F32        S3, S3, S22
25BD22:  VLDR            S14, [R9,#0x80]
25BD26:  VMUL.F32        S5, S5, S19
25BD2A:  VLDR            S9, [SP,#0x168+var_128]
25BD2E:  VMUL.F32        S14, S21, S14
25BD32:  VMUL.F32        S9, S9, S21
25BD36:  VADD.F32        S10, S10, S12
25BD3A:  VADD.F32        S3, S5, S3
25BD3E:  VADD.F32        S10, S10, S14
25BD42:  VADD.F32        S14, S8, S8
25BD46:  VADD.F32        S12, S9, S3
25BD4A:  VMUL.F32        S12, S12, S4
25BD4E:  VMUL.F32        S4, S4, S10
25BD52:  VMOV.F32        S10, #-1.0
25BD56:  VSUB.F32        S12, S8, S12
25BD5A:  VSUB.F32        S4, S8, S4
25BD5E:  VADD.F32        S8, S14, S10
25BD62:  VMAX.F32        D16, D6, D3
25BD66:  VMAX.F32        D17, D2, D3
25BD6A:  VMIN.F32        D2, D16, D4
25BD6E:  VMIN.F32        D3, D17, D4
25BD72:  VDIV.F32        S4, S6, S4
25BD76:  VLDR            S6, [SP,#0x168+var_E8]
25BD7A:  VMUL.F32        S6, S6, S4
25BD7E:  VSTR            S6, [SP,#0x168+var_E8]
25BD82:  VMUL.F32        S2, S24, S2
25BD86:  LDR.W           R0, [R6,#0x90]
25BD8A:  CMP             R0, #0
25BD8C:  BEQ             loc_25BE60
25BD8E:  LDR             R1, [R0]
25BD90:  CBNZ            R1, loc_25BD9A
25BD92:  LDR             R0, [R0,#4]
25BD94:  CMP             R0, #0
25BD96:  BNE             loc_25BD8E
25BD98:  B               loc_25BE60
25BD9A:  VLDR            S4, [R1,#4]
25BD9E:  LDR.W           R1, =(ResamplerPadding_ptr - 0x25BDAC)
25BDA2:  VCVT.F32.S32    S4, S4
25BDA6:  LDR             R0, [SP,#0x168+var_E4]
25BDA8:  ADD             R1, PC; ResamplerPadding_ptr
25BDAA:  VMOV            S6, R0
25BDAE:  LDR.W           R0, =(ResamplerPrePadding_ptr - 0x25BDC0)
25BDB2:  LDR             R1, [R1]; ResamplerPadding
25BDB4:  VCVT.F32.U32    S6, S6
25BDB8:  VLDR            S8, [SP,#0x168+var_E8]
25BDBC:  ADD             R0, PC; ResamplerPrePadding_ptr
25BDBE:  LDR             R2, [SP,#0x168+var_138]
25BDC0:  VMUL.F32        S4, S8, S4
25BDC4:  LDR             R0, [R0]; ResamplerPrePadding
25BDC6:  LDR.W           R1, [R1,R2,LSL#2]
25BDCA:  LDR.W           R0, [R0,R2,LSL#2]
25BDCE:  MOVW            R2, #0x7FF
25BDD2:  SUBS            R1, R2, R1
25BDD4:  SUBS            R1, R1, R0
25BDD6:  MOVW            R0, #:lower16:(elf_hash_chain+0xFE97)
25BDDA:  VDIV.F32        S4, S4, S6
25BDDE:  MOVT            R0, #:upper16:(elf_hash_chain+0xFE97)
25BDE2:  CMP             R1, R0
25BDE4:  IT LT
25BDE6:  MOVLT           R0, R1
25BDE8:  VMOV            S6, R0
25BDEC:  VCVT.F32.S32    S6, S6
25BDF0:  VCMPE.F32       S4, S6
25BDF4:  VMRS            APSR_nzcv, FPSCR
25BDF8:  BLE             loc_25BE04
25BDFA:  MOVW            R1, #0x2E0C
25BDFE:  LSLS            R0, R0, #0xE
25BE00:  ADD             R1, R6
25BE02:  B               loc_25BE30
25BE04:  VLDR            S6, =16384.0
25BE08:  MOVW            R1, #0x2E0C
25BE0C:  VMUL.F32        S4, S4, S6
25BE10:  VCVT.S32.F32    S4, S4
25BE14:  VMOV            R0, S4
25BE18:  STR             R0, [R6,R1]
25BE1A:  CBZ             R0, loc_25BE2C
25BE1C:  CMP.W           R0, #0x4000
25BE20:  BNE             loc_25BE38
25BE22:  LDR.W           R0, =(Resample_copy32_C_ptr - 0x25BE2A)
25BE26:  ADD             R0, PC; Resample_copy32_C_ptr
25BE28:  LDR             R0, [R0]; Resample_copy32_C
25BE2A:  B               loc_25BE5A
25BE2C:  ADD             R1, R6
25BE2E:  MOVS            R0, #1
25BE30:  STR             R0, [R1]
25BE32:  CMP.W           R0, #0x4000
25BE36:  BEQ             loc_25BE22
25BE38:  LDR.W           R0, =(Resample_point32_C_ptr - 0x25BE44)
25BE3C:  LDR.W           R1, =(Resample_lerp32_C_ptr - 0x25BE4C)
25BE40:  ADD             R0, PC; Resample_point32_C_ptr
25BE42:  LDR             R3, [SP,#0x168+var_138]
25BE44:  LDR.W           R2, =(Resample_cubic32_C_ptr - 0x25BE52)
25BE48:  ADD             R1, PC; Resample_lerp32_C_ptr
25BE4A:  LDR             R0, [R0]; Resample_point32_C
25BE4C:  CMP             R3, #1
25BE4E:  ADD             R2, PC; Resample_cubic32_C_ptr
25BE50:  IT EQ
25BE52:  LDREQ           R0, [R1]; Resample_lerp32_C
25BE54:  CMP             R3, #2
25BE56:  IT EQ
25BE58:  LDREQ           R0, [R2]; Resample_cubic32_C
25BE5A:  MOV.W           R1, #0x2E00
25BE5E:  STR             R0, [R6,R1]
25BE60:  VMUL.F32        S20, S0, S2
25BE64:  MOVW            R0, #0x2E04
25BE68:  LDR             R1, [SP,#0x168+var_F8]
25BE6A:  ADD             R0, R6
25BE6C:  CMP             R1, #0
25BE6E:  BEQ             loc_25BF08
25BE70:  LDR.W           R2, =(MixDirect_Hrtf_C_ptr - 0x25BE7C)
25BE74:  LDR.W           R1, =(MixSend_C_ptr - 0x25BE82)
25BE78:  ADD             R2, PC; MixDirect_Hrtf_C_ptr
25BE7A:  VLDR            S0, =1.1921e-7
25BE7E:  ADD             R1, PC; MixSend_C_ptr
25BE80:  LDR             R2, [R2]; MixDirect_Hrtf_C
25BE82:  STR             R2, [R0]
25BE84:  MOVW            R0, #0x2E08
25BE88:  LDR             R1, [R1]; MixSend_C
25BE8A:  STR             R1, [R6,R0]
25BE8C:  VLDR            D1, [SP,#0x168+var_108]
25BE90:  VMOV            D16, D1
25BE94:  VCMPE.F32       S2, S0
25BE98:  VMRS            APSR_nzcv, FPSCR
25BE9C:  BLE.W           loc_25BFA6
25BEA0:  VMOV.F32        S0, #1.0
25BEA4:  VLDR            D2, [SP,#0x168+var_E0]
25BEA8:  VMOV            D1, D16
25BEAC:  VDIV.F32        S22, S0, S2
25BEB0:  VMUL.F32        S4, S4, S22
25BEB4:  VMOV.F32        S2, #-1.0
25BEB8:  VMAX.F32        D16, D2, D1
25BEBC:  VSTR            D2, [SP,#0x168+var_E0]
25BEC0:  VMIN.F32        D0, D16, D0
25BEC4:  VMOV            R0, S0; x
25BEC8:  BLX             asinf
25BECC:  LDR.W           R1, =(ZScale_ptr - 0x25BEDC)
25BED0:  VMUL.F32        S30, S30, S22
25BED4:  VLDR            S2, [SP,#0x168+var_D0]
25BED8:  ADD             R1, PC; ZScale_ptr
25BEDA:  VMUL.F32        S2, S2, S22
25BEDE:  LDR             R1, [R1]; ZScale
25BEE0:  VMOV            S22, R0
25BEE4:  VLDR            S0, [R1]
25BEE8:  VMUL.F32        S0, S30, S0
25BEEC:  VMOV            R2, S2
25BEF0:  VSTR            S2, [SP,#0x168+var_D0]
25BEF4:  VMOV            R1, S0
25BEF8:  MOV             R0, R2; y
25BEFA:  EOR.W           R1, R1, #0x80000000; x
25BEFE:  BLX             atan2f
25BF02:  VMOV            S24, R0
25BF06:  B               loc_25BFAE
25BF08:  LDR.W           R2, =(MixDirect_C_ptr - 0x25BF14)
25BF0C:  LDR.W           R1, =(MixSend_C_ptr - 0x25BF16)
25BF10:  ADD             R2, PC; MixDirect_C_ptr
25BF12:  ADD             R1, PC; MixSend_C_ptr
25BF14:  LDR             R2, [R2]; MixDirect_C
25BF16:  STR             R2, [R0]
25BF18:  MOVW            R0, #0x2E08
25BF1C:  LDR             R1, [R1]; MixSend_C
25BF1E:  STR             R1, [R6,R0]
25BF20:  MOVW            R0, #0x56A0
25BF24:  ADDS            R4, R6, R0
25BF26:  MOV.W           R1, #0x144
25BF2A:  MOV             R0, R4
25BF2C:  BLX             j___aeabi_memclr8_0
25BF30:  VLDR            D1, [SP,#0x168+var_108]
25BF34:  VLDR            S0, =1.1921e-7
25BF38:  VMOV            D16, D1
25BF3C:  VCMPE.F32       S2, S0
25BF40:  VMRS            APSR_nzcv, FPSCR
25BF44:  BLE.W           loc_25C1A0
25BF48:  VMOV.F32        S0, #1.0
25BF4C:  LDR.W           R0, =(ZScale_ptr - 0x25BF5C)
25BF50:  VMOV            D1, D16
25BF54:  VLDR            S4, [SP,#0x168+var_D0]
25BF58:  ADD             R0, PC; ZScale_ptr
25BF5A:  LDR             R0, [R0]; ZScale
25BF5C:  VDIV.F32        S0, S0, S2
25BF60:  VMUL.F32        S2, S30, S0
25BF64:  VLDR            S8, [R0]
25BF68:  VMUL.F32        S0, S4, S0
25BF6C:  VMUL.F32        S4, S2, S2
25BF70:  VMUL.F32        S2, S2, S8
25BF74:  VMOV            R0, S0; y
25BF78:  VMUL.F32        S6, S0, S0
25BF7C:  VMOV            R1, S2
25BF80:  VADD.F32        S4, S6, S4
25BF84:  VSQRT.F32       S22, S4
25BF88:  EOR.W           R1, R1, #0x80000000; x
25BF8C:  BLX             atan2f
25BF90:  VMUL.F32        S0, S22, S20
25BF94:  MOV             R1, R0
25BF96:  MOV             R0, R8
25BF98:  MOVS            R2, #0
25BF9A:  STR             R4, [SP,#0x168+var_168]
25BF9C:  VMOV            R3, S0
25BFA0:  BLX             j_ComputeAngleGains
25BFA4:  B               loc_25C1A4
25BFA6:  VLDR            S22, =0.0
25BFAA:  VMOV.F32        S24, S22
25BFAE:  MOV             R11, R6
25BFB0:  LDRB.W          R0, [R11,#0xE0]!
25BFB4:  CMP             R0, #0
25BFB6:  BEQ.W           loc_25C120
25BFBA:  VLDR            S28, =0.0001
25BFBE:  MOVW            R0, #0x2E20
25BFC2:  ADD.W           R9, R6, R0
25BFC6:  VCMPE.F32       S20, S28
25BFCA:  VMRS            APSR_nzcv, FPSCR
25BFCE:  VMOV.F32        S0, S28
25BFD2:  IT GT
25BFD4:  VMOVGT.F32      S0, S20
25BFD8:  VLDR            S2, [R9]
25BFDC:  VMAX.F32        D1, D1, D14
25BFE0:  VDIV.F32        S0, S0, S2
25BFE4:  VMOV            R0, S0; x
25BFE8:  BLX             log10f
25BFEC:  VCMPE.F32       S20, S28
25BFF0:  VMOV.F32        S0, #-0.25
25BFF4:  VMRS            APSR_nzcv, FPSCR
25BFF8:  VMOV            S2, R0
25BFFC:  VMUL.F32        S0, S2, S0
25C000:  VABS.F32        S26, S0
25C004:  VLDR            S0, =0.0
25C008:  ITT LE
25C00A:  VCMPELE.F32     S26, S28
25C00E:  VMRSLE          APSR_nzcv, FPSCR
25C012:  BLE             loc_25C0AC
25C014:  MOVW            R1, #0x2E28
25C018:  VLDR            D3, [SP,#0x168+var_E0]
25C01C:  ADD             R1, R6
25C01E:  MOVW            R0, #0x2E24
25C022:  ADD             R0, R6
25C024:  VLDR            S8, [SP,#0x168+var_D0]
25C028:  VLDR            S2, [R1]
25C02C:  MOVS            R1, #0
25C02E:  VLDR            S4, [R0]
25C032:  MOVS            R0, #0
25C034:  VSUB.F32        S6, S6, S2
25C038:  VSUB.F32        S8, S8, S4
25C03C:  VCMP.F32        S6, #0.0
25C040:  VMRS            APSR_nzcv, FPSCR
25C044:  VCMP.F32        S8, #0.0
25C048:  IT NE
25C04A:  MOVNE           R1, #1
25C04C:  VMRS            APSR_nzcv, FPSCR
25C050:  IT NE
25C052:  MOVNE           R0, #1
25C054:  ORRS            R0, R1
25C056:  MOVW            R0, #0x2E2C
25C05A:  ADD             R0, R6
25C05C:  BNE             loc_25C070
25C05E:  VLDR            S6, [R0]
25C062:  VSUB.F32        S6, S30, S6
25C066:  VCMP.F32        S6, #0.0
25C06A:  VMRS            APSR_nzcv, FPSCR
25C06E:  BEQ             loc_25C0AC
25C070:  VLDR            D0, [SP,#0x168+var_E0]
25C074:  VMUL.F32        S0, S0, S2
25C078:  VLDR            S2, [SP,#0x168+var_D0]
25C07C:  VMUL.F32        S2, S2, S4
25C080:  VLDR            S4, [R0]
25C084:  VMUL.F32        S4, S30, S4
25C088:  VADD.F32        S0, S2, S0
25C08C:  VADD.F32        S0, S0, S4
25C090:  VMOV            R0, S0; x
25C094:  BLX             acosf
25C098:  VLDR            S0, =3.1416
25C09C:  VMOV            S2, R0
25C0A0:  VDIV.F32        S0, S2, S0
25C0A4:  VMOV.F32        S2, #25.0
25C0A8:  VMUL.F32        S0, S0, S2
25C0AC:  VMAX.F32        D0, D0, D13
25C0B0:  VLDR            S4, =0.001
25C0B4:  VMOV.F32        S2, #1.0
25C0B8:  VADD.F32        S0, S0, S0
25C0BC:  VMIN.F32        D0, D0, D1
25C0C0:  VCMPE.F32       S0, S4
25C0C4:  VMRS            APSR_nzcv, FPSCR
25C0C8:  BLE             loc_25C182
25C0CA:  LDR             R4, [SP,#0x168+var_CC]
25C0CC:  MOVW            R0, #0x5678
25C0D0:  ADD.W           R12, R6, R0
25C0D4:  LDR.W           R0, [R8,#0xAC]; int
25C0D8:  MOVW            R3, #0x5230
25C0DC:  ADD.W           R8, R4, R3
25C0E0:  LDR             R4, [SP,#0x168+var_CC]
25C0E2:  MOVW            R3, #0x5630
25C0E6:  LDR             R5, [SP,#0x168+var_CC]
25C0E8:  VMOV            R1, S22; int
25C0EC:  ADD             R4, R3
25C0EE:  MOVW            R3, #0x2E30
25C0F2:  ADD             R5, R3
25C0F4:  VMOV            R2, S24; int
25C0F8:  VMOV            R3, S20; int
25C0FC:  LDR.W           LR, [R6,#0xE4]
25C100:  STRD.W          LR, R5, [SP,#0x168+var_164]; int
25C104:  STRD.W          R4, R8, [SP,#0x168+var_15C]; int
25C108:  STR.W           R12, [SP,#0x168+var_154]; int
25C10C:  LDR.W           R8, [SP,#0x168+var_D8]
25C110:  LDR             R6, [SP,#0x168+var_CC]
25C112:  VSTR            S0, [SP,#0x168+var_168]
25C116:  BLX             j_GetMovingHrtfCoeffs
25C11A:  STR.W           R0, [R6,#0xE4]
25C11E:  B               loc_25C158
25C120:  VMOV            R1, S22
25C124:  MOVW            R5, #0x5630
25C128:  VMOV            R2, S24
25C12C:  LDR.W           R0, [R8,#0xAC]
25C130:  VMOV            R3, S20
25C134:  ADD             R5, R6
25C136:  MOVW            R4, #0x2E30
25C13A:  ADD             R4, R6
25C13C:  STRD.W          R4, R5, [SP,#0x168+var_168]
25C140:  BLX             j_GetLerpedHrtfCoeffs
25C144:  MOVS            R0, #1
25C146:  STRB.W          R0, [R6,#0xE0]
25C14A:  MOVS            R0, #0
25C14C:  STR.W           R0, [R6,#0xE4]
25C150:  MOVW            R0, #0x2E20
25C154:  ADD.W           R9, R6, R0
25C158:  MOVW            R0, #0x2E2C
25C15C:  VSTR            S20, [R9]
25C160:  ADD             R0, R6
25C162:  VSTR            S30, [R0]
25C166:  MOVW            R0, #0x2E28
25C16A:  ADD             R0, R6
25C16C:  VLDR            D0, [SP,#0x168+var_E0]
25C170:  VSTR            S0, [R0]
25C174:  MOVW            R0, #0x2E24
25C178:  ADD             R0, R6
25C17A:  VLDR            S0, [SP,#0x168+var_D0]
25C17E:  VSTR            S0, [R0]
25C182:  LDR.W           R0, [R8,#0xAC]
25C186:  MOVW            R1, #0x5690
25C18A:  LDR             R0, [R0,#4]
25C18C:  STR.W           R11, [R6,R1]
25C190:  MOV.W           R1, #0x5680
25C194:  STR             R0, [R6,R1]
25C196:  B               loc_25C1F6
25C198:  DCFS 16384.0
25C19C:  DCFS 1.1921e-7
25C1A0:  VLDR            S22, =0.0
25C1A4:  LDR.W           R0, [R8,#0x128]
25C1A8:  CMP             R0, #1
25C1AA:  VMOV            S0, R0
25C1AE:  VCVT.F32.U32    S0, S0
25C1B2:  BLT             loc_25C1F6
25C1B4:  VMOV.F32        S2, #1.0
25C1B8:  ADD.W           R0, R8, #0xE0
25C1BC:  MOVS            R1, #0
25C1BE:  MOVW            R2, #0x56A0
25C1C2:  VDIV.F32        S0, S2, S0
25C1C6:  VSQRT.F32       S0, S0
25C1CA:  VSUB.F32        S2, S2, S22
25C1CE:  VMUL.F32        S0, S20, S0
25C1D2:  VMUL.F32        S0, S2, S0
25C1D6:  LDR.W           R3, [R0,R1,LSL#2]
25C1DA:  ADDS            R1, #1
25C1DC:  ADD.W           R3, R6, R3,LSL#2
25C1E0:  ADD             R3, R2
25C1E2:  VLDR            S2, [R3]
25C1E6:  VMAX.F32        D1, D1, D0
25C1EA:  VSTR            S2, [R3]
25C1EE:  LDR.W           R3, [R8,#0x128]
25C1F2:  CMP             R1, R3
25C1F4:  BLT             loc_25C1D6
25C1F6:  VMUL.F32        S16, S16, S18
25C1FA:  CMP.W           R10, #1
25C1FE:  BLT             loc_25C216
25C200:  MOVW            R0, #0x5834
25C204:  ADD             R1, SP, #0x168+var_B0
25C206:  ADD             R0, R6
25C208:  MOV             R2, R10
25C20A:  LDR.W           R3, [R1],#4
25C20E:  SUBS            R2, #1
25C210:  STR.W           R3, [R0],#0x54
25C214:  BNE             loc_25C20A
25C216:  LDR             R0, [SP,#0x168+var_E4]
25C218:  VLDR            S2, =31416.0
25C21C:  VMOV            S0, R0
25C220:  VCVT.F32.U32    S0, S0
25C224:  VDIV.F32        S0, S2, S0
25C228:  VMOV            R0, S0; x
25C22C:  BLX             cosf
25C230:  VLDR            S0, =0.9999
25C234:  VMOV            S2, R0
25C238:  VCMPE.F32       S16, S0
25C23C:  VMRS            APSR_nzcv, FPSCR
25C240:  BGE             loc_25C288
25C242:  VLDR            S8, =0.001
25C246:  VMOV.F32        S4, #1.0
25C24A:  VMUL.F32        S6, S2, S2
25C24E:  VMAX.F32        D4, D8, D4
25C252:  VADD.F32        S10, S8, S8
25C256:  VSUB.F32        S12, S4, S2
25C25A:  VMUL.F32        S14, S8, S8
25C25E:  VSUB.F32        S6, S4, S6
25C262:  VMUL.F32        S10, S10, S12
25C266:  VMUL.F32        S6, S14, S6
25C26A:  VSUB.F32        S6, S10, S6
25C26E:  VMUL.F32        S10, S8, S2
25C272:  VSQRT.F32       S6, S6
25C276:  VSUB.F32        S10, S4, S10
25C27A:  VSUB.F32        S4, S4, S8
25C27E:  VSUB.F32        S6, S10, S6
25C282:  VDIV.F32        S4, S6, S4
25C286:  B               loc_25C28C
25C288:  VLDR            S4, =0.0
25C28C:  MOVW            R0, #0x57E4
25C290:  CMP.W           R10, #1
25C294:  ADD             R0, R6
25C296:  VSTR            S4, [R0]
25C29A:  BLT             loc_25C30E
25C29C:  VMOV.F32        S4, #1.0
25C2A0:  MOVW            R0, #0x5838
25C2A4:  VMUL.F32        S8, S2, S2
25C2A8:  ADD             R0, R6
25C2AA:  ADD             R1, SP, #0x168+var_C8
25C2AC:  VLDR            S10, =0.0
25C2B0:  VLDR            S12, =0.001
25C2B4:  VSUB.F32        S6, S4, S2
25C2B8:  VSUB.F32        S8, S4, S8
25C2BC:  VMOV.F32        S1, S10
25C2C0:  VLDR            S14, [R1]
25C2C4:  VCMPE.F32       S14, S0
25C2C8:  VMRS            APSR_nzcv, FPSCR
25C2CC:  BGE             loc_25C2FE
25C2CE:  VMAX.F32        D7, D7, D6
25C2D2:  VMUL.F32        S1, S14, S14
25C2D6:  VADD.F32        S3, S14, S14
25C2DA:  VMUL.F32        S1, S8, S1
25C2DE:  VMUL.F32        S3, S6, S3
25C2E2:  VSUB.F32        S1, S3, S1
25C2E6:  VMUL.F32        S3, S2, S14
25C2EA:  VSUB.F32        S14, S4, S14
25C2EE:  VSQRT.F32       S1, S1
25C2F2:  VSUB.F32        S3, S4, S3
25C2F6:  VSUB.F32        S1, S3, S1
25C2FA:  VDIV.F32        S1, S1, S14
25C2FE:  VSTR            S1, [R0]
25C302:  ADDS            R0, #0x54 ; 'T'
25C304:  SUBS.W          R10, R10, #1
25C308:  ADD.W           R1, R1, #4
25C30C:  BNE             loc_25C2BC
25C30E:  SUB.W           R4, R7, #-var_60
25C312:  MOV             SP, R4
25C314:  VPOP            {D8-D15}
25C318:  ADD             SP, SP, #4
25C31A:  POP.W           {R8-R11}
25C31E:  POP             {R4-R7,PC}
25C320:  VMOV            D11, D2
25C324:  B               loc_25C32E
25C326:  VLDR            D6, [SP,#0x168+var_F0]
25C32A:  VLDR            S15, [SP,#0x168+var_13C]
25C32E:  VMUL.F32        S30, S18, S10
25C332:  B.W             loc_25BA06
