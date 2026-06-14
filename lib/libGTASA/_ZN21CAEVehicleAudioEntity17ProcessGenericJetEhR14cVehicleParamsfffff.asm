; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity17ProcessGenericJetEhR14cVehicleParamsfffff
; Address            : 0x3B74CC - 0x3B7896
; =========================================================

3B74CC:  PUSH            {R4-R7,LR}
3B74CE:  ADD             R7, SP, #0xC
3B74D0:  PUSH.W          {R8-R11}
3B74D4:  SUB             SP, SP, #4
3B74D6:  VPUSH           {D8-D15}
3B74DA:  SUB             SP, SP, #0xF8; float
3B74DC:  MOV             R11, R0
3B74DE:  LDR             R0, =(AEAudioHardware_ptr - 0x3B74E8)
3B74E0:  MOV             R5, R1
3B74E2:  MOVS            R1, #0
3B74E4:  ADD             R0, PC; AEAudioHardware_ptr
3B74E6:  MOV             R6, R2
3B74E8:  STRD.W          R1, R1, [SP,#0x158+var_DC]
3B74EC:  MOVS            R1, #0x8A; unsigned __int16
3B74EE:  LDR             R0, [R0]; AEAudioHardware ; this
3B74F0:  MOVS            R2, #0x13; __int16
3B74F2:  MOV             R8, R3
3B74F4:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3B74F8:  CMP             R0, #0
3B74FA:  BEQ.W           loc_3B7882
3B74FE:  LDR             R0, [R6,#0x10]
3B7500:  VMOV.F32        S18, #8.0
3B7504:  VLDR            S20, =0.0
3B7508:  LDRSH.W         R0, [R0,#0x26]
3B750C:  SUBW            R1, R0, #0x207
3B7510:  CMP             R1, #2
3B7512:  BCC             loc_3B7536
3B7514:  CMP.W           R0, #0x250
3B7518:  BEQ.W           loc_3B7784
3B751C:  MOVW            R1, #0x241
3B7520:  CMP             R0, R1
3B7522:  BNE.W           loc_3B778E
3B7526:  VMOV.F32        S18, #20.0
3B752A:  VMOV.F32        S20, #6.0
3B752E:  VMOV.F32        S16, #-8.0
3B7532:  CBNZ            R5, loc_3B7540
3B7534:  B               loc_3B778E
3B7536:  VLDR            S16, =-100.0
3B753A:  CMP             R5, #0
3B753C:  BEQ.W           loc_3B778E
3B7540:  LDR             R0, =(TheCamera_ptr - 0x3B754E)
3B7542:  VMOV            S30, R8
3B7546:  VLDR            S22, [R7,#arg_C]
3B754A:  ADD             R0, PC; TheCamera_ptr
3B754C:  VLDR            S26, [R7,#arg_4]
3B7550:  VLDR            S24, [R7,#arg_0]
3B7554:  LDR             R4, [R0]; TheCamera
3B7556:  ADD             R0, SP, #0x158+var_11C
3B7558:  ADDW            R1, R4, #0x8FC
3B755C:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3B7560:  LDR.W           R0, [R11,#4]
3B7564:  LDR             R1, [R4,#(dword_951FBC - 0x951FA8)]
3B7566:  LDR             R2, [R0,#0x14]
3B7568:  ADD.W           R3, R1, #0x30 ; '0'
3B756C:  CMP             R1, #0
3B756E:  IT EQ
3B7570:  ADDEQ           R3, R4, #4
3B7572:  ADD.W           R1, R2, #0x30 ; '0'
3B7576:  CMP             R2, #0
3B7578:  VLDR            S0, [R3]
3B757C:  VLDR            S2, [R3,#4]
3B7580:  VLDR            S4, [R3,#8]
3B7584:  IT EQ
3B7586:  ADDEQ           R1, R0, #4
3B7588:  VLDR            S6, [R1]
3B758C:  ADD             R0, SP, #0x158+var_128; this
3B758E:  VLDR            S8, [R1,#4]
3B7592:  VLDR            S10, [R1,#8]
3B7596:  VSUB.F32        S0, S6, S0
3B759A:  VSUB.F32        S2, S8, S2
3B759E:  VSUB.F32        S4, S10, S4
3B75A2:  VSTR            S0, [SP,#0x158+var_128]
3B75A6:  VSTR            S2, [SP,#0x158+var_124]
3B75AA:  VSTR            S4, [SP,#0x158+var_120]
3B75AE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3B75B2:  LDR             R0, [R6,#0x10]
3B75B4:  VMOV.F32        S28, #1.0
3B75B8:  VLDR            S0, [SP,#0x158+var_128]
3B75BC:  ADR             R4, dword_3B78B0
3B75BE:  VLDR            S2, [SP,#0x158+var_124]
3B75C2:  LDR             R0, [R0,#0x14]
3B75C4:  VLDR            S4, [SP,#0x158+var_120]
3B75C8:  VLDR            S23, =-0.05
3B75CC:  VLDR            S6, [R0,#0x10]
3B75D0:  VLDR            S8, [R0,#0x14]
3B75D4:  VMUL.F32        S0, S6, S0
3B75D8:  VLDR            S21, [R0,#0x18]
3B75DC:  VMUL.F32        S2, S8, S2
3B75E0:  VLDR            S10, [R0]
3B75E4:  VMUL.F32        S4, S21, S4
3B75E8:  VLDR            S12, [R0,#4]
3B75EC:  VLDR            S14, [R0,#8]
3B75F0:  VADD.F32        S0, S0, S2
3B75F4:  VMOV.F32        S2, #0.5
3B75F8:  VADD.F32        S0, S0, S4
3B75FC:  VLDR            S4, =-0.67
3B7600:  VADD.F32        S0, S0, S28
3B7604:  VMUL.F32        S0, S0, S2
3B7608:  VMUL.F32        S4, S0, S4
3B760C:  VMUL.F32        S0, S0, S2
3B7610:  VADD.F32        S4, S4, S28
3B7614:  VADD.F32        S0, S0, S2
3B7618:  VMUL.F32        S2, S4, S30
3B761C:  VMUL.F32        S0, S0, S30
3B7620:  VMOV.F32        S30, #20.0
3B7624:  VMOV            R0, S2; this
3B7628:  VLDR            S2, =0.0
3B762C:  VMOV            R5, S0
3B7630:  VMUL.F32        S0, S12, S2
3B7634:  VMUL.F32        S4, S10, S2
3B7638:  VMUL.F32        S8, S8, S2
3B763C:  VMUL.F32        S2, S6, S2
3B7640:  VADD.F32        S0, S4, S0
3B7644:  VADD.F32        S25, S2, S8
3B7648:  VADD.F32        S27, S14, S0
3B764C:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B7650:  VMOV            S19, R0
3B7654:  MOV             R0, R5; this
3B7656:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B765A:  VCMPE.F32       S24, #0.0
3B765E:  VMRS            APSR_nzcv, FPSCR
3B7662:  VCMPE.F32       S26, #0.0
3B7666:  VADD.F32        S4, S25, S21
3B766A:  VMOV            S0, R0
3B766E:  MOV             R0, R8; this
3B7670:  VMUL.F32        S26, S0, S30
3B7674:  VLDR            S0, =-0.15
3B7678:  VMUL.F32        S0, S4, S0
3B767C:  VLDR            S4, =0.1
3B7680:  VADD.F32        S0, S0, S28
3B7684:  IT GT
3B7686:  ADDGT           R4, #4
3B7688:  VMRS            APSR_nzcv, FPSCR
3B768C:  VLDR            S17, [R4]
3B7690:  VCMPE.F32       S24, #0.0
3B7694:  VMUL.F32        S24, S19, S30
3B7698:  VADD.F32        S2, S17, S23
3B769C:  IT GT
3B769E:  VMOVGT.F32      S17, S2
3B76A2:  VMRS            APSR_nzcv, FPSCR
3B76A6:  VABS.F32        S2, S27
3B76AA:  VMUL.F32        S2, S2, S4
3B76AE:  VADD.F32        S28, S0, S2
3B76B2:  ITTT LE
3B76B4:  VMOVLE.F32      S6, #-1.0
3B76B8:  VLDRLE          S8, [R11,#0x230]
3B76BC:  VADDLE.F32      S20, S8, S6
3B76C0:  VSTR            S20, [R11,#0x230]
3B76C4:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3B76C8:  VLDR            S4, [R11,#0x22C]
3B76CC:  VMOV            S0, R0
3B76D0:  VCMPE.F32       S4, #0.0
3B76D4:  VMRS            APSR_nzcv, FPSCR
3B76D8:  VMUL.F32        S6, S0, S30
3B76DC:  VADD.F32        S0, S17, S28
3B76E0:  VMUL.F32        S2, S0, S22
3B76E4:  VLDR            S22, [R7,#arg_8]
3B76E8:  VADD.F32        S0, S18, S24
3B76EC:  VADD.F32        S24, S18, S26
3B76F0:  VADD.F32        S18, S20, S6
3B76F4:  ITT LT
3B76F6:  VSTRLT          S2, [R11,#0x22C]
3B76FA:  VMOVLT.F32      S4, S2
3B76FE:  VCMPE.F32       S2, S4
3B7702:  VMRS            APSR_nzcv, FPSCR
3B7706:  BGE             loc_3B7716
3B7708:  VLDR            S6, =-0.0053333
3B770C:  VADD.F32        S4, S4, S6
3B7710:  VMAX.F32        D10, D1, D2
3B7714:  B               loc_3B7722
3B7716:  VLDR            S6, =0.0053333
3B771A:  VADD.F32        S4, S4, S6
3B771E:  VMIN.F32        D10, D1, D2
3B7722:  MOV             R0, R11; this
3B7724:  MOVS            R1, #2; __int16
3B7726:  MOVS            R2, #0x13; __int16
3B7728:  MOVS            R3, #0xA; __int16
3B772A:  VSTR            S20, [R11,#0x22C]
3B772E:  VSTR            S0, [SP,#0x158+var_158]
3B7732:  VSTR            S20, [SP,#0x158+var_154]
3B7736:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B773A:  MOV             R0, R11; this
3B773C:  MOVS            R1, #4; __int16
3B773E:  MOVS            R2, #0x13; __int16
3B7740:  MOVS            R3, #0xB; __int16
3B7742:  VSTR            S24, [SP,#0x158+var_158]
3B7746:  MOV.W           R8, #4
3B774A:  VSTR            S20, [SP,#0x158+var_154]
3B774E:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B7752:  VADD.F32        S0, S18, S22
3B7756:  MOV.W           R6, #0x3F800000
3B775A:  MOV             R0, R11; this
3B775C:  MOVS            R1, #5; __int16
3B775E:  MOVS            R2, #0x13; __int16
3B7760:  MOVS            R3, #0x1A; __int16
3B7762:  STR             R6, [SP,#0x158+var_154]; float
3B7764:  VSTR            S0, [SP,#0x158+var_158]
3B7768:  BLX             j__ZN21CAEVehicleAudioEntity17PlayAircraftSoundEsssff; CAEVehicleAudioEntity::PlayAircraftSound(short,short,short,float,float)
3B776C:  MOVS            R0, #0
3B776E:  STR             R0, [SP,#0x158+var_CC]
3B7770:  LDR.W           R1, [R11,#0x120]
3B7774:  CMP             R1, #0
3B7776:  BEQ             loc_3B7836
3B7778:  VSTR            S16, [R1,#0x14]
3B777C:  LDR.W           R0, [R11,#0x120]
3B7780:  STR             R6, [R0,#0x1C]
3B7782:  B               loc_3B787C
3B7784:  VMOV.F32        S16, #-12.0
3B7788:  CMP             R5, #0
3B778A:  BNE.W           loc_3B7540
3B778E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3B77A0)
3B7790:  VMOV.F32        S18, #1.0
3B7794:  VLDR            S16, =100.0
3B7798:  MOV.W           R8, #0
3B779C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3B779E:  MOVW            R9, #0xFFFF
3B77A2:  MOVS            R6, #0
3B77A4:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
3B77A8:  B               loc_3B77B0
3B77AA:  STRH.W          R0, [R11,#0x14E]
3B77AE:  MOVS            R6, #5
3B77B0:  ADD.W           R4, R11, R6,LSL#3
3B77B4:  MOVW            R5, #0xFFFF
3B77B8:  LDR.W           R0, [R4,#0xE8]!; this
3B77BC:  CBZ             R0, loc_3B77D4
3B77BE:  MOVS            R1, #4; unsigned __int16
3B77C0:  MOVS            R2, #0; unsigned __int16
3B77C2:  LDRH.W          R5, [R0,#0x70]
3B77C6:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
3B77CA:  LDR             R0, [R4]; this
3B77CC:  BLX             j__ZN8CAESound9StopSoundEv; CAESound::StopSound(void)
3B77D0:  STR.W           R8, [R4]
3B77D4:  CMP             R6, #4
3B77D6:  BNE             loc_3B782A
3B77D8:  LDRH.W          R0, [R11,#0x148]
3B77DC:  STRH.W          R0, [R11,#0x154]
3B77E0:  LDR.W           R1, [R10]; CTimer::m_snTimeInMilliseconds
3B77E4:  STR.W           R1, [R11,#0x150]
3B77E8:  SXTH            R1, R5
3B77EA:  CMP             R1, #1
3B77EC:  STRH.W          R9, [R11,#0x14A]
3B77F0:  STRH.W          R9, [R11,#0x148]
3B77F4:  BLT             loc_3B7832
3B77F6:  SXTH            R0, R0
3B77F8:  VMOV            S0, R1
3B77FC:  VMOV            S2, R0
3B7800:  VCVT.F32.S32    S0, S0
3B7804:  VCVT.F32.S32    S2, S2
3B7808:  VDIV.F32        S0, S2, S0
3B780C:  VMIN.F32        D0, D0, D9
3B7810:  VCMPE.F32       S0, #0.0
3B7814:  VMRS            APSR_nzcv, FPSCR
3B7818:  VMUL.F32        S2, S0, S16
3B781C:  VCVT.S32.F32    S2, S2
3B7820:  VMOV            R0, S2
3B7824:  IT LT
3B7826:  MOVLT           R0, #0
3B7828:  B               loc_3B77AA
3B782A:  ADDS            R6, #1
3B782C:  CMP             R6, #0xC
3B782E:  BNE             loc_3B77B0
3B7830:  B               loc_3B7882
3B7832:  MOVS            R0, #0
3B7834:  B               loc_3B77AA
3B7836:  ADD             R5, SP, #0x158+var_D4
3B7838:  STRD.W          R0, R0, [SP,#0x158+var_138]
3B783C:  STR             R0, [SP,#0x158+var_130]
3B783E:  MOVS            R1, #0x13
3B7840:  STRD.W          R0, R6, [SP,#0x158+var_158]
3B7844:  MOVS            R2, #0xE
3B7846:  STRD.W          R0, R0, [SP,#0x158+var_150]
3B784A:  MOV             R3, R11
3B784C:  STRD.W          R6, R6, [SP,#0x158+var_148]
3B7850:  STRD.W          R6, R0, [SP,#0x158+var_140]
3B7854:  MOV             R0, R5
3B7856:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3B785A:  LDR             R0, =(AESoundManager_ptr - 0x3B786A)
3B785C:  MOVS            R1, #0x42480000
3B7862:  VSTR            S16, [SP,#0x158+var_C0]
3B7866:  ADD             R0, PC; AESoundManager_ptr
3B7868:  STRD.W          R1, R6, [SP,#0x158+var_BC]
3B786C:  MOV             R1, R5; CAESound *
3B786E:  STRH.W          R8, [SP,#0x158+var_7E]
3B7872:  LDR             R0, [R0]; AESoundManager ; this
3B7874:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3B7878:  STR.W           R0, [R11,#0x120]
3B787C:  ADD             R0, SP, #0x158+var_D4; this
3B787E:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3B7882:  ADD             R0, SP, #0x158+var_11C; this
3B7884:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3B7888:  ADD             SP, SP, #0xF8
3B788A:  VPOP            {D8-D15}
3B788E:  ADD             SP, SP, #4
3B7890:  POP.W           {R8-R11}
3B7894:  POP             {R4-R7,PC}
