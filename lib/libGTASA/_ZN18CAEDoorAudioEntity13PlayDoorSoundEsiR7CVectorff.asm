; =========================================================
; Game Engine Function: _ZN18CAEDoorAudioEntity13PlayDoorSoundEsiR7CVectorff
; Address            : 0x3955FC - 0x39571E
; =========================================================

3955FC:  PUSH            {R4-R7,LR}
3955FE:  ADD             R7, SP, #0xC
395600:  PUSH.W          {R8-R10}
395604:  SUB             SP, SP, #0xA0
395606:  MOV             R8, R0
395608:  LDR             R0, =(AEAudioHardware_ptr - 0x395612)
39560A:  MOV             R9, R1
39560C:  MOVS            R1, #0
39560E:  ADD             R0, PC; AEAudioHardware_ptr
395610:  MOV             R10, R2
395612:  STR             R1, [SP,#0xB8+var_84]
395614:  MOVS            R1, #0x33 ; '3'; unsigned __int16
395616:  LDR             R0, [R0]; AEAudioHardware ; this
395618:  MOVS            R2, #0x1F; __int16
39561A:  MOV             R5, R3
39561C:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
395620:  CMP             R0, #0
395622:  BEQ             loc_3956A8
395624:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x39562E)
395626:  VLDR            S4, [R5]
39562A:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
39562C:  VLDR            S2, [R7,#arg_0]
395630:  VLDR            S0, [R7,#arg_4]
395634:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
395636:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
395638:  LDRSB.W         R0, [R0,R10]
39563C:  VMOV            S6, R0
395640:  VCVT.F32.S32    S6, S6
395644:  VADD.F32        S2, S6, S2
395648:  VLDR            S6, =-1000.0
39564C:  VCMP.F32        S4, S6
395650:  VMRS            APSR_nzcv, FPSCR
395654:  BNE             loc_395672
395656:  VLDR            S8, [R5,#4]
39565A:  VCMP.F32        S8, S6
39565E:  VMRS            APSR_nzcv, FPSCR
395662:  ITTT EQ
395664:  VLDREQ          S8, [R5,#8]
395668:  VCMPEQ.F32      S8, S6
39566C:  VMRSEQ          APSR_nzcv, FPSCR
395670:  BEQ             loc_39569C
395672:  VCMP.F32        S4, #0.0
395676:  VMRS            APSR_nzcv, FPSCR
39567A:  BNE             loc_3956B8
39567C:  VLDR            S6, [R5,#4]
395680:  VCMP.F32        S6, #0.0
395684:  VMRS            APSR_nzcv, FPSCR
395688:  VMOV            R0, S6
39568C:  ITTT EQ
39568E:  VLDREQ          S6, [R5,#8]
395692:  VCMPEQ.F32      S6, #0.0
395696:  VMRSEQ          APSR_nzcv, FPSCR
39569A:  BNE             loc_3956BA
39569C:  MOVS            R5, #1
39569E:  MOV.W           R0, #0x3F800000
3956A2:  MOVS            R1, #0
3956A4:  MOVS            R2, #0
3956A6:  B               loc_3956C2
3956A8:  LDR             R0, =(AEAudioHardware_ptr - 0x3956B2)
3956AA:  MOVS            R1, #0x33 ; '3'; unsigned __int16
3956AC:  MOVS            R2, #0x1F; __int16
3956AE:  ADD             R0, PC; AEAudioHardware_ptr
3956B0:  LDR             R0, [R0]; AEAudioHardware ; this
3956B2:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3956B6:  B               loc_395710
3956B8:  LDR             R0, [R5,#4]
3956BA:  VMOV            R1, S4
3956BE:  LDR             R2, [R5,#8]
3956C0:  MOVS            R5, #0
3956C2:  MOVS            R3, #0
3956C4:  MOV.W           R4, #0x3F800000
3956C8:  MOVS            R6, #4
3956CA:  STRD.W          R4, R3, [SP,#0xB8+var_A0]
3956CE:  STRD.W          R6, R3, [SP,#0xB8+var_98]
3956D2:  ADD             R6, SP, #0xB8+var_8C
3956D4:  STR             R3, [SP,#0xB8+var_90]
3956D6:  MOV.W           R3, #0x40000000
3956DA:  VSTR            S0, [SP,#0xB8+var_A4]
3956DE:  STR             R3, [SP,#0xB8+var_A8]
3956E0:  MOV             R3, R8
3956E2:  VSTR            S2, [SP,#0xB8+var_AC]
3956E6:  STRD.W          R1, R0, [SP,#0xB8+var_B8]
3956EA:  MOV             R0, R6
3956EC:  STR             R2, [SP,#0xB8+var_B0]
3956EE:  MOVS            R1, #0x1F
3956F0:  MOV             R2, R9
3956F2:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3956F6:  MOV             R0, R6; this
3956F8:  MOVS            R1, #1; unsigned __int16
3956FA:  MOV             R2, R5; unsigned __int16
3956FC:  BLX             j__ZN8CAESound24SetIndividualEnvironmentEtt; CAESound::SetIndividualEnvironment(ushort,ushort)
395700:  LDR             R0, =(AESoundManager_ptr - 0x39570C)
395702:  MOV             R1, R6; CAESound *
395704:  STR.W           R10, [SP,#0xB8+var_80]
395708:  ADD             R0, PC; AESoundManager_ptr
39570A:  LDR             R0, [R0]; AESoundManager ; this
39570C:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
395710:  ADD             R0, SP, #0xB8+var_8C; this
395712:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
395716:  ADD             SP, SP, #0xA0
395718:  POP.W           {R8-R10}
39571C:  POP             {R4-R7,PC}
