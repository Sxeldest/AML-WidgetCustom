; =========================================================
; Game Engine Function: _ZN10C3dMarkers19DirectionArrowsDrawEv
; Address            : 0x5BF4D0 - 0x5BF836
; =========================================================

5BF4D0:  PUSH            {R4-R7,LR}
5BF4D2:  ADD             R7, SP, #0xC
5BF4D4:  PUSH.W          {R8-R11}
5BF4D8:  SUB             SP, SP, #4
5BF4DA:  VPUSH           {D8-D9}
5BF4DE:  SUB             SP, SP, #0x180
5BF4E0:  LDR             R0, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF4EE)
5BF4E2:  VMOV.F32        S16, #1.0
5BF4E6:  LDR             R1, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF4F4)
5BF4E8:  ADD             R5, SP, #0x1B0+var_DC
5BF4EA:  ADD             R0, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF4EC:  VLDR            S18, =0.8
5BF4F0:  ADD             R1, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF4F2:  MOV.W           R10, #0
5BF4F6:  LDR             R0, [R0]; C3dMarkers::ms_directionArrows ...
5BF4F8:  MOV.W           R9, #0
5BF4FC:  STR             R0, [SP,#0x1B0+var_194]
5BF4FE:  LDR             R0, =(_ZN10C3dMarkers15m_pRpClumpArrayE_ptr - 0x5BF504)
5BF500:  ADD             R0, PC; _ZN10C3dMarkers15m_pRpClumpArrayE_ptr
5BF502:  LDR             R0, [R0]; C3dMarkers::m_pRpClumpArray ...
5BF504:  STR             R0, [SP,#0x1B0+var_198]
5BF506:  LDR             R0, [R1]; C3dMarkers::ms_directionArrows ...
5BF508:  STR             R0, [SP,#0x1B0+var_19C]
5BF50A:  LDR             R0, =(_ZN10C3dMarkers18ms_directionArrowsE_ptr - 0x5BF510)
5BF50C:  ADD             R0, PC; _ZN10C3dMarkers18ms_directionArrowsE_ptr
5BF50E:  LDR             R0, [R0]; C3dMarkers::ms_directionArrows ...
5BF510:  STR             R0, [SP,#0x1B0+var_1A0]
5BF512:  LDR             R0, =(_ZN10C3dMarkers19m_user3dMarkerColorE_ptr - 0x5BF518)
5BF514:  ADD             R0, PC; _ZN10C3dMarkers19m_user3dMarkerColorE_ptr
5BF516:  LDR             R0, [R0]; C3dMarkers::m_user3dMarkerColor ...
5BF518:  STR             R0, [SP,#0x1B0+var_1A4]
5BF51A:  LDR             R0, =(_ZN10C3dMarkers20User3dMarkerAtomicCBEP8RpAtomicPv_ptr - 0x5BF520)
5BF51C:  ADD             R0, PC; _ZN10C3dMarkers20User3dMarkerAtomicCBEP8RpAtomicPv_ptr
5BF51E:  LDR             R0, [R0]; C3dMarkers::User3dMarkerAtomicCB(RpAtomic *,void *)
5BF520:  STR             R0, [SP,#0x1B0+var_1A8]
5BF522:  LDR             R0, =(_ZN12CPostEffects6ms_imfE_ptr - 0x5BF528)
5BF524:  ADD             R0, PC; _ZN12CPostEffects6ms_imfE_ptr
5BF526:  LDR             R0, [R0]; CPostEffects::ms_imf ...
5BF528:  STR             R0, [SP,#0x1B0+var_1AC]
5BF52A:  MOVS            R0, #0
5BF52C:  LDR             R1, [SP,#0x1B0+var_194]
5BF52E:  LDRB.W          R1, [R1,R9]
5BF532:  CMP             R1, #0
5BF534:  BEQ.W           loc_5BF7EA
5BF538:  LSLS            R0, R0, #0x1F
5BF53A:  BNE             loc_5BF586
5BF53C:  LDR             R4, [SP,#0x1B0+var_1AC]
5BF53E:  MOVS            R0, #0x14
5BF540:  ADD.W           R1, R4, #0x13C
5BF544:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5BF548:  ADD.W           R1, R4, #0x140
5BF54C:  MOVS            R0, #6
5BF54E:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5BF552:  ADD.W           R1, R4, #0x144
5BF556:  MOVS            R0, #8
5BF558:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5BF55C:  ADD.W           R1, R4, #0x14C
5BF560:  MOVS            R0, #0xC
5BF562:  BLX.W           j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
5BF566:  MOVS            R0, #0x14
5BF568:  MOVS            R1, #1
5BF56A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF56E:  MOVS            R0, #6
5BF570:  MOVS            R1, #1
5BF572:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF576:  MOVS            R0, #8
5BF578:  MOVS            R1, #0
5BF57A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF57E:  MOVS            R0, #0xC
5BF580:  MOVS            R1, #0
5BF582:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF586:  LDR             R0, [SP,#0x1B0+var_198]
5BF588:  LDR.W           R11, [R0,#0x14]
5BF58C:  LDR             R0, [SP,#0x1B0+var_19C]
5BF58E:  ADD.W           R6, R0, R9
5BF592:  VLDR            D16, [R6,#4]
5BF596:  LDR             R0, [R6,#0xC]
5BF598:  STR             R0, [SP,#0x1B0+var_80]
5BF59A:  VSTR            D16, [SP,#0x1B0+var_88]
5BF59E:  LDR.W           R8, [R11,#4]
5BF5A2:  MOV             R0, R8
5BF5A4:  BLX.W           j__Z18RwFrameSetIdentityP7RwFrame; RwFrameSetIdentity(RwFrame *)
5BF5A8:  ADD             R1, SP, #0x1B0+var_88
5BF5AA:  MOV             R0, R8
5BF5AC:  MOVS            R2, #0
5BF5AE:  BLX.W           j__Z16RwFrameTranslateP7RwFramePK5RwV3d15RwOpCombineType; RwFrameTranslate(RwFrame *,RwV3d const*,RwOpCombineType)
5BF5B2:  ADD.W           R2, R6, #0x14
5BF5B6:  ADD             R3, SP, #0x1B0+var_94
5BF5B8:  LDM             R2, {R0-R2}
5BF5BA:  STM             R3!, {R0-R2}
5BF5BC:  ADD.W           R1, R8, #0x10
5BF5C0:  MOV             R0, R5
5BF5C2:  MOVS            R2, #0
5BF5C4:  BLX.W           j__ZN7CMatrixC2EP11RwMatrixTagb; CMatrix::CMatrix(RwMatrixTag *,bool)
5BF5C8:  BLX.W           j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
5BF5CC:  LDR             R1, [SP,#0x1B0+var_9C]
5BF5CE:  ADD             R0, SP, #0x1B0+var_124
5BF5D0:  MOVS            R2, #0
5BF5D2:  STR.W           R10, [SP,#0x1B0+var_E4]
5BF5D6:  STR.W           R10, [SP,#0x1B0+var_E0]
5BF5DA:  BLX.W           j__ZN7CMatrix6AttachEP11RwMatrixTagb; CMatrix::Attach(RwMatrixTag *,bool)
5BF5DE:  ADD             R0, SP, #0x1B0+var_16C; this
5BF5E0:  STRD.W          R10, R10, [SP,#0x1B0+var_12C]
5BF5E4:  BLX.W           j__ZN7CMatrix8SetUnityEv; CMatrix::SetUnity(void)
5BF5E8:  VLDR            S0, [SP,#0x1B0+var_94]
5BF5EC:  VCMP.F32        S0, #0.0
5BF5F0:  VMRS            APSR_nzcv, FPSCR
5BF5F4:  ITTT EQ
5BF5F6:  VLDREQ          S0, [SP,#0x1B0+var_90]
5BF5FA:  VCMPEQ.F32      S0, #0.0
5BF5FE:  VMRSEQ          APSR_nzcv, FPSCR
5BF602:  BNE             loc_5BF612
5BF604:  VLDR            S0, [SP,#0x1B0+var_8C]
5BF608:  VCMP.F32        S0, S16
5BF60C:  VMRS            APSR_nzcv, FPSCR
5BF610:  BEQ             loc_5BF67C
5BF612:  ADD             R6, SP, #0x1B0+var_94
5BF614:  ADD             R4, SP, #0x1B0+var_178
5BF616:  MOV.W           R0, #0x3F800000
5BF61A:  ADD             R1, SP, #0x1B0+var_184; CVector *
5BF61C:  STRD.W          R10, R10, [SP,#0x1B0+var_184]
5BF620:  MOV             R2, R6
5BF622:  STR             R0, [SP,#0x1B0+var_17C]
5BF624:  MOV             R0, R4; CVector *
5BF626:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5BF62A:  ADD             R5, SP, #0x1B0+var_78
5BF62C:  LDR             R0, [SP,#0x1B0+var_170]
5BF62E:  VLDR            D16, [SP,#0x1B0+var_178]
5BF632:  STR             R0, [SP,#0x1B0+var_70]
5BF634:  MOV             R0, R5; this
5BF636:  VSTR            D16, [SP,#0x1B0+var_78]
5BF63A:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5BF63E:  ADD             R0, SP, #0x1B0+var_190; CVector *
5BF640:  MOV             R1, R6; CVector *
5BF642:  MOV             R2, R5
5BF644:  BLX.W           j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
5BF648:  LDR             R0, [SP,#0x1B0+var_188]
5BF64A:  VLDR            D16, [SP,#0x1B0+var_190]
5BF64E:  STR             R0, [SP,#0x1B0+var_170]
5BF650:  MOV             R0, R4; this
5BF652:  VSTR            D16, [SP,#0x1B0+var_178]
5BF656:  BLX.W           j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5BF65A:  ADD             R2, SP, #0x1B0+var_78
5BF65C:  LDM             R2, {R0-R2}
5BF65E:  STR             R0, [SP,#0x1B0+var_16C]
5BF660:  STR             R1, [SP,#0x1B0+var_168]
5BF662:  STR             R2, [SP,#0x1B0+var_164]
5BF664:  LDR             R2, [SP,#0x1B0+var_170]
5BF666:  LDR             R6, [SP,#0x1B0+var_8C]
5BF668:  LDR             R0, [SP,#0x1B0+var_94]
5BF66A:  STR             R0, [SP,#0x1B0+var_14C]
5BF66C:  LDR             R3, [SP,#0x1B0+var_178]
5BF66E:  LDR             R1, [SP,#0x1B0+var_90]
5BF670:  LDR             R0, [SP,#0x1B0+var_178+4]
5BF672:  STR             R3, [SP,#0x1B0+var_15C]
5BF674:  STRD.W          R1, R6, [SP,#0x1B0+var_148]
5BF678:  STRD.W          R0, R2, [SP,#0x1B0+var_158]
5BF67C:  ADD             R4, SP, #0x1B0+var_78
5BF67E:  ADD             R5, SP, #0x1B0+var_124
5BF680:  ADD             R6, SP, #0x1B0+var_16C
5BF682:  MOV             R0, R4
5BF684:  MOV             R1, R5
5BF686:  MOV             R2, R6
5BF688:  BLX.W           j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
5BF68C:  MOV             R0, R5
5BF68E:  MOV             R1, R4
5BF690:  BLX.W           j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5BF694:  MOV             R0, R4; this
5BF696:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5BF69A:  LDR             R4, [SP,#0x1B0+var_1A0]
5BF69C:  MOV             R0, R5; this
5BF69E:  VLDR            S0, [SP,#0x1B0+var_124]
5BF6A2:  ADD.W           R10, R4, R9
5BF6A6:  VLDR            S2, [SP,#0x1B0+var_120]
5BF6AA:  VLDR            S4, [SP,#0x1B0+var_11C]
5BF6AE:  VLDR            S8, [R10,#0x10]
5BF6B2:  VLDR            S6, [SP,#0x1B0+var_114]
5BF6B6:  VLDR            S10, [SP,#0x1B0+var_10C]
5BF6BA:  VMUL.F32        S0, S8, S0
5BF6BE:  VLDR            S12, [SP,#0x1B0+var_110]
5BF6C2:  VMUL.F32        S2, S8, S2
5BF6C6:  VLDR            S14, [SP,#0x1B0+var_FC]
5BF6CA:  VMUL.F32        S10, S8, S10
5BF6CE:  VLDR            S1, [SP,#0x1B0+var_104]
5BF6D2:  VMUL.F32        S4, S8, S4
5BF6D6:  VLDR            S3, [SP,#0x1B0+var_100]
5BF6DA:  VMUL.F32        S6, S8, S6
5BF6DE:  VMUL.F32        S12, S8, S12
5BF6E2:  VMUL.F32        S14, S8, S14
5BF6E6:  VMUL.F32        S1, S8, S1
5BF6EA:  VSTR            S0, [SP,#0x1B0+var_124]
5BF6EE:  VMUL.F32        S8, S8, S3
5BF6F2:  VSTR            S2, [SP,#0x1B0+var_120]
5BF6F6:  VSTR            S4, [SP,#0x1B0+var_11C]
5BF6FA:  VSTR            S6, [SP,#0x1B0+var_114]
5BF6FE:  VSTR            S12, [SP,#0x1B0+var_110]
5BF702:  VSTR            S10, [SP,#0x1B0+var_10C]
5BF706:  VSTR            S1, [SP,#0x1B0+var_104]
5BF70A:  VSTR            S8, [SP,#0x1B0+var_100]
5BF70E:  VSTR            S14, [SP,#0x1B0+var_FC]
5BF712:  BLX.W           j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
5BF716:  MOV             R0, R8
5BF718:  BLX.W           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
5BF71C:  LDR             R5, [SP,#0x1B0+var_1A8]
5BF71E:  MOV.W           R0, #0xFF000000
5BF722:  LDR             R6, [SP,#0x1B0+var_1A4]
5BF724:  MOVS            R2, #0
5BF726:  MOV             R1, R5
5BF728:  STR             R0, [R6]
5BF72A:  MOV             R0, R11
5BF72C:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5BF730:  MOV             R0, R11
5BF732:  BLX.W           j__Z13RpClumpRenderP7RpClump; RpClumpRender(RpClump *)
5BF736:  VLDR            S0, [SP,#0x1B0+var_124]
5BF73A:  ADD             R0, SP, #0x1B0+var_124; this
5BF73C:  VLDR            S2, [SP,#0x1B0+var_120]
5BF740:  VLDR            S4, [SP,#0x1B0+var_11C]
5BF744:  VMUL.F32        S0, S0, S18
5BF748:  VLDR            S6, [SP,#0x1B0+var_114]
5BF74C:  VMUL.F32        S2, S2, S18
5BF750:  VLDR            S8, [SP,#0x1B0+var_10C]
5BF754:  VMUL.F32        S4, S4, S18
5BF758:  VLDR            S10, [SP,#0x1B0+var_110]
5BF75C:  VMUL.F32        S6, S6, S18
5BF760:  VLDR            S12, [SP,#0x1B0+var_FC]
5BF764:  VMUL.F32        S8, S8, S18
5BF768:  VLDR            S14, [SP,#0x1B0+var_104]
5BF76C:  VMUL.F32        S10, S10, S18
5BF770:  VLDR            S1, [SP,#0x1B0+var_100]
5BF774:  VMUL.F32        S12, S12, S18
5BF778:  VMUL.F32        S14, S14, S18
5BF77C:  VSTR            S0, [SP,#0x1B0+var_124]
5BF780:  VMUL.F32        S1, S1, S18
5BF784:  VSTR            S2, [SP,#0x1B0+var_120]
5BF788:  VSTR            S4, [SP,#0x1B0+var_11C]
5BF78C:  VSTR            S6, [SP,#0x1B0+var_114]
5BF790:  VSTR            S10, [SP,#0x1B0+var_110]
5BF794:  VSTR            S8, [SP,#0x1B0+var_10C]
5BF798:  VSTR            S14, [SP,#0x1B0+var_104]
5BF79C:  VSTR            S1, [SP,#0x1B0+var_100]
5BF7A0:  VSTR            S12, [SP,#0x1B0+var_FC]
5BF7A4:  BLX.W           j__ZNK7CMatrix8UpdateRWEv; CMatrix::UpdateRW(void)
5BF7A8:  MOV             R0, R8
5BF7AA:  BLX.W           j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
5BF7AE:  ADD.W           R3, R10, #0x20 ; ' '
5BF7B2:  MOV.W           R10, #0
5BF7B6:  LDM             R3, {R0-R3}
5BF7B8:  STRB            R0, [R6]
5BF7BA:  MOV             R0, R11
5BF7BC:  STRB            R1, [R6,#1]
5BF7BE:  MOV             R1, R5
5BF7C0:  STRB            R2, [R6,#2]
5BF7C2:  MOVS            R2, #0
5BF7C4:  STRB            R3, [R6,#3]
5BF7C6:  BLX.W           j__Z20RpClumpForAllAtomicsP7RpClumpPFP8RpAtomicS2_PvES3_; RpClumpForAllAtomics(RpClump *,RpAtomic * (*)(RpAtomic *,void *),void *)
5BF7CA:  MOV             R0, R11
5BF7CC:  BLX.W           j__Z13RpClumpRenderP7RpClump; RpClumpRender(RpClump *)
5BF7D0:  ADD             R0, SP, #0x1B0+var_16C; this
5BF7D2:  STRB.W          R10, [R4,R9]
5BF7D6:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5BF7DA:  ADD             R0, SP, #0x1B0+var_124; this
5BF7DC:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5BF7E0:  ADD             R5, SP, #0x1B0+var_DC
5BF7E2:  MOV             R0, R5; this
5BF7E4:  BLX.W           j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5BF7E8:  MOVS            R0, #1
5BF7EA:  ADD.W           R9, R9, #0x30 ; '0'
5BF7EE:  CMP.W           R9, #0xF0
5BF7F2:  BNE.W           loc_5BF52C
5BF7F6:  LSLS            R0, R0, #0x1F
5BF7F8:  BEQ             loc_5BF828
5BF7FA:  LDR             R0, =(_ZN12CPostEffects6ms_imfE_ptr - 0x5BF800)
5BF7FC:  ADD             R0, PC; _ZN12CPostEffects6ms_imfE_ptr
5BF7FE:  LDR             R4, [R0]; CPostEffects::ms_imf ...
5BF800:  MOVS            R0, #0x14
5BF802:  LDR.W           R1, [R4,#(dword_A477CC - 0xA47690)]
5BF806:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF80A:  LDR.W           R1, [R4,#(dword_A477D0 - 0xA47690)]
5BF80E:  MOVS            R0, #6
5BF810:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF814:  LDR.W           R1, [R4,#(dword_A477D4 - 0xA47690)]
5BF818:  MOVS            R0, #8
5BF81A:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF81E:  LDR.W           R1, [R4,#(dword_A477DC - 0xA47690)]
5BF822:  MOVS            R0, #0xC
5BF824:  BLX.W           j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
5BF828:  ADD             SP, SP, #0x180
5BF82A:  VPOP            {D8-D9}
5BF82E:  ADD             SP, SP, #4
5BF830:  POP.W           {R8-R11}
5BF834:  POP             {R4-R7,PC}
