; =========================================================
; Game Engine Function: _ZN5CBike14FixHandsToBarsEP4CPed
; Address            : 0x568388 - 0x5688E6
; =========================================================

568388:  PUSH            {R4-R7,LR}
56838A:  ADD             R7, SP, #0xC
56838C:  PUSH.W          {R8-R10}
568390:  VPUSH           {D8-D11}
568394:  SUB             SP, SP, #0x108
568396:  MOV             R9, R0
568398:  MOV             R8, R1
56839A:  LDRB.W          R0, [R9,#0x7C9]
56839E:  CMP             R0, #0
5683A0:  ITT EQ
5683A2:  LDRBEQ.W        R0, [R9,#0x7C8]
5683A6:  CMPEQ           R0, #0
5683A8:  BEQ.W           loc_5688DA
5683AC:  MOVS            R5, #0
5683AE:  STRD.W          R5, R5, [SP,#0x140+var_88]
5683B2:  STRD.W          R5, R5, [SP,#0x140+var_D0]
5683B6:  LDR.W           R0, [R9,#0x5B8]
5683BA:  CMP             R0, #0
5683BC:  BEQ.W           loc_5688CE
5683C0:  ADD.W           R10, SP, #0x140+var_110
5683C4:  ADD.W           R1, R0, #0x10
5683C8:  MOVS            R2, #0
5683CA:  MOV             R0, R10
5683CC:  BLX             j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
5683D0:  ADD             R6, SP, #0x140+var_C8
5683D2:  LDR.W           R1, [R9,#0x14]
5683D6:  MOV             R0, R6
5683D8:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5683DC:  ADD             R4, SP, #0x140+var_80
5683DE:  MOV             R1, R6
5683E0:  MOV             R2, R10
5683E2:  MOV             R0, R4
5683E4:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
5683E8:  MOV             R0, R6
5683EA:  MOV             R1, R4
5683EC:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5683F0:  MOV             R0, R4; this
5683F2:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5683F6:  LDR.W           R0, [R8,#0x18]
5683FA:  BLX             j__Z29GetAnimHierarchyFromSkinClumpP7RpClump; GetAnimHierarchyFromSkinClump(RpClump *)
5683FE:  MOV             R6, R0
568400:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x568408)
568404:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
568406:  LDR             R1, [R0]; CModelInfo::ms_modelInfoPtrs ...
568408:  LDRSH.W         R0, [R9,#0x26]
56840C:  LDR.W           R1, [R1,R0,LSL#2]
568410:  LDR             R1, [R1,#0x74]
568412:  VLDR            D16, [R1,#0x78]
568416:  LDR.W           R1, [R1,#0x80]
56841A:  VSTR            D16, [SP,#0x140+var_120]
56841E:  VLDR            S2, [SP,#0x140+var_120+4]
568422:  VLDR            S0, [SP,#0x140+var_120]
568426:  VCMP.F32        S2, #0.0
56842A:  STR             R1, [SP,#0x140+var_118]
56842C:  VMRS            APSR_nzcv, FPSCR
568430:  MOV.W           R1, #0
568434:  VCMP.F32        S0, #0.0
568438:  IT EQ
56843A:  MOVEQ           R1, #1
56843C:  VMRS            APSR_nzcv, FPSCR
568440:  IT EQ
568442:  MOVEQ           R5, #1
568444:  TST             R5, R1
568446:  BEQ             loc_56846C
568448:  VLDR            S0, [SP,#0x140+var_118]
56844C:  VCMP.F32        S0, #0.0
568450:  VMRS            APSR_nzcv, FPSCR
568454:  BNE             loc_56846C
568456:  MOVW            R1, #0x1FD
56845A:  CMP             R0, R1
56845C:  BEQ             loc_56850C
56845E:  CMP.W           R0, #0x1FE
568462:  BNE             loc_568512
568464:  LDR.W           R0, =(vecMtbHandleBarPos_ptr - 0x56846C)
568468:  ADD             R0, PC; vecMtbHandleBarPos_ptr
56846A:  B               loc_568516
56846C:  MOV             R0, R6
56846E:  MOVS            R1, #0x18
568470:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
568474:  MOV             R4, R0
568476:  MOV             R0, R6
568478:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
56847C:  ADD.W           R4, R0, R4,LSL#6
568480:  MOV             R0, R4
568482:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
568486:  LDR.W           R0, =(vecTweakHandleBarPos2_ptr - 0x568494)
56848A:  ADD             R5, SP, #0x140+var_80
56848C:  MOV             R1, R4
56848E:  MOVS            R2, #0
568490:  ADD             R0, PC; vecTweakHandleBarPos2_ptr
568492:  LDR             R0, [R0]; vecTweakHandleBarPos2
568494:  VLDR            D16, [R0]
568498:  LDR             R0, [R0,#(dword_A02574 - 0xA0256C)]
56849A:  STR             R0, [SP,#0x140+var_128]
56849C:  MOV             R0, R5
56849E:  VSTR            D16, [SP,#0x140+var_130]
5684A2:  BLX             j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
5684A6:  ADD             R4, SP, #0x140+var_130
5684A8:  MOV             R0, SP; CMatrix *
5684AA:  MOV             R1, R5; CVector *
5684AC:  MOV             R2, R4
5684AE:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5684B2:  LDR             R0, [SP,#0x140+var_138]
5684B4:  ADD             R2, SP, #0x140+var_C8
5684B6:  VLDR            D16, [SP,#0x140+var_140]
5684BA:  MOV             R1, R4; CMatrix *
5684BC:  STR             R0, [SP,#0x140+var_128]
5684BE:  MOV             R0, SP; CVector *
5684C0:  VSTR            D16, [SP,#0x140+var_130]
5684C4:  BLX             j__Z11Multiply3x3RK7CVectorRK7CMatrix; Multiply3x3(CVector const&,CMatrix const&)
5684C8:  VLDR            D16, [SP,#0x140+var_140]
5684CC:  LDR             R0, [SP,#0x140+var_138]
5684CE:  STR             R0, [SP,#0x140+var_128]
5684D0:  MOV             R0, R5; this
5684D2:  VSTR            D16, [SP,#0x140+var_130]
5684D6:  VLDR            S0, [SP,#0x140+var_120]
5684DA:  VLDR            S6, [SP,#0x140+var_130]
5684DE:  VLDR            S2, [SP,#0x140+var_120+4]
5684E2:  VLDR            S8, [SP,#0x140+var_130+4]
5684E6:  VADD.F32        S0, S6, S0
5684EA:  VLDR            S4, [SP,#0x140+var_118]
5684EE:  VLDR            S10, [SP,#0x140+var_128]
5684F2:  VADD.F32        S2, S8, S2
5684F6:  VADD.F32        S4, S10, S4
5684FA:  VSTR            S0, [SP,#0x140+var_120]
5684FE:  VSTR            S2, [SP,#0x140+var_120+4]
568502:  VSTR            S4, [SP,#0x140+var_118]
568506:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
56850A:  B               loc_568524
56850C:  LDR             R0, =(vecChopperHandleBarPos_ptr - 0x568512)
56850E:  ADD             R0, PC; vecChopperHandleBarPos_ptr
568510:  B               loc_568516
568512:  LDR             R0, =(vecBmxHandleBarPos_ptr - 0x568518)
568514:  ADD             R0, PC; vecBmxHandleBarPos_ptr
568516:  LDR             R0, [R0]
568518:  VLDR            D16, [R0]
56851C:  LDR             R0, [R0,#8]
56851E:  STR             R0, [SP,#0x140+var_118]
568520:  VSTR            D16, [SP,#0x140+var_120]
568524:  LDRB.W          R0, [R9,#0x7C9]
568528:  CMP             R0, #0
56852A:  BEQ.W           loc_5686F0
56852E:  ADD             R0, SP, #0x140+var_80
568530:  ADD             R1, SP, #0x140+var_C8
568532:  ADD             R2, SP, #0x140+var_120
568534:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
568538:  MOV             R0, R6
56853A:  MOVS            R1, #0x18
56853C:  VLDR            S16, [SP,#0x140+var_80]
568540:  VLDR            S20, [SP,#0x140+var_7C]
568544:  VLDR            S18, [SP,#0x140+var_78]
568548:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
56854C:  MOV             R4, R0
56854E:  MOV             R0, R6
568550:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
568554:  ADD.W           R4, R0, R4,LSL#6
568558:  MOV             R0, R4
56855A:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
56855E:  VLDR            S0, [R4,#0x30]
568562:  MOV             R0, R6
568564:  VLDR            S2, [R4,#0x34]
568568:  MOVS            R1, #0x19
56856A:  VLDR            S4, [R4,#0x38]
56856E:  VSUB.F32        S16, S16, S0
568572:  VSUB.F32        S20, S20, S2
568576:  VSUB.F32        S18, S18, S4
56857A:  VADD.F32        S0, S0, S16
56857E:  VADD.F32        S2, S2, S20
568582:  VADD.F32        S4, S4, S18
568586:  VSTR            S0, [R4,#0x30]
56858A:  VSTR            S2, [R4,#0x34]
56858E:  VSTR            S4, [R4,#0x38]
568592:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
568596:  MOV             R4, R0
568598:  MOV             R0, R6
56859A:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
56859E:  ADD.W           R4, R0, R4,LSL#6
5685A2:  MOV             R0, R4
5685A4:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
5685A8:  VLDR            S0, [R4,#0x30]
5685AC:  MOV             R0, R6
5685AE:  VLDR            S2, [R4,#0x34]
5685B2:  MOVS            R1, #0x1A
5685B4:  VLDR            S4, [R4,#0x38]
5685B8:  VADD.F32        S0, S16, S0
5685BC:  VADD.F32        S2, S20, S2
5685C0:  VADD.F32        S4, S18, S4
5685C4:  VSTR            S0, [R4,#0x30]
5685C8:  VSTR            S2, [R4,#0x34]
5685CC:  VSTR            S4, [R4,#0x38]
5685D0:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
5685D4:  MOV             R4, R0
5685D6:  MOV             R0, R6
5685D8:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
5685DC:  ADD.W           R4, R0, R4,LSL#6
5685E0:  MOV             R0, R4
5685E2:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
5685E6:  VLDR            S0, [R4,#0x30]
5685EA:  MOV             R0, R6
5685EC:  VLDR            S2, [R4,#0x34]
5685F0:  MOVS            R1, #0x17
5685F2:  VLDR            S4, [R4,#0x38]
5685F6:  VADD.F32        S0, S16, S0
5685FA:  VADD.F32        S2, S20, S2
5685FE:  VADD.F32        S4, S18, S4
568602:  VSTR            S0, [R4,#0x30]
568606:  VSTR            S2, [R4,#0x34]
56860A:  VSTR            S4, [R4,#0x38]
56860E:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
568612:  MOV             R4, R0
568614:  MOV             R0, R6
568616:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
56861A:  ADD.W           R4, R0, R4,LSL#6
56861E:  MOV             R0, R4
568620:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
568624:  VLDR            S0, =0.667
568628:  MOV             R0, R6
56862A:  VLDR            S6, [R4,#0x30]
56862E:  MOVS            R1, #0x16
568630:  VMUL.F32        S2, S16, S0
568634:  VLDR            S8, [R4,#0x34]
568638:  VMUL.F32        S4, S18, S0
56863C:  VLDR            S10, [R4,#0x38]
568640:  VMUL.F32        S0, S20, S0
568644:  VADD.F32        S2, S2, S6
568648:  VADD.F32        S4, S4, S10
56864C:  VADD.F32        S0, S0, S8
568650:  VSTR            S2, [R4,#0x30]
568654:  VSTR            S0, [R4,#0x34]
568658:  VSTR            S4, [R4,#0x38]
56865C:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
568660:  MOV             R4, R0
568662:  MOV             R0, R6
568664:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
568668:  ADD.W           R4, R0, R4,LSL#6
56866C:  MOV             R0, R4
56866E:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
568672:  VLDR            S0, =0.333
568676:  MOV             R0, R8; this
568678:  VLDR            S2, [R4,#0x34]
56867C:  VMUL.F32        S22, S18, S0
568680:  VLDR            S4, [R4,#0x38]
568684:  VMUL.F32        S18, S20, S0
568688:  VMUL.F32        S16, S16, S0
56868C:  VLDR            S0, [R4,#0x30]
568690:  VADD.F32        S4, S22, S4
568694:  VADD.F32        S2, S18, S2
568698:  VADD.F32        S0, S16, S0
56869C:  VSTR            S0, [R4,#0x30]
5686A0:  VSTR            S2, [R4,#0x34]
5686A4:  VSTR            S4, [R4,#0x38]
5686A8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5686AC:  CMP             R0, #1
5686AE:  BNE             loc_5686F0
5686B0:  MOV             R0, R6
5686B2:  MOVW            R1, #0x12D
5686B6:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
5686BA:  MOV             R4, R0
5686BC:  MOV             R0, R6
5686BE:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
5686C2:  ADD.W           R4, R0, R4,LSL#6
5686C6:  MOV             R0, R4
5686C8:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
5686CC:  VLDR            S0, [R4,#0x30]
5686D0:  VLDR            S2, [R4,#0x34]
5686D4:  VLDR            S4, [R4,#0x38]
5686D8:  VADD.F32        S0, S16, S0
5686DC:  VADD.F32        S2, S18, S2
5686E0:  VADD.F32        S4, S22, S4
5686E4:  VSTR            S0, [R4,#0x30]
5686E8:  VSTR            S2, [R4,#0x34]
5686EC:  VSTR            S4, [R4,#0x38]
5686F0:  LDRB.W          R0, [R9,#0x7C8]
5686F4:  CMP             R0, #0
5686F6:  BEQ.W           loc_5688C8
5686FA:  VLDR            S0, [SP,#0x140+var_120]
5686FE:  ADD             R0, SP, #0x140+var_80
568700:  ADD             R1, SP, #0x140+var_C8
568702:  ADD             R2, SP, #0x140+var_120
568704:  VNEG.F32        S0, S0
568708:  VSTR            S0, [SP,#0x140+var_120]
56870C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
568710:  MOV             R0, R6
568712:  MOVS            R1, #0x22 ; '"'
568714:  VLDR            S16, [SP,#0x140+var_80]
568718:  VLDR            S20, [SP,#0x140+var_7C]
56871C:  VLDR            S18, [SP,#0x140+var_78]
568720:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
568724:  MOV             R4, R0
568726:  MOV             R0, R6
568728:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
56872C:  ADD.W           R4, R0, R4,LSL#6
568730:  MOV             R0, R4
568732:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
568736:  VLDR            S0, [R4,#0x30]
56873A:  MOV             R0, R6
56873C:  VLDR            S2, [R4,#0x34]
568740:  MOVS            R1, #0x23 ; '#'
568742:  VLDR            S4, [R4,#0x38]
568746:  VSUB.F32        S16, S16, S0
56874A:  VSUB.F32        S20, S20, S2
56874E:  VSUB.F32        S18, S18, S4
568752:  VADD.F32        S0, S0, S16
568756:  VADD.F32        S2, S2, S20
56875A:  VADD.F32        S4, S4, S18
56875E:  VSTR            S0, [R4,#0x30]
568762:  VSTR            S2, [R4,#0x34]
568766:  VSTR            S4, [R4,#0x38]
56876A:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
56876E:  MOV             R4, R0
568770:  MOV             R0, R6
568772:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
568776:  ADD.W           R4, R0, R4,LSL#6
56877A:  MOV             R0, R4
56877C:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
568780:  VLDR            S0, [R4,#0x30]
568784:  MOV             R0, R6
568786:  VLDR            S2, [R4,#0x34]
56878A:  MOVS            R1, #0x24 ; '$'
56878C:  VLDR            S4, [R4,#0x38]
568790:  VADD.F32        S0, S16, S0
568794:  VADD.F32        S2, S20, S2
568798:  VADD.F32        S4, S18, S4
56879C:  VSTR            S0, [R4,#0x30]
5687A0:  VSTR            S2, [R4,#0x34]
5687A4:  VSTR            S4, [R4,#0x38]
5687A8:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
5687AC:  MOV             R4, R0
5687AE:  MOV             R0, R6
5687B0:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
5687B4:  ADD.W           R4, R0, R4,LSL#6
5687B8:  MOV             R0, R4
5687BA:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
5687BE:  VLDR            S0, [R4,#0x30]
5687C2:  MOV             R0, R6
5687C4:  VLDR            S2, [R4,#0x34]
5687C8:  MOVS            R1, #0x21 ; '!'
5687CA:  VLDR            S4, [R4,#0x38]
5687CE:  VADD.F32        S0, S16, S0
5687D2:  VADD.F32        S2, S20, S2
5687D6:  VADD.F32        S4, S18, S4
5687DA:  VSTR            S0, [R4,#0x30]
5687DE:  VSTR            S2, [R4,#0x34]
5687E2:  VSTR            S4, [R4,#0x38]
5687E6:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
5687EA:  MOV             R4, R0
5687EC:  MOV             R0, R6
5687EE:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
5687F2:  ADD.W           R4, R0, R4,LSL#6
5687F6:  MOV             R0, R4
5687F8:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
5687FC:  VMOV.F32        S0, #0.75
568800:  VLDR            S6, [R4,#0x30]
568804:  VLDR            S8, [R4,#0x34]
568808:  MOV             R0, R6
56880A:  VLDR            S10, [R4,#0x38]
56880E:  MOVS            R1, #0x20 ; ' '
568810:  VMUL.F32        S2, S16, S0
568814:  VMUL.F32        S4, S18, S0
568818:  VMUL.F32        S0, S20, S0
56881C:  VADD.F32        S2, S2, S6
568820:  VADD.F32        S4, S4, S10
568824:  VADD.F32        S0, S0, S8
568828:  VSTR            S2, [R4,#0x30]
56882C:  VSTR            S0, [R4,#0x34]
568830:  VSTR            S4, [R4,#0x38]
568834:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
568838:  MOV             R4, R0
56883A:  MOV             R0, R6
56883C:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
568840:  ADD.W           R4, R0, R4,LSL#6
568844:  MOV             R0, R4
568846:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
56884A:  VLDR            S0, =0.4
56884E:  MOV             R0, R8; this
568850:  VLDR            S2, [R4,#0x34]
568854:  VMUL.F32        S22, S18, S0
568858:  VLDR            S4, [R4,#0x38]
56885C:  VMUL.F32        S18, S20, S0
568860:  VMUL.F32        S16, S16, S0
568864:  VLDR            S0, [R4,#0x30]
568868:  VADD.F32        S4, S22, S4
56886C:  VADD.F32        S2, S18, S2
568870:  VADD.F32        S0, S16, S0
568874:  VSTR            S0, [R4,#0x30]
568878:  VSTR            S2, [R4,#0x34]
56887C:  VSTR            S4, [R4,#0x38]
568880:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
568884:  CMP             R0, #1
568886:  BNE             loc_5688C8
568888:  MOV             R0, R6
56888A:  MOV.W           R1, #0x12E
56888E:  BLX             j__Z17RpHAnimIDGetIndexP16RpHAnimHierarchyi; RpHAnimIDGetIndex(RpHAnimHierarchy *,int)
568892:  MOV             R4, R0
568894:  MOV             R0, R6
568896:  BLX             j__Z30RpHAnimHierarchyGetMatrixArrayP16RpHAnimHierarchy; RpHAnimHierarchyGetMatrixArray(RpHAnimHierarchy *)
56889A:  ADD.W           R4, R0, R4,LSL#6
56889E:  MOV             R0, R4
5688A0:  BLX             j__Z10TestMatrixP11RwMatrixTag; TestMatrix(RwMatrixTag *)
5688A4:  VLDR            S0, [R4,#0x30]
5688A8:  VLDR            S2, [R4,#0x34]
5688AC:  VLDR            S4, [R4,#0x38]
5688B0:  VADD.F32        S0, S16, S0
5688B4:  VADD.F32        S2, S18, S2
5688B8:  VADD.F32        S4, S22, S4
5688BC:  VSTR            S0, [R4,#0x30]
5688C0:  VSTR            S2, [R4,#0x34]
5688C4:  VSTR            S4, [R4,#0x38]
5688C8:  MOVS            R0, #0
5688CA:  STRH.W          R0, [R9,#0x7C8]
5688CE:  ADD             R0, SP, #0x140+var_110; this
5688D0:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5688D4:  ADD             R0, SP, #0x140+var_C8; this
5688D6:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5688DA:  ADD             SP, SP, #0x108
5688DC:  VPOP            {D8-D11}
5688E0:  POP.W           {R8-R10}
5688E4:  POP             {R4-R7,PC}
