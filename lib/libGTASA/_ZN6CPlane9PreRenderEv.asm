; =========================================================
; Game Engine Function: _ZN6CPlane9PreRenderEv
; Address            : 0x577414 - 0x57875C
; =========================================================

577414:  PUSH            {R4-R7,LR}
577416:  ADD             R7, SP, #0xC
577418:  PUSH.W          {R8-R11}
57741C:  SUB             SP, SP, #4
57741E:  VPUSH           {D8-D14}
577422:  SUB             SP, SP, #0x120
577424:  MOV             R11, R0
577426:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x577430)
57742A:  MOVS            R1, #0
57742C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
57742E:  STRD.W          R1, R1, [SP,#0x178+var_70]
577432:  STR             R1, [SP,#0x178+var_CC]
577434:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
577436:  LDRSH.W         R1, [R11,#0x26]
57743A:  LDR.W           R9, [R0,R1,LSL#2]
57743E:  MOV             R0, R11; this
577440:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
577444:  MOV             R8, R0
577446:  MOV             R0, R11; this
577448:  BLX             j__ZN8CVehicle9PreRenderEv; CVehicle::PreRender(void)
57744C:  LDRH.W          R0, [R11,#0x26]
577450:  MOVW            R1, #0x21B
577454:  CMP             R0, R1
577456:  BNE             loc_577464
577458:  LDR.W           R0, [R11]
57745C:  LDR.W           R1, [R0,#0x118]
577460:  MOV             R0, R11
577462:  BLX             R1
577464:  LDRB.W          R0, [R11,#0x42F]
577468:  LSLS            R0, R0, #0x1F
57746A:  BEQ.W           loc_577592
57746E:  LDR.W           R0, [R11]
577472:  LDR.W           R1, [R0,#0xD4]
577476:  MOV             R0, R11
577478:  BLX             R1
57747A:  VMOV.F32        S16, #1.0
57747E:  ADD.W           R5, R11, #0x7E8
577482:  VMOV.F32        S18, #-1.0
577486:  ADD.W           R4, R11, #0x748
57748A:  VMOV.F32        S22, #0.75
57748E:  ADD.W           R10, SP, #0x178+var_BC
577492:  VLDR            S20, =0.95
577496:  MOVS            R6, #0
577498:  MOV             R0, R9; this
57749A:  MOV             R1, R6; int
57749C:  MOV             R2, R10; CVector *
57749E:  MOVS            R3, #1; bool
5774A0:  VLDR            S24, [R5]
5774A4:  VLDR            S26, [R5,#0xA4]
5774A8:  VLDR            S28, [R5,#0xB4]
5774AC:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
5774B0:  VDIV.F32        S0, S26, S28
5774B4:  LDR.W           R0, [R11,#0x388]
5774B8:  VSUB.F32        S0, S16, S0
5774BC:  VLDR            S4, [R0,#0xB8]
5774C0:  VSUB.F32        S2, S16, S0
5774C4:  VSUB.F32        S0, S24, S0
5774C8:  VDIV.F32        S2, S0, S2
5774CC:  VCMPE.F32       S2, #0.0
5774D0:  VLDR            S0, [SP,#0x178+var_B4]
5774D4:  VMRS            APSR_nzcv, FPSCR
5774D8:  VADD.F32        S0, S0, S4
5774DC:  ITTT GT
5774DE:  VLDRGT          S4, [R5,#0xA4]
5774E2:  VMULGT.F32      S2, S2, S4
5774E6:  VSUBGT.F32      S0, S0, S2
5774EA:  VLDR            S2, [R5,#0x64]
5774EE:  VCMPE.F32       S0, S2
5774F2:  VMRS            APSR_nzcv, FPSCR
5774F6:  BGT             loc_577516
5774F8:  LDRB.W          R0, [R11,#0x47]
5774FC:  LSLS            R0, R0, #0x1D
5774FE:  ITT MI
577500:  LDRBMI.W        R0, [R11,#0x392]
577504:  MOVSMI.W        R0, R0,LSL#30
577508:  BMI             loc_577516
57750A:  VSUB.F32        S0, S0, S2
57750E:  VMUL.F32        S0, S0, S22
577512:  VADD.F32        S0, S2, S0
577516:  VSTR            S0, [R5,#0x64]
57751A:  LDRH.W          R0, [R11,#0x26]
57751E:  CMP.W           R0, #0x250
577522:  BNE             loc_577586
577524:  VLDR            S0, [R5]
577528:  VCMPE.F32       S0, S16
57752C:  VMRS            APSR_nzcv, FPSCR
577530:  BGE             loc_57757A
577532:  LDR.W           R0, [R11,#0x14]
577536:  VLDR            S0, [R4]
57753A:  VLDR            S2, [R4,#4]
57753E:  VLDR            S6, [R0,#0x10]
577542:  VLDR            S8, [R0,#0x14]
577546:  VMUL.F32        S0, S0, S6
57754A:  VLDR            S4, [R4,#8]
57754E:  VMUL.F32        S2, S2, S8
577552:  VLDR            S10, [R0,#0x18]
577556:  VMUL.F32        S4, S4, S10
57755A:  VADD.F32        S0, S0, S2
57755E:  VADD.F32        S0, S0, S4
577562:  VMAX.F32        D16, D0, D9
577566:  VMIN.F32        D0, D16, D8
57756A:  VMOV            R0, S0; x
57756E:  BLX             asinf
577572:  EOR.W           R0, R0, #0x80000000
577576:  STR             R0, [R5,#0x54]
577578:  B               loc_577586
57757A:  VLDR            S0, [R5,#0x54]
57757E:  VMUL.F32        S0, S0, S20
577582:  VSTR            S0, [R5,#0x54]
577586:  ADDS            R6, #1
577588:  ADDS            R5, #4
57758A:  ADDS            R4, #0x2C ; ','
57758C:  CMP             R6, #4
57758E:  BNE.W           loc_577498
577592:  MOV             R0, R11; this
577594:  MOVS            R1, #4; int
577596:  MOVS            R2, #1; int
577598:  MOVS            R5, #1
57759A:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
57759E:  MOV             R0, R11; this
5775A0:  MOVS            R1, #7; int
5775A2:  MOVS            R2, #1; int
5775A4:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
5775A8:  MOV             R0, R11; this
5775AA:  MOVS            R1, #2; int
5775AC:  MOVS            R2, #1; int
5775AE:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
5775B2:  LDRH.W          R0, [R11,#0x26]
5775B6:  MOVS            R1, #5; int
5775B8:  CMP.W           R0, #0x208
5775BC:  MOV             R0, R11; this
5775BE:  IT EQ
5775C0:  MOVEQ           R5, #3
5775C2:  MOV             R2, R5; int
5775C4:  BLX             j__ZN11CAutomobile17UpdateWheelMatrixEii; CAutomobile::UpdateWheelMatrix(int,int)
5775C8:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5775D4)
5775CC:  ADDW            R6, R11, #0x9DC
5775D0:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5775D2:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5775D4:  VLDR            S0, [R0]
5775D8:  ADDW            R0, R11, #0x9D8
5775DC:  VLDR            S2, [R0]
5775E0:  VMUL.F32        S0, S2, S0
5775E4:  VLDR            S2, [R6]
5775E8:  VADD.F32        S0, S2, S0
5775EC:  VLDR            S2, =6.2832
5775F0:  VCMPE.F32       S0, S2
5775F4:  VSTR            S0, [R6]
5775F8:  VMRS            APSR_nzcv, FPSCR
5775FC:  BLE             loc_577614
5775FE:  VLDR            S4, =-6.2832
577602:  VADD.F32        S0, S0, S4
577606:  VCMPE.F32       S0, S2
57760A:  VMRS            APSR_nzcv, FPSCR
57760E:  BGT             loc_577602
577610:  VSTR            S0, [R6]
577614:  LDRB.W          R0, [R11,#0x3A]
577618:  CMP             R0, #0x1F
57761A:  BHI.W           loc_577AAA
57761E:  LDR.W           R0, [R11,#0x69C]
577622:  CMP             R0, #0
577624:  BEQ             loc_57770E
577626:  ADD             R5, SP, #0x178+var_B0
577628:  ADD.W           R1, R0, #0x10
57762C:  MOVS            R2, #0
57762E:  MOVS            R4, #0
577630:  MOV             R0, R5
577632:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
577636:  MOV             R0, R5; this
577638:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
57763C:  LDR.W           R0, [R9,#0x74]
577640:  VLDR            D16, [R0,#0x84]
577644:  LDR.W           R0, [R0,#0x8C]
577648:  VSTR            D16, [SP,#0x178+var_C8]
57764C:  VLDR            S2, [SP,#0x178+var_C8+4]
577650:  VLDR            S0, [SP,#0x178+var_C8]
577654:  VCMP.F32        S2, #0.0
577658:  STR             R0, [SP,#0x178+var_C0]
57765A:  VMRS            APSR_nzcv, FPSCR
57765E:  MOV.W           R0, #0
577662:  VCMP.F32        S0, #0.0
577666:  IT EQ
577668:  MOVEQ           R0, #1
57766A:  VMRS            APSR_nzcv, FPSCR
57766E:  IT EQ
577670:  MOVEQ           R4, #1
577672:  TST             R4, R0
577674:  BEQ             loc_57768C
577676:  VLDR            S4, [SP,#0x178+var_C0]
57767A:  VCMP.F32        S4, #0.0
57767E:  VMRS            APSR_nzcv, FPSCR
577682:  BNE             loc_57768C
577684:  MOV.W           R0, #0x3F800000
577688:  STR             R0, [SP,#0x178+var_C0]
57768A:  B               loc_5776BA
57768C:  VLDR            S4, [SP,#0x178+var_80]
577690:  ADD             R0, SP, #0x178+var_C8; this
577692:  VLDR            S6, [SP,#0x178+var_7C]
577696:  VLDR            S8, [SP,#0x178+var_78]
57769A:  VSUB.F32        S0, S0, S4
57769E:  VLDR            S10, [SP,#0x178+var_C0]
5776A2:  VSUB.F32        S2, S2, S6
5776A6:  VSUB.F32        S4, S10, S8
5776AA:  VSTR            S0, [SP,#0x178+var_C8]
5776AE:  VSTR            S2, [SP,#0x178+var_C8+4]
5776B2:  VSTR            S4, [SP,#0x178+var_C0]
5776B6:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5776BA:  ADDW            R0, R11, #0x99C
5776BE:  VLDR            S0, =0.69813
5776C2:  ADD             R5, SP, #0x178+var_68
5776C4:  ADD             R1, SP, #0x178+var_C8
5776C6:  VLDR            S2, [R0]
5776CA:  MOV             R0, R5
5776CC:  VMUL.F32        S0, S2, S0
5776D0:  VMOV            R2, S0
5776D4:  BLX             j__ZN11CQuaternion3SetEP5RwV3df; CQuaternion::Set(RwV3d *,float)
5776D8:  LDR             R1, [SP,#0x178+var_70]
5776DA:  MOV             R0, R5
5776DC:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
5776E0:  LDRH.W          R0, [R11,#0x26]
5776E4:  MOVW            R1, #0x21B
5776E8:  CMP             R0, R1
5776EA:  BNE             loc_57770E
5776EC:  LDR.W           R0, [R11,#0x6BC]
5776F0:  CBZ             R0, loc_57770E
5776F2:  ADD             R5, SP, #0x178+var_B0
5776F4:  ADD.W           R1, R0, #0x10
5776F8:  MOVS            R2, #0
5776FA:  MOV             R0, R5
5776FC:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
577700:  MOV             R0, R5; this
577702:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
577706:  LDR             R1, [SP,#0x178+var_70]
577708:  ADD             R0, SP, #0x178+var_68
57770A:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
57770E:  LDR.W           R0, [R11,#0x6AC]
577712:  CMP             R0, #0
577714:  BEQ.W           loc_57799E
577718:  VMOV.F32        S16, #1.0
57771C:  LDR.W           R1, [R11,#0x38C]
577720:  VLDR            S18, =0.0
577724:  VLDR            S0, [R1,#0x34]
577728:  VCMPE.F32       S0, S16
57772C:  VMRS            APSR_nzcv, FPSCR
577730:  BLE             loc_577778
577732:  ADD.W           R1, R11, #0x9E0
577736:  VMOV.F32        S16, #1.0
57773A:  VLDR            S0, [R1]
57773E:  VABS.F32        S0, S0
577742:  VCMPE.F32       S0, S16
577746:  VMRS            APSR_nzcv, FPSCR
57774A:  BGE             loc_577778
57774C:  LDR.W           R1, [R11,#0x6B0]
577750:  CMP             R1, #0
577752:  ITT EQ
577754:  LDREQ.W         R1, [R11,#0x6B4]
577758:  CMPEQ           R1, #0
57775A:  BEQ             loc_577778
57775C:  VMOV.F32        S2, #1.0
577760:  VLDR            S6, =0.3
577764:  VMOV.F32        S4, #0.5
577768:  VSUB.F32        S0, S2, S0
57776C:  VMUL.F32        S4, S0, S4
577770:  VMUL.F32        S18, S0, S6
577774:  VADD.F32        S16, S4, S2
577778:  ADD             R5, SP, #0x178+var_B0
57777A:  ADD.W           R1, R0, #0x10
57777E:  MOVS            R2, #0
577780:  MOVS            R4, #0
577782:  MOV             R0, R5
577784:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
577788:  MOV             R0, R5; this
57778A:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
57778E:  LDR.W           R0, [R9,#0x74]
577792:  VLDR            D16, [R0,#0x6C]
577796:  LDR             R0, [R0,#0x74]
577798:  VSTR            D16, [SP,#0x178+var_C8]
57779C:  VLDR            S2, [SP,#0x178+var_C8+4]
5777A0:  VLDR            S0, [SP,#0x178+var_C8]
5777A4:  VCMP.F32        S2, #0.0
5777A8:  STR             R0, [SP,#0x178+var_C0]
5777AA:  VMRS            APSR_nzcv, FPSCR
5777AE:  MOV.W           R0, #0
5777B2:  VCMP.F32        S0, #0.0
5777B6:  IT EQ
5777B8:  MOVEQ           R0, #1
5777BA:  VMRS            APSR_nzcv, FPSCR
5777BE:  IT EQ
5777C0:  MOVEQ           R4, #1
5777C2:  TST             R4, R0
5777C4:  BEQ             loc_577818
5777C6:  VLDR            S4, [SP,#0x178+var_C0]
5777CA:  VCMP.F32        S4, #0.0
5777CE:  VMRS            APSR_nzcv, FPSCR
5777D2:  BNE             loc_577818
5777D4:  MOV.W           R0, #0x3F800000
5777D8:  STR             R0, [SP,#0x178+var_C8]
5777DA:  B               loc_577846
5777DC:  DCFS 0.95
5777E0:  DCFS 6.2832
5777E4:  DCFS -6.2832
5777E8:  DCFS 0.69813
5777EC:  DCFS 0.0
5777F0:  DCFS 0.3
5777F4:  DCFS -0.5236
5777F8:  DCFS 0.03
5777FC:  DCFS -0.43633
577800:  DCFS 0.43633
577804:  DCFS -1.4835
577808:  DCFS 1.4835
57780C:  DCFS -1.5708
577810:  DCFS -1.3963
577814:  DCFS 2.2689
577818:  VLDR            S4, [SP,#0x178+var_80]
57781C:  ADD             R0, SP, #0x178+var_C8; this
57781E:  VLDR            S6, [SP,#0x178+var_7C]
577822:  VLDR            S8, [SP,#0x178+var_78]
577826:  VSUB.F32        S0, S0, S4
57782A:  VLDR            S10, [SP,#0x178+var_C0]
57782E:  VSUB.F32        S2, S2, S6
577832:  VSUB.F32        S4, S10, S8
577836:  VSTR            S0, [SP,#0x178+var_C8]
57783A:  VSTR            S2, [SP,#0x178+var_C8+4]
57783E:  VSTR            S4, [SP,#0x178+var_C0]
577842:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
577846:  ADDW            R4, R11, #0x9A4
57784A:  VLDR            S22, =-0.5236
57784E:  ADD             R5, SP, #0x178+var_68
577850:  ADD             R1, SP, #0x178+var_C8
577852:  VLDR            S0, [R4]
577856:  MOV             R0, R5
577858:  VMUL.F32        S0, S0, S22
57785C:  VADD.F32        S0, S18, S0
577860:  VMOV            R2, S0
577864:  BLX             j__ZN11CQuaternion3SetEP5RwV3df; CQuaternion::Set(RwV3d *,float)
577868:  LDR             R1, [SP,#0x178+var_70]
57786A:  MOV             R0, R5
57786C:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
577870:  VMOV.F32        S20, #1.0
577874:  VCMPE.F32       S16, S20
577878:  VMRS            APSR_nzcv, FPSCR
57787C:  BLE             loc_5778E2
57787E:  ADD             R0, SP, #0x178+var_B0; this
577880:  BLX             j__ZN7CMatrix6UpdateEv; CMatrix::Update(void)
577884:  VLDR            S0, [SP,#0x178+var_C8]
577888:  VCMP.F32        S0, S20
57788C:  VMRS            APSR_nzcv, FPSCR
577890:  BNE             loc_5778A0
577892:  VLDR            S0, [SP,#0x178+var_9C]
577896:  VMUL.F32        S0, S16, S0
57789A:  VSTR            S0, [SP,#0x178+var_9C]
57789E:  B               loc_5778DC
5778A0:  ADD             R1, SP, #0x178+var_BC; CVector *
5778A2:  MOV             R0, R9; this
5778A4:  MOVS            R2, #0x14; int
5778A6:  BLX             j__ZN17CVehicleModelInfo23GetOriginalCompPositionER7CVectori; CVehicleModelInfo::GetOriginalCompPosition(CVector &,int)
5778AA:  CMP             R0, #1
5778AC:  BNE             loc_5778DC
5778AE:  VLDR            S0, =0.03
5778B2:  ADD             R0, SP, #0x178+var_B0; this
5778B4:  VLDR            S2, [R8,#0x10]
5778B8:  LDR             R3, [SP,#0x178+var_B4]; float
5778BA:  VMUL.F32        S0, S2, S0
5778BE:  LDR             R1, [SP,#0x178+var_BC]; float
5778C0:  VSUB.F32        S2, S20, S16
5778C4:  VMUL.F32        S0, S2, S0
5778C8:  VLDR            S2, [SP,#0x178+var_B8]
5778CC:  VADD.F32        S0, S2, S0
5778D0:  VMOV            R2, S0; float
5778D4:  VSTR            S0, [SP,#0x178+var_B8]
5778D8:  BLX             j__ZN7CMatrix16SetTranslateOnlyEfff; CMatrix::SetTranslateOnly(float,float,float)
5778DC:  ADD             R0, SP, #0x178+var_B0; this
5778DE:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
5778E2:  LDR.W           R0, [R11,#0x6A8]
5778E6:  CMP             R0, #0
5778E8:  BEQ             loc_57799E
5778EA:  ADD             R5, SP, #0x178+var_B0
5778EC:  ADD.W           R1, R0, #0x10
5778F0:  MOVS            R2, #0
5778F2:  MOV             R0, R5
5778F4:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
5778F8:  MOV             R0, R5; this
5778FA:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
5778FE:  VLDR            S0, [SP,#0x178+var_C8]
577902:  ADD             R5, SP, #0x178+var_68
577904:  ADD             R1, SP, #0x178+var_C8
577906:  VNEG.F32        S0, S0
57790A:  MOV             R0, R5
57790C:  VSTR            S0, [SP,#0x178+var_C8]
577910:  VLDR            S0, [R4]
577914:  VMUL.F32        S0, S0, S22
577918:  VSUB.F32        S0, S0, S18
57791C:  VMOV            R2, S0
577920:  BLX             j__ZN11CQuaternion3SetEP5RwV3df; CQuaternion::Set(RwV3d *,float)
577924:  LDR             R1, [SP,#0x178+var_70]
577926:  MOV             R0, R5
577928:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
57792C:  VCMPE.F32       S16, S20
577930:  VMRS            APSR_nzcv, FPSCR
577934:  BLE             loc_57799E
577936:  ADD             R0, SP, #0x178+var_B0; this
577938:  BLX             j__ZN7CMatrix6UpdateEv; CMatrix::Update(void)
57793C:  VMOV.F32        S0, #-1.0
577940:  VLDR            S2, [SP,#0x178+var_C8]
577944:  VCMP.F32        S2, S0
577948:  VMRS            APSR_nzcv, FPSCR
57794C:  BNE             loc_57795C
57794E:  VLDR            S0, [SP,#0x178+var_9C]
577952:  VMUL.F32        S0, S16, S0
577956:  VSTR            S0, [SP,#0x178+var_9C]
57795A:  B               loc_577998
57795C:  ADD             R1, SP, #0x178+var_BC; CVector *
57795E:  MOV             R0, R9; this
577960:  MOVS            R2, #0x13; int
577962:  BLX             j__ZN17CVehicleModelInfo23GetOriginalCompPositionER7CVectori; CVehicleModelInfo::GetOriginalCompPosition(CVector &,int)
577966:  CMP             R0, #1
577968:  BNE             loc_577998
57796A:  VLDR            S0, =0.03
57796E:  ADD             R0, SP, #0x178+var_B0; this
577970:  VLDR            S2, [R8,#0x10]
577974:  LDR             R3, [SP,#0x178+var_B4]; float
577976:  VMUL.F32        S0, S2, S0
57797A:  LDR             R1, [SP,#0x178+var_BC]; float
57797C:  VSUB.F32        S2, S20, S16
577980:  VMUL.F32        S0, S2, S0
577984:  VLDR            S2, [SP,#0x178+var_B8]
577988:  VADD.F32        S0, S2, S0
57798C:  VMOV            R2, S0; float
577990:  VSTR            S0, [SP,#0x178+var_B8]
577994:  BLX             j__ZN7CMatrix16SetTranslateOnlyEfff; CMatrix::SetTranslateOnly(float,float,float)
577998:  ADD             R0, SP, #0x178+var_B0; this
57799A:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
57799E:  LDR.W           R0, [R11,#0x6A4]
5779A2:  CMP             R0, #0
5779A4:  BEQ.W           loc_577AAA
5779A8:  ADD             R5, SP, #0x178+var_B0
5779AA:  ADD.W           R1, R0, #0x10
5779AE:  MOVS            R2, #0
5779B0:  MOVS            R4, #0
5779B2:  MOV             R0, R5
5779B4:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
5779B8:  MOV             R0, R5; this
5779BA:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
5779BE:  LDR.W           R0, [R9,#0x74]
5779C2:  VLDR            D16, [R0,#0x78]
5779C6:  LDR.W           R0, [R0,#0x80]
5779CA:  VSTR            D16, [SP,#0x178+var_C8]
5779CE:  VLDR            S2, [SP,#0x178+var_C8+4]
5779D2:  VLDR            S0, [SP,#0x178+var_C8]
5779D6:  VCMP.F32        S2, #0.0
5779DA:  STR             R0, [SP,#0x178+var_C0]
5779DC:  VMRS            APSR_nzcv, FPSCR
5779E0:  MOV.W           R0, #0
5779E4:  VCMP.F32        S0, #0.0
5779E8:  IT EQ
5779EA:  MOVEQ           R0, #1
5779EC:  VMRS            APSR_nzcv, FPSCR
5779F0:  IT EQ
5779F2:  MOVEQ           R4, #1
5779F4:  TST             R4, R0
5779F6:  BEQ             loc_577A0E
5779F8:  VLDR            S4, [SP,#0x178+var_C0]
5779FC:  VCMP.F32        S4, #0.0
577A00:  VMRS            APSR_nzcv, FPSCR
577A04:  BNE             loc_577A0E
577A06:  MOV.W           R0, #0x3F800000
577A0A:  STR             R0, [SP,#0x178+var_C8]
577A0C:  B               loc_577A3C
577A0E:  VLDR            S4, [SP,#0x178+var_80]
577A12:  ADD             R0, SP, #0x178+var_C8; this
577A14:  VLDR            S6, [SP,#0x178+var_7C]
577A18:  VLDR            S8, [SP,#0x178+var_78]
577A1C:  VSUB.F32        S0, S0, S4
577A20:  VLDR            S10, [SP,#0x178+var_C0]
577A24:  VSUB.F32        S2, S2, S6
577A28:  VSUB.F32        S4, S10, S8
577A2C:  VSTR            S0, [SP,#0x178+var_C8]
577A30:  VSTR            S2, [SP,#0x178+var_C8+4]
577A34:  VSTR            S4, [SP,#0x178+var_C0]
577A38:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
577A3C:  ADD.W           R4, R11, #0x9A0
577A40:  VLDR            S0, =-0.43633
577A44:  ADD             R5, SP, #0x178+var_68
577A46:  ADD             R1, SP, #0x178+var_C8
577A48:  VLDR            S2, [R4]
577A4C:  MOV             R0, R5
577A4E:  VMUL.F32        S0, S2, S0
577A52:  VMOV            R2, S0
577A56:  BLX             j__ZN11CQuaternion3SetEP5RwV3df; CQuaternion::Set(RwV3d *,float)
577A5A:  LDR             R1, [SP,#0x178+var_70]
577A5C:  MOV             R0, R5
577A5E:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
577A62:  LDR.W           R0, [R11,#0x6A0]
577A66:  CBZ             R0, loc_577AAA
577A68:  ADD             R5, SP, #0x178+var_B0
577A6A:  ADD.W           R1, R0, #0x10
577A6E:  MOVS            R2, #0
577A70:  MOV             R0, R5
577A72:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
577A76:  MOV             R0, R5; this
577A78:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
577A7C:  VLDR            S0, =0.43633
577A80:  ADD             R5, SP, #0x178+var_68
577A82:  VLDR            S2, [R4]
577A86:  ADD             R1, SP, #0x178+var_C8
577A88:  MOV             R0, R5
577A8A:  VMUL.F32        S0, S2, S0
577A8E:  VMOV            R2, S0
577A92:  VLDR            S0, [SP,#0x178+var_C8]
577A96:  VNEG.F32        S0, S0
577A9A:  VSTR            S0, [SP,#0x178+var_C8]
577A9E:  BLX             j__ZN11CQuaternion3SetEP5RwV3df; CQuaternion::Set(RwV3d *,float)
577AA2:  LDR             R1, [SP,#0x178+var_70]
577AA4:  MOV             R0, R5
577AA6:  BLX             j__ZNK11CQuaternion3GetEP11RwMatrixTag; CQuaternion::Get(RwMatrixTag *)
577AAA:  LDR.W           R1, [R11,#0x68C]
577AAE:  CBZ             R1, loc_577AEA
577AB0:  VLDR            S0, [R6]
577AB4:  MOVS            R0, #1
577AB6:  STR             R0, [SP,#0x178+var_178]
577AB8:  MOV             R0, R11
577ABA:  VADD.F32        S0, S0, S0
577ABE:  MOVS            R2, #1
577AC0:  VMOV            R3, S0
577AC4:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577AC8:  LDR.W           R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x577AD2)
577ACC:  ADD             R2, SP, #0x178+var_CC
577ACE:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
577AD0:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
577AD2:  MOVS            R0, #0
577AD4:  STR             R0, [SP,#0x178+var_CC]
577AD6:  LDR.W           R0, [R11,#0x68C]
577ADA:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
577ADE:  LDR             R0, [SP,#0x178+var_CC]
577AE0:  CMP             R0, #0
577AE2:  ITT NE
577AE4:  MOVNE           R1, #0xFF
577AE6:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
577AEA:  LDR.W           R1, [R11,#0x690]
577AEE:  CBZ             R1, loc_577B24
577AF0:  LDR             R0, [R6]
577AF2:  MOVS            R2, #1
577AF4:  STR             R2, [SP,#0x178+var_178]
577AF6:  MOVS            R2, #1
577AF8:  EOR.W           R3, R0, #0x80000000
577AFC:  MOV             R0, R11
577AFE:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577B02:  LDR.W           R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x577B0C)
577B06:  ADD             R2, SP, #0x178+var_CC
577B08:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
577B0A:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
577B0C:  MOVS            R0, #0
577B0E:  STR             R0, [SP,#0x178+var_CC]
577B10:  LDR.W           R0, [R11,#0x690]
577B14:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
577B18:  LDR             R0, [SP,#0x178+var_CC]
577B1A:  CMP             R0, #0
577B1C:  ITT NE
577B1E:  MOVNE           R1, #0
577B20:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
577B24:  LDR.W           R1, [R11,#0x694]
577B28:  CBZ             R1, loc_577B68
577B2A:  VMOV.F32        S0, #-2.0
577B2E:  VLDR            S2, [R6]
577B32:  MOVS            R0, #1
577B34:  MOVS            R2, #1
577B36:  STR             R0, [SP,#0x178+var_178]
577B38:  MOV             R0, R11
577B3A:  VMUL.F32        S0, S2, S0
577B3E:  VMOV            R3, S0
577B42:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577B46:  LDR.W           R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x577B50)
577B4A:  ADD             R2, SP, #0x178+var_CC
577B4C:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
577B4E:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
577B50:  MOVS            R0, #0
577B52:  STR             R0, [SP,#0x178+var_CC]
577B54:  LDR.W           R0, [R11,#0x694]
577B58:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
577B5C:  LDR             R0, [SP,#0x178+var_CC]
577B5E:  CMP             R0, #0
577B60:  ITT NE
577B62:  MOVNE           R1, #0xFF
577B64:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
577B68:  LDR.W           R1, [R11,#0x698]
577B6C:  CBZ             R1, loc_577B9E
577B6E:  LDR             R3, [R6]
577B70:  MOVS            R0, #1
577B72:  STR             R0, [SP,#0x178+var_178]
577B74:  MOV             R0, R11
577B76:  MOVS            R2, #1
577B78:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577B7C:  LDR.W           R0, =(_Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr - 0x577B86)
577B80:  ADD             R2, SP, #0x178+var_CC
577B82:  ADD             R0, PC; _Z24GetCurrentAtomicObjectCBP8RwObjectPv_ptr
577B84:  LDR             R1, [R0]; GetCurrentAtomicObjectCB(RwObject *,void *)
577B86:  MOVS            R0, #0
577B88:  STR             R0, [SP,#0x178+var_CC]
577B8A:  LDR.W           R0, [R11,#0x698]
577B8E:  BLX             j__Z20RwFrameForAllObjectsP7RwFramePFP8RwObjectS2_PvES3_; RwFrameForAllObjects(RwFrame *,RwObject * (*)(RwObject *,void *),void *)
577B92:  LDR             R0, [SP,#0x178+var_CC]
577B94:  CMP             R0, #0
577B96:  ITT NE
577B98:  MOVNE           R1, #0
577B9A:  BLXNE           j__ZN8CVehicle23SetComponentAtomicAlphaEP8RpAtomici; CVehicle::SetComponentAtomicAlpha(RpAtomic *,int)
577B9E:  LDRSH.W         R0, [R11,#0x26]
577BA2:  ADDW            R10, R11, #0x42C
577BA6:  VLDR            S0, =-1.4835
577BAA:  VLDR            S18, =1.4835
577BAE:  CMP.W           R0, #0x228
577BB2:  VLDR            S16, =0.0
577BB6:  BGT             loc_577BDA
577BB8:  CMP.W           R0, #0x1DC
577BBC:  BEQ             loc_577C10
577BBE:  MOVW            R1, #0x207
577BC2:  CMP             R0, R1
577BC4:  BEQ             loc_577C04
577BC6:  CMP.W           R0, #0x208
577BCA:  BNE             loc_577CBE
577BCC:  VLDR            S18, =-1.5708
577BD0:  VLDR            S20, =-1.3963
577BD4:  VLDR            S16, =2.2689
577BD8:  B               loc_577BF8
577BDA:  MOVW            R1, #0x229
577BDE:  CMP             R0, R1
577BE0:  BEQ             loc_577C1C
577BE2:  MOVW            R1, #0x241
577BE6:  CMP             R0, R1
577BE8:  BEQ             loc_577C04
577BEA:  CMP.W           R0, #0x250
577BEE:  BNE             loc_577CBE
577BF0:  VLDR            S18, =2.2689
577BF4:  VLDR            S20, =-2.2689
577BF8:  MOV.W           R8, #0
577BFC:  VMOV.F32        S0, S18
577C00:  MOVS            R6, #0
577C02:  B               loc_577C2E
577C04:  MOVS            R6, #1
577C06:  VLDR            S20, =2.2689
577C0A:  MOV.W           R8, #0
577C0E:  B               loc_577C2E
577C10:  MOVS            R6, #1
577C12:  MOV.W           R8, #0xFFFFFFFF
577C16:  VMOV.F32        S20, S16
577C1A:  B               loc_577C2E
577C1C:  VLDR            S18, =1.309
577C20:  VMOV.F32        S20, S16
577C24:  MOVS            R6, #0
577C26:  MOV.W           R8, #0xFFFFFFFF
577C2A:  VMOV.F32        S0, S18
577C2E:  ADD.W           R4, R11, #0x9E0
577C32:  LDR.W           R1, [R11,#0x6B0]
577C36:  MOVS            R5, #1
577C38:  MOV             R0, R11
577C3A:  VLDR            S2, [R4]
577C3E:  MOV             R2, R6
577C40:  STR             R5, [SP,#0x178+var_178]
577C42:  VABS.F32        S2, S2
577C46:  VMUL.F32        S0, S0, S2
577C4A:  VMOV            R3, S0
577C4E:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577C52:  VLDR            S0, [R4]
577C56:  MOV             R0, R11
577C58:  LDR.W           R1, [R11,#0x6B4]
577C5C:  MOV             R2, R6
577C5E:  VABS.F32        S0, S0
577C62:  STR             R5, [SP,#0x178+var_178]
577C64:  VMUL.F32        S0, S18, S0
577C68:  VMOV            R3, S0
577C6C:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577C70:  CMP.W           R8, #0
577C74:  BLT             loc_577CBE
577C76:  VLDR            S0, [R4]
577C7A:  MOV             R0, R11
577C7C:  LDR.W           R1, [R11,#0x6B8]
577C80:  MOV             R2, R8
577C82:  VABS.F32        S0, S0
577C86:  STR             R5, [SP,#0x178+var_178]
577C88:  VMUL.F32        S0, S20, S0
577C8C:  VMOV            R3, S0
577C90:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577C94:  VCMPE.F32       S16, #0.0
577C98:  VMRS            APSR_nzcv, FPSCR
577C9C:  BLE             loc_577CBE
577C9E:  VLDR            S0, [R4]
577CA2:  MOVS            R0, #1
577CA4:  LDR.W           R1, [R11,#0x6BC]
577CA8:  MOV             R2, R8
577CAA:  VABS.F32        S0, S0
577CAE:  STR             R0, [SP,#0x178+var_178]
577CB0:  MOV             R0, R11
577CB2:  VMUL.F32        S0, S16, S0
577CB6:  VMOV            R3, S0
577CBA:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577CBE:  LDRSH.W         R0, [R11,#0x26]
577CC2:  CMP.W           R0, #0x208
577CC6:  BEQ             loc_577D0A
577CC8:  MOVW            R1, #0x21B
577CCC:  CMP             R0, R1
577CCE:  BEQ             loc_577DCC
577CD0:  CMP.W           R0, #0x250
577CD4:  BNE.W           loc_578328
577CD8:  LDRH.W          R1, [R11,#0x880]
577CDC:  MOVS            R2, #0
577CDE:  LDR.W           R0, =(_ZN6CPlane21ANDROM_COL_ANGLE_MULTE_ptr - 0x577CEA)
577CE2:  VMOV            S0, R1
577CE6:  ADD             R0, PC; _ZN6CPlane21ANDROM_COL_ANGLE_MULTE_ptr
577CE8:  VCVT.F32.U32    S0, S0
577CEC:  LDR             R0, [R0]; CPlane::ANDROM_COL_ANGLE_MULT ...
577CEE:  LDR.W           R1, [R11,#0x6BC]
577CF2:  VLDR            S2, [R0]
577CF6:  MOVS            R0, #1
577CF8:  STR             R0, [SP,#0x178+var_178]
577CFA:  MOV             R0, R11
577CFC:  VMUL.F32        S0, S2, S0
577D00:  VMOV            R3, S0
577D04:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577D08:  B               loc_578328
577D0A:  LDR.W           R0, =(_ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr - 0x577D1A)
577D0E:  MOVS            R4, #1
577D10:  LDRH.W          R1, [R11,#0x880]
577D14:  MOVS            R2, #0
577D16:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_ROTATE_LIMITE_ptr
577D18:  VLDR            S2, =1.5708
577D1C:  VMOV            S0, R1
577D20:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT ...
577D22:  VCVT.F32.U32    S0, S0
577D26:  LDRSH.W         R0, [R0]; CPlane::HARRIER_NOZZLE_ROTATE_LIMIT
577D2A:  VMOV            S4, R0
577D2E:  MOV             R0, R11
577D30:  VCVT.F32.S32    S4, S4
577D34:  LDR.W           R1, [R11,#0x674]
577D38:  VMUL.F32        S0, S0, S2
577D3C:  STR             R4, [SP,#0x178+var_178]
577D3E:  VDIV.F32        S0, S0, S4
577D42:  VMOV            R5, S0
577D46:  MOV             R3, R5
577D48:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577D4C:  LDR.W           R1, [R11,#0x668]
577D50:  MOV             R0, R11
577D52:  MOVS            R2, #0
577D54:  MOV             R3, R5
577D56:  STR             R4, [SP,#0x178+var_178]
577D58:  BLX             j__ZN8CVehicle20SetComponentRotationEP7RwFrameifb; CVehicle::SetComponentRotation(RwFrame *,int,float,bool)
577D5C:  LDRB.W          R0, [R10]
577D60:  LSLS            R0, R0, #0x1B
577D62:  BMI.W           loc_578008
577D66:  LDR.W           R0, [R11,#0x9FC]; this
577D6A:  CBZ             R0, loc_577D76
577D6C:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
577D70:  MOVS            R0, #0
577D72:  STR.W           R0, [R11,#0x9FC]
577D76:  LDR.W           R0, [R11,#0xA00]; this
577D7A:  CBZ             R0, loc_577D86
577D7C:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
577D80:  MOVS            R0, #0
577D82:  STR.W           R0, [R11,#0xA00]
577D86:  LDR.W           R0, [R11,#0xA04]; this
577D8A:  CBZ             R0, loc_577D96
577D8C:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
577D90:  MOVS            R0, #0
577D92:  STR.W           R0, [R11,#0xA04]
577D96:  LDR.W           R0, [R11,#0xA08]; this
577D9A:  CBZ             R0, loc_577DA6
577D9C:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
577DA0:  MOVS            R0, #0
577DA2:  STR.W           R0, [R11,#0xA08]
577DA6:  LDR.W           R0, [R11,#0x590]; this
577DAA:  CMP             R0, #0
577DAC:  BEQ.W           loc_578328
577DB0:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
577DB4:  MOVS            R0, #0
577DB6:  STR.W           R0, [R11,#0x998]
577DBA:  STR.W           R0, [R11,#0x590]
577DBE:  B               loc_578328
577DC0:  DCFS 2.2689
577DC4:  DCFS -2.2689
577DC8:  DCFS 1.309
577DCC:  LDR.W           R0, [R11,#0x6B8]
577DD0:  CMP             R0, #0
577DD2:  BEQ.W           loc_578328
577DD6:  MOV             R0, R11; this
577DD8:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
577DDC:  ADD             R2, SP, #0x178+var_120; CVector *
577DDE:  LDR             R5, [R0,#0x2C]
577DE0:  MOV             R0, R9; this
577DE2:  MOVS            R1, #0; int
577DE4:  MOVS            R3, #0; bool
577DE6:  BLX             j__ZN17CVehicleModelInfo12GetWheelPosnEiR7CVectorb; CVehicleModelInfo::GetWheelPosn(int,CVector &,bool)
577DEA:  LDR.W           R0, [R11,#0x6B8]
577DEE:  MOVS            R2, #0
577DF0:  ADD.W           R1, R0, #0x10
577DF4:  ADD             R0, SP, #0x178+var_B0
577DF6:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
577DFA:  LDR.W           R0, [R11,#0x14]
577DFE:  VLDR            S2, [R11,#0x48]
577E02:  VLDR            S6, [R11,#0x4C]
577E06:  VLDR            S0, [R0,#0x10]
577E0A:  VLDR            S8, [R0,#0x14]
577E0E:  VMUL.F32        S0, S2, S0
577E12:  VLDR            S4, [R11,#0x50]
577E16:  VMUL.F32        S8, S6, S8
577E1A:  VLDR            S10, [R0,#0x18]
577E1E:  VMUL.F32        S10, S4, S10
577E22:  VADD.F32        S0, S0, S8
577E26:  VLDR            S8, =0.3
577E2A:  VADD.F32        S0, S0, S10
577E2E:  VADD.F32        S10, S0, S0
577E32:  VLDR            S0, =-0.3
577E36:  VCMPE.F32       S10, S8
577E3A:  VMRS            APSR_nzcv, FPSCR
577E3E:  BGT             loc_577E52
577E40:  VLDR            S12, =-0.3
577E44:  VCMPE.F32       S10, S12
577E48:  VMOV.F32        S12, S0
577E4C:  VMRS            APSR_nzcv, FPSCR
577E50:  BLT             loc_577E64
577E52:  VCMPE.F32       S10, S8
577E56:  VMRS            APSR_nzcv, FPSCR
577E5A:  VMOV.F32        S12, S8
577E5E:  IT LE
577E60:  VMOVLE.F32      S12, S10
577E64:  VSTR            S12, [SP,#0x178+var_8C]
577E68:  VLDR            S10, [R0]
577E6C:  VLDR            S12, [R0,#4]
577E70:  VMUL.F32        S2, S2, S10
577E74:  VLDR            S14, [R0,#8]
577E78:  VMUL.F32        S6, S6, S12
577E7C:  VMUL.F32        S4, S4, S14
577E80:  VADD.F32        S2, S2, S6
577E84:  VADD.F32        S2, S2, S4
577E88:  VADD.F32        S2, S2, S2
577E8C:  VCMPE.F32       S2, S8
577E90:  VMRS            APSR_nzcv, FPSCR
577E94:  ITTT LE
577E96:  VLDRLE          S4, =-0.3
577E9A:  VCMPELE.F32     S2, S4
577E9E:  VMRSLE          APSR_nzcv, FPSCR
577EA2:  BLT             loc_577EB6
577EA4:  VLDR            S0, =0.3
577EA8:  VCMPE.F32       S2, S0
577EAC:  VMRS            APSR_nzcv, FPSCR
577EB0:  IT LE
577EB2:  VMOVLE.F32      S0, S2
577EB6:  ADDW            R0, R11, #0x854
577EBA:  ADD.W           R1, R11, #0x850
577EBE:  VSTR            S0, [SP,#0x178+var_90]
577EC2:  VMOV.F32        S24, #0.5
577EC6:  VLDR            S18, [R1]
577ECA:  ADDW            R1, R11, #0x858
577ECE:  VLDR            S20, [R0]
577ED2:  ADDW            R0, R11, #0x84C
577ED6:  VLDR            S16, [R1]
577EDA:  VLDR            S22, [R0]
577EDE:  VSUB.F32        S0, S20, S16
577EE2:  LDR             R0, [R5,#0x10]
577EE4:  VSUB.F32        S2, S22, S18
577EE8:  VLDR            S4, [R0,#0x24]
577EEC:  VADD.F32        S0, S2, S0
577EF0:  VLDR            S2, [R0,#4]
577EF4:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x577F00)
577EF8:  VSUB.F32        S2, S2, S4
577EFC:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
577EFE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
577F00:  VMUL.F32        S0, S0, S24
577F04:  LDR             R1, [R0]; y
577F06:  MOV             R0, #0x3F666666; x
577F0E:  VDIV.F32        S26, S0, S2
577F12:  BLX             powf
577F16:  VLDR            S6, =0.1
577F1A:  VMOV            S0, R0
577F1E:  VMOV.F32        S8, S6
577F22:  VCMPE.F32       S26, S6
577F26:  VMRS            APSR_nzcv, FPSCR
577F2A:  BGT             loc_577F42
577F2C:  VLDR            S2, =-0.1
577F30:  VMOV.F32        S8, S26
577F34:  VCMPE.F32       S26, S2
577F38:  VMRS            APSR_nzcv, FPSCR
577F3C:  IT LT
577F3E:  VMOVLT.F32      S8, S2
577F42:  VMOV.F32        S4, #1.0
577F46:  VLDR            S10, [SP,#0x178+var_98]
577F4A:  VSUB.F32        S12, S16, S18
577F4E:  VMUL.F32        S10, S0, S10
577F52:  VSUB.F32        S14, S20, S22
577F56:  VSUB.F32        S2, S4, S0
577F5A:  VMUL.F32        S8, S2, S8
577F5E:  VADD.F32        S8, S8, S10
577F62:  VADD.F32        S10, S14, S12
577F66:  VSTR            S8, [SP,#0x178+var_98]
577F6A:  LDR             R0, [R5,#0x10]
577F6C:  VMUL.F32        S10, S10, S24
577F70:  VLDR            S8, [R0,#0x20]
577F74:  VLDR            S12, [R0,#0x60]
577F78:  VSUB.F32        S8, S12, S8
577F7C:  VDIV.F32        S8, S10, S8
577F80:  VCMPE.F32       S8, S6
577F84:  VMRS            APSR_nzcv, FPSCR
577F88:  BGT             loc_577FA0
577F8A:  VLDR            S10, =-0.1
577F8E:  VMOV.F32        S6, S8
577F92:  VCMPE.F32       S8, S10
577F96:  VMRS            APSR_nzcv, FPSCR
577F9A:  IT LT
577F9C:  VMOVLT.F32      S6, S10
577FA0:  VADD.F32        S8, S22, S20
577FA4:  VLDR            S10, [SP,#0x178+var_A8]
577FA8:  VMUL.F32        S6, S2, S6
577FAC:  VLDR            S12, [SP,#0x178+var_88]
577FB0:  VMUL.F32        S10, S0, S10
577FB4:  ADD             R0, SP, #0x178+var_B0; this
577FB6:  VMOV.F32        S14, #0.25
577FBA:  VMUL.F32        S0, S0, S12
577FBE:  VADD.F32        S8, S8, S18
577FC2:  VADD.F32        S6, S6, S10
577FC6:  VMOV.F32        S10, #-0.5
577FCA:  VADD.F32        S8, S8, S16
577FCE:  VSTR            S6, [SP,#0x178+var_A8]
577FD2:  VLDR            S6, [R9,#0x58]
577FD6:  VMUL.F32        S6, S6, S10
577FDA:  VMUL.F32        S8, S8, S14
577FDE:  VLDR            S14, [SP,#0x178+var_118]
577FE2:  VSUB.F32        S8, S8, S14
577FE6:  VDIV.F32        S6, S8, S6
577FEA:  VADD.F32        S4, S6, S4
577FEE:  VLDR            S8, =1.3
577FF2:  VMIN.F32        D2, D2, D4
577FF6:  VMUL.F32        S2, S2, S4
577FFA:  VADD.F32        S0, S0, S2
577FFE:  VSTR            S0, [SP,#0x178+var_88]
578002:  BLX             j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
578006:  B               loc_578328
578008:  VMOV.F32        S0, #1.0
57800C:  ADDW            R0, R11, #0x9A8
578010:  VMOV.F32        S4, #0.5
578014:  LDRH.W          R1, [R11,#0x880]
578018:  VLDR            S2, [R0]
57801C:  LDR.W           R0, =(_ZN6CPlane27HARRIER_NOZZLE_SWITCH_LIMITE_ptr - 0x578024)
578020:  ADD             R0, PC; _ZN6CPlane27HARRIER_NOZZLE_SWITCH_LIMITE_ptr
578022:  VADD.F32        S0, S2, S0
578026:  LDR             R0, [R0]; CPlane::HARRIER_NOZZLE_SWITCH_LIMIT ...
578028:  LDRSH.W         R0, [R0]; CPlane::HARRIER_NOZZLE_SWITCH_LIMIT
57802C:  CMP             R1, R0
57802E:  VMUL.F32        S16, S0, S4
578032:  BGE             loc_57806C
578034:  LDR.W           R0, [R11,#0x590]; this
578038:  CBZ             R0, loc_57807A
57803A:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
57803E:  MOVS            R0, #0
578040:  STR.W           R0, [R11,#0x998]
578044:  STR.W           R0, [R11,#0x590]
578048:  B               loc_57807A
57804A:  ALIGN 4
57804C:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x577430
578050:  DCD _ZN6CTimer12ms_fTimeStepE_ptr - 0x5775D4
578054:  DCFS 1.5708
578058:  DCFS 0.3
57805C:  DCFS -0.3
578060:  DCFS 0.1
578064:  DCFS -0.1
578068:  DCFS 1.3
57806C:  VMOV            R1, S16; float
578070:  MOV             R0, R11; this
578072:  MOV.W           R2, #0x40000000; float
578076:  BLX             j__ZN11CAutomobile16DoHeliDustEffectEff; CAutomobile::DoHeliDustEffect(float,float)
57807A:  LDR.W           R0, [R11,#0x18]
57807E:  LDR.W           R8, [R11,#0x668]
578082:  LDR.W           R5, [R11,#0x674]
578086:  CMP             R0, #0
578088:  BEQ.W           loc_5781BA
57808C:  LDR.W           R1, [R11,#0x9FC]
578090:  CBNZ            R1, loc_5780DA
578092:  LDR.W           R2, =(g_fxMan_ptr - 0x5780A2)
578096:  ADR.W           R1, aJetthrust; "jetthrust"
57809A:  LDR             R0, [R0,#4]
57809C:  MOVS            R6, #0
57809E:  ADD             R2, PC; g_fxMan_ptr
5780A0:  STRD.W          R6, R6, [SP,#0x178+var_120]
5780A4:  ADD.W           R3, R0, #0x10; int
5780A8:  STR             R6, [SP,#0x178+var_118]
5780AA:  LDR             R0, [R2]; g_fxMan ; int
5780AC:  ADD             R2, SP, #0x178+var_120; int
5780AE:  STR             R6, [SP,#0x178+var_178]; int
5780B0:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
5780B4:  CMP             R0, #0
5780B6:  STR.W           R0, [R11,#0x9FC]
5780BA:  BEQ             loc_5780D2
5780BC:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
5780C0:  LDR.W           R0, [R11,#0x9FC]; this
5780C4:  MOVS            R1, #1; unsigned __int8
5780C6:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
5780CA:  LDR.W           R0, [R11,#0x9FC]; this
5780CE:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
5780D2:  LDR.W           R0, [R11,#0x18]
5780D6:  CMP             R0, #0
5780D8:  BEQ             loc_5781BA
5780DA:  LDR.W           R1, [R11,#0xA00]
5780DE:  CBNZ            R1, loc_578128
5780E0:  LDR.W           R2, =(g_fxMan_ptr - 0x5780F0)
5780E4:  ADR.W           R1, aJetthrust; "jetthrust"
5780E8:  LDR             R0, [R0,#4]
5780EA:  MOVS            R6, #0
5780EC:  ADD             R2, PC; g_fxMan_ptr
5780EE:  STRD.W          R6, R6, [SP,#0x178+var_120]
5780F2:  ADD.W           R3, R0, #0x10; int
5780F6:  STR             R6, [SP,#0x178+var_118]
5780F8:  LDR             R0, [R2]; g_fxMan ; int
5780FA:  ADD             R2, SP, #0x178+var_120; int
5780FC:  STR             R6, [SP,#0x178+var_178]; int
5780FE:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
578102:  CMP             R0, #0
578104:  STR.W           R0, [R11,#0xA00]
578108:  BEQ             loc_578120
57810A:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
57810E:  LDR.W           R0, [R11,#0xA00]; this
578112:  MOVS            R1, #1; unsigned __int8
578114:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
578118:  LDR.W           R0, [R11,#0xA00]; this
57811C:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
578120:  LDR.W           R0, [R11,#0x18]
578124:  CMP             R0, #0
578126:  BEQ             loc_5781BA
578128:  LDR.W           R1, [R11,#0xA04]
57812C:  CBNZ            R1, loc_578174
57812E:  LDR.W           R2, =(g_fxMan_ptr - 0x57813E)
578132:  ADR.W           R1, aJetthrust; "jetthrust"
578136:  LDR             R0, [R0,#4]
578138:  MOVS            R6, #0
57813A:  ADD             R2, PC; g_fxMan_ptr
57813C:  STRD.W          R6, R6, [SP,#0x178+var_120]
578140:  ADD.W           R3, R0, #0x10; int
578144:  STR             R6, [SP,#0x178+var_118]
578146:  LDR             R0, [R2]; g_fxMan ; int
578148:  ADD             R2, SP, #0x178+var_120; int
57814A:  STR             R6, [SP,#0x178+var_178]; int
57814C:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
578150:  CMP             R0, #0
578152:  STR.W           R0, [R11,#0xA04]
578156:  BEQ             loc_57816E
578158:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
57815C:  LDR.W           R0, [R11,#0xA04]; this
578160:  MOVS            R1, #1; unsigned __int8
578162:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
578166:  LDR.W           R0, [R11,#0xA04]; this
57816A:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
57816E:  LDR.W           R0, [R11,#0x18]
578172:  CBZ             R0, loc_5781BA
578174:  LDR.W           R1, [R11,#0xA08]
578178:  CBNZ            R1, loc_5781BA
57817A:  LDR.W           R2, =(g_fxMan_ptr - 0x57818A)
57817E:  ADR.W           R1, aJetthrust; "jetthrust"
578182:  LDR             R0, [R0,#4]
578184:  MOVS            R6, #0
578186:  ADD             R2, PC; g_fxMan_ptr
578188:  STRD.W          R6, R6, [SP,#0x178+var_120]
57818C:  ADD.W           R3, R0, #0x10; int
578190:  STR             R6, [SP,#0x178+var_118]
578192:  LDR             R0, [R2]; g_fxMan ; int
578194:  ADD             R2, SP, #0x178+var_120; int
578196:  STR             R6, [SP,#0x178+var_178]; int
578198:  BLX             j__ZN11FxManager_c14CreateFxSystemEPcP5RwV3dP11RwMatrixTagh; FxManager_c::CreateFxSystem(char *,RwV3d *,RwMatrixTag *,uchar)
57819C:  CMP             R0, #0
57819E:  STR.W           R0, [R11,#0xA08]
5781A2:  BEQ             loc_5781BA
5781A4:  BLX             j__ZN10FxSystem_c4PlayEv; FxSystem_c::Play(void)
5781A8:  LDR.W           R0, [R11,#0xA08]; this
5781AC:  MOVS            R1, #1; unsigned __int8
5781AE:  BLX             j__ZN10FxSystem_c17SetLocalParticlesEh; FxSystem_c::SetLocalParticles(uchar)
5781B2:  LDR.W           R0, [R11,#0xA08]; this
5781B6:  BLX             j__ZN10FxSystem_c16CopyParentMatrixEv; FxSystem_c::CopyParentMatrix(void)
5781BA:  LDR.W           R0, [R11,#0x9FC]
5781BE:  ADD.W           R6, R5, #0x10
5781C2:  CBZ             R0, loc_578218
5781C4:  MOVW            R0, #0x6666
5781C8:  ADD             R5, SP, #0x178+var_120
5781CA:  MOVT            R0, #0xBEE6
5781CE:  MOV             R2, R6
5781D0:  STR             R0, [SP,#0x178+var_D8+4]
5781D2:  MOV             R0, #0x3F333333
5781DA:  STR             R0, [SP,#0x178+var_D8]
5781DC:  MOV             R0, #0x3D4CCCCD
5781E4:  STR             R0, [SP,#0x178+var_D0]
5781E6:  MOV             R0, R5
5781E8:  LDR.W           R1, [R11,#0x14]
5781EC:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
5781F0:  LDR.W           R0, [R11,#0x9FC]
5781F4:  MOV             R1, R5
5781F6:  BLX             j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
5781FA:  LDR.W           R0, [R11,#0x9FC]
5781FE:  ADD             R1, SP, #0x178+var_D8
578200:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
578204:  VMOV            R2, S16; float
578208:  LDR.W           R0, [R11,#0x9FC]; this
57820C:  MOVS            R1, #1; unsigned __int8
57820E:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
578212:  MOV             R0, R5; this
578214:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
578218:  LDR.W           R0, [R11,#0xA00]
57821C:  ADD.W           R8, R8, #0x10
578220:  CBZ             R0, loc_578276
578222:  MOVW            R0, #0x6666
578226:  ADD             R5, SP, #0x178+var_120
578228:  MOVT            R0, #0xBEE6
57822C:  MOV             R2, R6
57822E:  STR             R0, [SP,#0x178+var_D8+4]
578230:  MOV             R0, #0xBF51EB85
578238:  STR             R0, [SP,#0x178+var_D8]
57823A:  MOV             R0, #0x3D4CCCCD
578242:  STR             R0, [SP,#0x178+var_D0]
578244:  MOV             R0, R5
578246:  LDR.W           R1, [R11,#0x14]
57824A:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
57824E:  LDR.W           R0, [R11,#0xA00]
578252:  MOV             R1, R5
578254:  BLX             j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
578258:  LDR.W           R0, [R11,#0xA00]
57825C:  ADD             R1, SP, #0x178+var_D8
57825E:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
578262:  VMOV            R2, S16; float
578266:  LDR.W           R0, [R11,#0xA00]; this
57826A:  MOVS            R1, #1; unsigned __int8
57826C:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
578270:  MOV             R0, R5; this
578272:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
578276:  LDR.W           R0, [R11,#0xA04]
57827A:  CBZ             R0, loc_5782D0
57827C:  MOVW            R0, #0x6666
578280:  ADD             R5, SP, #0x178+var_120
578282:  MOVT            R0, #0xBEE6
578286:  MOV             R2, R8
578288:  STR             R0, [SP,#0x178+var_D8+4]
57828A:  MOV             R0, #0x3F2147AE
578292:  STR             R0, [SP,#0x178+var_D8]
578294:  MOV             R0, #0x3D8F5C29
57829C:  STR             R0, [SP,#0x178+var_D0]
57829E:  MOV             R0, R5
5782A0:  LDR.W           R1, [R11,#0x14]
5782A4:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
5782A8:  LDR.W           R0, [R11,#0xA04]
5782AC:  MOV             R1, R5
5782AE:  BLX             j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
5782B2:  LDR.W           R0, [R11,#0xA04]
5782B6:  ADD             R1, SP, #0x178+var_D8
5782B8:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
5782BC:  VMOV            R2, S16; float
5782C0:  LDR.W           R0, [R11,#0xA04]; this
5782C4:  MOVS            R1, #1; unsigned __int8
5782C6:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
5782CA:  MOV             R0, R5; this
5782CC:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5782D0:  LDR.W           R0, [R11,#0xA08]
5782D4:  CBZ             R0, loc_578328
5782D6:  MOVW            R0, #0x6666
5782DA:  ADD             R5, SP, #0x178+var_120
5782DC:  MOVT            R0, #0xBEE6
5782E0:  MOV             R2, R8
5782E2:  STR             R0, [SP,#0x178+var_D8+4]
5782E4:  MOVS            R0, #0xBF400000
5782EA:  STR             R0, [SP,#0x178+var_D8]
5782EC:  MOV             R0, #0x3D8F5C29
5782F4:  STR             R0, [SP,#0x178+var_D0]
5782F6:  MOV             R0, R5
5782F8:  LDR.W           R1, [R11,#0x14]
5782FC:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
578300:  LDR.W           R0, [R11,#0xA08]
578304:  MOV             R1, R5
578306:  BLX             j__ZN10FxSystem_c9SetMatrixEP11RwMatrixTag; FxSystem_c::SetMatrix(RwMatrixTag *)
57830A:  LDR.W           R0, [R11,#0xA08]
57830E:  ADD             R1, SP, #0x178+var_D8
578310:  BLX             j__ZN10FxSystem_c12SetOffsetPosEP5RwV3d; FxSystem_c::SetOffsetPos(RwV3d *)
578314:  VMOV            R2, S16; float
578318:  LDR.W           R0, [R11,#0xA08]; this
57831C:  MOVS            R1, #1; unsigned __int8
57831E:  BLX             j__ZN10FxSystem_c12SetConstTimeEhf; FxSystem_c::SetConstTime(uchar,float)
578322:  MOV             R0, R5; this
578324:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
578328:  STRD.W          R10, R9, [SP,#0x178+var_158]
57832C:  MOV.W           R8, #0xFFFFFFFF
578330:  LDRSH.W         R1, [R11,#0x6C0]
578334:  CMP             R1, #0
578336:  BLT             loc_578378
578338:  ADD.W           LR, R11, #0x8D0
57833C:  LDR.W           R3, [R11,#0x8C8]; int
578340:  LDR.W           R5, [R11,#0x8CC]
578344:  ADD.W           R1, R11, R1,LSL#2
578348:  LDM.W           LR, {R4,R6,R12,LR}
57834C:  MOVW            R10, #0xC28F
578350:  ADD.W           R0, R11, #0x6C0; int
578354:  LDR.W           R2, [R1,#0x65C]; int
578358:  MOVW            R1, #0xE148
57835C:  STRD.W          R5, R4, [SP,#0x178+var_178]; float
578360:  ADD             R4, SP, #0x178+var_170
578362:  MOVT            R1, #0x3F7A
578366:  MOVT            R10, #0x3CF5
57836A:  STM.W           R4, {R6,R12,LR}
57836E:  STRD.W          R10, R1, [SP,#0x178+var_164]; float
578372:  MOV             R1, R11; int
578374:  BLX             j__ZN14CBouncingPanel12ProcessPanelEP8CVehicleP7RwFrame7CVectorS4_ff; CBouncingPanel::ProcessPanel(CVehicle *,RwFrame *,CVector,CVector,float,float)
578378:  LDRSH.W         R1, [R11,#0x6E0]
57837C:  ADDW            R10, R11, #0x8DC
578380:  ADDW            R9, R11, #0x8D8
578384:  CMP             R1, R8
578386:  BLE             loc_5783C8
578388:  ADD.W           LR, R11, #0x8D0
57838C:  LDR.W           R3, [R11,#0x8C8]; int
578390:  LDR.W           R6, [R11,#0x8CC]
578394:  ADD.W           R1, R11, R1,LSL#2
578398:  LDM.W           LR, {R4,R5,R12,LR}
57839C:  ADD.W           R0, R11, #0x6E0; int
5783A0:  LDR.W           R2, [R1,#0x65C]; int
5783A4:  MOVW            R1, #0xC28F
5783A8:  STRD.W          R6, R4, [SP,#0x178+var_178]; float
5783AC:  ADD             R4, SP, #0x178+var_170
5783AE:  MOVT            R1, #0x3CF5
5783B2:  STM.W           R4, {R5,R12,LR}
5783B6:  STR             R1, [SP,#0x178+var_164]; float
5783B8:  MOV             R1, #0x3F7AE148
5783C0:  STR             R1, [SP,#0x178+var_160]; float
5783C2:  MOV             R1, R11; int
5783C4:  BLX             j__ZN14CBouncingPanel12ProcessPanelEP8CVehicleP7RwFrame7CVectorS4_ff; CBouncingPanel::ProcessPanel(CVehicle *,RwFrame *,CVector,CVector,float,float)
5783C8:  LDRSH.W         R1, [R11,#0x700]
5783CC:  CMP             R1, R8
5783CE:  BLE             loc_578418
5783D0:  ADD.W           R1, R11, R1,LSL#2
5783D4:  LDR.W           R5, [R11,#0x8D0]
5783D8:  MOVW            R8, #0xE148
5783DC:  LDR.W           R3, [R11,#0x8C8]; int
5783E0:  LDR.W           R2, [R1,#0x65C]; int
5783E4:  MOVW            R1, #0xC28F
5783E8:  LDR.W           R6, [R11,#0x8CC]
5783EC:  ADD.W           R0, R11, #0x700; int
5783F0:  LDR.W           R4, [R11,#0x8D4]
5783F4:  MOVT            R8, #0x3F7A
5783F8:  LDR.W           R12, [R11,#0x8D8]
5783FC:  MOVT            R1, #0x3CF5
578400:  LDR.W           LR, [R11,#0x8DC]
578404:  STRD.W          R6, R5, [SP,#0x178+var_178]; float
578408:  ADD             R5, SP, #0x178+var_170
57840A:  STM.W           R5, {R4,R12,LR}
57840E:  STRD.W          R1, R8, [SP,#0x178+var_164]; float
578412:  MOV             R1, R11; int
578414:  BLX             j__ZN14CBouncingPanel12ProcessPanelEP8CVehicleP7RwFrame7CVectorS4_ff; CBouncingPanel::ProcessPanel(CVehicle *,RwFrame *,CVector,CVector,float,float)
578418:  ADD.W           R0, R11, #0x60 ; '`'
57841C:  VLDR            S0, [R11,#0x58]
578420:  VLDR            S4, [R11,#0x70]
578424:  MOVW            R1, #0x21B
578428:  VLDR            S2, [R11,#0x5C]
57842C:  VLDR            S6, [R11,#0x74]
578430:  VADD.F32        S0, S0, S4
578434:  VLD1.32         {D16-D17}, [R0]
578438:  ADD.W           R0, R11, #0x48 ; 'H'
57843C:  VADD.F32        S2, S2, S6
578440:  VLD1.32         {D18-D19}, [R0]
578444:  ADDW            R0, R11, #0x8C8
578448:  VADD.F32        Q8, Q9, Q8
57844C:  VST1.32         {D16-D17}, [R0]
578450:  VSTR            S0, [R9]
578454:  VSTR            S2, [R10]
578458:  LDRSH.W         R0, [R11,#0x26]
57845C:  CMP             R0, R1
57845E:  BEQ             loc_578478
578460:  LDRD.W          R5, R4, [SP,#0x178+var_158]
578464:  MOVW            R1, #0x241
578468:  CMP             R0, R1
57846A:  IT NE
57846C:  CMPNE.W         R0, #0x250
578470:  BNE             loc_578486
578472:  MOV             R0, R11
578474:  MOVS            R1, #5
578476:  B               loc_57848A
578478:  MOV             R0, R11; CPhysical *
57847A:  MOVS            R1, #0
57847C:  BLX             j__ZN8CShadows21StoreShadowForVehicleEP8CVehicle12VEH_SHD_TYPE; CShadows::StoreShadowForVehicle(CVehicle *,VEH_SHD_TYPE)
578480:  LDRD.W          R5, R4, [SP,#0x178+var_158]
578484:  B               loc_57848E
578486:  MOV             R0, R11; CPhysical *
578488:  MOVS            R1, #3
57848A:  BLX             j__ZN8CShadows21StoreShadowForVehicleEP8CVehicle12VEH_SHD_TYPE; CShadows::StoreShadowForVehicle(CVehicle *,VEH_SHD_TYPE)
57848E:  LDRB            R0, [R5,#3]
578490:  LSLS            R0, R0, #0x19
578492:  BMI.W           loc_5785DE
578496:  LDRSH.W         R0, [R11,#0x26]
57849A:  CMP.W           R0, #0x1D0
57849E:  ITT NE
5784A0:  MOVWNE          R1, #0x21B
5784A4:  CMPNE           R0, R1
5784A6:  BEQ.W           loc_5785DE
5784AA:  LDR.W           R0, [R11,#0x38C]
5784AE:  ADD             R6, SP, #0x178+var_120
5784B0:  LDR.W           R1, [R11,#0x14]
5784B4:  VLDR            S16, [R11,#0x48]
5784B8:  VLDR            S28, [R0,#0x2C]
5784BC:  LDR             R0, [R4,#0x74]
5784BE:  VLDR            S18, [R11,#0x4C]
5784C2:  VLDR            S20, [R11,#0x50]
5784C6:  VLDR            D16, [R0,#0x90]
5784CA:  LDR.W           R2, [R0,#0x98]
5784CE:  VLDR            S22, [R1,#0x20]
5784D2:  VLDR            S24, [R1,#0x24]
5784D6:  VLDR            S26, [R1,#0x28]
5784DA:  STR             R2, [SP,#0x178+var_118]
5784DC:  MOV             R2, R6
5784DE:  VSTR            D16, [SP,#0x178+var_120]
5784E2:  VLDR            D16, [R0,#0x90]
5784E6:  VLDR            S0, =-0.1
5784EA:  VSTR            D16, [SP,#0x178+var_D8]
5784EE:  VLDR            S2, [SP,#0x178+var_D8]
5784F2:  LDR.W           R0, [R0,#0x98]
5784F6:  VADD.F32        S0, S2, S0
5784FA:  STR             R0, [SP,#0x178+var_D0]
5784FC:  ADD             R0, SP, #0x178+var_130
5784FE:  VSTR            S0, [SP,#0x178+var_D8]
578502:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
578506:  ADD.W           R8, SP, #0x178+var_D8
57850A:  LDR.W           R1, [R11,#0x14]
57850E:  ADD             R0, SP, #0x178+var_140
578510:  MOV             R2, R8
578512:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
578516:  VMUL.F32        S0, S18, S24
57851A:  ADD             R2, SP, #0x178+var_130
57851C:  VMUL.F32        S2, S16, S22
578520:  ADD             R5, SP, #0x178+var_140
578522:  VMUL.F32        S4, S20, S26
578526:  LDM             R2, {R0-R2}
578528:  LDM             R5, {R3-R5}
57852A:  STRD.W          R4, R5, [SP,#0x178+var_164]
57852E:  VADD.F32        S0, S2, S0
578532:  VLDR            S2, =6400.0
578536:  STRD.W          R2, R3, [SP,#0x178+var_16C]; float
57853A:  MOVS            R2, #0xFF
57853C:  VMUL.F32        S2, S28, S2
578540:  MOVS            R3, #0xFF
578542:  VADD.F32        S0, S0, S4
578546:  VLDR            S4, =0.0
57854A:  VMUL.F32        S0, S0, S2
57854E:  VLDR            S2, =-32.0
578552:  VABS.F32        S0, S0
578556:  VADD.F32        S0, S0, S2
57855A:  VMAX.F32        D0, D0, D2
57855E:  VCVT.U32.F32    S0, S0
578562:  STRD.W          R0, R1, [SP,#0x178+var_174]; float
578566:  MOV             R0, R11
578568:  MOVS            R1, #0xFF
57856A:  VMOV            R4, S0
57856E:  STR             R4, [SP,#0x178+var_178]
578570:  BLX             j__ZN18CMotionBlurStreaks14RegisterStreakEjhhhh7CVectorS0_; CMotionBlurStreaks::RegisterStreak(uint,uchar,uchar,uchar,uchar,CVector,CVector)
578574:  VLDR            S0, [SP,#0x178+var_120]
578578:  ADD             R0, SP, #0x178+var_150
57857A:  MOV             R2, R6
57857C:  VNEG.F32        S0, S0
578580:  VSTR            S0, [SP,#0x178+var_120]
578584:  VLDR            S0, [SP,#0x178+var_D8]
578588:  VNEG.F32        S0, S0
57858C:  VSTR            S0, [SP,#0x178+var_D8]
578590:  LDR.W           R1, [R11,#0x14]
578594:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
578598:  VLDR            D16, [SP,#0x178+var_150]
57859C:  MOV             R2, R8
57859E:  LDR             R0, [SP,#0x178+var_148]
5785A0:  STR             R0, [SP,#0x178+var_128]
5785A2:  ADD             R0, SP, #0x178+var_150
5785A4:  VSTR            D16, [SP,#0x178+var_130]
5785A8:  LDR.W           R1, [R11,#0x14]
5785AC:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5785B0:  VLDR            D16, [SP,#0x178+var_150]
5785B4:  ADD             R2, SP, #0x178+var_130
5785B6:  LDR             R0, [SP,#0x178+var_148]
5785B8:  STR             R0, [SP,#0x178+var_138]
5785BA:  VSTR            D16, [SP,#0x178+var_140]
5785BE:  LDM             R2, {R0-R2}
5785C0:  LDRD.W          R3, R6, [SP,#0x178+var_140]
5785C4:  LDR             R5, [SP,#0x178+var_138]
5785C6:  STRD.W          R4, R0, [SP,#0x178+var_178]
5785CA:  ADD             R0, SP, #0x178+var_170
5785CC:  STM             R0!, {R1-R3,R6}
5785CE:  ADD.W           R0, R11, #1
5785D2:  MOVS            R1, #0xFF
5785D4:  MOVS            R2, #0xFF
5785D6:  MOVS            R3, #0xFF
5785D8:  STR             R5, [SP,#0x178+var_160]
5785DA:  BLX             j__ZN18CMotionBlurStreaks14RegisterStreakEjhhhh7CVectorS0_; CMotionBlurStreaks::RegisterStreak(uint,uchar,uchar,uchar,uchar,CVector,CVector)
5785DE:  LDRB.W          R0, [R11,#0xA14]
5785E2:  CMP             R0, #0
5785E4:  BEQ.W           loc_578722
5785E8:  LDRSH.W         R0, [R11,#0x26]
5785EC:  MOVW            R1, #0x201
5785F0:  CMP             R0, R1
5785F2:  BEQ             loc_578680
5785F4:  CMP.W           R0, #0x200
5785F8:  BNE.W           loc_57872E
5785FC:  MOVW            R0, #0xCCCD
578600:  MOVW            R2, #0xCCCD
578604:  ADD             R5, SP, #0x178+var_120
578606:  MOVT            R0, #0x3E4C
57860A:  MOV.W           R1, #0x3F800000
57860E:  MOVT            R2, #0x3ECC
578612:  STRD.W          R2, R1, [SP,#0x178+var_178]; float
578616:  MOV.W           R2, #0x3F800000; float
57861A:  STRD.W          R1, R0, [SP,#0x178+var_170]; float
57861E:  MOV             R0, R5; this
578620:  MOV.W           R1, #0x3F800000; float
578624:  MOV.W           R3, #0x3F800000; float
578628:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
57862C:  MOV.W           R0, #0xBF000000
578630:  MOVS            R4, #0
578632:  STR             R0, [SP,#0x178+var_D8+4]
578634:  ADD             R6, SP, #0x178+var_130
578636:  STR             R4, [SP,#0x178+var_D8]
578638:  ADD             R2, SP, #0x178+var_D8
57863A:  STR             R0, [SP,#0x178+var_D0]
57863C:  MOV             R0, R6
57863E:  LDR.W           R1, [R11,#0x14]
578642:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
578646:  VMOV.F32        S0, #10.0
57864A:  VLDR            S6, [R11,#0x50]
57864E:  VMOV.F32        S8, #-3.0
578652:  VLDR            S4, [R11,#0x4C]
578656:  VLDR            S2, [R11,#0x48]
57865A:  LDR             R0, =(g_fx_ptr - 0x578660)
57865C:  ADD             R0, PC; g_fx_ptr
57865E:  VMUL.F32        S6, S6, S0
578662:  LDR             R0, [R0]; g_fx
578664:  VMUL.F32        S4, S4, S0
578668:  VMUL.F32        S0, S2, S0
57866C:  LDR             R0, [R0,#(dword_820540 - 0x820520)]
57866E:  VADD.F32        S2, S6, S8
578672:  VSTR            S4, [SP,#0x178+var_140+4]
578676:  VSTR            S0, [SP,#0x178+var_140]
57867A:  VSTR            S2, [SP,#0x178+var_138]
57867E:  B               loc_5786F8
578680:  MOVW            R0, #0x999A
578684:  MOVW            R2, #0xCCCD
578688:  ADD             R5, SP, #0x178+var_120
57868A:  MOVT            R0, #0x3E99
57868E:  MOV.W           R1, #0x3F800000
578692:  MOVT            R2, #0x3ECC
578696:  STRD.W          R2, R1, [SP,#0x178+var_178]; float
57869A:  MOVS            R2, #0; float
57869C:  STRD.W          R1, R0, [SP,#0x178+var_170]; float
5786A0:  MOV             R0, R5; this
5786A2:  MOV.W           R1, #0x3F800000; float
5786A6:  MOVS            R3, #0; float
5786A8:  MOVS            R4, #0
5786AA:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
5786AE:  MOVS            R0, #0
5786B0:  ADD             R6, SP, #0x178+var_130
5786B2:  MOVT            R0, #0xC0A0
5786B6:  ADD             R2, SP, #0x178+var_D8
5786B8:  STRD.W          R4, R0, [SP,#0x178+var_D8]
5786BC:  MOV             R0, R6
5786BE:  STR             R4, [SP,#0x178+var_D0]
5786C0:  LDR.W           R1, [R11,#0x14]
5786C4:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5786C8:  VMOV.F32        S0, #10.0
5786CC:  LDR             R0, =(g_fx_ptr - 0x5786DA)
5786CE:  VLDR            S2, [R11,#0x48]
5786D2:  VLDR            S4, [R11,#0x4C]
5786D6:  ADD             R0, PC; g_fx_ptr
5786D8:  VLDR            S6, [R11,#0x50]
5786DC:  LDR             R0, [R0]; g_fx
5786DE:  VMUL.F32        S4, S4, S0
5786E2:  LDR             R0, [R0,#(dword_820540 - 0x820520)]; int
5786E4:  VMUL.F32        S2, S2, S0
5786E8:  VMUL.F32        S0, S6, S0
5786EC:  VSTR            S4, [SP,#0x178+var_140+4]
5786F0:  VSTR            S2, [SP,#0x178+var_140]
5786F4:  VSTR            S0, [SP,#0x178+var_138]
5786F8:  MOVW            R1, #0x999A
5786FC:  MOVW            R2, #0x999A
578700:  MOVS            R3, #0
578702:  MOVT            R1, #0x3F19
578706:  MOVT            R3, #0xBF80
57870A:  MOVT            R2, #0x3F99
57870E:  STRD.W          R5, R3, [SP,#0x178+var_178]; int
578712:  MOVS            R3, #0; int
578714:  STRD.W          R2, R1, [SP,#0x178+var_170]; float
578718:  ADD             R2, SP, #0x178+var_140; int
57871A:  MOV             R1, R6; int
57871C:  STR             R4, [SP,#0x178+var_168]; int
57871E:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
578722:  LDRH.W          R0, [R11,#0x26]
578726:  CMP.W           R0, #0x1CC
57872A:  BEQ             loc_578736
57872C:  B               loc_578748
57872E:  UXTH            R0, R0
578730:  CMP.W           R0, #0x1CC
578734:  BNE             loc_578748
578736:  LDRB.W          R0, [R11,#0x45]
57873A:  LSLS            R0, R0, #0x1F
57873C:  BEQ             loc_578748
57873E:  LDR.W           R1, [R11,#0x964]; float
578742:  MOV             R0, R11; this
578744:  BLX             j__ZN8CVehicle14DoBoatSplashesEf; CVehicle::DoBoatSplashes(float)
578748:  ADD             R0, SP, #0x178+var_B0; this
57874A:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
57874E:  ADD             SP, SP, #0x120
578750:  VPOP            {D8-D14}
578754:  ADD             SP, SP, #4
578756:  POP.W           {R8-R11}
57875A:  POP             {R4-R7,PC}
