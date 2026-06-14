; =========================================================
; Game Engine Function: _ZN21CAEWeatherAudioEntity7ServiceEv
; Address            : 0x3BB4DC - 0x3BBAFE
; =========================================================

3BB4DC:  PUSH            {R4-R7,LR}
3BB4DE:  ADD             R7, SP, #0xC
3BB4E0:  PUSH.W          {R8-R11}
3BB4E4:  SUB             SP, SP, #4
3BB4E6:  VPUSH           {D8-D9}
3BB4EA:  SUB             SP, SP, #0xA0
3BB4EC:  MOV             R8, R0
3BB4EE:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x3BB4F8)
3BB4F2:  MOVS            R1, #0
3BB4F4:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
3BB4F6:  STR             R1, [SP,#0xD0+var_9C]
3BB4F8:  LDR             R0, [R0]; CGame::currArea ...
3BB4FA:  LDR             R0, [R0]; CGame::currArea
3BB4FC:  CMP             R0, #0
3BB4FE:  BNE.W           loc_3BB6F6
3BB502:  LDR.W           R0, =(AESoundManager_ptr - 0x3BB50E)
3BB506:  MOVS            R1, #3; __int16
3BB508:  MOV             R2, R8; CAEAudioEntity *
3BB50A:  ADD             R0, PC; AESoundManager_ptr
3BB50C:  LDR             R0, [R0]; AESoundManager ; this
3BB50E:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3BB512:  CMP             R0, #0
3BB514:  BNE             loc_3BB5DC
3BB516:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3BB524)
3BB51A:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3BB51C:  MOVS            R2, #0; __int16
3BB51E:  MOVS            R4, #0
3BB520:  ADD             R0, PC; AEAudioHardware_ptr
3BB522:  LDR             R0, [R0]; AEAudioHardware ; this
3BB524:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BB528:  CMP             R0, #0
3BB52A:  BEQ             loc_3BB5CC
3BB52C:  MOVW            R0, #0x1005
3BB530:  MOVW            R10, #0
3BB534:  STRD.W          R0, R4, [SP,#0xD0+var_B0]
3BB538:  MOVW            R1, #0x9375
3BB53C:  MOVW            R0, #0xEF9E
3BB540:  ADD.W           R11, SP, #0xD0+var_A4
3BB544:  MOVT            R10, #0xC248
3BB548:  MOVT            R1, #0x3ED8
3BB54C:  MOVT            R0, #0xBF67
3BB550:  STR             R4, [SP,#0xD0+var_A8]
3BB552:  STMEA.W         SP, {R0,R1,R4,R10}
3BB556:  MOV.W           R5, #0x3F800000
3BB55A:  MOV             R0, R11
3BB55C:  MOVS            R1, #0
3BB55E:  MOVS            R2, #0
3BB560:  MOV             R3, R8
3BB562:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3BB566:  STRD.W          R5, R4, [SP,#0xD0+var_B8]
3BB56A:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BB56E:  LDR.W           R0, =(AESoundManager_ptr - 0x3BB580)
3BB572:  MOV.W           R9, #3
3BB576:  MOV             R1, R11; CAESound *
3BB578:  STR.W           R9, [SP,#0xD0+var_98]
3BB57C:  ADD             R0, PC; AESoundManager_ptr
3BB57E:  LDR             R6, [R0]; AESoundManager
3BB580:  MOV             R0, R6; this
3BB582:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BB586:  MOVS            R0, #0x32 ; '2'
3BB588:  MOVS            R1, #0
3BB58A:  STR             R0, [SP,#0xD0+var_A8]
3BB58C:  MOVW            R0, #0x1025
3BB590:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3BB594:  MOVS            R2, #0
3BB596:  STRD.W          R0, R4, [SP,#0xD0+var_B0]
3BB59A:  MOV             R0, #0x3ED89375
3BB5A2:  STRD.W          R5, R4, [SP,#0xD0+var_B8]
3BB5A6:  STRD.W          R4, R10, [SP,#0xD0+var_C8]
3BB5AA:  MOV             R3, R8
3BB5AC:  STR             R0, [SP,#0xD0+var_CC]
3BB5AE:  MOV             R0, #0x3F67EF9E
3BB5B6:  STR             R0, [SP,#0xD0+var_D0]
3BB5B8:  MOV             R0, R11
3BB5BA:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BB5BE:  MOV             R0, R6; this
3BB5C0:  MOV             R1, R11; CAESound *
3BB5C2:  STR.W           R9, [SP,#0xD0+var_98]
3BB5C6:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BB5CA:  B               loc_3BB5DC
3BB5CC:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3BB5D8)
3BB5D0:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3BB5D2:  MOVS            R2, #0; __int16
3BB5D4:  ADD             R0, PC; AEAudioHardware_ptr
3BB5D6:  LDR             R0, [R0]; AEAudioHardware ; this
3BB5D8:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3BB5DC:  LDR.W           R0, =(AESoundManager_ptr - 0x3BB5E8)
3BB5E0:  MOVS            R1, #4; __int16
3BB5E2:  MOV             R2, R8; CAEAudioEntity *
3BB5E4:  ADD             R0, PC; AESoundManager_ptr
3BB5E6:  LDR             R0, [R0]; AESoundManager ; this
3BB5E8:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3BB5EC:  CBNZ            R0, loc_3BB668
3BB5EE:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3BB5FC)
3BB5F2:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3BB5F4:  MOVS            R2, #0; __int16
3BB5F6:  MOVS            R4, #0
3BB5F8:  ADD             R0, PC; AEAudioHardware_ptr
3BB5FA:  LDR             R0, [R0]; AEAudioHardware ; this
3BB5FC:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BB600:  CBZ             R0, loc_3BB658
3BB602:  MOVS            R1, #0
3BB604:  MOVW            R2, #0x9375
3BB608:  MOVW            R3, #0xEF9E
3BB60C:  MOVW            R0, #0x1005
3BB610:  ADD             R5, SP, #0xD0+var_A4
3BB612:  STRD.W          R0, R4, [SP,#0xD0+var_B0]
3BB616:  MOV.W           R0, #0x3F800000
3BB61A:  MOVT            R1, #0xC248
3BB61E:  MOVT            R2, #0x3ED8
3BB622:  MOVT            R3, #0xBF67
3BB626:  STR             R4, [SP,#0xD0+var_A8]
3BB628:  STRD.W          R3, R2, [SP,#0xD0+var_D0]
3BB62C:  MOVS            R2, #0x1D
3BB62E:  STRD.W          R4, R1, [SP,#0xD0+var_C8]
3BB632:  MOVS            R1, #0
3BB634:  STRD.W          R0, R0, [SP,#0xD0+var_C0]
3BB638:  MOV             R3, R8
3BB63A:  STRD.W          R0, R4, [SP,#0xD0+var_B8]
3BB63E:  MOV             R0, R5
3BB640:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BB644:  LDR.W           R0, =(AESoundManager_ptr - 0x3BB652)
3BB648:  MOVS            R1, #4
3BB64A:  STR             R1, [SP,#0xD0+var_98]
3BB64C:  MOV             R1, R5; CAESound *
3BB64E:  ADD             R0, PC; AESoundManager_ptr
3BB650:  LDR             R0, [R0]; AESoundManager ; this
3BB652:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BB656:  B               loc_3BB668
3BB658:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3BB664)
3BB65C:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3BB65E:  MOVS            R2, #0; __int16
3BB660:  ADD             R0, PC; AEAudioHardware_ptr
3BB662:  LDR             R0, [R0]; AEAudioHardware ; this
3BB664:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3BB668:  LDR.W           R0, =(AESoundManager_ptr - 0x3BB674)
3BB66C:  MOVS            R1, #5; __int16
3BB66E:  MOV             R2, R8; CAEAudioEntity *
3BB670:  ADD             R0, PC; AESoundManager_ptr
3BB672:  LDR             R0, [R0]; AESoundManager ; this
3BB674:  BLX             j__ZN15CAESoundManager40AreSoundsOfThisEventPlayingForThisEntityEsP14CAEAudioEntity; CAESoundManager::AreSoundsOfThisEventPlayingForThisEntity(short,CAEAudioEntity *)
3BB678:  CBNZ            R0, loc_3BB6F6
3BB67A:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3BB688)
3BB67E:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3BB680:  MOVS            R2, #0; __int16
3BB682:  MOVS            R4, #0
3BB684:  ADD             R0, PC; AEAudioHardware_ptr
3BB686:  LDR             R0, [R0]; AEAudioHardware ; this
3BB688:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BB68C:  CBZ             R0, loc_3BB6E6
3BB68E:  MOVW            R1, #0x1025
3BB692:  MOVW            R2, #0x9375
3BB696:  MOVW            R3, #0xEF9E
3BB69A:  STRD.W          R1, R4, [SP,#0xD0+var_B0]
3BB69E:  MOVS            R1, #0
3BB6A0:  MOVS            R0, #0x32 ; '2'
3BB6A2:  ADD             R5, SP, #0xD0+var_A4
3BB6A4:  STR             R0, [SP,#0xD0+var_A8]
3BB6A6:  MOV.W           R0, #0x3F800000
3BB6AA:  MOVT            R1, #0xC248
3BB6AE:  MOVT            R2, #0x3ED8
3BB6B2:  MOVT            R3, #0x3F67
3BB6B6:  STRD.W          R3, R2, [SP,#0xD0+var_D0]
3BB6BA:  MOVS            R2, #0x1E
3BB6BC:  STRD.W          R4, R1, [SP,#0xD0+var_C8]
3BB6C0:  MOVS            R1, #0
3BB6C2:  STRD.W          R0, R0, [SP,#0xD0+var_C0]
3BB6C6:  MOV             R3, R8
3BB6C8:  STRD.W          R0, R4, [SP,#0xD0+var_B8]
3BB6CC:  MOV             R0, R5
3BB6CE:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BB6D2:  LDR.W           R0, =(AESoundManager_ptr - 0x3BB6E0)
3BB6D6:  MOVS            R1, #5
3BB6D8:  STR             R1, [SP,#0xD0+var_98]
3BB6DA:  MOV             R1, R5; CAESound *
3BB6DC:  ADD             R0, PC; AESoundManager_ptr
3BB6DE:  LDR             R0, [R0]; AESoundManager ; this
3BB6E0:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BB6E4:  B               loc_3BB6F6
3BB6E6:  LDR.W           R0, =(AEAudioHardware_ptr - 0x3BB6F2)
3BB6EA:  MOVS            R1, #0x3B ; ';'; unsigned __int16
3BB6EC:  MOVS            R2, #0; __int16
3BB6EE:  ADD             R0, PC; AEAudioHardware_ptr
3BB6F0:  LDR             R0, [R0]; AEAudioHardware ; this
3BB6F2:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3BB6F6:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x3BB702)
3BB6FA:  VLDR            S16, =-100.0
3BB6FE:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
3BB700:  LDR             R0, [R0]; this
3BB702:  VLDR            S0, [R0]
3BB706:  VCMPE.F32       S0, #0.0
3BB70A:  VMRS            APSR_nzcv, FPSCR
3BB70E:  BLE             loc_3BB792
3BB710:  BLX             j__ZN10CCullZones12PlayerNoRainEv; CCullZones::PlayerNoRain(void)
3BB714:  CBNZ            R0, loc_3BB792
3BB716:  BLX             j__ZN10CCullZones9CamNoRainEv; CCullZones::CamNoRain(void)
3BB71A:  CBNZ            R0, loc_3BB792
3BB71C:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x3BB724)
3BB720:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
3BB722:  LDR             R0, [R0]; CGame::currArea ...
3BB724:  LDR             R0, [R0]; CGame::currArea
3BB726:  CBNZ            R0, loc_3BB792
3BB728:  LDR.W           R0, =(_ZN8CWeather4RainE_ptr - 0x3BB734)
3BB72C:  VLDR            S0, =-0.2
3BB730:  ADD             R0, PC; _ZN8CWeather4RainE_ptr
3BB732:  VLDR            S6, =0.0
3BB736:  VLDR            S4, =0.8
3BB73A:  LDR             R0, [R0]; CWeather::Rain ...
3BB73C:  LDR.W           R2, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB74C)
3BB740:  LDR.W           R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x3BB74E)
3BB744:  VLDR            S2, [R0]
3BB748:  ADD             R2, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB74A:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
3BB74C:  VADD.F32        S0, S2, S0
3BB750:  LDR             R2, [R2]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB752:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
3BB754:  VLDR            S2, [R2]
3BB758:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes
3BB75A:  VMAX.F32        D0, D0, D3
3BB75E:  VDIV.F32        S0, S0, S4
3BB762:  VMOV            R0, S0; x
3BB766:  VLDR            S0, =-50.0
3BB76A:  VMAX.F32        D0, D1, D0
3BB76E:  VSTR            S0, [R2]
3BB772:  LDRSB.W         R4, [R1,#0x8F]
3BB776:  BLX             log10f
3BB77A:  VMOV.F32        S0, #20.0
3BB77E:  VMOV            S4, R4
3BB782:  VMOV            S2, R0
3BB786:  VCVT.F32.S32    S4, S4
3BB78A:  VMUL.F32        S0, S2, S0
3BB78E:  VADD.F32        S16, S0, S4
3BB792:  LDR.W           R0, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB79A)
3BB796:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB798:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB79A:  VLDR            S0, [R0]
3BB79E:  VCMPE.F32       S16, S0
3BB7A2:  VMRS            APSR_nzcv, FPSCR
3BB7A6:  BGE             loc_3BB7B6
3BB7A8:  VMOV.F32        S2, #-0.5
3BB7AC:  VADD.F32        S0, S0, S2
3BB7B0:  VMAX.F32        D0, D0, D8
3BB7B4:  B               loc_3BB7C4
3BB7B6:  BLE             loc_3BB7CE
3BB7B8:  VMOV.F32        S2, #0.5
3BB7BC:  VADD.F32        S0, S0, S2
3BB7C0:  VMIN.F32        D0, D0, D8
3BB7C4:  LDR             R0, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB7CA)
3BB7C6:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB7C8:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB7CA:  VSTR            S0, [R0]
3BB7CE:  VLDR            S2, =-100.0
3BB7D2:  VCMP.F32        S16, S2
3BB7D6:  VMRS            APSR_nzcv, FPSCR
3BB7DA:  BNE             loc_3BB82C
3BB7DC:  VLDR            S2, =-50.0
3BB7E0:  VCMPE.F32       S0, S2
3BB7E4:  VMRS            APSR_nzcv, FPSCR
3BB7E8:  BGT             loc_3BB82C
3BB7EA:  LDR.W           R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr - 0x3BB7FA)
3BB7EE:  MOVS            R2, #0
3BB7F0:  LDR             R1, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB7FC)
3BB7F2:  MOVT            R2, #0xC2C8
3BB7F6:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr
3BB7F8:  ADD             R1, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB7FA:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sRainSoundL ...
3BB7FC:  LDR             R1, [R1]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB7FE:  LDRH.W          R0, [R0,#(word_94EBBC - 0x94EB34)]
3BB802:  STR             R2, [R1]; CAEWeatherAudioEntity::m_sfRainVolume
3BB804:  CBZ             R0, loc_3BB810
3BB806:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr - 0x3BB80C)
3BB808:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr
3BB80A:  LDR             R0, [R0]; this
3BB80C:  BLX             j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3BB810:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr - 0x3BB816)
3BB812:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr
3BB814:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sRainSoundR ...
3BB816:  LDRH.W          R0, [R0,#(word_94EC64 - 0x94EBDC)]
3BB81A:  CMP             R0, #0
3BB81C:  BEQ.W           loc_3BBAEA
3BB820:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr - 0x3BB826)
3BB822:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr
3BB824:  LDR             R0, [R0]; this
3BB826:  BLX             j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3BB82A:  B               loc_3BBAEA
3BB82C:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr - 0x3BB83A)
3BB82E:  MOV             R9, #0x3ED89375
3BB836:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr
3BB838:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sRainSoundL ...
3BB83A:  LDRH.W          R0, [R0,#(word_94EBBC - 0x94EB34)]
3BB83E:  CMP             R0, #0
3BB840:  BEQ             loc_3BB90A
3BB842:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr - 0x3BB854)
3BB844:  MOVW            R10, #0xEF9E
3BB848:  MOVW            R2, #0x9375
3BB84C:  MOVT            R10, #0xBF67
3BB850:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr
3BB852:  MOV.W           R5, #0x3F800000
3BB856:  MOVT            R2, #0x3ED8
3BB85A:  MOV             R1, R10
3BB85C:  LDR             R6, [R0]; CAEWeatherAudioEntity::m_sRainSoundL ...
3BB85E:  MOVS            R3, #0
3BB860:  STR             R5, [SP,#0xD0+var_CC]
3BB862:  MOVS            R4, #0
3BB864:  VSTR            S0, [SP,#0xD0+var_D0]
3BB868:  MOV             R0, R6
3BB86A:  BLX             j__ZN22CAETwinLoopSoundEntity19UpdateTwinLoopSoundE7CVectorff; CAETwinLoopSoundEntity::UpdateTwinLoopSound(CVector,float,float)
3BB86E:  MOV             R0, R6; this
3BB870:  BLX             j__ZN22CAETwinLoopSoundEntity23DoSoundsSwitchThisFrameEv; CAETwinLoopSoundEntity::DoSoundsSwitchThisFrame(void)
3BB874:  CMP             R0, #0
3BB876:  BEQ             loc_3BB976
3BB878:  LDR             R0, =(_ZN21CAEWeatherAudioEntity23m_snLastRainDropSoundIDE_ptr - 0x3BB884)
3BB87A:  VMOV.F32        S0, #-15.0
3BB87E:  LDR             R1, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB886)
3BB880:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity23m_snLastRainDropSoundIDE_ptr
3BB882:  ADD             R1, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB884:  LDR             R6, [R0]; CAEWeatherAudioEntity::m_snLastRainDropSoundID ...
3BB886:  LDR             R0, [R1]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB888:  MOVS            R1, #0x40C00000; float
3BB88E:  LDRH.W          R11, [R6]; CAEWeatherAudioEntity::m_snLastRainDropSoundID
3BB892:  VLDR            S2, [R0]
3BB896:  MOVS            R0, #0xC0C00000; this
3BB89C:  VADD.F32        S16, S2, S0
3BB8A0:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEff; CAEAudioUtility::GetRandomNumberInRange(float,float)
3BB8A4:  VMOV            S18, R0
3BB8A8:  MOV.W           R0, #0x3F000000; this
3BB8AC:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3BB8B0:  VADD.F32        S0, S16, S18
3BB8B4:  CMP             R0, #0
3BB8B6:  MOV             R0, R9
3BB8B8:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3BB8BC:  STRD.W          R5, R4, [SP,#0xD0+var_B8]
3BB8C0:  ADD             R5, SP, #0xD0+var_A4
3BB8C2:  STRD.W          R4, R4, [SP,#0xD0+var_B0]
3BB8C6:  MOV.W           R1, #6
3BB8CA:  STR             R4, [SP,#0xD0+var_A8]
3BB8CC:  IT EQ
3BB8CE:  ADDEQ.W         R0, R0, #0x80000000
3BB8D2:  STRD.W          R10, R0, [SP,#0xD0+var_D0]
3BB8D6:  MOV             R3, R8
3BB8D8:  STR             R4, [SP,#0xD0+var_C8]
3BB8DA:  ADD.W           R4, R11, #1
3BB8DE:  VSTR            S0, [SP,#0xD0+var_C4]
3BB8E2:  LSLS            R0, R4, #0x10
3BB8E4:  CMP.W           R0, #0xB0000
3BB8E8:  IT GT
3BB8EA:  MOVGT           R4, #2
3BB8EC:  MOV             R0, R5
3BB8EE:  SXTH            R2, R4
3BB8F0:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BB8F4:  LDR             R0, =(AESoundManager_ptr - 0x3BB902)
3BB8F6:  MOVS            R1, #3
3BB8F8:  STRH.W          R1, [SP,#0xD0+var_4E]
3BB8FC:  MOV             R1, R5; CAESound *
3BB8FE:  ADD             R0, PC; AESoundManager_ptr
3BB900:  LDR             R0, [R0]; AESoundManager ; this
3BB902:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BB906:  STRH            R4, [R6]; CAEWeatherAudioEntity::m_snLastRainDropSoundID
3BB908:  B               loc_3BB976
3BB90A:  LDR             R0, =(AEAudioHardware_ptr - 0x3BB914)
3BB90C:  MOVS            R1, #0x69 ; 'i'; unsigned __int16
3BB90E:  MOVS            R2, #6; __int16
3BB910:  ADD             R0, PC; AEAudioHardware_ptr
3BB912:  LDR             R0, [R0]; AEAudioHardware ; this
3BB914:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BB918:  CMP             R0, #0
3BB91A:  BEQ.W           loc_3BBAD6
3BB91E:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr - 0x3BB92C)
3BB920:  MOVS            R3, #0x41 ; 'A'
3BB922:  MOVS            R1, #0
3BB924:  MOV.W           R2, #0x15E
3BB928:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr
3BB92A:  STRD.W          R8, R3, [SP,#0xD0+var_D0]; CAEAudioEntity *
3BB92E:  STRD.W          R2, R1, [SP,#0xD0+var_C8]; unsigned __int16
3BB932:  MOVS            R2, #1; __int16
3BB934:  LDR             R5, [R0]; CAEWeatherAudioEntity::m_sRainSoundL ...
3BB936:  MOVS            R3, #0; __int16
3BB938:  STR             R1, [SP,#0xD0+var_C0]; __int16
3BB93A:  MOVS            R1, #6; __int16
3BB93C:  MOV             R0, R5; this
3BB93E:  BLX             j__ZN22CAETwinLoopSoundEntity10InitialiseEsssP14CAEAudioEntityttss; CAETwinLoopSoundEntity::Initialise(short,short,short,CAEAudioEntity *,ushort,ushort,short,short)
3BB942:  LDR             R0, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB952)
3BB944:  MOV.W           R1, #0x3F800000
3BB948:  MOVW            R2, #0x9375
3BB94C:  MOVS            R3, #0
3BB94E:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB950:  MOVT            R2, #0x3ED8
3BB954:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB956:  VLDR            S0, [R0]
3BB95A:  MOVS            R0, #0x23 ; '#'
3BB95C:  STRD.W          R1, R1, [SP,#0xD0+var_CC]; unsigned __int16
3BB960:  STRD.W          R1, R0, [SP,#0xD0+var_C4]; __int16
3BB964:  MOV             R1, #0xBF67EF9E
3BB96C:  MOV             R0, R5
3BB96E:  VSTR            S0, [SP,#0xD0+var_D0]
3BB972:  BLX             j__ZN22CAETwinLoopSoundEntity17PlayTwinLoopSoundE7CVectorfffft; CAETwinLoopSoundEntity::PlayTwinLoopSound(CVector,float,float,float,float,ushort)
3BB976:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr - 0x3BB97C)
3BB978:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr
3BB97A:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sRainSoundR ...
3BB97C:  LDRH.W          R0, [R0,#(word_94EC64 - 0x94EBDC)]
3BB980:  CMP             R0, #0
3BB982:  BEQ             loc_3BBA6C
3BB984:  LDR             R0, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB996)
3BB986:  MOVW            R10, #0xEF9E
3BB98A:  MOVW            R2, #0x9375
3BB98E:  MOVT            R10, #0x3F67
3BB992:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB994:  MOV.W           R5, #0x3F800000
3BB998:  MOVT            R2, #0x3ED8
3BB99C:  MOV             R1, R10
3BB99E:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB9A0:  MOVS            R3, #0
3BB9A2:  STR             R5, [SP,#0xD0+var_CC]
3BB9A4:  MOVS            R4, #0
3BB9A6:  VLDR            S0, [R0]
3BB9AA:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr - 0x3BB9B4)
3BB9AC:  VSTR            S0, [SP,#0xD0+var_D0]
3BB9B0:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr
3BB9B2:  LDR             R6, [R0]; CAEWeatherAudioEntity::m_sRainSoundR ...
3BB9B4:  MOV             R0, R6
3BB9B6:  BLX             j__ZN22CAETwinLoopSoundEntity19UpdateTwinLoopSoundE7CVectorff; CAETwinLoopSoundEntity::UpdateTwinLoopSound(CVector,float,float)
3BB9BA:  MOV             R0, R6; this
3BB9BC:  BLX             j__ZN22CAETwinLoopSoundEntity23DoSoundsSwitchThisFrameEv; CAETwinLoopSoundEntity::DoSoundsSwitchThisFrame(void)
3BB9C0:  CMP             R0, #0
3BB9C2:  BEQ.W           loc_3BBAEA
3BB9C6:  LDR             R0, =(_ZN21CAEWeatherAudioEntity23m_snLastRainDropSoundIDE_ptr - 0x3BB9D2)
3BB9C8:  VMOV.F32        S0, #-15.0
3BB9CC:  LDR             R1, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB9D4)
3BB9CE:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity23m_snLastRainDropSoundIDE_ptr
3BB9D0:  ADD             R1, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB9D2:  LDR             R6, [R0]; CAEWeatherAudioEntity::m_snLastRainDropSoundID ...
3BB9D4:  LDR             R0, [R1]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB9D6:  MOVS            R1, #0x40C00000; float
3BB9DC:  LDRH.W          R11, [R6]; CAEWeatherAudioEntity::m_snLastRainDropSoundID
3BB9E0:  VLDR            S2, [R0]
3BB9E4:  MOVS            R0, #0xC0C00000; this
3BB9EA:  VADD.F32        S16, S2, S0
3BB9EE:  BLX             j__ZN15CAEAudioUtility22GetRandomNumberInRangeEff; CAEAudioUtility::GetRandomNumberInRange(float,float)
3BB9F2:  VMOV            S18, R0
3BB9F6:  MOV.W           R0, #0x3F000000; this
3BB9FA:  BLX             j__ZN15CAEAudioUtility18ResolveProbabilityEf; CAEAudioUtility::ResolveProbability(float)
3BB9FE:  VADD.F32        S0, S16, S18
3BBA02:  CMP             R0, #0
3BBA04:  STRD.W          R5, R5, [SP,#0xD0+var_C0]
3BBA08:  MOV.W           R1, #6
3BBA0C:  STRD.W          R5, R4, [SP,#0xD0+var_B8]
3BBA10:  ADD             R5, SP, #0xD0+var_A4
3BBA12:  STRD.W          R4, R4, [SP,#0xD0+var_B0]
3BBA16:  MOV             R3, R8
3BBA18:  STR             R4, [SP,#0xD0+var_A8]
3BBA1A:  IT EQ
3BBA1C:  ADDEQ.W         R9, R9, #0x80000000
3BBA20:  STRD.W          R10, R9, [SP,#0xD0+var_D0]
3BBA24:  STR             R4, [SP,#0xD0+var_C8]
3BBA26:  ADD.W           R4, R11, #1
3BBA2A:  VSTR            S0, [SP,#0xD0+var_C4]
3BBA2E:  LSLS            R0, R4, #0x10
3BBA30:  CMP.W           R0, #0xB0000
3BBA34:  IT GT
3BBA36:  MOVGT           R4, #2
3BBA38:  MOV             R0, R5
3BBA3A:  SXTH            R2, R4
3BBA3C:  BLX             j__ZN8CAESound10InitialiseEssP14CAEAudioEntity7CVectorffffhtfs; CAESound::Initialise(short,short,CAEAudioEntity *,CVector,float,float,float,float,uchar,ushort,float,short)
3BBA40:  LDR             R0, =(AESoundManager_ptr - 0x3BBA4E)
3BBA42:  MOVS            R1, #3
3BBA44:  STRH.W          R1, [SP,#0xD0+var_4E]
3BBA48:  MOV             R1, R5; CAESound *
3BBA4A:  ADD             R0, PC; AESoundManager_ptr
3BBA4C:  LDR             R0, [R0]; AESoundManager ; this
3BBA4E:  BLX             j__ZN15CAESoundManager15RequestNewSoundEP8CAESound; CAESoundManager::RequestNewSound(CAESound *)
3BBA52:  STRH            R4, [R6]; CAEWeatherAudioEntity::m_snLastRainDropSoundID
3BBA54:  B               loc_3BBAEA
3BBA56:  ALIGN 4
3BBA58:  DCFS -100.0
3BBA5C:  DCFS -0.2
3BBA60:  DCFS 0.0
3BBA64:  DCFS 0.8
3BBA68:  DCFS -50.0
3BBA6C:  LDR             R0, =(AEAudioHardware_ptr - 0x3BBA76)
3BBA6E:  MOVS            R1, #0x69 ; 'i'; unsigned __int16
3BBA70:  MOVS            R2, #6; __int16
3BBA72:  ADD             R0, PC; AEAudioHardware_ptr
3BBA74:  LDR             R0, [R0]; AEAudioHardware ; this
3BBA76:  BLX             j__ZN16CAEAudioHardware17IsSoundBankLoadedEts; CAEAudioHardware::IsSoundBankLoaded(ushort,short)
3BBA7A:  CBZ             R0, loc_3BBADC
3BBA7C:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr - 0x3BBA8A)
3BBA7E:  MOVS            R3, #0x41 ; 'A'
3BBA80:  MOVS            R1, #0x32 ; '2'
3BBA82:  MOV.W           R2, #0x15E
3BBA86:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr
3BBA88:  STRD.W          R8, R3, [SP,#0xD0+var_D0]; CAEAudioEntity *
3BBA8C:  STRD.W          R2, R1, [SP,#0xD0+var_C8]; unsigned __int16
3BBA90:  MOVS            R2, #0; __int16
3BBA92:  LDR             R4, [R0]; CAEWeatherAudioEntity::m_sRainSoundR ...
3BBA94:  MOVS            R3, #1; __int16
3BBA96:  STR             R1, [SP,#0xD0+var_C0]; __int16
3BBA98:  MOVS            R1, #6; __int16
3BBA9A:  MOV             R0, R4; this
3BBA9C:  BLX             j__ZN22CAETwinLoopSoundEntity10InitialiseEsssP14CAEAudioEntityttss; CAETwinLoopSoundEntity::Initialise(short,short,short,CAEAudioEntity *,ushort,ushort,short,short)
3BBAA0:  LDR             R0, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BBAB0)
3BBAA2:  MOV.W           R1, #0x3F800000
3BBAA6:  MOVW            R2, #0x9375
3BBAAA:  MOVS            R3, #0
3BBAAC:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BBAAE:  MOVT            R2, #0x3ED8
3BBAB2:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BBAB4:  VLDR            S0, [R0]
3BBAB8:  MOVS            R0, #0x23 ; '#'
3BBABA:  STRD.W          R1, R1, [SP,#0xD0+var_CC]
3BBABE:  STRD.W          R1, R0, [SP,#0xD0+var_C4]
3BBAC2:  MOV             R1, #0x3F67EF9E
3BBACA:  MOV             R0, R4
3BBACC:  VSTR            S0, [SP,#0xD0+var_D0]
3BBAD0:  BLX             j__ZN22CAETwinLoopSoundEntity17PlayTwinLoopSoundE7CVectorfffft; CAETwinLoopSoundEntity::PlayTwinLoopSound(CVector,float,float,float,float,ushort)
3BBAD4:  B               loc_3BBAEA
3BBAD6:  LDR             R0, =(AEAudioHardware_ptr - 0x3BBADC)
3BBAD8:  ADD             R0, PC; AEAudioHardware_ptr
3BBADA:  B               loc_3BBAE0
3BBADC:  LDR             R0, =(AEAudioHardware_ptr - 0x3BBAE2)
3BBADE:  ADD             R0, PC; AEAudioHardware_ptr
3BBAE0:  LDR             R0, [R0]; AEAudioHardware ; this
3BBAE2:  MOVS            R1, #0x69 ; 'i'; unsigned __int16
3BBAE4:  MOVS            R2, #6; __int16
3BBAE6:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3BBAEA:  ADD             R0, SP, #0xD0+var_A4; this
3BBAEC:  BLX             j__ZN8CAESoundD2Ev; CAESound::~CAESound()
3BBAF0:  ADD             SP, SP, #0xA0
3BBAF2:  VPOP            {D8-D9}
3BBAF6:  ADD             SP, SP, #4
3BBAF8:  POP.W           {R8-R11}
3BBAFC:  POP             {R4-R7,PC}
