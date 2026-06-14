; =========================================================
; Game Engine Function: _ZN7CEntity21CalculateBBProjectionEP7CVectorS1_S1_S1_
; Address            : 0x3EE3EC - 0x3EED4C
; =========================================================

3EE3EC:  PUSH            {R4-R7,LR}
3EE3EE:  ADD             R7, SP, #0xC
3EE3F0:  PUSH.W          {R8-R11}
3EE3F4:  SUB             SP, SP, #4
3EE3F6:  VPUSH           {D8-D15}
3EE3FA:  SUB             SP, SP, #0x10
3EE3FC:  MOV             R4, R0
3EE3FE:  MOV             R11, R3
3EE400:  LDR             R0, [R4,#0x14]
3EE402:  MOV             R9, R2
3EE404:  MOV             R8, R1
3EE406:  CBZ             R0, loc_3EE40E
3EE408:  VLDR            S16, [R0]
3EE40C:  B               loc_3EE42A
3EE40E:  MOV             R0, R4; this
3EE410:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE414:  ADDS            R5, R4, #4
3EE416:  LDR             R1, [R4,#0x14]; CMatrix *
3EE418:  MOV             R0, R5; this
3EE41A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE41E:  LDR             R0, [R4,#0x14]
3EE420:  CMP             R0, #0
3EE422:  VLDR            S16, [R0]
3EE426:  BEQ.W           loc_3EE75E
3EE42A:  VMUL.F32        S16, S16, S16
3EE42E:  VLDR            S18, [R0,#4]
3EE432:  VLDR            S0, [R0,#4]
3EE436:  CMP             R0, #0
3EE438:  VMUL.F32        S0, S18, S0
3EE43C:  VADD.F32        S16, S16, S0
3EE440:  BEQ             loc_3EE448
3EE442:  VLDR            S18, [R0,#0x10]
3EE446:  B               loc_3EE464
3EE448:  MOV             R0, R4; this
3EE44A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE44E:  ADDS            R5, R4, #4
3EE450:  LDR             R1, [R4,#0x14]; CMatrix *
3EE452:  MOV             R0, R5; this
3EE454:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE458:  LDR             R0, [R4,#0x14]
3EE45A:  CMP             R0, #0
3EE45C:  VLDR            S18, [R0,#0x10]
3EE460:  BEQ.W           loc_3EE7A8
3EE464:  VMUL.F32        S18, S18, S18
3EE468:  VLDR            S20, [R0,#0x14]
3EE46C:  VLDR            S0, [R0,#0x14]
3EE470:  CMP             R0, #0
3EE472:  VSQRT.F32       S16, S16
3EE476:  VMUL.F32        S0, S20, S0
3EE47A:  VADD.F32        S0, S18, S0
3EE47E:  VSQRT.F32       S18, S0
3EE482:  BEQ             loc_3EE48A
3EE484:  VLDR            S20, [R0,#0x20]
3EE488:  B               loc_3EE4A6
3EE48A:  MOV             R0, R4; this
3EE48C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE490:  ADDS            R5, R4, #4
3EE492:  LDR             R1, [R4,#0x14]; CMatrix *
3EE494:  MOV             R0, R5; this
3EE496:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE49A:  LDR             R0, [R4,#0x14]
3EE49C:  CMP             R0, #0
3EE49E:  VLDR            S20, [R0,#0x20]
3EE4A2:  BEQ.W           loc_3EE7F2
3EE4A6:  VMUL.F32        S20, S20, S20
3EE4AA:  VLDR            S22, [R0,#0x24]
3EE4AE:  VLDR            S0, [R0,#0x24]
3EE4B2:  LDR.W           R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3EE4C2)
3EE4B6:  VMUL.F32        S0, S22, S0
3EE4BA:  LDRSH.W         R2, [R4,#0x26]
3EE4BE:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3EE4C0:  LDR.W           R10, [R7,#arg_0]
3EE4C4:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
3EE4C6:  LDR.W           R1, [R1,R2,LSL#2]
3EE4CA:  VADD.F32        S0, S20, S0
3EE4CE:  LDR             R1, [R1,#0x2C]
3EE4D0:  VLDR            S2, [R1]
3EE4D4:  VLDR            S4, [R1,#4]
3EE4D8:  VSQRT.F32       S0, S0
3EE4DC:  VNEG.F32        S4, S4
3EE4E0:  VLDR            S10, [R1,#0x10]
3EE4E4:  VNEG.F32        S2, S2
3EE4E8:  VLDR            S8, [R1,#0xC]
3EE4EC:  VLDR            S6, [R1,#8]
3EE4F0:  VNEG.F32        S6, S6
3EE4F4:  VMAX.F32        D10, D5, D2
3EE4F8:  VMAX.F32        D11, D4, D1
3EE4FC:  VLDR            S2, [R1,#0x14]
3EE500:  VMUL.F32        S4, S18, S20
3EE504:  VMUL.F32        S8, S16, S22
3EE508:  VMAX.F32        D8, D1, D3
3EE50C:  VMUL.F32        S2, S0, S16
3EE510:  VADD.F32        S0, S4, S4
3EE514:  VADD.F32        S4, S8, S8
3EE518:  VADD.F32        S2, S2, S2
3EE51C:  VCMPE.F32       S4, S0
3EE520:  VMRS            APSR_nzcv, FPSCR
3EE524:  ITT GT
3EE526:  VCMPEGT.F32     S4, S2
3EE52A:  VMRSGT          APSR_nzcv, FPSCR
3EE52E:  BLE             loc_3EE538
3EE530:  CBZ             R0, loc_3EE550
3EE532:  VLDR            S18, [R0]
3EE536:  B               loc_3EE57A
3EE538:  VCMPE.F32       S0, S2
3EE53C:  VMRS            APSR_nzcv, FPSCR
3EE540:  BLE.W           loc_3EE752
3EE544:  CMP             R0, #0
3EE546:  BEQ.W           loc_3EE938
3EE54A:  VLDR            S18, [R0,#0x10]
3EE54E:  B               loc_3EE962
3EE550:  MOV             R0, R4; this
3EE552:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE556:  ADDS            R5, R4, #4
3EE558:  LDR             R1, [R4,#0x14]; CMatrix *
3EE55A:  MOV             R0, R5; this
3EE55C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE560:  LDR             R0, [R4,#0x14]
3EE562:  CMP             R0, #0
3EE564:  VLDR            S18, [R0]
3EE568:  BNE             loc_3EE57A
3EE56A:  MOV             R0, R4; this
3EE56C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE570:  LDR             R1, [R4,#0x14]; CMatrix *
3EE572:  MOV             R0, R5; this
3EE574:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE578:  LDR             R0, [R4,#0x14]
3EE57A:  ADDS            R5, R4, #4
3EE57C:  LDR             R6, [R0,#4]
3EE57E:  MOVS            R1, #0
3EE580:  STR             R6, [SP,#0x70+var_68]
3EE582:  VSTR            S18, [SP,#0x70+var_6C]
3EE586:  CMP             R0, #0
3EE588:  STR             R1, [SP,#0x70+var_64]
3EE58A:  MOV             R1, R5
3EE58C:  IT NE
3EE58E:  ADDNE.W         R1, R0, #0x30 ; '0'
3EE592:  ADD             R0, SP, #0x70+var_6C; this
3EE594:  VLDR            S28, [R1]
3EE598:  VLDR            S26, [R1,#4]
3EE59C:  VLDR            S30, [R1,#8]
3EE5A0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3EE5A4:  VLDR            S0, =0.0
3EE5A8:  VMUL.F32        S25, S22, S18
3EE5AC:  LDR             R0, [R4,#0x14]
3EE5AE:  VMUL.F32        S19, S22, S0
3EE5B2:  VLDR            S18, [SP,#0x70+var_68]
3EE5B6:  VMOV            S0, R6
3EE5BA:  CMP             R0, #0
3EE5BC:  VMUL.F32        S23, S22, S0
3EE5C0:  BEQ             loc_3EE5D0
3EE5C2:  VLDR            S0, [R0,#0x14]
3EE5C6:  VLDR            S22, [SP,#0x70+var_6C]
3EE5CA:  VMUL.F32        S18, S18, S0
3EE5CE:  B               loc_3EE5F2
3EE5D0:  MOV             R0, R4; this
3EE5D2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE5D6:  LDR             R1, [R4,#0x14]; CMatrix *
3EE5D8:  MOV             R0, R5; this
3EE5DA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE5DE:  LDR             R0, [R4,#0x14]
3EE5E0:  VLDR            S22, [SP,#0x70+var_6C]
3EE5E4:  CMP             R0, #0
3EE5E6:  VLDR            S0, [R0,#0x14]
3EE5EA:  VMUL.F32        S18, S18, S0
3EE5EE:  BEQ.W           loc_3EE83C
3EE5F2:  VLDR            S0, [R0,#0x10]
3EE5F6:  VMUL.F32        S0, S22, S0
3EE5FA:  VADD.F32        S0, S18, S0
3EE5FE:  VMUL.F32        S18, S20, S0
3EE602:  VLDR            S0, [R0,#0x14]
3EE606:  VLDR            S24, [SP,#0x70+var_68]
3EE60A:  VMUL.F32        S22, S22, S0
3EE60E:  VLDR            S0, [R0,#0x10]
3EE612:  VMUL.F32        S0, S24, S0
3EE616:  VSUB.F32        S0, S22, S0
3EE61A:  VMUL.F32        S22, S20, S0
3EE61E:  VLDR            S0, [R0,#0x24]
3EE622:  VLDR            S20, [SP,#0x70+var_6C]
3EE626:  VMUL.F32        S24, S24, S0
3EE62A:  VLDR            S0, [R0,#0x20]
3EE62E:  VMUL.F32        S0, S20, S0
3EE632:  VADD.F32        S0, S24, S0
3EE636:  VMUL.F32        S24, S16, S0
3EE63A:  VLDR            S0, [R0,#0x24]
3EE63E:  VLDR            S29, [SP,#0x70+var_68]
3EE642:  VMUL.F32        S27, S20, S0
3EE646:  VSUB.F32        S0, S28, S25
3EE64A:  ADDS            R0, #0x20 ; ' '
3EE64C:  VADD.F32        S4, S25, S28
3EE650:  VSUB.F32        S2, S30, S19
3EE654:  VADD.F32        S8, S19, S30
3EE658:  VSUB.F32        S6, S26, S23
3EE65C:  VADD.F32        S10, S23, S26
3EE660:  VLDR            S12, [R0]
3EE664:  VABS.F32        S14, S18
3EE668:  VABS.F32        S1, S24
3EE66C:  VLDR            S3, [SP,#0x70+var_6C]
3EE670:  VMUL.F32        S12, S29, S12
3EE674:  VLDR            S5, [SP,#0x70+var_68]
3EE678:  VLDR            S7, [SP,#0x70+var_64]
3EE67C:  VLDR            S9, =0.0
3EE680:  VADD.F32        S14, S1, S14
3EE684:  VSUB.F32        S12, S27, S12
3EE688:  VABS.F32        S1, S22
3EE68C:  VMUL.F32        S7, S14, S7
3EE690:  VMUL.F32        S12, S16, S12
3EE694:  VADD.F32        S8, S8, S7
3EE698:  VABS.F32        S12, S12
3EE69C:  VSUB.F32        S2, S2, S7
3EE6A0:  VADD.F32        S12, S1, S12
3EE6A4:  VMUL.F32        S1, S5, S14
3EE6A8:  VMUL.F32        S14, S3, S14
3EE6AC:  VMUL.F32        S9, S12, S9
3EE6B0:  VMUL.F32        S3, S3, S12
3EE6B4:  VSUB.F32        S6, S6, S1
3EE6B8:  VADD.F32        S10, S10, S1
3EE6BC:  VADD.F32        S4, S4, S14
3EE6C0:  VMUL.F32        S12, S5, S12
3EE6C4:  VSUB.F32        S0, S0, S14
3EE6C8:  VSUB.F32        S14, S8, S9
3EE6CC:  VADD.F32        S8, S9, S8
3EE6D0:  VADD.F32        S11, S3, S6
3EE6D4:  VADD.F32        S1, S10, S3
3EE6D8:  VSUB.F32        S10, S10, S3
3EE6DC:  VSUB.F32        S5, S4, S12
3EE6E0:  VADD.F32        S7, S12, S0
3EE6E4:  VADD.F32        S4, S12, S4
3EE6E8:  VSUB.F32        S0, S0, S12
3EE6EC:  VSUB.F32        S12, S2, S9
3EE6F0:  VADD.F32        S2, S9, S2
3EE6F4:  VSUB.F32        S6, S6, S3
3EE6F8:  VSTR            S5, [R8]
3EE6FC:  VSTR            S1, [R8,#4]
3EE700:  VSTR            S14, [R8,#8]
3EE704:  VSTR            S4, [R9]
3EE708:  VSTR            S10, [R9,#4]
3EE70C:  VSTR            S8, [R9,#8]
3EE710:  VSTR            S7, [R11]
3EE714:  VSTR            S6, [R11,#4]
3EE718:  VSTR            S2, [R11,#8]
3EE71C:  VSTR            S0, [R10]
3EE720:  VSTR            S11, [R10,#4]
3EE724:  VSTR            S12, [R10,#8]
3EE728:  LDR             R0, [R4,#0x14]
3EE72A:  CMP             R0, #0
3EE72C:  IT NE
3EE72E:  ADDNE.W         R5, R0, #0x30 ; '0'
3EE732:  LDR             R0, [R5,#8]
3EE734:  STR.W           R0, [R10,#8]
3EE738:  STR.W           R0, [R11,#8]
3EE73C:  STR.W           R0, [R9,#8]
3EE740:  STR.W           R0, [R8,#8]
3EE744:  ADD             SP, SP, #0x10
3EE746:  VPOP            {D8-D15}
3EE74A:  ADD             SP, SP, #4
3EE74C:  POP.W           {R8-R11}
3EE750:  POP             {R4-R7,PC}
3EE752:  CMP             R0, #0
3EE754:  BEQ.W           loc_3EE9B8
3EE758:  VLDR            S18, [R0,#0x20]
3EE75C:  B               loc_3EE9E2
3EE75E:  MOV             R0, R4; this
3EE760:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE764:  LDR             R1, [R4,#0x14]; CMatrix *
3EE766:  MOV             R0, R5; this
3EE768:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE76C:  LDR             R0, [R4,#0x14]
3EE76E:  CMP             R0, #0
3EE770:  VLDR            S0, [R0]
3EE774:  VMUL.F32        S16, S16, S0
3EE778:  BNE.W           loc_3EE42E
3EE77C:  MOV             R0, R4; this
3EE77E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE782:  LDR             R1, [R4,#0x14]; CMatrix *
3EE784:  MOV             R0, R5; this
3EE786:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE78A:  LDR             R0, [R4,#0x14]
3EE78C:  CMP             R0, #0
3EE78E:  VLDR            S18, [R0,#4]
3EE792:  BNE.W           loc_3EE432
3EE796:  MOV             R0, R4; this
3EE798:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE79C:  LDR             R1, [R4,#0x14]; CMatrix *
3EE79E:  MOV             R0, R5; this
3EE7A0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE7A4:  LDR             R0, [R4,#0x14]
3EE7A6:  B               loc_3EE432
3EE7A8:  MOV             R0, R4; this
3EE7AA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE7AE:  LDR             R1, [R4,#0x14]; CMatrix *
3EE7B0:  MOV             R0, R5; this
3EE7B2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE7B6:  LDR             R0, [R4,#0x14]
3EE7B8:  CMP             R0, #0
3EE7BA:  VLDR            S0, [R0,#0x10]
3EE7BE:  VMUL.F32        S18, S18, S0
3EE7C2:  BNE.W           loc_3EE468
3EE7C6:  MOV             R0, R4; this
3EE7C8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE7CC:  LDR             R1, [R4,#0x14]; CMatrix *
3EE7CE:  MOV             R0, R5; this
3EE7D0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE7D4:  LDR             R0, [R4,#0x14]
3EE7D6:  CMP             R0, #0
3EE7D8:  VLDR            S20, [R0,#0x14]
3EE7DC:  BNE.W           loc_3EE46C
3EE7E0:  MOV             R0, R4; this
3EE7E2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE7E6:  LDR             R1, [R4,#0x14]; CMatrix *
3EE7E8:  MOV             R0, R5; this
3EE7EA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE7EE:  LDR             R0, [R4,#0x14]
3EE7F0:  B               loc_3EE46C
3EE7F2:  MOV             R0, R4; this
3EE7F4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE7F8:  LDR             R1, [R4,#0x14]; CMatrix *
3EE7FA:  MOV             R0, R5; this
3EE7FC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE800:  LDR             R0, [R4,#0x14]
3EE802:  CMP             R0, #0
3EE804:  VLDR            S0, [R0,#0x20]
3EE808:  VMUL.F32        S20, S20, S0
3EE80C:  BNE.W           loc_3EE4AA
3EE810:  MOV             R0, R4; this
3EE812:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE816:  LDR             R1, [R4,#0x14]; CMatrix *
3EE818:  MOV             R0, R5; this
3EE81A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE81E:  LDR             R0, [R4,#0x14]
3EE820:  CMP             R0, #0
3EE822:  VLDR            S22, [R0,#0x24]
3EE826:  BNE.W           loc_3EE4AE
3EE82A:  MOV             R0, R4; this
3EE82C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE830:  LDR             R1, [R4,#0x14]; CMatrix *
3EE832:  MOV             R0, R5; this
3EE834:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE838:  LDR             R0, [R4,#0x14]
3EE83A:  B               loc_3EE4AE
3EE83C:  MOV             R0, R4; this
3EE83E:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE842:  LDR             R1, [R4,#0x14]; CMatrix *
3EE844:  MOV             R0, R5; this
3EE846:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE84A:  LDR             R0, [R4,#0x14]
3EE84C:  CMP             R0, #0
3EE84E:  VLDR            S0, [R0,#0x10]
3EE852:  VMUL.F32        S0, S22, S0
3EE856:  VLDR            S22, [SP,#0x70+var_6C]
3EE85A:  VADD.F32        S0, S18, S0
3EE85E:  VMUL.F32        S18, S20, S0
3EE862:  BNE.W           loc_3EE602
3EE866:  MOV             R0, R4; this
3EE868:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE86C:  LDR             R1, [R4,#0x14]; CMatrix *
3EE86E:  MOV             R0, R5; this
3EE870:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE874:  LDR             R0, [R4,#0x14]
3EE876:  VLDR            S24, [SP,#0x70+var_68]
3EE87A:  CMP             R0, #0
3EE87C:  VLDR            S0, [R0,#0x14]
3EE880:  VMUL.F32        S22, S22, S0
3EE884:  BNE.W           loc_3EE60E
3EE888:  MOV             R0, R4; this
3EE88A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE88E:  LDR             R1, [R4,#0x14]; CMatrix *
3EE890:  MOV             R0, R5; this
3EE892:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE896:  LDR             R0, [R4,#0x14]
3EE898:  CMP             R0, #0
3EE89A:  VLDR            S0, [R0,#0x10]
3EE89E:  VMUL.F32        S0, S24, S0
3EE8A2:  VLDR            S24, [SP,#0x70+var_68]
3EE8A6:  VSUB.F32        S0, S22, S0
3EE8AA:  VMUL.F32        S22, S20, S0
3EE8AE:  BNE.W           loc_3EE61E
3EE8B2:  MOV             R0, R4; this
3EE8B4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE8B8:  LDR             R1, [R4,#0x14]; CMatrix *
3EE8BA:  MOV             R0, R5; this
3EE8BC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE8C0:  LDR             R0, [R4,#0x14]
3EE8C2:  VLDR            S20, [SP,#0x70+var_6C]
3EE8C6:  CMP             R0, #0
3EE8C8:  VLDR            S0, [R0,#0x24]
3EE8CC:  VMUL.F32        S24, S24, S0
3EE8D0:  BNE.W           loc_3EE62A
3EE8D4:  MOV             R0, R4; this
3EE8D6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE8DA:  LDR             R1, [R4,#0x14]; CMatrix *
3EE8DC:  MOV             R0, R5; this
3EE8DE:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE8E2:  LDR             R0, [R4,#0x14]
3EE8E4:  CMP             R0, #0
3EE8E6:  VLDR            S0, [R0,#0x20]
3EE8EA:  VMUL.F32        S0, S20, S0
3EE8EE:  VLDR            S20, [SP,#0x70+var_6C]
3EE8F2:  VADD.F32        S0, S24, S0
3EE8F6:  VMUL.F32        S24, S16, S0
3EE8FA:  BNE.W           loc_3EE63A
3EE8FE:  MOV             R0, R4; this
3EE900:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE904:  LDR             R1, [R4,#0x14]; CMatrix *
3EE906:  MOV             R0, R5; this
3EE908:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE90C:  LDR             R0, [R4,#0x14]
3EE90E:  VLDR            S29, [SP,#0x70+var_68]
3EE912:  CMP             R0, #0
3EE914:  VLDR            S0, [R0,#0x24]
3EE918:  VMUL.F32        S27, S20, S0
3EE91C:  BNE.W           loc_3EE646
3EE920:  MOV             R0, R4; this
3EE922:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE926:  LDR             R1, [R4,#0x14]; CMatrix *
3EE928:  MOV             R0, R5; this
3EE92A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE92E:  LDR             R0, [R4,#0x14]
3EE930:  B               loc_3EE646
3EE932:  ALIGN 4
3EE934:  DCFS 0.0
3EE938:  MOV             R0, R4; this
3EE93A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE93E:  ADDS            R5, R4, #4
3EE940:  LDR             R1, [R4,#0x14]; CMatrix *
3EE942:  MOV             R0, R5; this
3EE944:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE948:  LDR             R0, [R4,#0x14]
3EE94A:  CMP             R0, #0
3EE94C:  VLDR            S18, [R0,#0x10]
3EE950:  BNE             loc_3EE962
3EE952:  MOV             R0, R4; this
3EE954:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE958:  LDR             R1, [R4,#0x14]; CMatrix *
3EE95A:  MOV             R0, R5; this
3EE95C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE960:  LDR             R0, [R4,#0x14]
3EE962:  ADDS            R5, R4, #4
3EE964:  LDR             R6, [R0,#0x14]
3EE966:  MOVS            R1, #0
3EE968:  STR             R6, [SP,#0x70+var_68]
3EE96A:  VSTR            S18, [SP,#0x70+var_6C]
3EE96E:  CMP             R0, #0
3EE970:  STR             R1, [SP,#0x70+var_64]
3EE972:  MOV             R1, R5
3EE974:  IT NE
3EE976:  ADDNE.W         R1, R0, #0x30 ; '0'
3EE97A:  ADD             R0, SP, #0x70+var_6C; this
3EE97C:  VLDR            S28, [R1]
3EE980:  VLDR            S26, [R1,#4]
3EE984:  VLDR            S30, [R1,#8]
3EE988:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3EE98C:  VLDR            S0, =0.0
3EE990:  VMUL.F32        S25, S20, S18
3EE994:  LDR             R0, [R4,#0x14]
3EE996:  VMUL.F32        S19, S20, S0
3EE99A:  VLDR            S18, [SP,#0x70+var_68]
3EE99E:  VMOV            S0, R6
3EE9A2:  CMP             R0, #0
3EE9A4:  VMUL.F32        S20, S20, S0
3EE9A8:  BEQ             loc_3EEA38
3EE9AA:  VLDR            S0, [R0,#4]
3EE9AE:  VLDR            S24, [SP,#0x70+var_6C]
3EE9B2:  VMUL.F32        S18, S18, S0
3EE9B6:  B               loc_3EEA5A
3EE9B8:  MOV             R0, R4; this
3EE9BA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE9BE:  ADDS            R5, R4, #4
3EE9C0:  LDR             R1, [R4,#0x14]; CMatrix *
3EE9C2:  MOV             R0, R5; this
3EE9C4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE9C8:  LDR             R0, [R4,#0x14]
3EE9CA:  CMP             R0, #0
3EE9CC:  VLDR            S18, [R0,#0x20]
3EE9D0:  BNE             loc_3EE9E2
3EE9D2:  MOV             R0, R4; this
3EE9D4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EE9D8:  LDR             R1, [R4,#0x14]; CMatrix *
3EE9DA:  MOV             R0, R5; this
3EE9DC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EE9E0:  LDR             R0, [R4,#0x14]
3EE9E2:  ADDS            R5, R4, #4
3EE9E4:  LDR             R6, [R0,#0x24]
3EE9E6:  MOVS            R1, #0
3EE9E8:  STR             R6, [SP,#0x70+var_68]
3EE9EA:  VSTR            S18, [SP,#0x70+var_6C]
3EE9EE:  CMP             R0, #0
3EE9F0:  STR             R1, [SP,#0x70+var_64]
3EE9F2:  MOV             R1, R5
3EE9F4:  IT NE
3EE9F6:  ADDNE.W         R1, R0, #0x30 ; '0'
3EE9FA:  ADD             R0, SP, #0x70+var_6C; this
3EE9FC:  VLDR            S28, [R1]
3EEA00:  VLDR            S26, [R1,#4]
3EEA04:  VLDR            S30, [R1,#8]
3EEA08:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3EEA0C:  VLDR            S0, =0.0
3EEA10:  VMUL.F32        S25, S16, S18
3EEA14:  LDR             R0, [R4,#0x14]
3EEA16:  VMUL.F32        S19, S16, S0
3EEA1A:  VLDR            S18, [SP,#0x70+var_68]
3EEA1E:  VMOV            S0, R6
3EEA22:  CMP             R0, #0
3EEA24:  VMUL.F32        S16, S16, S0
3EEA28:  BEQ             loc_3EEACA
3EEA2A:  VLDR            S0, [R0,#4]
3EEA2E:  VLDR            S24, [SP,#0x70+var_6C]
3EEA32:  VMUL.F32        S18, S18, S0
3EEA36:  B               loc_3EEAEC
3EEA38:  MOV             R0, R4; this
3EEA3A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEA3E:  LDR             R1, [R4,#0x14]; CMatrix *
3EEA40:  MOV             R0, R5; this
3EEA42:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEA46:  LDR             R0, [R4,#0x14]
3EEA48:  VLDR            S24, [SP,#0x70+var_6C]
3EEA4C:  CMP             R0, #0
3EEA4E:  VLDR            S0, [R0,#4]
3EEA52:  VMUL.F32        S18, S18, S0
3EEA56:  BEQ.W           loc_3EEB60
3EEA5A:  VLDR            S0, [R0]
3EEA5E:  VMUL.F32        S0, S24, S0
3EEA62:  VADD.F32        S0, S18, S0
3EEA66:  VMUL.F32        S18, S22, S0
3EEA6A:  VLDR            S0, [R0,#4]
3EEA6E:  VMUL.F32        S21, S24, S0
3EEA72:  VLDR            S24, [SP,#0x70+var_68]
3EEA76:  VLDR            S0, [R0]
3EEA7A:  VMUL.F32        S0, S24, S0
3EEA7E:  VSUB.F32        S0, S21, S0
3EEA82:  VMUL.F32        S22, S22, S0
3EEA86:  VLDR            S0, [R0,#0x24]
3EEA8A:  VLDR            S21, [SP,#0x70+var_6C]
3EEA8E:  VMUL.F32        S24, S24, S0
3EEA92:  VLDR            S0, [R0,#0x20]
3EEA96:  VMUL.F32        S0, S21, S0
3EEA9A:  VADD.F32        S0, S24, S0
3EEA9E:  VMUL.F32        S24, S16, S0
3EEAA2:  VLDR            S0, [R0,#0x24]
3EEAA6:  VLDR            S29, [SP,#0x70+var_68]
3EEAAA:  VMUL.F32        S27, S21, S0
3EEAAE:  VSUB.F32        S0, S28, S25
3EEAB2:  ADDS            R0, #0x20 ; ' '
3EEAB4:  VADD.F32        S4, S25, S28
3EEAB8:  VSUB.F32        S2, S30, S19
3EEABC:  VADD.F32        S8, S19, S30
3EEAC0:  VSUB.F32        S6, S26, S20
3EEAC4:  VADD.F32        S10, S20, S26
3EEAC8:  B               loc_3EE660
3EEACA:  MOV             R0, R4; this
3EEACC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEAD0:  LDR             R1, [R4,#0x14]; CMatrix *
3EEAD2:  MOV             R0, R5; this
3EEAD4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEAD8:  LDR             R0, [R4,#0x14]
3EEADA:  VLDR            S24, [SP,#0x70+var_6C]
3EEADE:  CMP             R0, #0
3EEAE0:  VLDR            S0, [R0,#4]
3EEAE4:  VMUL.F32        S18, S18, S0
3EEAE8:  BEQ.W           loc_3EEC56
3EEAEC:  VLDR            S0, [R0]
3EEAF0:  VMUL.F32        S0, S24, S0
3EEAF4:  VADD.F32        S0, S18, S0
3EEAF8:  VMUL.F32        S18, S22, S0
3EEAFC:  VLDR            S0, [R0,#4]
3EEB00:  VMUL.F32        S17, S24, S0
3EEB04:  VLDR            S24, [SP,#0x70+var_68]
3EEB08:  VLDR            S0, [R0]
3EEB0C:  VMUL.F32        S0, S24, S0
3EEB10:  VSUB.F32        S0, S17, S0
3EEB14:  VMUL.F32        S22, S22, S0
3EEB18:  VLDR            S0, [R0,#0x14]
3EEB1C:  VLDR            S17, [SP,#0x70+var_6C]
3EEB20:  VMUL.F32        S24, S24, S0
3EEB24:  VLDR            S0, [R0,#0x10]
3EEB28:  VMUL.F32        S0, S17, S0
3EEB2C:  VADD.F32        S0, S24, S0
3EEB30:  VMUL.F32        S24, S20, S0
3EEB34:  VLDR            S0, [R0,#0x14]
3EEB38:  VLDR            S29, [SP,#0x70+var_68]
3EEB3C:  VMUL.F32        S27, S17, S0
3EEB40:  VSUB.F32        S0, S28, S25
3EEB44:  ADDS            R0, #0x10
3EEB46:  VADD.F32        S4, S25, S28
3EEB4A:  VSUB.F32        S2, S30, S19
3EEB4E:  VADD.F32        S8, S19, S30
3EEB52:  VSUB.F32        S6, S26, S16
3EEB56:  VADD.F32        S10, S16, S26
3EEB5A:  VMOV            D8, D10
3EEB5E:  B               loc_3EE660
3EEB60:  MOV             R0, R4; this
3EEB62:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEB66:  LDR             R1, [R4,#0x14]; CMatrix *
3EEB68:  MOV             R0, R5; this
3EEB6A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEB6E:  LDR             R0, [R4,#0x14]
3EEB70:  CMP             R0, #0
3EEB72:  VLDR            S0, [R0]
3EEB76:  VMUL.F32        S0, S24, S0
3EEB7A:  VLDR            S24, [SP,#0x70+var_6C]
3EEB7E:  VADD.F32        S0, S18, S0
3EEB82:  VMUL.F32        S18, S22, S0
3EEB86:  BNE.W           loc_3EEA6A
3EEB8A:  MOV             R0, R4; this
3EEB8C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEB90:  LDR             R1, [R4,#0x14]; CMatrix *
3EEB92:  MOV             R0, R5; this
3EEB94:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEB98:  LDR             R0, [R4,#0x14]
3EEB9A:  CMP             R0, #0
3EEB9C:  VLDR            S0, [R0,#4]
3EEBA0:  VMUL.F32        S21, S24, S0
3EEBA4:  VLDR            S24, [SP,#0x70+var_68]
3EEBA8:  BNE.W           loc_3EEA76
3EEBAC:  MOV             R0, R4; this
3EEBAE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEBB2:  LDR             R1, [R4,#0x14]; CMatrix *
3EEBB4:  MOV             R0, R5; this
3EEBB6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEBBA:  LDR             R0, [R4,#0x14]
3EEBBC:  CMP             R0, #0
3EEBBE:  VLDR            S0, [R0]
3EEBC2:  VMUL.F32        S0, S24, S0
3EEBC6:  VLDR            S24, [SP,#0x70+var_68]
3EEBCA:  VSUB.F32        S0, S21, S0
3EEBCE:  VMUL.F32        S22, S22, S0
3EEBD2:  BNE.W           loc_3EEA86
3EEBD6:  MOV             R0, R4; this
3EEBD8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEBDC:  LDR             R1, [R4,#0x14]; CMatrix *
3EEBDE:  MOV             R0, R5; this
3EEBE0:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEBE4:  LDR             R0, [R4,#0x14]
3EEBE6:  VLDR            S21, [SP,#0x70+var_6C]
3EEBEA:  CMP             R0, #0
3EEBEC:  VLDR            S0, [R0,#0x24]
3EEBF0:  VMUL.F32        S24, S24, S0
3EEBF4:  BNE.W           loc_3EEA92
3EEBF8:  MOV             R0, R4; this
3EEBFA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEBFE:  LDR             R1, [R4,#0x14]; CMatrix *
3EEC00:  MOV             R0, R5; this
3EEC02:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEC06:  LDR             R0, [R4,#0x14]
3EEC08:  CMP             R0, #0
3EEC0A:  VLDR            S0, [R0,#0x20]
3EEC0E:  VMUL.F32        S0, S21, S0
3EEC12:  VLDR            S21, [SP,#0x70+var_6C]
3EEC16:  VADD.F32        S0, S24, S0
3EEC1A:  VMUL.F32        S24, S16, S0
3EEC1E:  BNE.W           loc_3EEAA2
3EEC22:  MOV             R0, R4; this
3EEC24:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEC28:  LDR             R1, [R4,#0x14]; CMatrix *
3EEC2A:  MOV             R0, R5; this
3EEC2C:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEC30:  LDR             R0, [R4,#0x14]
3EEC32:  VLDR            S29, [SP,#0x70+var_68]
3EEC36:  CMP             R0, #0
3EEC38:  VLDR            S0, [R0,#0x24]
3EEC3C:  VMUL.F32        S27, S21, S0
3EEC40:  BNE.W           loc_3EEAAE
3EEC44:  MOV             R0, R4; this
3EEC46:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEC4A:  LDR             R1, [R4,#0x14]; CMatrix *
3EEC4C:  MOV             R0, R5; this
3EEC4E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEC52:  LDR             R0, [R4,#0x14]
3EEC54:  B               loc_3EEAAE
3EEC56:  MOV             R0, R4; this
3EEC58:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEC5C:  LDR             R1, [R4,#0x14]; CMatrix *
3EEC5E:  MOV             R0, R5; this
3EEC60:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEC64:  LDR             R0, [R4,#0x14]
3EEC66:  CMP             R0, #0
3EEC68:  VLDR            S0, [R0]
3EEC6C:  VMUL.F32        S0, S24, S0
3EEC70:  VLDR            S24, [SP,#0x70+var_6C]
3EEC74:  VADD.F32        S0, S18, S0
3EEC78:  VMUL.F32        S18, S22, S0
3EEC7C:  BNE.W           loc_3EEAFC
3EEC80:  MOV             R0, R4; this
3EEC82:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EEC86:  LDR             R1, [R4,#0x14]; CMatrix *
3EEC88:  MOV             R0, R5; this
3EEC8A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EEC8E:  LDR             R0, [R4,#0x14]
3EEC90:  CMP             R0, #0
3EEC92:  VLDR            S0, [R0,#4]
3EEC96:  VMUL.F32        S17, S24, S0
3EEC9A:  VLDR            S24, [SP,#0x70+var_68]
3EEC9E:  BNE.W           loc_3EEB08
3EECA2:  MOV             R0, R4; this
3EECA4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EECA8:  LDR             R1, [R4,#0x14]; CMatrix *
3EECAA:  MOV             R0, R5; this
3EECAC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EECB0:  LDR             R0, [R4,#0x14]
3EECB2:  CMP             R0, #0
3EECB4:  VLDR            S0, [R0]
3EECB8:  VMUL.F32        S0, S24, S0
3EECBC:  VLDR            S24, [SP,#0x70+var_68]
3EECC0:  VSUB.F32        S0, S17, S0
3EECC4:  VMUL.F32        S22, S22, S0
3EECC8:  BNE.W           loc_3EEB18
3EECCC:  MOV             R0, R4; this
3EECCE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EECD2:  LDR             R1, [R4,#0x14]; CMatrix *
3EECD4:  MOV             R0, R5; this
3EECD6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EECDA:  LDR             R0, [R4,#0x14]
3EECDC:  VLDR            S17, [SP,#0x70+var_6C]
3EECE0:  CMP             R0, #0
3EECE2:  VLDR            S0, [R0,#0x14]
3EECE6:  VMUL.F32        S24, S24, S0
3EECEA:  BNE.W           loc_3EEB24
3EECEE:  MOV             R0, R4; this
3EECF0:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EECF4:  LDR             R1, [R4,#0x14]; CMatrix *
3EECF6:  MOV             R0, R5; this
3EECF8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EECFC:  LDR             R0, [R4,#0x14]
3EECFE:  CMP             R0, #0
3EED00:  VLDR            S0, [R0,#0x10]
3EED04:  VMUL.F32        S0, S17, S0
3EED08:  VLDR            S17, [SP,#0x70+var_6C]
3EED0C:  VADD.F32        S0, S24, S0
3EED10:  VMUL.F32        S24, S20, S0
3EED14:  BNE.W           loc_3EEB34
3EED18:  MOV             R0, R4; this
3EED1A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EED1E:  LDR             R1, [R4,#0x14]; CMatrix *
3EED20:  MOV             R0, R5; this
3EED22:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EED26:  LDR             R0, [R4,#0x14]
3EED28:  VLDR            S29, [SP,#0x70+var_68]
3EED2C:  CMP             R0, #0
3EED2E:  VLDR            S0, [R0,#0x14]
3EED32:  VMUL.F32        S27, S17, S0
3EED36:  BNE.W           loc_3EEB40
3EED3A:  MOV             R0, R4; this
3EED3C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3EED40:  LDR             R1, [R4,#0x14]; CMatrix *
3EED42:  MOV             R0, R5; this
3EED44:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3EED48:  LDR             R0, [R4,#0x14]
3EED4A:  B               loc_3EEB40
