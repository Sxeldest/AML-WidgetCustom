; =========================================================
; Game Engine Function: _ZN6CGlass20BreakGlassPhysicallyE7CVectorf
; Address            : 0x5AD488 - 0x5AD904
; =========================================================

5AD488:  PUSH            {R4-R7,LR}
5AD48A:  ADD             R7, SP, #0xC
5AD48C:  PUSH.W          {R8-R11}
5AD490:  SUB             SP, SP, #4
5AD492:  VPUSH           {D8-D15}
5AD496:  SUB             SP, SP, #0x110
5AD498:  MOV             R11, R0
5AD49A:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5AD4A8)
5AD49E:  MOV             R9, R1
5AD4A0:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5AD4AC)
5AD4A4:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5AD4A6:  MOV             R8, R2
5AD4A8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5AD4AA:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
5AD4AC:  LDR             R5, [R1]; CTimer::m_snTimeInMilliseconds ...
5AD4AE:  LDR             R6, [R0]; CPools::ms_pObjectPool
5AD4B0:  LDR.W           R0, =(dword_A40438 - 0x5AD4B8)
5AD4B4:  ADD             R0, PC; dword_A40438
5AD4B6:  LDR             R2, [R6,#8]
5AD4B8:  LDR             R1, [R0]
5AD4BA:  LDR             R0, [R5]; CTimer::m_snTimeInMilliseconds
5AD4BC:  CMP             R0, R1
5AD4BE:  BCC             loc_5AD4CA
5AD4C0:  ADD.W           R1, R1, #0x3E8
5AD4C4:  CMP             R0, R1
5AD4C6:  BCC.W           loc_5AD8F6
5AD4CA:  VMOV            S0, R3
5AD4CE:  MOVS            R0, #0
5AD4D0:  CMP             R2, #0
5AD4D2:  STRB.W          R0, [SP,#0x170+var_63]
5AD4D6:  VSTR            S0, [SP,#0x170+var_68]
5AD4DA:  STRB.W          R0, [SP,#0x170+var_64]
5AD4DE:  BEQ.W           loc_5AD8F6
5AD4E2:  ADD             R0, SP, #0x170+var_A8
5AD4E4:  VMOV            S16, R8
5AD4E8:  ADD.W           R1, R0, #0x24 ; '$'
5AD4EC:  STR             R1, [SP,#0x170+var_E4]
5AD4EE:  ADD.W           R1, R0, #0x18
5AD4F2:  ADDS            R0, #0xC
5AD4F4:  STR             R0, [SP,#0x170+var_EC]
5AD4F6:  VMOV            S18, R9
5AD4FA:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5AD50C)
5AD4FE:  VMOV            S20, R11
5AD502:  MOV.W           R3, #0x1A4
5AD506:  STR             R1, [SP,#0x170+var_E8]
5AD508:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5AD50A:  STR             R6, [SP,#0x170+var_D4]
5AD50C:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5AD50E:  STR             R0, [SP,#0x170+var_D8]
5AD510:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5AD518)
5AD514:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5AD516:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5AD518:  STR             R0, [SP,#0x170+var_DC]
5AD51A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5AD522)
5AD51E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5AD520:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5AD522:  STR             R0, [SP,#0x170+var_E0]
5AD524:  LDR.W           R0, =(AudioEngine_ptr - 0x5AD52C)
5AD528:  ADD             R0, PC; AudioEngine_ptr
5AD52A:  LDR             R0, [R0]; AudioEngine
5AD52C:  STR             R0, [SP,#0x170+var_F0]
5AD52E:  LDR             R0, =(AudioEngine_ptr - 0x5AD534)
5AD530:  ADD             R0, PC; AudioEngine_ptr
5AD532:  LDR             R0, [R0]; AudioEngine
5AD534:  STR             R0, [SP,#0x170+var_F4]
5AD536:  LDR             R0, [R6,#4]
5AD538:  SUBS            R2, #1
5AD53A:  LDRSB           R0, [R0,R2]
5AD53C:  CMP             R0, #0
5AD53E:  BLT.W           loc_5AD8F0
5AD542:  LDR             R0, [R6]
5AD544:  MLA.W           R5, R2, R3, R0
5AD548:  CMP             R5, #0
5AD54A:  BEQ.W           loc_5AD8F0
5AD54E:  LDRB.W          R0, [R5,#0x3A]
5AD552:  AND.W           R0, R0, #7
5AD556:  CMP             R0, #4
5AD558:  BNE.W           loc_5AD8F0
5AD55C:  MOV             R4, R5
5AD55E:  LDR             R1, [SP,#0x170+var_D8]
5AD560:  LDRSH.W         R0, [R4,#0x26]!
5AD564:  LDR.W           R0, [R1,R0,LSL#2]
5AD568:  LDR             R1, [R0]
5AD56A:  LDR             R1, [R1,#8]
5AD56C:  STR             R2, [SP,#0x170+var_D0]
5AD56E:  BLX             R1
5AD570:  LDR             R2, [SP,#0x170+var_D0]
5AD572:  MOV.W           R3, #0x1A4
5AD576:  LDR             R6, [SP,#0x170+var_D4]
5AD578:  CMP             R0, #0
5AD57A:  BEQ.W           loc_5AD8F0
5AD57E:  LDRH            R0, [R0,#0x28]
5AD580:  AND.W           R0, R0, #0x7000
5AD584:  ORR.W           R0, R0, #0x800
5AD588:  CMP.W           R0, #0x2800
5AD58C:  BNE.W           loc_5AD8F0
5AD590:  MOV             R12, R5
5AD592:  LDRB.W          R0, [R12,#0x1C]!
5AD596:  TST.W           R0, #1
5AD59A:  BEQ.W           loc_5AD8F0
5AD59E:  LDRSH.W         R0, [R4]
5AD5A2:  LDR             R1, [SP,#0x170+var_DC]
5AD5A4:  LDR.W           R0, [R1,R0,LSL#2]
5AD5A8:  LDR             R0, [R0,#0x2C]; this
5AD5AA:  LDR.W           R10, [R0,#0x2C]
5AD5AE:  CMP.W           R10, #0
5AD5B2:  BEQ.W           loc_5AD8F0
5AD5B6:  LDRSH.W         R1, [R10,#4]
5AD5BA:  CMP             R1, #2
5AD5BC:  BLT.W           loc_5AD8F0
5AD5C0:  MOV             R6, R5
5AD5C2:  LDR.W           R1, [R6,#0x14]!
5AD5C6:  SUB.W           R2, R6, #0x10
5AD5CA:  STR             R2, [SP,#0x170+var_FC]
5AD5CC:  CMP             R1, #0
5AD5CE:  IT NE
5AD5D0:  ADDNE.W         R2, R1, #0x30 ; '0'
5AD5D4:  VLDR            S6, [R1]
5AD5D8:  VLDR            S0, [R2]
5AD5DC:  VLDR            S2, [R2,#4]
5AD5E0:  VSUB.F32        S0, S20, S0
5AD5E4:  VLDR            S4, [R2,#8]
5AD5E8:  VSUB.F32        S2, S18, S2
5AD5EC:  VLDR            S8, [R1,#4]
5AD5F0:  VSUB.F32        S4, S16, S4
5AD5F4:  VLDR            S10, [R1,#8]
5AD5F8:  VMUL.F32        S6, S0, S6
5AD5FC:  VMUL.F32        S8, S2, S8
5AD600:  VMUL.F32        S10, S4, S10
5AD604:  VADD.F32        S6, S6, S8
5AD608:  VADD.F32        S6, S6, S10
5AD60C:  VSTR            S6, [SP,#0x170+var_74]
5AD610:  LDR             R1, [R6]
5AD612:  VLDR            S6, [R1,#0x10]
5AD616:  VLDR            S8, [R1,#0x14]
5AD61A:  VMUL.F32        S6, S0, S6
5AD61E:  VLDR            S10, [R1,#0x18]
5AD622:  VMUL.F32        S8, S2, S8
5AD626:  STR             R6, [SP,#0x170+var_100]
5AD628:  VMUL.F32        S10, S4, S10
5AD62C:  VADD.F32        S6, S6, S8
5AD630:  VADD.F32        S6, S6, S10
5AD634:  VSTR            S6, [SP,#0x170+var_70]
5AD638:  LDR             R1, [R6]; CColModel *
5AD63A:  VLDR            S6, [R1,#0x20]
5AD63E:  VLDR            S8, [R1,#0x24]
5AD642:  VMUL.F32        S0, S0, S6
5AD646:  VLDR            S10, [R1,#0x28]
5AD64A:  VMUL.F32        S2, S2, S8
5AD64E:  STR.W           R12, [SP,#0x170+var_F8]
5AD652:  VMUL.F32        S4, S4, S10
5AD656:  VADD.F32        S0, S0, S2
5AD65A:  VADD.F32        S0, S0, S4
5AD65E:  VSTR            S0, [SP,#0x170+var_6C]
5AD662:  BLX.W           j__ZN10CCollision23CalculateTrianglePlanesEP9CColModel; CCollision::CalculateTrianglePlanes(CColModel *)
5AD666:  LDRSH.W         R0, [R10,#4]
5AD66A:  MOV.W           R3, #0x1A4
5AD66E:  LDR             R2, [SP,#0x170+var_D0]
5AD670:  LDR             R6, [SP,#0x170+var_D4]
5AD672:  CMP             R0, #1
5AD674:  BLT.W           loc_5AD8F0
5AD678:  ADD             R6, SP, #0x170+var_74
5AD67A:  STRD.W          R11, R9, [SP,#0x170+var_10C]
5AD67E:  STR.W           R8, [SP,#0x170+var_104]
5AD682:  MOV.W           R8, #0
5AD686:  MOV.W           R11, #0
5AD68A:  MOVS            R4, #0
5AD68C:  MOV.W           R9, #0
5AD690:  LDRD.W          R1, R0, [R10,#0x14]
5AD694:  ADD.W           R2, R0, R11
5AD698:  LDR.W           R3, [R10,#0x1C]
5AD69C:  MOV             R0, R6
5AD69E:  ADD             R3, R8
5AD6A0:  BLX.W           j__ZN10CCollision18TestSphereTriangleERK10CColSpherePK7CVectorRK12CColTriangleRK17CColTrianglePlane; CCollision::TestSphereTriangle(CColSphere const&,CVector const*,CColTriangle const&,CColTrianglePlane const&)
5AD6A4:  ORRS            R4, R0
5AD6A6:  LDRSH.W         R0, [R10,#4]
5AD6AA:  ADD.W           R9, R9, #1
5AD6AE:  ADD.W           R8, R8, #0x14
5AD6B2:  ADD.W           R11, R11, #0x10
5AD6B6:  CMP             R9, R0
5AD6B8:  BLT             loc_5AD690
5AD6BA:  LDR.W           R8, [SP,#0x170+var_104]
5AD6BE:  LSLS            R0, R4, #0x1F
5AD6C0:  LDRD.W          R11, R9, [SP,#0x170+var_10C]
5AD6C4:  MOV.W           R3, #0x1A4
5AD6C8:  LDR             R6, [SP,#0x170+var_D4]
5AD6CA:  LDR.W           R12, [SP,#0x170+var_F8]
5AD6CE:  LDR             R2, [SP,#0x170+var_D0]
5AD6D0:  BEQ.W           loc_5AD8F0
5AD6D4:  LDR             R0, [SP,#0x170+var_E0]
5AD6D6:  ADD.W           R6, R5, #0x144
5AD6DA:  LDR             R1, =(dword_A40438 - 0x5AD6E0)
5AD6DC:  ADD             R1, PC; dword_A40438
5AD6DE:  LDR             R0, [R0]
5AD6E0:  STR             R0, [R1]
5AD6E2:  LDRB.W          R0, [R5,#0x144]
5AD6E6:  LSLS            R0, R0, #0x1B
5AD6E8:  BMI             loc_5AD70A
5AD6EA:  LDR             R0, [SP,#0x170+var_100]
5AD6EC:  MOVS            R1, #0x7B ; '{'; int
5AD6EE:  LDR             R2, [SP,#0x170+var_FC]
5AD6F0:  LDR             R0, [R0]
5AD6F2:  CMP             R0, #0
5AD6F4:  IT NE
5AD6F6:  ADDNE.W         R2, R0, #0x30 ; '0'; CVector *
5AD6FA:  LDR             R0, [SP,#0x170+var_F0]; this
5AD6FC:  BLX.W           j__ZN12CAudioEngine25ReportGlassCollisionEventEiR7CVector; CAudioEngine::ReportGlassCollisionEvent(int,CVector &)
5AD700:  LDR             R0, [R6]
5AD702:  ORR.W           R0, R0, #0x10
5AD706:  STR             R0, [R6]
5AD708:  B               loc_5AD8E8
5AD70A:  LDR.W           R0, [R10,#0x14]
5AD70E:  ADD             R4, SP, #0x170+var_C0
5AD710:  LDR             R2, [SP,#0x170+var_EC]
5AD712:  MOV             R10, R12
5AD714:  LDR             R5, [SP,#0x170+var_100]
5AD716:  VLDR            D16, [R0]
5AD71A:  LDR             R1, [R0,#8]
5AD71C:  STR             R1, [SP,#0x170+var_A0]
5AD71E:  VSTR            D16, [SP,#0x170+var_A8]
5AD722:  VLDR            D16, [R0,#0xC]
5AD726:  LDR             R1, [R0,#0x14]
5AD728:  STR             R1, [R2,#8]
5AD72A:  VSTR            D16, [R2]
5AD72E:  LDR             R2, [SP,#0x170+var_E8]
5AD730:  VLDR            D16, [R0,#0x18]
5AD734:  LDR             R1, [R0,#0x20]
5AD736:  STR             R1, [R2,#8]
5AD738:  VSTR            D16, [R2]
5AD73C:  MOV             R2, R4
5AD73E:  LDR             R1, [SP,#0x170+var_E4]
5AD740:  VLDR            D16, [R0,#0x24]
5AD744:  LDR             R0, [R0,#0x2C]
5AD746:  STR             R0, [R1,#8]
5AD748:  ADD             R0, SP, #0x170+var_B4
5AD74A:  VSTR            D16, [R1]
5AD74E:  VLDR            S0, [SP,#0x170+var_94]
5AD752:  VLDR            S2, [SP,#0x170+var_A0]
5AD756:  VLDR            S4, [SP,#0x170+var_7C]
5AD75A:  VLDR            S30, [SP,#0x170+var_88]
5AD75E:  VMIN.F32        D17, D1, D0
5AD762:  VSTR            D0, [SP,#0x170+var_128]
5AD766:  VMIN.F32        D16, D15, D2
5AD76A:  VSTR            D1, [SP,#0x170+var_120]
5AD76E:  VSTR            D2, [SP,#0x170+var_118]
5AD772:  LDR             R1, [R5]
5AD774:  VLDR            S28, [SP,#0x170+var_A8+4]
5AD778:  VMIN.F32        D13, D17, D16
5AD77C:  VLDR            S22, [SP,#0x170+var_A8]
5AD780:  VSTR            S28, [SP,#0x170+var_BC]
5AD784:  VSTR            S22, [SP,#0x170+var_C0]
5AD788:  VLDR            S17, [SP,#0x170+var_9C]
5AD78C:  VLDR            S19, [SP,#0x170+var_98]
5AD790:  VLDR            S21, [SP,#0x170+var_90]
5AD794:  VLDR            S23, [SP,#0x170+var_84]
5AD798:  VLDR            S24, [SP,#0x170+var_80]
5AD79C:  VLDR            S25, [SP,#0x170+var_8C]
5AD7A0:  VSTR            S26, [SP,#0x170+var_B8]
5AD7A4:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AD7A8:  VSUB.F32        S0, S19, S28
5AD7AC:  MOVS            R0, #1
5AD7AE:  VSUB.F32        S2, S17, S22
5AD7B2:  LDR             R1, [R5]
5AD7B4:  VSUB.F32        S4, S25, S28
5AD7B8:  ADD             R2, SP, #0x170+var_A8
5AD7BA:  VSUB.F32        S6, S21, S22
5AD7BE:  VSUB.F32        S8, S24, S28
5AD7C2:  MOV             R3, R2
5AD7C4:  VSUB.F32        S10, S23, S22
5AD7C8:  VMUL.F32        S0, S0, S0
5AD7CC:  VMUL.F32        S2, S2, S2
5AD7D0:  VMUL.F32        S4, S4, S4
5AD7D4:  VMUL.F32        S6, S6, S6
5AD7D8:  VMUL.F32        S8, S8, S8
5AD7DC:  VMUL.F32        S10, S10, S10
5AD7E0:  VADD.F32        S0, S2, S0
5AD7E4:  VADD.F32        S2, S6, S4
5AD7E8:  VADD.F32        S4, S10, S8
5AD7EC:  VSQRT.F32       S0, S0
5AD7F0:  VSQRT.F32       S2, S2
5AD7F4:  VCMPE.F32       S2, S0
5AD7F8:  VMRS            APSR_nzcv, FPSCR
5AD7FC:  VMAX.F32        D3, D1, D0
5AD800:  VSQRT.F32       S4, S4
5AD804:  VCMPE.F32       S4, S6
5AD808:  IT GT
5AD80A:  MOVGT           R0, #2
5AD80C:  VMRS            APSR_nzcv, FPSCR
5AD810:  IT GT
5AD812:  MOVGT           R0, #3
5AD814:  ADD.W           R0, R0, R0,LSL#1
5AD818:  LDR.W           R2, [R3,R0,LSL#2]
5AD81C:  ADD.W           R0, R3, R0,LSL#2
5AD820:  LDR             R0, [R0,#4]
5AD822:  STRD.W          R2, R0, [SP,#0x170+var_CC]
5AD826:  ADD             R2, SP, #0x170+var_CC
5AD828:  MOV             R0, R4
5AD82A:  VSTR            S26, [SP,#0x170+var_C4]
5AD82E:  BLX.W           j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5AD832:  LDR             R0, [R5]
5AD834:  MOVS            R1, #0x7E ; '~'; int
5AD836:  LDR             R2, [SP,#0x170+var_FC]
5AD838:  CMP             R0, #0
5AD83A:  IT NE
5AD83C:  ADDNE.W         R2, R0, #0x30 ; '0'; CVector *
5AD840:  LDR             R0, [SP,#0x170+var_F4]; this
5AD842:  BLX.W           j__ZN12CAudioEngine25ReportGlassCollisionEventEiR7CVector; CAudioEngine::ReportGlassCollisionEvent(int,CVector &)
5AD846:  VLDR            D16, [SP,#0x170+var_118]
5AD84A:  ADD             R3, SP, #0x170+var_B4
5AD84C:  VLDR            D17, [SP,#0x170+var_120]
5AD850:  VMAX.F32        D16, D15, D16
5AD854:  VLDR            D18, [SP,#0x170+var_128]
5AD858:  MOV             R4, R6
5AD85A:  VMAX.F32        D17, D17, D18
5AD85E:  VLDR            S0, [SP,#0x170+var_C0]
5AD862:  VLDR            S2, [SP,#0x170+var_BC]
5AD866:  MOVS            R5, #1
5AD868:  VLDR            S4, [SP,#0x170+var_B8]
5AD86C:  LDM             R3, {R1-R3}
5AD86E:  VMAX.F32        D3, D17, D16
5AD872:  LDR             R0, [R6]
5AD874:  MOVS            R6, #0
5AD876:  VMOV            S8, R1
5AD87A:  STR             R6, [SP,#0x170+var_138]
5AD87C:  VMOV            S10, R3
5AD880:  STRD.W          R5, R6, [SP,#0x170+var_134]
5AD884:  VMOV            S12, R2
5AD888:  UBFX.W          R0, R0, #4, #1
5AD88C:  VSUB.F32        S6, S6, S26
5AD890:  STR             R0, [SP,#0x170+var_13C]
5AD892:  VSUB.F32        S4, S4, S10
5AD896:  MOVW            R0, #0xCCCD
5AD89A:  VSUB.F32        S2, S2, S12
5AD89E:  MOVT            R0, #0x3DCC
5AD8A2:  VSUB.F32        S0, S0, S8
5AD8A6:  STR             R0, [SP,#0x170+var_140]
5AD8A8:  MOVS            R0, #1
5AD8AA:  STR.W           R8, [SP,#0x170+var_144]
5AD8AE:  STR.W           R9, [SP,#0x170+var_148]
5AD8B2:  STR.W           R11, [SP,#0x170+var_14C]
5AD8B6:  STR             R6, [SP,#0x170+var_150]
5AD8B8:  STRD.W          R6, R6, [SP,#0x170+var_158]
5AD8BC:  VSTR            S6, [SP,#0x170+var_168]
5AD8C0:  STRD.W          R6, R6, [SP,#0x170+var_170]
5AD8C4:  VSTR            S4, [SP,#0x170+var_15C]
5AD8C8:  VSTR            S2, [SP,#0x170+var_160]
5AD8CC:  VSTR            S0, [SP,#0x170+var_164]
5AD8D0:  BLX.W           j__ZN6CGlass22GeneratePanesForWindowEj7CVectorS0_S0_S0_S0_fbbib; CGlass::GeneratePanesForWindow(uint,CVector,CVector,CVector,CVector,CVector,float,bool,bool,int,bool)
5AD8D4:  LDR             R0, [R4]
5AD8D6:  ORR.W           R0, R0, #0x20 ; ' '
5AD8DA:  STR             R0, [R4]
5AD8DC:  LDR.W           R0, [R10]
5AD8E0:  BIC.W           R0, R0, #0x81
5AD8E4:  STR.W           R0, [R10]
5AD8E8:  LDR             R6, [SP,#0x170+var_D4]
5AD8EA:  MOV.W           R3, #0x1A4
5AD8EE:  LDR             R2, [SP,#0x170+var_D0]
5AD8F0:  CMP             R2, #0
5AD8F2:  BNE.W           loc_5AD536
5AD8F6:  ADD             SP, SP, #0x110
5AD8F8:  VPOP            {D8-D15}
5AD8FC:  ADD             SP, SP, #4
5AD8FE:  POP.W           {R8-R11}
5AD902:  POP             {R4-R7,PC}
