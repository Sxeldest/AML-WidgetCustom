; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity19HandleFootstepEventEiffh
; Address            : 0x3984DC - 0x39897A
; =========================================================

3984DC:  PUSH            {R4-R7,LR}
3984DE:  ADD             R7, SP, #0xC
3984E0:  PUSH.W          {R8,R9,R11}
3984E4:  VPUSH           {D8-D9}
3984E8:  SUB             SP, SP, #0x30
3984EA:  MOV             R9, R0
3984EC:  MOV             R5, R3
3984EE:  LDR.W           R0, [R9,#0x94]
3984F2:  LDRB.W          R0, [R0,#0x485]
3984F6:  LSLS            R0, R0, #0x1E
3984F8:  BMI             loc_39856A
3984FA:  LDR.W           R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x398508)
3984FE:  VMOV            S16, R2; int
398502:  LDR             R6, [R7,#arg_0]
398504:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
398506:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
398508:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes
39850A:  LDRSB           R0, [R0,R1]
39850C:  MOVS            R1, #3; int
39850E:  VMOV            S0, R0
398512:  MOV             R0, #0xFFFFFFFD; this
398516:  VCVT.F32.S32    S18, S0
39851A:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
39851E:  VMOV            S0, R0
398522:  MOV.W           R0, #0xFFFFFFFF; int
398526:  VADD.F32        S2, S18, S16
39852A:  VCVT.F32.S32    S0, S0
39852E:  VADD.F32        S16, S2, S0
398532:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
398536:  LDR.W           R1, [R9,#0x94]
39853A:  CMP             R0, R1
39853C:  BEQ             loc_398576
39853E:  LDR.W           R0, =(AEAudioHardware_ptr - 0x39854A)
398542:  MOVS            R1, #0; unsigned __int16
398544:  MOVS            R2, #0x29 ; ')'; __int16
398546:  ADD             R0, PC; AEAudioHardware_ptr
398548:  LDR             R0, [R0]; AEAudioHardware ; this
39854A:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39854E:  CMP             R0, #0
398550:  BEQ             loc_398636
398552:  VMOV.F32        S0, #-3.0
398556:  VADD.F32        S16, S16, S0
39855A:  MOVS            R0, #(stderr+1); this
39855C:  MOVS            R1, #5; int
39855E:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
398562:  MOVS            R1, #0x29 ; ')'
398564:  MOV.W           R8, #0
398568:  B               loc_3985C0
39856A:  ADD             SP, SP, #0x30 ; '0'
39856C:  VPOP            {D8-D9}
398570:  POP.W           {R8,R9,R11}
398574:  POP             {R4-R7,PC}
398576:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x398580)
39857A:  MOV             R1, R6; unsigned int
39857C:  ADD             R0, PC; g_surfaceInfos_ptr
39857E:  LDR             R0, [R0]; g_surfaceInfos ; this
398580:  BLX             j__ZN14SurfaceInfos_c12IsAudioWaterEj; SurfaceInfos_c::IsAudioWater(uint)
398584:  CBNZ            R0, loc_39859E
398586:  LDR.W           R0, =(g_surfaceInfos_ptr - 0x398592)
39858A:  LDR.W           R1, [R9,#0x94]
39858E:  ADD             R0, PC; g_surfaceInfos_ptr
398590:  LDRB.W          R1, [R1,#0xBE]; unsigned int
398594:  LDR             R0, [R0]; g_surfaceInfos ; this
398596:  BLX             j__ZN14SurfaceInfos_c12IsAudioWaterEj; SurfaceInfos_c::IsAudioWater(uint)
39859A:  CMP             R0, #0
39859C:  BEQ             loc_398678
39859E:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3985AA)
3985A2:  MOVS            R1, #0x80; unsigned __int16
3985A4:  MOVS            R2, #0x20 ; ' '; __int16
3985A6:  ADD             R0, PC; AEAudioHardware_ptr
3985A8:  LDR             R0, [R0]; AEAudioHardware ; this
3985AA:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3985AE:  CMP             R0, #0
3985B0:  BEQ             loc_398652
3985B2:  MOVS            R0, #0; this
3985B4:  MOVS            R1, #4; int
3985B6:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3985BA:  MOVS            R1, #0x20 ; ' '
3985BC:  MOV.W           R8, #0x32 ; '2'
3985C0:  LDR.W           R2, [R9,#0x94]
3985C4:  VMOV            S0, R5
3985C8:  MOVW            R12, #0xD845
3985CC:  MOV.W           LR, #0xA0
3985D0:  MOVT            R12, #0x3D70
3985D4:  MOVS            R6, #0
3985D6:  LDR             R3, [R2,#0x14]
3985D8:  MOV.W           R4, #0x3F800000
3985DC:  ADD.W           R11, SP, #0x58+var_40
3985E0:  ADD.W           R5, R3, #0x30 ; '0'
3985E4:  CMP             R3, #0
3985E6:  IT EQ
3985E8:  ADDEQ           R5, R2, #4
3985EA:  LDM             R5, {R2,R3,R5}
3985EC:  STM.W           R11, {R4,R6,LR}
3985F0:  STRD.W          R12, R8, [SP,#0x58+var_34]
3985F4:  VSTR            S0, [SP,#0x58+var_44]
3985F8:  STR             R4, [SP,#0x58+var_48]
3985FA:  VSTR            S16, [SP,#0x58+var_4C]
3985FE:  STMEA.W         SP, {R2,R3,R5}
398602:  ADD.W           R5, R9, #8
398606:  SXTH            R2, R0
398608:  MOV             R0, R5
39860A:  MOV             R3, R9
39860C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
398610:  LDR.W           R1, [R9,#0x94]; CEntity *
398614:  MOV             R0, R5; this
398616:  BLX             j__ZN8CAESound26RegisterWithPhysicalEntityEP7CEntity; CAESound::RegisterWithPhysicalEntity(CEntity *)
39861A:  LDR.W           R0, =(AESoundManager_ptr - 0x398624)
39861E:  MOV             R1, R5; CAESound *
398620:  ADD             R0, PC; AESoundManager_ptr
398622:  LDR             R0, [R0]; AESoundManager ; this
398624:  ADD             SP, SP, #0x30 ; '0'
398626:  VPOP            {D8-D9}
39862A:  POP.W           {R8,R9,R11}
39862E:  POP.W           {R4-R7,LR}
398632:  B.W             sub_19F824
398636:  LDR             R0, =(AEAudioHardware_ptr - 0x39863C)
398638:  ADD             R0, PC; AEAudioHardware_ptr
39863A:  LDR             R0, [R0]; AEAudioHardware ; this
39863C:  MOVS            R1, #0; unsigned __int16
39863E:  MOVS            R2, #0x29 ; ')'; __int16
398640:  ADD             SP, SP, #0x30 ; '0'
398642:  VPOP            {D8-D9}
398646:  POP.W           {R8,R9,R11}
39864A:  POP.W           {R4-R7,LR}
39864E:  B.W             sub_18B078
398652:  LDR             R0, =(AEAudioHardware_ptr - 0x39865C)
398654:  MOVS            R1, #0x80; unsigned __int16
398656:  MOVS            R2, #0x20 ; ' '; __int16
398658:  ADD             R0, PC; AEAudioHardware_ptr
39865A:  LDR             R6, [R0]; AEAudioHardware
39865C:  MOV             R0, R6; this
39865E:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
398662:  MOV             R0, R6; this
398664:  MOVS            R1, #0; unsigned __int16
398666:  MOVS            R2, #0x29 ; ')'; __int16
398668:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39866C:  CMP             R0, #0
39866E:  BNE.W           loc_39855A
398672:  LDR             R0, =(AEAudioHardware_ptr - 0x398678)
398674:  ADD             R0, PC; AEAudioHardware_ptr
398676:  B               loc_39863A
398678:  LDR             R0, =(g_surfaceInfos_ptr - 0x398682)
39867A:  LDR.W           R1, [R9,#0x94]
39867E:  ADD             R0, PC; g_surfaceInfos_ptr
398680:  LDRB.W          R1, [R1,#0xBE]; unsigned int
398684:  LDR             R0, [R0]; g_surfaceInfos ; this
398686:  BLX             j__ZN14SurfaceInfos_c15IsAudioConcreteEj; SurfaceInfos_c::IsAudioConcrete(uint)
39868A:  CBZ             R0, loc_3986A6
39868C:  LDR             R0, =(AEAudioHardware_ptr - 0x398696)
39868E:  MOVS            R1, #0; unsigned __int16
398690:  MOVS            R2, #0x29 ; ')'; __int16
398692:  ADD             R0, PC; AEAudioHardware_ptr
398694:  LDR             R0, [R0]; AEAudioHardware ; this
398696:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39869A:  CMP             R0, #0
39869C:  BNE.W           loc_39855A
3986A0:  LDR             R0, =(AEAudioHardware_ptr - 0x3986A6)
3986A2:  ADD             R0, PC; AEAudioHardware_ptr
3986A4:  B               loc_39863A
3986A6:  LDR             R0, =(g_surfaceInfos_ptr - 0x3986B0)
3986A8:  LDR.W           R1, [R9,#0x94]
3986AC:  ADD             R0, PC; g_surfaceInfos_ptr
3986AE:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3986B2:  LDR             R0, [R0]; g_surfaceInfos ; this
3986B4:  BLX             j__ZN14SurfaceInfos_c12IsAudioGrassEj; SurfaceInfos_c::IsAudioGrass(uint)
3986B8:  CBNZ            R0, loc_3986CE
3986BA:  LDR             R0, =(g_surfaceInfos_ptr - 0x3986C4)
3986BC:  LDR.W           R1, [R9,#0x94]
3986C0:  ADD             R0, PC; g_surfaceInfos_ptr
3986C2:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3986C6:  LDR             R0, [R0]; g_surfaceInfos ; this
3986C8:  BLX             j__ZN14SurfaceInfos_c16IsAudioLongGrassEj; SurfaceInfos_c::IsAudioLongGrass(uint)
3986CC:  CBZ             R0, loc_398734
3986CE:  LDR             R0, =(AEAudioHardware_ptr - 0x3986D8)
3986D0:  MOVS            R1, #1; unsigned __int16
3986D2:  MOVS            R2, #0x1E; __int16
3986D4:  ADD             R0, PC; AEAudioHardware_ptr
3986D6:  LDR             R0, [R0]; AEAudioHardware ; this
3986D8:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3986DC:  CBZ             R0, loc_3986EE
3986DE:  MOV.W           R8, #0
3986E2:  MOVS            R0, #0; this
3986E4:  MOVS            R1, #4; int
3986E6:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEii; CAEAudioUtility::GetRandomNumberInRange(int,int)
3986EA:  MOVS            R1, #0x1E
3986EC:  B               loc_3985C0
3986EE:  LDR             R0, =(AESoundManager_ptr - 0x3986F6)
3986F0:  MOVS            R1, #0x1E; __int16
3986F2:  ADD             R0, PC; AESoundManager_ptr
3986F4:  LDR             R0, [R0]; AESoundManager ; this
3986F6:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3986FA:  SUBS            R0, #1
3986FC:  CMP             R0, #1
3986FE:  BHI             loc_39870E
398700:  LDR             R0, =(AESoundManager_ptr - 0x39870A)
398702:  MOVS            R1, #0x1E; __int16
398704:  MOVS            R2, #0; unsigned __int8
398706:  ADD             R0, PC; AESoundManager_ptr
398708:  LDR             R0, [R0]; AESoundManager ; this
39870A:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
39870E:  LDR             R0, =(AEAudioHardware_ptr - 0x398718)
398710:  MOVS            R1, #1; unsigned __int16
398712:  MOVS            R2, #0x1E; __int16
398714:  ADD             R0, PC; AEAudioHardware_ptr
398716:  LDR             R6, [R0]; AEAudioHardware
398718:  MOV             R0, R6; this
39871A:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
39871E:  MOV             R0, R6; this
398720:  MOVS            R1, #0; unsigned __int16
398722:  MOVS            R2, #0x29 ; ')'; __int16
398724:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398728:  CMP             R0, #0
39872A:  BNE.W           loc_39855A
39872E:  LDR             R0, =(AEAudioHardware_ptr - 0x398734)
398730:  ADD             R0, PC; AEAudioHardware_ptr
398732:  B               loc_39863A
398734:  LDR             R0, =(g_surfaceInfos_ptr - 0x39873E)
398736:  LDR.W           R1, [R9,#0x94]
39873A:  ADD             R0, PC; g_surfaceInfos_ptr
39873C:  LDRB.W          R1, [R1,#0xBE]; unsigned int
398740:  LDR             R0, [R0]; g_surfaceInfos ; this
398742:  BLX             j__ZN14SurfaceInfos_c11IsAudioSandEj; SurfaceInfos_c::IsAudioSand(uint)
398746:  CBZ             R0, loc_398762
398748:  LDR             R0, =(AEAudioHardware_ptr - 0x398752)
39874A:  MOVS            R1, #4; unsigned __int16
39874C:  MOVS            R2, #0x1E; __int16
39874E:  ADD             R0, PC; AEAudioHardware_ptr
398750:  LDR             R0, [R0]; AEAudioHardware ; this
398752:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398756:  CBZ             R0, loc_3987D0
398758:  MOV.W           R8, #0
39875C:  MOVS            R0, #0
39875E:  MOVS            R1, #3
398760:  B               loc_3986E6
398762:  LDR             R0, =(g_surfaceInfos_ptr - 0x39876C)
398764:  LDR.W           R1, [R9,#0x94]
398768:  ADD             R0, PC; g_surfaceInfos_ptr
39876A:  LDRB.W          R1, [R1,#0xBE]; unsigned int
39876E:  LDR             R0, [R0]; g_surfaceInfos ; this
398770:  BLX             j__ZN14SurfaceInfos_c13IsAudioGravelEj; SurfaceInfos_c::IsAudioGravel(uint)
398774:  CMP             R0, #0
398776:  BEQ             loc_398816
398778:  LDR             R0, =(AEAudioHardware_ptr - 0x398782)
39877A:  MOVS            R1, #2; unsigned __int16
39877C:  MOVS            R2, #0x1E; __int16
39877E:  ADD             R0, PC; AEAudioHardware_ptr
398780:  LDR             R0, [R0]; AEAudioHardware ; this
398782:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398786:  CMP             R0, #0
398788:  BNE             loc_3986DE
39878A:  LDR             R0, =(AESoundManager_ptr - 0x398792)
39878C:  MOVS            R1, #0x1E; __int16
39878E:  ADD             R0, PC; AESoundManager_ptr
398790:  LDR             R0, [R0]; AESoundManager ; this
398792:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
398796:  SUBS            R0, #1
398798:  CMP             R0, #1
39879A:  BHI             loc_3987AA
39879C:  LDR             R0, =(AESoundManager_ptr - 0x3987A6)
39879E:  MOVS            R1, #0x1E; __int16
3987A0:  MOVS            R2, #0; unsigned __int8
3987A2:  ADD             R0, PC; AESoundManager_ptr
3987A4:  LDR             R0, [R0]; AESoundManager ; this
3987A6:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3987AA:  LDR             R0, =(AEAudioHardware_ptr - 0x3987B4)
3987AC:  MOVS            R1, #2; unsigned __int16
3987AE:  MOVS            R2, #0x1E; __int16
3987B0:  ADD             R0, PC; AEAudioHardware_ptr
3987B2:  LDR             R6, [R0]; AEAudioHardware
3987B4:  MOV             R0, R6; this
3987B6:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3987BA:  MOV             R0, R6; this
3987BC:  MOVS            R1, #0; unsigned __int16
3987BE:  MOVS            R2, #0x29 ; ')'; __int16
3987C0:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3987C4:  CMP             R0, #0
3987C6:  BNE.W           loc_39855A
3987CA:  LDR             R0, =(AEAudioHardware_ptr - 0x3987D0)
3987CC:  ADD             R0, PC; AEAudioHardware_ptr
3987CE:  B               loc_39863A
3987D0:  LDR             R0, =(AESoundManager_ptr - 0x3987D8)
3987D2:  MOVS            R1, #0x1E; __int16
3987D4:  ADD             R0, PC; AESoundManager_ptr
3987D6:  LDR             R0, [R0]; AESoundManager ; this
3987D8:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3987DC:  SUBS            R0, #1
3987DE:  CMP             R0, #1
3987E0:  BHI             loc_3987F0
3987E2:  LDR             R0, =(AESoundManager_ptr - 0x3987EC)
3987E4:  MOVS            R1, #0x1E; __int16
3987E6:  MOVS            R2, #0; unsigned __int8
3987E8:  ADD             R0, PC; AESoundManager_ptr
3987EA:  LDR             R0, [R0]; AESoundManager ; this
3987EC:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3987F0:  LDR             R0, =(AEAudioHardware_ptr - 0x3987FA)
3987F2:  MOVS            R1, #4; unsigned __int16
3987F4:  MOVS            R2, #0x1E; __int16
3987F6:  ADD             R0, PC; AEAudioHardware_ptr
3987F8:  LDR             R6, [R0]; AEAudioHardware
3987FA:  MOV             R0, R6; this
3987FC:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
398800:  MOV             R0, R6; this
398802:  MOVS            R1, #0; unsigned __int16
398804:  MOVS            R2, #0x29 ; ')'; __int16
398806:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39880A:  CMP             R0, #0
39880C:  BNE.W           loc_39855A
398810:  LDR             R0, =(AEAudioHardware_ptr - 0x398816)
398812:  ADD             R0, PC; AEAudioHardware_ptr
398814:  B               loc_39863A
398816:  LDR             R0, =(g_surfaceInfos_ptr - 0x398820)
398818:  LDR.W           R1, [R9,#0x94]
39881C:  ADD             R0, PC; g_surfaceInfos_ptr
39881E:  LDRB.W          R1, [R1,#0xBE]; unsigned int
398822:  LDR             R0, [R0]; g_surfaceInfos ; this
398824:  BLX             j__ZN14SurfaceInfos_c11IsAudioWoodEj; SurfaceInfos_c::IsAudioWood(uint)
398828:  CBZ             R0, loc_398884
39882A:  LDR             R0, =(AEAudioHardware_ptr - 0x398834)
39882C:  MOVS            R1, #6; unsigned __int16
39882E:  MOVS            R2, #0x1E; __int16
398830:  ADD             R0, PC; AEAudioHardware_ptr
398832:  LDR             R0, [R0]; AEAudioHardware ; this
398834:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398838:  CMP             R0, #0
39883A:  BNE.W           loc_3986DE
39883E:  LDR             R0, =(AESoundManager_ptr - 0x398846)
398840:  MOVS            R1, #0x1E; __int16
398842:  ADD             R0, PC; AESoundManager_ptr
398844:  LDR             R0, [R0]; AESoundManager ; this
398846:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
39884A:  SUBS            R0, #1
39884C:  CMP             R0, #1
39884E:  BHI             loc_39885E
398850:  LDR             R0, =(AESoundManager_ptr - 0x39885A)
398852:  MOVS            R1, #0x1E; __int16
398854:  MOVS            R2, #0; unsigned __int8
398856:  ADD             R0, PC; AESoundManager_ptr
398858:  LDR             R0, [R0]; AESoundManager ; this
39885A:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
39885E:  LDR             R0, =(AEAudioHardware_ptr - 0x398868)
398860:  MOVS            R1, #6; unsigned __int16
398862:  MOVS            R2, #0x1E; __int16
398864:  ADD             R0, PC; AEAudioHardware_ptr
398866:  LDR             R6, [R0]; AEAudioHardware
398868:  MOV             R0, R6; this
39886A:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
39886E:  MOV             R0, R6; this
398870:  MOVS            R1, #0; unsigned __int16
398872:  MOVS            R2, #0x29 ; ')'; __int16
398874:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398878:  CMP             R0, #0
39887A:  BNE.W           loc_39855A
39887E:  LDR             R0, =(AEAudioHardware_ptr - 0x398884)
398880:  ADD             R0, PC; AEAudioHardware_ptr
398882:  B               loc_39863A
398884:  LDR             R0, =(g_surfaceInfos_ptr - 0x39888E)
398886:  LDR.W           R1, [R9,#0x94]
39888A:  ADD             R0, PC; g_surfaceInfos_ptr
39888C:  LDRB.W          R1, [R1,#0xBE]; unsigned int
398890:  LDR             R0, [R0]; g_surfaceInfos ; this
398892:  BLX             j__ZN14SurfaceInfos_c11IsAudioTileEj; SurfaceInfos_c::IsAudioTile(uint)
398896:  CBZ             R0, loc_3988F2
398898:  LDR             R0, =(AEAudioHardware_ptr - 0x3988A2)
39889A:  MOVS            R1, #5; unsigned __int16
39889C:  MOVS            R2, #0x1E; __int16
39889E:  ADD             R0, PC; AEAudioHardware_ptr
3988A0:  LDR             R0, [R0]; AEAudioHardware ; this
3988A2:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3988A6:  CMP             R0, #0
3988A8:  BNE.W           loc_3986DE
3988AC:  LDR             R0, =(AESoundManager_ptr - 0x3988B4)
3988AE:  MOVS            R1, #0x1E; __int16
3988B0:  ADD             R0, PC; AESoundManager_ptr
3988B2:  LDR             R0, [R0]; AESoundManager ; this
3988B4:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
3988B8:  SUBS            R0, #1
3988BA:  CMP             R0, #1
3988BC:  BHI             loc_3988CC
3988BE:  LDR             R0, =(AESoundManager_ptr - 0x3988C8)
3988C0:  MOVS            R1, #0x1E; __int16
3988C2:  MOVS            R2, #0; unsigned __int8
3988C4:  ADD             R0, PC; AESoundManager_ptr
3988C6:  LDR             R0, [R0]; AESoundManager ; this
3988C8:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3988CC:  LDR             R0, =(AEAudioHardware_ptr - 0x3988D6)
3988CE:  MOVS            R1, #5; unsigned __int16
3988D0:  MOVS            R2, #0x1E; __int16
3988D2:  ADD             R0, PC; AEAudioHardware_ptr
3988D4:  LDR             R6, [R0]; AEAudioHardware
3988D6:  MOV             R0, R6; this
3988D8:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3988DC:  MOV             R0, R6; this
3988DE:  MOVS            R1, #0; unsigned __int16
3988E0:  MOVS            R2, #0x29 ; ')'; __int16
3988E2:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3988E6:  CMP             R0, #0
3988E8:  BNE.W           loc_39855A
3988EC:  LDR             R0, =(AEAudioHardware_ptr - 0x3988F2)
3988EE:  ADD             R0, PC; AEAudioHardware_ptr
3988F0:  B               loc_39863A
3988F2:  LDR             R0, =(g_surfaceInfos_ptr - 0x3988FC)
3988F4:  LDR.W           R1, [R9,#0x94]
3988F8:  ADD             R0, PC; g_surfaceInfos_ptr
3988FA:  LDRB.W          R1, [R1,#0xBE]; unsigned int
3988FE:  LDR             R0, [R0]; g_surfaceInfos ; this
398900:  BLX             j__ZN14SurfaceInfos_c12IsAudioMetalEj; SurfaceInfos_c::IsAudioMetal(uint)
398904:  CBZ             R0, loc_398960
398906:  LDR             R0, =(AEAudioHardware_ptr - 0x398910)
398908:  MOVS            R1, #3; unsigned __int16
39890A:  MOVS            R2, #0x1E; __int16
39890C:  ADD             R0, PC; AEAudioHardware_ptr
39890E:  LDR             R0, [R0]; AEAudioHardware ; this
398910:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398914:  CMP             R0, #0
398916:  BNE.W           loc_3986DE
39891A:  LDR             R0, =(AESoundManager_ptr - 0x398922)
39891C:  MOVS            R1, #0x1E; __int16
39891E:  ADD             R0, PC; AESoundManager_ptr
398920:  LDR             R0, [R0]; AESoundManager ; this
398922:  BLX             j__ZN15CAESoundManager26AreSoundsPlayingInBankSlotEs; CAESoundManager::AreSoundsPlayingInBankSlot(short)
398926:  SUBS            R0, #1
398928:  CMP             R0, #1
39892A:  BHI             loc_39893A
39892C:  LDR             R0, =(AESoundManager_ptr - 0x398936)
39892E:  MOVS            R1, #0x1E; __int16
398930:  MOVS            R2, #0; unsigned __int8
398932:  ADD             R0, PC; AESoundManager_ptr
398934:  LDR             R0, [R0]; AESoundManager ; this
398936:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
39893A:  LDR             R0, =(AEAudioHardware_ptr - 0x398944)
39893C:  MOVS            R1, #3; unsigned __int16
39893E:  MOVS            R2, #0x1E; __int16
398940:  ADD             R0, PC; AEAudioHardware_ptr
398942:  LDR             R6, [R0]; AEAudioHardware
398944:  MOV             R0, R6; this
398946:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
39894A:  MOV             R0, R6; this
39894C:  MOVS            R1, #0; unsigned __int16
39894E:  MOVS            R2, #0x29 ; ')'; __int16
398950:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
398954:  CMP             R0, #0
398956:  BNE.W           loc_39855A
39895A:  LDR             R0, =(AEAudioHardware_ptr - 0x398960)
39895C:  ADD             R0, PC; AEAudioHardware_ptr
39895E:  B               loc_39863A
398960:  LDR             R0, =(AEAudioHardware_ptr - 0x39896A)
398962:  MOVS            R1, #0; unsigned __int16
398964:  MOVS            R2, #0x29 ; ')'; __int16
398966:  ADD             R0, PC; AEAudioHardware_ptr
398968:  LDR             R0, [R0]; AEAudioHardware ; this
39896A:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
39896E:  CMP             R0, #0
398970:  BNE.W           loc_39855A
398974:  LDR             R0, =(AEAudioHardware_ptr - 0x39897A)
398976:  ADD             R0, PC; AEAudioHardware_ptr
398978:  B               loc_39863A
