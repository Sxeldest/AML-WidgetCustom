; =========================================================
; Game Engine Function: _ZN11CAutomobile17ProcessSuspensionEv
; Address            : 0x55F3C0 - 0x55FDB0
; =========================================================

55F3C0:  PUSH            {R4-R7,LR}
55F3C2:  ADD             R7, SP, #0xC
55F3C4:  PUSH.W          {R8-R11}
55F3C8:  SUB             SP, SP, #4
55F3CA:  VPUSH           {D8-D15}
55F3CE:  SUB             SP, SP, #0x1B8; float
55F3D0:  MOV             R4, SP
55F3D2:  BFC.W           R4, #0, #4
55F3D6:  MOV             SP, R4
55F3D8:  VMOV.I32        Q8, #0
55F3DC:  MOV             R10, R0
55F3DE:  ADD             R0, SP, #0x218+var_70
55F3E0:  ADD             R2, SP, #0x218+var_88
55F3E2:  MOV.W           R9, #1
55F3E6:  VMOV.F32        S16, #1.0
55F3EA:  VST1.64         {D16-D17}, [R0]
55F3EE:  ADD.W           R0, R10, #0x7E8
55F3F2:  VMOV.F32        S22, #0.5
55F3F6:  ADD.W           LR, SP, #0x218+var_1E8
55F3FA:  STR             R0, [SP,#0x218+var_1F0]
55F3FC:  VMOV.F32        S26, #1.5
55F400:  VLD1.32         {D16-D17}, [R0]
55F404:  ADD             R0, SP, #0x218+var_128
55F406:  ORR.W           R3, R0, #4
55F40A:  ORR.W           R0, R2, #4
55F40E:  VST1.64         {D16-D17}, [R2@128]
55F412:  VMOV.F32        S28, #0.25
55F416:  LDRH.W          R1, [R10,#0x26]
55F41A:  VLDR            S20, =0.0
55F41E:  CMP.W           R1, #0x1B0
55F422:  VLDR            S24, =0.15
55F426:  IT EQ
55F428:  MOVEQ.W         R9, #3
55F42C:  STR             R0, [SP,#0x218+var_150]
55F42E:  ADD             R0, SP, #0x218+var_B8
55F430:  VLDR            S30, =0.35
55F434:  ADD.W           R1, R0, #0x24 ; '$'
55F438:  STR             R1, [SP,#0x218+var_1AC]
55F43A:  ADD.W           R1, R0, #0x18
55F43E:  ADDS            R0, #0xC
55F440:  STR             R0, [SP,#0x218+var_1B4]
55F442:  ADD             R0, SP, #0x218+var_118
55F444:  STR             R1, [SP,#0x218+var_1B0]
55F446:  ADD.W           R1, R0, #0x24 ; '$'
55F44A:  STR             R1, [SP,#0x218+var_1B8]
55F44C:  ADD.W           R1, R0, #0x18
55F450:  ADDS            R0, #0xC
55F452:  STR             R0, [SP,#0x218+var_1C0]
55F454:  ADD             R0, SP, #0x218+var_E8
55F456:  STR             R1, [SP,#0x218+var_1BC]
55F458:  ADD.W           R1, R0, #0x24 ; '$'
55F45C:  STR             R1, [SP,#0x218+var_1C4]
55F45E:  ADD.W           R1, R0, #0x18
55F462:  ADDS            R0, #0xC
55F464:  STR             R0, [SP,#0x218+var_1CC]
55F466:  ADDW            R0, R10, #0x88C
55F46A:  STR             R0, [SP,#0x218+var_154]
55F46C:  ADD.W           R0, R10, #0x748
55F470:  STR             R0, [SP,#0x218+var_174]
55F472:  ADDW            R0, R10, #0x7C4
55F476:  STR             R0, [SP,#0x218+var_178]
55F478:  ADD.W           R0, R10, #0x7C0
55F47C:  STR             R0, [SP,#0x218+var_17C]
55F47E:  ADDW            R0, R10, #0x7BC
55F482:  STR             R0, [SP,#0x218+var_180]
55F484:  ADD.W           R0, R10, #0x798
55F488:  STR             R0, [SP,#0x218+var_184]
55F48A:  ADDW            R0, R10, #0x794
55F48E:  STR             R0, [SP,#0x218+var_188]
55F490:  ADD.W           R0, R10, #0x790
55F494:  STR             R0, [SP,#0x218+var_18C]
55F496:  ADDW            R0, R10, #0x76C
55F49A:  STR             R0, [SP,#0x218+var_190]
55F49C:  ADD.W           R0, R10, #0x768
55F4A0:  STR             R0, [SP,#0x218+var_194]
55F4A2:  ADDW            R0, R10, #0x764
55F4A6:  STR             R0, [SP,#0x218+var_198]
55F4A8:  ADD.W           R0, R10, #0x740
55F4AC:  STR             R0, [SP,#0x218+var_19C]
55F4AE:  ADDW            R0, R10, #0x73C
55F4B2:  STR             R0, [SP,#0x218+var_1A0]
55F4B4:  ADD.W           R0, R10, #0x738
55F4B8:  STR             R0, [SP,#0x218+var_1A4]
55F4BA:  ADDW            R0, R10, #0x9A8
55F4BE:  STR             R0, [SP,#0x218+var_158]
55F4C0:  ADD.W           R0, R10, #4
55F4C4:  STR             R0, [SP,#0x218+var_170]
55F4C6:  ADDW            R0, R10, #0x7F4
55F4CA:  STR             R1, [SP,#0x218+var_1C8]
55F4CC:  STR             R0, [SP,#0x218+var_1F8]
55F4CE:  ADD.W           R0, R10, #0x7F0
55F4D2:  STR             R0, [SP,#0x218+var_1EC]
55F4D4:  ADDW            R0, R10, #0x7EC
55F4D8:  VLDR            S0, [R10,#0x48]
55F4DC:  VLDR            S2, [R10,#0x4C]
55F4E0:  VLDR            S4, [R10,#0x50]
55F4E4:  STR             R0, [SP,#0x218+var_1F4]
55F4E6:  LDR.W           R0, [R10,#0x14]
55F4EA:  LDR.W           R1, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x55F4FA)
55F4EE:  VLDR            S17, =0.1
55F4F2:  VLDR            S6, [R0,#0x10]
55F4F6:  ADD             R1, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
55F4F8:  VLDR            S8, [R0,#0x14]
55F4FC:  VMUL.F32        S0, S0, S6
55F500:  VLDR            S10, [R0,#0x18]
55F504:  VMUL.F32        S2, S2, S8
55F508:  LDR             R1, [R1]; CCheat::m_aCheatsActive ...
55F50A:  VMUL.F32        S4, S4, S10
55F50E:  STR             R1, [SP,#0x218+var_14C]
55F510:  VMOV            Q2, Q8
55F514:  ADR.W           R1, dword_55FDB0
55F518:  VLD1.64         {D16-D17}, [R1@128]
55F51C:  VLDR            S19, =0.99999
55F520:  VST1.64         {D16-D17}, [LR@128]
55F524:  VADD.F32        S0, S0, S2
55F528:  STR             R3, [SP,#0x218+var_1A8]
55F52A:  STR.W           R10, [SP,#0x218+var_148]
55F52E:  VADD.F32        S0, S0, S4
55F532:  VABS.F32        S18, S0
55F536:  B               loc_55F80E
55F538:  LDR.W           R1, [R10,#0x388]
55F53C:  ADD.W           LR, SP, #0x218+var_168
55F540:  LDR.W           R0, [R10,#0x390]
55F544:  VLDR            S0, [R1,#0xB0]
55F548:  TST.W           R0, #0x20000
55F54C:  VMOV.F32        S2, S0
55F550:  VCMPE.F32       S0, S17
55F554:  IT NE
55F556:  VMOVNE.F32      S2, S17
55F55A:  VMRS            APSR_nzcv, FPSCR
55F55E:  VMOV.F32        S4, S0
55F562:  VCMPE.F32       S18, S24
55F566:  IT GT
55F568:  VMOVGT.F32      S4, S2
55F56C:  VMRS            APSR_nzcv, FPSCR
55F570:  VMOV.F32        S2, S0
55F574:  IT LT
55F576:  VMOVLT.F32      S2, S4
55F57A:  VLD1.64         {D2-D3}, [LR@128]
55F57E:  LDR.W           R9, [SP,#0x218+var_16C]
55F582:  VCMPE.F32       S4, S19
55F586:  VMRS            APSR_nzcv, FPSCR
55F58A:  BGE             loc_55F5B6
55F58C:  LDRSB.W         R1, [R10,#0x87C]
55F590:  CMP             R1, #0
55F592:  BLT             loc_55F5B6
55F594:  VMOV            R1, S2; float
55F598:  ADD             R0, SP, #0x218+var_118
55F59A:  LDR             R2, [SP,#0x218+var_70]; float
55F59C:  ADD             R3, SP, #0x218+var_E8; CVector *
55F59E:  STR             R0, [SP,#0x218+var_218]; CVector *
55F5A0:  ADD             R0, SP, #0x218+var_B8
55F5A2:  STR             R0, [SP,#0x218+var_214]; CVector *
55F5A4:  MOV             R0, R10; this
55F5A6:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
55F5AA:  LDR.W           R1, [R10,#0x388]
55F5AE:  LDR.W           R0, [R10,#0x390]
55F5B2:  VLDR            S0, [R1,#0xB0]
55F5B6:  LSLS            R1, R0, #0xE
55F5B8:  VMOV.F32        S2, S0
55F5BC:  VCMPE.F32       S0, S17
55F5C0:  IT MI
55F5C2:  VMOVMI.F32      S2, S17
55F5C6:  VMRS            APSR_nzcv, FPSCR
55F5CA:  VMOV.F32        S4, S0
55F5CE:  VCMPE.F32       S18, S24
55F5D2:  IT GT
55F5D4:  VMOVGT.F32      S4, S2
55F5D8:  VMRS            APSR_nzcv, FPSCR
55F5DC:  VMOV.F32        S2, S0
55F5E0:  VCMPE.F32       S25, S19
55F5E4:  IT LT
55F5E6:  VMOVLT.F32      S2, S4
55F5EA:  VMRS            APSR_nzcv, FPSCR
55F5EE:  BGE             loc_55F61A
55F5F0:  LDRSB.W         R1, [R10,#0x87C]
55F5F4:  CMP             R1, #0
55F5F6:  BLT             loc_55F61A
55F5F8:  VMOV            R1, S2; float
55F5FC:  LDR             R0, [SP,#0x218+var_1C0]
55F5FE:  LDR             R2, [SP,#0x218+var_6C]; float
55F600:  LDR             R3, [SP,#0x218+var_1CC]; CVector *
55F602:  STR             R0, [SP,#0x218+var_218]; CVector *
55F604:  LDR             R0, [SP,#0x218+var_1B4]
55F606:  STR             R0, [SP,#0x218+var_214]; CVector *
55F608:  MOV             R0, R10; this
55F60A:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
55F60E:  LDR.W           R1, [R10,#0x388]
55F612:  LDR.W           R0, [R10,#0x390]
55F616:  VLDR            S0, [R1,#0xB0]
55F61A:  LSLS            R1, R0, #0xE
55F61C:  VMOV.F32        S2, S0
55F620:  VCMPE.F32       S0, S17
55F624:  IT MI
55F626:  VMOVMI.F32      S2, S17
55F62A:  VMRS            APSR_nzcv, FPSCR
55F62E:  VMOV.F32        S4, S0
55F632:  VCMPE.F32       S18, S24
55F636:  IT GT
55F638:  VMOVGT.F32      S4, S2
55F63C:  VMRS            APSR_nzcv, FPSCR
55F640:  VMOV.F32        S2, S0
55F644:  VCMPE.F32       S23, S19
55F648:  IT LT
55F64A:  VMOVLT.F32      S2, S4
55F64E:  VMRS            APSR_nzcv, FPSCR
55F652:  BGE             loc_55F67E
55F654:  LDRSB.W         R1, [R10,#0x87C]
55F658:  CMP             R1, #0
55F65A:  BLT             loc_55F67E
55F65C:  VMOV            R1, S2; float
55F660:  LDR             R0, [SP,#0x218+var_1BC]
55F662:  LDR             R2, [SP,#0x218+var_68]; float
55F664:  LDR             R3, [SP,#0x218+var_1C8]; CVector *
55F666:  STR             R0, [SP,#0x218+var_218]; CVector *
55F668:  LDR             R0, [SP,#0x218+var_1B0]
55F66A:  STR             R0, [SP,#0x218+var_214]; CVector *
55F66C:  MOV             R0, R10; this
55F66E:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
55F672:  LDR.W           R1, [R10,#0x388]
55F676:  LDR.W           R0, [R10,#0x390]
55F67A:  VLDR            S0, [R1,#0xB0]
55F67E:  LSLS            R0, R0, #0xE
55F680:  VMOV.F32        S2, S0
55F684:  VCMPE.F32       S0, S17
55F688:  IT MI
55F68A:  VMOVMI.F32      S2, S17
55F68E:  VMRS            APSR_nzcv, FPSCR
55F692:  VMOV.F32        S4, S0
55F696:  VCMPE.F32       S18, S24
55F69A:  IT GT
55F69C:  VMOVGT.F32      S4, S2
55F6A0:  VMRS            APSR_nzcv, FPSCR
55F6A4:  VCMPE.F32       S21, S19
55F6A8:  IT LT
55F6AA:  VMOVLT.F32      S0, S4
55F6AE:  VMRS            APSR_nzcv, FPSCR
55F6B2:  BGE             loc_55F6D2
55F6B4:  LDRSB.W         R0, [R10,#0x87C]
55F6B8:  CMP             R0, #0
55F6BA:  BLT             loc_55F6D2
55F6BC:  VMOV            R1, S0; float
55F6C0:  LDR             R0, [SP,#0x218+var_1B8]
55F6C2:  LDR             R2, [SP,#0x218+var_64]; float
55F6C4:  LDR             R3, [SP,#0x218+var_1C4]; CVector *
55F6C6:  STR             R0, [SP,#0x218+var_218]; CVector *
55F6C8:  LDR             R0, [SP,#0x218+var_1AC]
55F6CA:  STR             R0, [SP,#0x218+var_214]; CVector *
55F6CC:  MOV             R0, R10; this
55F6CE:  BLX             j__ZN9CPhysical20ApplySpringDampeningEffR7CVectorS1_S1_; CPhysical::ApplySpringDampening(float,float,CVector &,CVector &,CVector &)
55F6D2:  CMP.W           R9, #2
55F6D6:  BLT.W           loc_55F7FA
55F6DA:  LDRH.W          R0, [R10,#0x26]
55F6DE:  CMP.W           R0, #0x1B0
55F6E2:  BNE.W           loc_55F7FA
55F6E6:  MOV             R0, R10; this
55F6E8:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
55F6EC:  LDR.W           R8, [R0,#0x2C]
55F6F0:  CMP.W           R9, #2
55F6F4:  LDR.W           R0, =(unk_61EC90 - 0x55F6FC)
55F6F8:  ADD             R0, PC; unk_61EC90
55F6FA:  VLD1.64         {D16-D17}, [R0]
55F6FE:  VST1.64         {D16-D17}, [R11@128]
55F702:  BEQ             loc_55F72A
55F704:  LDR.W           R11, [SP,#0x218+var_1A8]
55F708:  CMP.W           R9, #3
55F70C:  BNE             loc_55F7FA
55F70E:  LDR.W           R1, [R10,#0x62C]
55F712:  STR             R1, [SP,#0x218+var_88]
55F714:  LDR.W           R0, [R10,#0x63C]
55F718:  STR             R0, [SP,#0x218+var_84]
55F71A:  LDR.W           R0, [R10,#0x644]
55F71E:  STR             R0, [SP,#0x218+var_80]
55F720:  LDR.W           R0, [R10,#0x654]
55F724:  STR             R0, [SP,#0x218+var_7C]
55F726:  MOVS            R0, #4
55F728:  B               loc_55F754
55F72A:  LDR.W           R1, [R10,#0x630]
55F72E:  ADD.W           LR, SP, #0x218+var_1E8
55F732:  STR             R1, [SP,#0x218+var_88]
55F734:  LDR.W           R0, [R10,#0x638]
55F738:  STR             R0, [SP,#0x218+var_84]
55F73A:  LDR.W           R0, [R10,#0x648]
55F73E:  VLD1.64         {D16-D17}, [LR@128]
55F742:  STR             R0, [SP,#0x218+var_80]
55F744:  LDR.W           R0, [R10,#0x650]
55F748:  VST1.64         {D16-D17}, [R11@128]
55F74C:  LDR.W           R11, [SP,#0x218+var_1A8]
55F750:  STR             R0, [SP,#0x218+var_7C]
55F752:  MOVS            R0, #5
55F754:  ADD             R6, SP, #0x218+var_118
55F756:  VMOV            S21, R1
55F75A:  MOVS            R4, #0
55F75C:  B               loc_55F780
55F75E:  ALIGN 0x10
55F760:  DCFS 0.0
55F764:  DCFS 0.15
55F768:  DCFS 0.35
55F76C:  DCFS 0.1
55F770:  DCFS 0.99999
55F774:  LDR.W           R0, [R11,R4]
55F778:  ADDS            R4, #4
55F77A:  VLDR            S21, [R1]
55F77E:  ADDS            R6, #0xC
55F780:  LDR             R1, [SP,#0x218+var_154]
55F782:  MOV             R2, R6
55F784:  ADDS            R5, R1, R4
55F786:  LDR.W           R1, [R8,#0x10]
55F78A:  VLDR            S0, [R5,#0x10]
55F78E:  ADD.W           R0, R1, R0,LSL#5
55F792:  VMUL.F32        S0, S21, S0
55F796:  VLDR            S2, [R0]
55F79A:  VLDR            S4, [R0,#4]
55F79E:  VLDR            S6, [R0,#8]
55F7A2:  VADD.F32        S2, S2, S20
55F7A6:  VADD.F32        S4, S4, S20
55F7AA:  ADD             R0, SP, #0x218+var_138; CMatrix *
55F7AC:  VSUB.F32        S0, S6, S0
55F7B0:  VSTR            S2, [R6]
55F7B4:  VSTR            S4, [R6,#4]
55F7B8:  VSTR            S0, [R6,#8]
55F7BC:  LDR.W           R1, [R10,#0x14]; CVector *
55F7C0:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
55F7C4:  VLDR            D16, [SP,#0x218+var_138]
55F7C8:  CMP             R4, #0xC
55F7CA:  LDR             R0, [SP,#0x218+var_130]
55F7CC:  STR             R0, [R6,#8]
55F7CE:  VSTR            D16, [R6]
55F7D2:  VLDR            S0, [R5]
55F7D6:  VLDR            S2, [R5,#0x10]
55F7DA:  LDR             R0, [SP,#0x218+var_150]
55F7DC:  VDIV.F32        S0, S0, S2
55F7E0:  ADD.W           R1, R0, R4
55F7E4:  VSUB.F32        S0, S16, S0
55F7E8:  VSUB.F32        S2, S16, S0
55F7EC:  VSUB.F32        S0, S21, S0
55F7F0:  VDIV.F32        S0, S0, S2
55F7F4:  VSTR            S0, [R1,#-4]
55F7F8:  BNE             loc_55F774
55F7FA:  CMP.W           R9, #2
55F7FE:  BLT.W           loc_55FBC6
55F802:  SUB.W           R9, R9, #1
55F806:  VLDR            S8, [SP,#0x218+var_88]
55F80A:  LDR.W           R0, [R10,#0x14]
55F80E:  VLDR            S0, [R0,#0x24]
55F812:  ADD.W           LR, SP, #0x218+var_168
55F816:  VLDR            S2, [R0,#0x20]
55F81A:  VCMPE.F32       S8, S16
55F81E:  VLDR            S6, [R0,#0x28]
55F822:  VNEG.F32        S0, S0
55F826:  VST1.64         {D4-D5}, [LR@128]
55F82A:  VNEG.F32        S4, S2
55F82E:  VNEG.F32        S2, S6
55F832:  VMOV.F32        S8, S20
55F836:  VMRS            APSR_nzcv, FPSCR
55F83A:  VMOV.F32        S10, S20
55F83E:  VMOV.F32        S6, S20
55F842:  VSTR            S0, [SP,#0x218+var_E4]
55F846:  VSTR            S4, [SP,#0x218+var_E8]
55F84A:  VSTR            S2, [SP,#0x218+var_E0]
55F84E:  BGE             loc_55F884
55F850:  LDR             R1, [SP,#0x218+var_19C]
55F852:  CMP             R0, #0
55F854:  VLDR            S6, [R1]
55F858:  LDR             R1, [SP,#0x218+var_170]
55F85A:  IT NE
55F85C:  ADDNE.W         R1, R0, #0x30 ; '0'
55F860:  VLDR            S12, [R1,#8]
55F864:  VLDR            S8, [R1]
55F868:  VLDR            S10, [R1,#4]
55F86C:  VSUB.F32        S6, S6, S12
55F870:  LDR             R1, [SP,#0x218+var_1A0]
55F872:  VLDR            S14, [R1]
55F876:  LDR             R1, [SP,#0x218+var_1A4]
55F878:  VSUB.F32        S10, S14, S10
55F87C:  VLDR            S1, [R1]
55F880:  VSUB.F32        S8, S1, S8
55F884:  VSTR            S10, [SP,#0x218+var_114]
55F888:  VMOV.F32        S10, S20
55F88C:  VSTR            S8, [SP,#0x218+var_118]
55F890:  VMOV.F32        S8, S20
55F894:  VSTR            S6, [SP,#0x218+var_110]
55F898:  VMOV.F32        S6, S20
55F89C:  VLDR            S25, [SP,#0x218+var_84]
55F8A0:  VSTR            S4, [SP,#0x218+var_DC]
55F8A4:  VCMPE.F32       S25, S16
55F8A8:  VSTR            S0, [SP,#0x218+var_D8]
55F8AC:  VMRS            APSR_nzcv, FPSCR
55F8B0:  VSTR            S2, [SP,#0x218+var_D4]
55F8B4:  BGE             loc_55F8EA
55F8B6:  LDR             R1, [SP,#0x218+var_190]
55F8B8:  CMP             R0, #0
55F8BA:  VLDR            S6, [R1]
55F8BE:  LDR             R1, [SP,#0x218+var_170]
55F8C0:  IT NE
55F8C2:  ADDNE.W         R1, R0, #0x30 ; '0'
55F8C6:  VLDR            S12, [R1,#8]
55F8CA:  VLDR            S8, [R1]
55F8CE:  VLDR            S10, [R1,#4]
55F8D2:  VSUB.F32        S6, S6, S12
55F8D6:  LDR             R1, [SP,#0x218+var_194]
55F8D8:  VLDR            S14, [R1]
55F8DC:  LDR             R1, [SP,#0x218+var_198]
55F8DE:  VSUB.F32        S10, S14, S10
55F8E2:  VLDR            S1, [R1]
55F8E6:  VSUB.F32        S8, S1, S8
55F8EA:  VSTR            S4, [SP,#0x218+var_D0]
55F8EE:  VMOV.F32        S4, S20
55F8F2:  VSTR            S10, [SP,#0x218+var_108]
55F8F6:  VSTR            S8, [SP,#0x218+var_10C]
55F8FA:  VMOV.F32        S8, S20
55F8FE:  VSTR            S6, [SP,#0x218+var_104]
55F902:  VMOV.F32        S6, S20
55F906:  VLDR            S23, [SP,#0x218+var_80]
55F90A:  VSTR            S0, [SP,#0x218+var_CC]
55F90E:  VCMPE.F32       S23, S16
55F912:  VSTR            S2, [SP,#0x218+var_C8]
55F916:  VMRS            APSR_nzcv, FPSCR
55F91A:  BGE             loc_55F950
55F91C:  LDR             R1, [SP,#0x218+var_184]
55F91E:  CMP             R0, #0
55F920:  VLDR            S4, [R1]
55F924:  LDR             R1, [SP,#0x218+var_170]
55F926:  IT NE
55F928:  ADDNE.W         R1, R0, #0x30 ; '0'
55F92C:  VLDR            S8, [R1,#8]
55F930:  VLDR            S10, [R1]
55F934:  VLDR            S6, [R1,#4]
55F938:  VSUB.F32        S8, S4, S8
55F93C:  LDR             R1, [SP,#0x218+var_188]
55F93E:  VLDR            S12, [R1]
55F942:  LDR             R1, [SP,#0x218+var_18C]
55F944:  VSUB.F32        S6, S12, S6
55F948:  VLDR            S14, [R1]
55F94C:  VSUB.F32        S4, S14, S10
55F950:  VSTR            S8, [SP,#0x218+var_F8]
55F954:  VSTR            S6, [SP,#0x218+var_FC]
55F958:  STR.W           R9, [SP,#0x218+var_16C]
55F95C:  VSTR            S4, [SP,#0x218+var_100]
55F960:  VLDR            S4, [R0,#0x20]
55F964:  VSTR            S0, [SP,#0x218+var_C0]
55F968:  VMOV.F32        S0, S20
55F96C:  VNEG.F32        S4, S4
55F970:  VSTR            S2, [SP,#0x218+var_BC]
55F974:  VMOV.F32        S2, S20
55F978:  VLDR            S21, [SP,#0x218+var_7C]
55F97C:  VCMPE.F32       S21, S16
55F980:  VMRS            APSR_nzcv, FPSCR
55F984:  VSTR            S4, [SP,#0x218+var_C4]
55F988:  VMOV.F32        S4, S20
55F98C:  BGE             loc_55F9B8
55F98E:  VLDR            S2, [R0,#0x30]
55F992:  VLDR            S4, [R0,#0x34]
55F996:  VLDR            S0, [R0,#0x38]
55F99A:  LDR             R0, [SP,#0x218+var_178]
55F99C:  VLDR            S6, [R0]
55F9A0:  LDR             R0, [SP,#0x218+var_17C]
55F9A2:  VSUB.F32        S0, S6, S0
55F9A6:  VLDR            S8, [R0]
55F9AA:  LDR             R0, [SP,#0x218+var_180]
55F9AC:  VSUB.F32        S4, S8, S4
55F9B0:  VLDR            S10, [R0]
55F9B4:  VSUB.F32        S2, S10, S2
55F9B8:  ADD.W           LR, SP, #0x218+var_168
55F9BC:  VSTR            S4, [SP,#0x218+var_F0]
55F9C0:  VSTR            S2, [SP,#0x218+var_F4]
55F9C4:  MOVS            R6, #0
55F9C6:  VSTR            S0, [SP,#0x218+var_EC]
55F9CA:  ADD.W           R8, SP, #0x218+var_E8
55F9CE:  VLD1.64         {D0-D1}, [LR@128]
55F9D2:  ADD.W           R9, SP, #0x218+var_118
55F9D6:  ADD.W           R11, SP, #0x218+var_70
55F9DA:  LDR             R5, [SP,#0x218+var_174]
55F9DC:  LDR.W           R10, [SP,#0x218+var_150]
55F9E0:  B               loc_55F9F6
55F9E2:  ADDS            R6, #1
55F9E4:  ADDS            R5, #0x2C ; ','
55F9E6:  ADD.W           R11, R11, #4
55F9EA:  ADD.W           R9, R9, #0xC
55F9EE:  ADD.W           R8, R8, #0xC
55F9F2:  VLDM            R10!, {S0}
55F9F6:  VCMPE.F32       S0, S16
55F9FA:  VMRS            APSR_nzcv, FPSCR
55F9FE:  BGE             loc_55FAB8
55FA00:  LDR             R3, [SP,#0x218+var_148]
55FA02:  ORR.W           R2, R6, #2
55FA06:  CMP             R2, #3
55FA08:  MOV             R2, #0x30008
55FA10:  LDR.W           R1, [R3,#0x388]
55FA14:  MOV             R4, R2
55FA16:  LDR.W           R0, [R3,#0x390]
55FA1A:  VLDR            S2, [R1,#0xC0]
55FA1E:  AND.W           R2, R0, R4
55FA22:  VSUB.F32        S4, S16, S2
55FA26:  IT EQ
55FA28:  VMOVEQ.F32      S2, S4
55FA2C:  CMP             R2, R4
55FA2E:  BNE             loc_55FA40
55FA30:  LDRB.W          R2, [R3,#0x3A]
55FA34:  AND.W           R2, R2, #0xF8
55FA38:  CMP             R2, #0x18
55FA3A:  IT EQ
55FA3C:  VMOVEQ.F32      S2, S22
55FA40:  VCMPE.F32       S18, S24
55FA44:  VLDR            S4, [R1,#0xAC]
55FA48:  VMRS            APSR_nzcv, FPSCR
55FA4C:  BGE             loc_55FA62
55FA4E:  ANDS.W          R1, R0, #0x20000
55FA52:  BEQ             loc_55FA62
55FA54:  VMUL.F32        S6, S4, S26
55FA58:  LSLS            R0, R0, #0xF
55FA5A:  IT PL
55FA5C:  VMOVPL.F32      S6, S4
55FA60:  B               loc_55FA8A
55FA62:  LDR             R0, [SP,#0x218+var_148]
55FA64:  MOVW            R1, #0x21B
55FA68:  LDRH            R0, [R0,#0x26]
55FA6A:  CMP             R0, R1
55FA6C:  BNE             loc_55FA86
55FA6E:  LDR             R0, [SP,#0x218+var_158]
55FA70:  VLDR            S6, [R0]
55FA74:  VABS.F32        S6, S6
55FA78:  VMUL.F32        S6, S6, S28
55FA7C:  VADD.F32        S6, S6, S16
55FA80:  VMUL.F32        S6, S4, S6
55FA84:  B               loc_55FA8A
55FA86:  VMOV.F32        S6, S4
55FA8A:  LDR             R0, [SP,#0x218+var_14C]
55FA8C:  LDRB.W          R0, [R0,#0x29]
55FA90:  CBNZ            R0, loc_55FA9E
55FA92:  LDR             R0, [SP,#0x218+var_148]
55FA94:  MOVW            R1, #0x21B
55FA98:  LDRH            R0, [R0,#0x26]
55FA9A:  CMP             R0, R1
55FA9C:  BNE             loc_55FABE
55FA9E:  VMOV            R1, S6; float
55FAA2:  LDR             R0, [SP,#0x218+var_148]; this
55FAA4:  MOV             R2, R8; CVector *
55FAA6:  MOV             R3, R9; CVector *
55FAA8:  STR.W           R11, [SP,#0x218+var_210]; float *
55FAAC:  VSTR            S0, [SP,#0x218+var_218]
55FAB0:  VSTR            S2, [SP,#0x218+var_214]
55FAB4:  BLX             j__ZN9CPhysical20ApplySpringCollisionEfR7CVectorS1_ffRf; CPhysical::ApplySpringCollision(float,CVector &,CVector &,float,float,float &)
55FAB8:  CMP             R6, #3
55FABA:  BNE             loc_55F9E2
55FABC:  B               loc_55FADE
55FABE:  VMOV            R1, S6; float
55FAC2:  STRD.W          R5, R11, [SP,#0x218+var_210]; CVector *
55FAC6:  LDR             R0, [SP,#0x218+var_148]; this
55FAC8:  MOV             R2, R8; CVector *
55FACA:  MOV             R3, R9; CVector *
55FACC:  VSTR            S0, [SP,#0x218+var_218]
55FAD0:  VSTR            S2, [SP,#0x218+var_214]
55FAD4:  BLX             j__ZN9CPhysical23ApplySpringCollisionAltEfR7CVectorS1_ffS1_Rf; CPhysical::ApplySpringCollisionAlt(float,CVector &,CVector &,float,float,CVector &,float &)
55FAD8:  CMP             R6, #3
55FADA:  BNE.W           loc_55F9E2
55FADE:  LDR.W           R10, [SP,#0x218+var_148]
55FAE2:  ADD.W           R11, SP, #0x218+var_128
55FAE6:  MOVS            R5, #0
55FAE8:  MOVS            R6, #0
55FAEA:  MOV.W           R8, #0
55FAEE:  ADD             R0, SP, #0x218+var_118
55FAF0:  MOV             R1, R10
55FAF2:  LDR             R2, [R0,R6]
55FAF4:  ADD             R0, R6
55FAF6:  LDRD.W          R3, R0, [R0,#4]
55FAFA:  STR             R0, [SP,#0x218+var_218]
55FAFC:  MOV             R0, R11
55FAFE:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
55FB02:  ADD             R1, SP, #0x218+var_B8
55FB04:  VLDR            D16, [SP,#0x218+var_128]
55FB08:  ADDS            R4, R1, R6
55FB0A:  LDR             R0, [SP,#0x218+var_120]
55FB0C:  ADD.W           R9, R10, R5
55FB10:  STR             R0, [R4,#8]
55FB12:  VSTR            D16, [R4]
55FB16:  LDR.W           R1, [R9,#0x8FC]
55FB1A:  CBZ             R1, loc_55FB64
55FB1C:  ADD.W           R0, R10, R6
55FB20:  LDR.W           R2, [R0,#0x90C]
55FB24:  LDR.W           R3, [R0,#0x910]
55FB28:  LDR.W           R0, [R0,#0x914]
55FB2C:  STR             R0, [SP,#0x218+var_218]
55FB2E:  MOV             R0, R11
55FB30:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
55FB34:  VLDR            S0, [R4]
55FB38:  VLDR            S6, [SP,#0x218+var_128]
55FB3C:  VLDR            S2, [R4,#4]
55FB40:  VSUB.F32        S0, S0, S6
55FB44:  VLDR            S6, [SP,#0x218+var_128+4]
55FB48:  VLDR            S4, [R4,#8]
55FB4C:  VSUB.F32        S2, S2, S6
55FB50:  VLDR            S6, [SP,#0x218+var_120]
55FB54:  VSUB.F32        S4, S4, S6
55FB58:  VSTR            S0, [R4]
55FB5C:  VSTR            S2, [R4,#4]
55FB60:  VSTR            S4, [R4,#8]
55FB64:  ADD.W           R0, R9, #0x7E8
55FB68:  VLDR            S0, [R0]
55FB6C:  VCMPE.F32       S0, S16
55FB70:  VMRS            APSR_nzcv, FPSCR
55FB74:  BGE             loc_55FBB8
55FB76:  ADD.W           R0, R10, R8
55FB7A:  ADD.W           R1, R0, #0x750
55FB7E:  VLDR            S0, [R1]
55FB82:  VCMPE.F32       S0, S30
55FB86:  VMRS            APSR_nzcv, FPSCR
55FB8A:  BLE             loc_55FBB8
55FB8C:  ADDW            R1, R0, #0x74C
55FB90:  ADD.W           R0, R0, #0x748
55FB94:  VNEG.F32        S0, S0
55FB98:  VLDR            S4, [R0]
55FB9C:  ADD             R0, SP, #0x218+var_E8
55FB9E:  VLDR            S2, [R1]
55FBA2:  ADD             R0, R6
55FBA4:  VNEG.F32        S4, S4
55FBA8:  VNEG.F32        S2, S2
55FBAC:  VSTR            S4, [R0]
55FBB0:  VSTR            S2, [R0,#4]
55FBB4:  VSTR            S0, [R0,#8]
55FBB8:  ADDS            R6, #0xC
55FBBA:  ADDS            R5, #4
55FBBC:  ADD.W           R8, R8, #0x2C ; ','
55FBC0:  CMP             R6, #0x30 ; '0'
55FBC2:  BNE             loc_55FAEE
55FBC4:  B               loc_55F538
55FBC6:  LDR             R1, =(ROLL_ONTO_WHEELS_FORCE_ptr - 0x55FBD0)
55FBC8:  LDRB.W          R0, [R10,#0x3A]
55FBCC:  ADD             R1, PC; ROLL_ONTO_WHEELS_FORCE_ptr
55FBCE:  LDR             R1, [R1]; ROLL_ONTO_WHEELS_FORCE
55FBD0:  VLDR            S20, [R1]
55FBD4:  MOVS            R1, #0
55FBD6:  CMP.W           R1, R0,LSR#3
55FBDA:  BEQ             loc_55FBF8
55FBDC:  ADR             R1, dword_55FDCC
55FBDE:  LSRS            R0, R0, #3
55FBE0:  VADD.F32        S2, S20, S20
55FBE4:  CMP             R0, #8
55FBE6:  ITT EQ
55FBE8:  VMOVEQ.F32      S2, S20
55FBEC:  ADDEQ           R1, #4
55FBEE:  VMOV.F32        S20, S2
55FBF2:  VLDR            S0, [R1]
55FBF6:  B               loc_55FBFC
55FBF8:  VLDR            S0, =0.02
55FBFC:  VCMPE.F32       S18, S0
55FC00:  VMRS            APSR_nzcv, FPSCR
55FC04:  BGE.W           loc_55FD9E
55FC08:  LDR             R0, [SP,#0x218+var_1F0]
55FC0A:  VLDR            S0, [R0]
55FC0E:  VCMP.F32        S0, S16
55FC12:  VMRS            APSR_nzcv, FPSCR
55FC16:  BNE             loc_55FC3E
55FC18:  LDR             R0, [SP,#0x218+var_1F4]
55FC1A:  VLDR            S2, [R0]
55FC1E:  VCMP.F32        S2, S16
55FC22:  VMRS            APSR_nzcv, FPSCR
55FC26:  BNE             loc_55FC3E
55FC28:  LDR             R0, [SP,#0x218+var_1EC]
55FC2A:  VLDR            S2, [R0]
55FC2E:  VCMPE.F32       S2, S16
55FC32:  VMRS            APSR_nzcv, FPSCR
55FC36:  BGE             loc_55FC82
55FC38:  VMOV.F32        S18, S16
55FC3C:  B               loc_55FC96
55FC3E:  LDR             R0, [SP,#0x218+var_1EC]
55FC40:  VLDR            S2, [R0]
55FC44:  VCMP.F32        S2, S16
55FC48:  VMRS            APSR_nzcv, FPSCR
55FC4C:  BNE.W           loc_55FD9E
55FC50:  LDR             R0, [SP,#0x218+var_1F8]
55FC52:  VLDR            S2, [R0]
55FC56:  VCMP.F32        S2, S16
55FC5A:  VMRS            APSR_nzcv, FPSCR
55FC5E:  BNE.W           loc_55FD9E
55FC62:  VMOV.F32        S18, #-1.0
55FC66:  VCMPE.F32       S0, S16
55FC6A:  VMRS            APSR_nzcv, FPSCR
55FC6E:  BLT             loc_55FC96
55FC70:  LDR             R0, [SP,#0x218+var_1F4]
55FC72:  VLDR            S0, [R0]
55FC76:  VCMPE.F32       S0, S16
55FC7A:  VMRS            APSR_nzcv, FPSCR
55FC7E:  BLT             loc_55FC96
55FC80:  B               loc_55FD9E
55FC82:  VMOV.F32        S18, #1.0
55FC86:  LDR             R0, [SP,#0x218+var_1F8]
55FC88:  VLDR            S4, [R0]
55FC8C:  VCMPE.F32       S4, S18
55FC90:  VMRS            APSR_nzcv, FPSCR
55FC94:  BGE             loc_55FC44
55FC96:  LDR.W           R0, [R10,#0x14]
55FC9A:  ADD             R2, SP, #0x218+var_138
55FC9C:  MOVS            R4, #0
55FC9E:  MOV.W           R5, #0x3F800000
55FCA2:  ADD.W           R1, R0, #0x10; CVector *
55FCA6:  ADD             R0, SP, #0x218+var_128; CVector *
55FCA8:  STRD.W          R4, R4, [SP,#0x218+var_138]
55FCAC:  STR             R5, [SP,#0x218+var_130]
55FCAE:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
55FCB2:  LDR.W           R0, [R10,#0x14]
55FCB6:  VLDR            S6, [SP,#0x218+var_128]
55FCBA:  VLDR            S8, [SP,#0x218+var_128+4]
55FCBE:  VLDR            S0, [R0]
55FCC2:  VLDR            S2, [R0,#4]
55FCC6:  VMUL.F32        S6, S0, S6
55FCCA:  VLDR            S10, [SP,#0x218+var_120]
55FCCE:  VMUL.F32        S8, S2, S8
55FCD2:  VLDR            S4, [R0,#8]
55FCD6:  VMUL.F32        S10, S4, S10
55FCDA:  VADD.F32        S6, S6, S8
55FCDE:  VLDR            S8, =0.6
55FCE2:  VADD.F32        S6, S6, S10
55FCE6:  VABS.F32        S6, S6
55FCEA:  VCMPE.F32       S6, S8
55FCEE:  VMRS            APSR_nzcv, FPSCR
55FCF2:  BGE             loc_55FD9E
55FCF4:  VMUL.F32        S16, S20, S18
55FCF8:  VLDR            S6, [R10,#0x94]
55FCFC:  VLDR            S8, [R0,#0x20]
55FD00:  VLDR            S10, [R0,#0x24]
55FD04:  VLDR            S12, [R0,#0x28]
55FD08:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55FD12)
55FD0A:  LDRSH.W         R3, [R10,#0x26]
55FD0E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55FD10:  VMUL.F32        S6, S16, S6
55FD14:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55FD16:  LDR.W           R0, [R0,R3,LSL#2]
55FD1A:  VMUL.F32        S8, S8, S6
55FD1E:  LDR             R0, [R0,#0x2C]
55FD20:  VMUL.F32        S10, S6, S10
55FD24:  VMUL.F32        S6, S6, S12
55FD28:  VMOV            R1, S8
55FD2C:  VMOV            R2, S10
55FD30:  VMOV            R3, S6
55FD34:  VLDR            S6, [R0,#0xC]
55FD38:  MOV             R0, R10
55FD3A:  VMUL.F32        S0, S0, S6
55FD3E:  VMUL.F32        S4, S4, S6
55FD42:  VMUL.F32        S2, S2, S6
55FD46:  VSTR            S0, [SP,#0x218+var_218]
55FD4A:  VSTR            S2, [SP,#0x218+var_214]
55FD4E:  VSTR            S4, [SP,#0x218+var_210]
55FD52:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
55FD56:  VLDR            S18, [R10,#0x90]
55FD5A:  ADD             R1, SP, #0x218+var_144; CVector *
55FD5C:  STRD.W          R4, R4, [SP,#0x218+var_144]
55FD60:  STR             R5, [SP,#0x218+var_13C]
55FD62:  LDR.W           R0, [R10,#0x14]
55FD66:  ADD.W           R2, R0, #0x10
55FD6A:  ADD             R0, SP, #0x218+var_138; CVector *
55FD6C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
55FD70:  VMUL.F32        S0, S16, S18
55FD74:  VLDR            S2, [SP,#0x218+var_138]
55FD78:  VLDR            S4, [SP,#0x218+var_138+4]
55FD7C:  MOV             R0, R10
55FD7E:  VLDR            S6, [SP,#0x218+var_130]
55FD82:  VMUL.F32        S2, S0, S2
55FD86:  VMUL.F32        S4, S0, S4
55FD8A:  VMUL.F32        S0, S0, S6
55FD8E:  VMOV            R1, S2
55FD92:  VMOV            R2, S4
55FD96:  VMOV            R3, S0
55FD9A:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
55FD9E:  SUB.W           R4, R7, #-var_60
55FDA2:  MOV             SP, R4
55FDA4:  VPOP            {D8-D15}
55FDA8:  ADD             SP, SP, #4
55FDAA:  POP.W           {R8-R11}
55FDAE:  POP             {R4-R7,PC}
