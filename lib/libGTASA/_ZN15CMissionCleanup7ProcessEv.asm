; =========================================================
; Game Engine Function: _ZN15CMissionCleanup7ProcessEv
; Address            : 0x327664 - 0x328072
; =========================================================

327664:  PUSH            {R4-R7,LR}
327666:  ADD             R7, SP, #0xC
327668:  PUSH.W          {R8-R11}
32766C:  SUB             SP, SP, #0x2C
32766E:  MOV             R9, R0
327670:  LDR.W           R0, =(_ZN11CTheScripts18bScriptHasFadedOutE_ptr - 0x327678)
327674:  ADD             R0, PC; _ZN11CTheScripts18bScriptHasFadedOutE_ptr
327676:  LDR             R0, [R0]; CTheScripts::bScriptHasFadedOut ...
327678:  LDRB            R0, [R0]; CTheScripts::bScriptHasFadedOut
32767A:  CBZ             R0, loc_3276C0
32767C:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x32768A)
327680:  MOVS            R2, #0
327682:  LDR.W           R1, =(_ZN11CTheScripts18bScriptHasFadedOutE_ptr - 0x32768C)
327686:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
327688:  ADD             R1, PC; _ZN11CTheScripts18bScriptHasFadedOutE_ptr
32768A:  LDR             R0, [R0]; CWorld::Players ...
32768C:  LDR             R1, [R1]; CTheScripts::bScriptHasFadedOut ...
32768E:  LDRB.W          R0, [R0,#(byte_96B778 - 0x96B69C)]
327692:  STRB            R2, [R1]; CTheScripts::bScriptHasFadedOut
327694:  SUBS            R0, #1
327696:  UXTB            R0, R0
327698:  CMP             R0, #2
32769A:  BCC             loc_3276C0
32769C:  LDR.W           R0, =(TheCamera_ptr - 0x3276AA)
3276A0:  MOV.W           R1, #0x3F000000; float
3276A4:  MOVS            R2, #1; __int16
3276A6:  ADD             R0, PC; TheCamera_ptr
3276A8:  LDR             R0, [R0]; TheCamera ; this
3276AA:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
3276AE:  MOVS            R0, #0; this
3276B0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3276B4:  LDRH.W          R1, [R0,#0x110]
3276B8:  BIC.W           R1, R1, #0x20 ; ' '; bool
3276BC:  STRH.W          R1, [R0,#0x110]
3276C0:  MOVS            R0, #0; this
3276C2:  MOVS            R4, #0
3276C4:  BLX             j__ZN6CTrain19DisableRandomTrainsEb; CTrain::DisableRandomTrains(bool)
3276C8:  BLX             j__ZN6CTrain20ReleaseMissionTrainsEv; CTrain::ReleaseMissionTrains(void)
3276CC:  MOVS            R0, #(stderr+1); this
3276CE:  MOV.W           R10, #1
3276D2:  BLX             j__ZN6CPlane19SwitchAmbientPlanesEb; CPlane::SwitchAmbientPlanes(bool)
3276D6:  LDR.W           R0, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x3276E6)
3276DA:  MOV.W           R11, #0x3F800000
3276DE:  LDR.W           R1, =(_ZN8CCarCtrl20CarDensityMultiplierE_ptr - 0x3276EC)
3276E2:  ADD             R0, PC; _ZN9CGangWars16bTrainingMissionE_ptr
3276E4:  LDR.W           R2, =(_ZN11CPopulation20PedDensityMultiplierE_ptr - 0x3276F0)
3276E8:  ADD             R1, PC; _ZN8CCarCtrl20CarDensityMultiplierE_ptr
3276EA:  LDR             R0, [R0]; CGangWars::bTrainingMission ...
3276EC:  ADD             R2, PC; _ZN11CPopulation20PedDensityMultiplierE_ptr
3276EE:  LDR             R1, [R1]; CCarCtrl::CarDensityMultiplier ...
3276F0:  LDR             R2, [R2]; CPopulation::PedDensityMultiplier ...
3276F2:  LDRB            R0, [R0]; CGangWars::bTrainingMission
3276F4:  STR.W           R11, [R1]; CCarCtrl::CarDensityMultiplier
3276F8:  CMP             R0, #0
3276FA:  STR.W           R11, [R2]; CPopulation::PedDensityMultiplier
3276FE:  BEQ             loc_327722
327700:  LDR.W           R0, =(_ZN9CGangWars15bGangWarsActiveE_ptr - 0x32770C)
327704:  LDR.W           R1, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x32770E)
327708:  ADD             R0, PC; _ZN9CGangWars15bGangWarsActiveE_ptr
32770A:  ADD             R1, PC; _ZN9CGangWars16bTrainingMissionE_ptr
32770C:  LDR             R0, [R0]; CGangWars::bGangWarsActive ...
32770E:  LDR             R1, [R1]; bool
327710:  LDRB            R0, [R0]; CGangWars::bGangWarsActive
327712:  STRB            R4, [R1]; CGangWars::bTrainingMission
327714:  CMP             R0, #0
327716:  MOV.W           R0, #0
32771A:  IT EQ
32771C:  MOVEQ           R0, #(stderr+1); this
32771E:  BLX             j__ZN9CTheZones24FillZonesWithGangColoursEb; CTheZones::FillZonesWithGangColours(bool)
327722:  LDR.W           R0, =(_ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr - 0x327732)
327726:  MOV.W           R8, #0xFFFFFFFF
32772A:  LDR.W           R1, =(_ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr - 0x327734)
32772E:  ADD             R0, PC; _ZN9CGangWars32bCanTriggerGangWarWhenOnAMissionE_ptr
327730:  ADD             R1, PC; _ZN11CPopulation23m_AllRandomPedsThisTypeE_ptr
327732:  LDR             R0, [R0]; this
327734:  LDR             R1, [R1]; CPopulation::m_AllRandomPedsThisType ...
327736:  STRB            R4, [R0]; CGangWars::bCanTriggerGangWarWhenOnAMission
327738:  STR.W           R8, [R1]; CPopulation::m_AllRandomPedsThisType
32773C:  BLX             j__ZN9CGangWars34ClearSpecificZonesToTriggerGangWarEv; CGangWars::ClearSpecificZonesToTriggerGangWar(void)
327740:  LDR.W           R0, =(_ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr - 0x327750)
327744:  LDR.W           R1, =(_ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr - 0x327756)
327748:  LDR.W           R2, =(_ZN11CPopulation23m_bDontCreateRandomCopsE_ptr - 0x327758)
32774C:  ADD             R0, PC; _ZN11CPopulation30m_bOnlyCreateRandomGangMembersE_ptr
32774E:  LDR.W           R3, =(_ZN8CGarages10NoRespraysE_ptr - 0x32775C)
327752:  ADD             R1, PC; _ZN11CPopulation30m_bDontCreateRandomGangMembersE_ptr
327754:  ADD             R2, PC; _ZN11CPopulation23m_bDontCreateRandomCopsE_ptr
327756:  LDR             R0, [R0]; CPopulation::m_bOnlyCreateRandomGangMembers ...
327758:  ADD             R3, PC; _ZN8CGarages10NoRespraysE_ptr
32775A:  LDR             R1, [R1]; bool
32775C:  LDR             R2, [R2]; CPopulation::m_bDontCreateRandomCops ...
32775E:  LDR             R3, [R3]; CGarages::NoResprays ...
327760:  STRB            R4, [R0]; CPopulation::m_bOnlyCreateRandomGangMembers
327762:  MOVS            R0, #(stderr+1); this
327764:  STRB            R4, [R1]; CPopulation::m_bDontCreateRandomGangMembers
327766:  STRB            R4, [R2]; CPopulation::m_bDontCreateRandomCops
327768:  STRB            R4, [R3]; CGarages::NoResprays
32776A:  BLX             j__ZN8CGarages22AllRespraysCloseOrOpenEb; CGarages::AllRespraysCloseOrOpen(bool)
32776E:  LDR.W           R0, =(_ZN10CCullZones22bMilitaryZonesDisabledE_ptr - 0x327776)
327772:  ADD             R0, PC; _ZN10CCullZones22bMilitaryZonesDisabledE_ptr
327774:  LDR             R0, [R0]; CCullZones::bMilitaryZonesDisabled ...
327776:  STRB            R4, [R0]; CCullZones::bMilitaryZonesDisabled
327778:  MOV.W           R0, #0xFFFFFFFF; int
32777C:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
327780:  STR.W           R11, [R0,#0x14]
327784:  BLX             j__ZN8CPickups20RemoveMissionPickUpsEv; CPickups::RemoveMissionPickUps(void)
327788:  BLX             j__ZN11CRoadBlocks21ClearScriptRoadBlocksEv; CRoadBlocks::ClearScriptRoadBlocks(void)
32778C:  MOVS            R0, #0; this
32778E:  BLX             j__ZN10CStreaming15DisableCopBikesEb; CStreaming::DisableCopBikes(bool)
327792:  LDR.W           R0, =(_ZN7CObject22bArea51SamSiteDisabledE_ptr - 0x3277A2)
327796:  LDR.W           R3, =(ThePaths_ptr - 0x3277A8)
32779A:  LDR.W           R1, =(g_LoadMonitor_ptr - 0x3277AA)
32779E:  ADD             R0, PC; _ZN7CObject22bArea51SamSiteDisabledE_ptr
3277A0:  LDR.W           R2, =(_ZN7CObject31bAircraftCarrierSamSiteDisabledE_ptr - 0x3277AE)
3277A4:  ADD             R3, PC; ThePaths_ptr
3277A6:  ADD             R1, PC; g_LoadMonitor_ptr
3277A8:  LDR             R0, [R0]; CObject::bArea51SamSiteDisabled ...
3277AA:  ADD             R2, PC; _ZN7CObject31bAircraftCarrierSamSiteDisabledE_ptr
3277AC:  LDR             R5, [R3]; ThePaths
3277AE:  LDR             R1, [R1]; g_LoadMonitor
3277B0:  LDR             R2, [R2]; CObject::bAircraftCarrierSamSiteDisabled ...
3277B2:  STRB            R4, [R0]; CObject::bArea51SamSiteDisabled
3277B4:  MOV             R0, R5; this
3277B6:  STRB.W          R10, [R1,#(byte_959608 - 0x9595EC)]
3277BA:  STRB.W          R10, [R2]; CObject::bAircraftCarrierSamSiteDisabled
3277BE:  BLX             j__ZN9CPathFind21ReleaseRequestedNodesEv; CPathFind::ReleaseRequestedNodes(void)
3277C2:  MOV             R0, R5; this
3277C4:  BLX             j__ZN9CPathFind30UnMarkAllRoadNodesAsDontWanderEv; CPathFind::UnMarkAllRoadNodesAsDontWander(void)
3277C8:  MOV             R0, R5; this
3277CA:  BLX             j__ZN9CPathFind30TidyUpNodeSwitchesAfterMissionEv; CPathFind::TidyUpNodeSwitchesAfterMission(void)
3277CE:  BLX             j__ZN17CVehicleRecording32RemoveAllRecordingsThatArentUsedEv; CVehicleRecording::RemoveAllRecordingsThatArentUsed(void)
3277D2:  LDR.W           R0, =(TheCamera_ptr - 0x3277DA)
3277D6:  ADD             R0, PC; TheCamera_ptr
3277D8:  LDR             R5, [R0]; TheCamera
3277DA:  MOV             R0, R5; this
3277DC:  BLX             j__ZN7CCamera16SetWideScreenOffEv; CCamera::SetWideScreenOff(void)
3277E0:  MOVS            R0, #:lower16:loc_310032
3277E2:  MOVS            R1, #:lower16:(loc_300002+1)
3277E4:  MOVT            R0, #:upper16:loc_310032
3277E8:  MOVT            R1, #:upper16:(loc_300002+1)
3277EC:  STRD.W          R0, R1, [R5,#(dword_951FEC - 0x951FA8)]
3277F0:  MOV             R0, R5; this
3277F2:  STRB.W          R4, [R5,#(byte_951FEB - 0x951FA8)]
3277F6:  STRB.W          R4, [R5,#(byte_952C20 - 0x951FA8)]
3277FA:  BLX             j__ZN7CCamera30InitialiseScriptableComponentsEv; CCamera::InitialiseScriptableComponents(void)
3277FE:  MOV             R0, R5; this
327800:  MOVS            R1, #0; CPed *
327802:  BLX             j__ZN7CCamera18ResetDuckingSystemEP4CPed; CCamera::ResetDuckingSystem(CPed *)
327806:  LDR.W           R0, =(gCurDistForCam_ptr - 0x327816)
32780A:  LDR.W           R1, =(_ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr - 0x32781C)
32780E:  LDR.W           R2, =(_ZN11CTheScripts14bDrawCrossHairE_ptr - 0x327822)
327812:  ADD             R0, PC; gCurDistForCam_ptr
327814:  LDR.W           R3, =(_ZN10CSpecialFX9bVideoCamE_ptr - 0x327828)
327818:  ADD             R1, PC; _ZN10CGameLogic22bScriptCoopGameGoingOnE_ptr
32781A:  LDR.W           R5, =(_ZN10CSpecialFX8bLiftCamE_ptr - 0x32782A)
32781E:  ADD             R2, PC; _ZN11CTheScripts14bDrawCrossHairE_ptr
327820:  LDR.W           R6, =(gAllowScriptedFixedCameraCollision_ptr - 0x32782E)
327824:  ADD             R3, PC; _ZN10CSpecialFX9bVideoCamE_ptr
327826:  ADD             R5, PC; _ZN10CSpecialFX8bLiftCamE_ptr
327828:  LDR             R0, [R0]; gCurDistForCam ; this
32782A:  ADD             R6, PC; gAllowScriptedFixedCameraCollision_ptr
32782C:  LDR             R1, [R1]; CGameLogic::bScriptCoopGameGoingOn ...
32782E:  LDR             R2, [R2]; CTheScripts::bDrawCrossHair ...
327830:  LDR             R3, [R3]; CSpecialFX::bVideoCam ...
327832:  LDR             R5, [R5]; CSpecialFX::bLiftCam ...
327834:  LDR             R6, [R6]; gAllowScriptedFixedCameraCollision
327836:  STR.W           R11, [R0]
32783A:  STRB            R4, [R1]; CGameLogic::bScriptCoopGameGoingOn
32783C:  STRB            R4, [R6]
32783E:  STR             R4, [R2]; CTheScripts::bDrawCrossHair
327840:  STRB            R4, [R3]; CSpecialFX::bVideoCam
327842:  STRB            R4, [R5]; CSpecialFX::bLiftCam
327844:  BLX             j__ZN12CPostEffects21ScriptResetForEffectsEv; CPostEffects::ScriptResetForEffects(void)
327848:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x327854)
32784C:  LDR.W           R1, =(_ZN17CEntryExitManager12ms_bDisabledE_ptr - 0x327856)
327850:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
327852:  ADD             R1, PC; _ZN17CEntryExitManager12ms_bDisabledE_ptr
327854:  LDR             R0, [R0]; CGame::currArea ...
327856:  LDR             R1, [R1]; bool
327858:  LDR             R0, [R0]; CGame::currArea
32785A:  STRB            R4, [R1]; CEntryExitManager::ms_bDisabled
32785C:  CMP             R0, #0
32785E:  ITT EQ
327860:  MOVEQ           R0, #0; this
327862:  BLXEQ           j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
327866:  LDR.W           R0, =(AudioEngine_ptr - 0x327874)
32786A:  MOVS            R1, #0; unsigned __int8
32786C:  MOV.W           R11, #0
327870:  ADD             R0, PC; AudioEngine_ptr
327872:  LDR             R5, [R0]; AudioEngine
327874:  MOV             R0, R5; this
327876:  BLX             j__ZN12CAudioEngine17ClearMissionAudioEh; CAudioEngine::ClearMissionAudio(uchar)
32787A:  MOV             R0, R5; this
32787C:  MOVS            R1, #1; unsigned __int8
32787E:  MOV.W           R10, #1
327882:  BLX             j__ZN12CAudioEngine17ClearMissionAudioEh; CAudioEngine::ClearMissionAudio(uchar)
327886:  MOV             R0, R5; this
327888:  MOVS            R1, #2; unsigned __int8
32788A:  BLX             j__ZN12CAudioEngine17ClearMissionAudioEh; CAudioEngine::ClearMissionAudio(uchar)
32788E:  MOV             R0, R5; this
327890:  MOVS            R1, #3; unsigned __int8
327892:  BLX             j__ZN12CAudioEngine17ClearMissionAudioEh; CAudioEngine::ClearMissionAudio(uchar)
327896:  MOV             R0, R5; this
327898:  BLX             j__ZN12CAudioEngine7ServiceEv; CAudioEngine::Service(void)
32789C:  BLX             j__ZN8CWeather14ReleaseWeatherEv; CWeather::ReleaseWeather(void)
3278A0:  LDR.W           R0, =(gFireManager_ptr - 0x3278B0)
3278A4:  MOV             R1, #0x1869F; int
3278AC:  ADD             R0, PC; gFireManager_ptr
3278AE:  LDR             R0, [R0]; gFireManager
3278B0:  STR.W           R1, [R0,#(dword_959160 - 0x958800)]
3278B4:  MOVS            R0, #0; this
3278B6:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278BA:  MOVS            R0, #(stderr+1); this
3278BC:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278C0:  MOVS            R0, #(stderr+2); this
3278C2:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278C6:  MOVS            R0, #(stderr+3); this
3278C8:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278CC:  MOVS            R0, #byte_4; this
3278CE:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278D2:  MOVS            R0, #byte_5; this
3278D4:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278D8:  MOVS            R0, #byte_6; this
3278DA:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278DE:  MOVS            R0, #byte_7; this
3278E0:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278E4:  MOVS            R0, #byte_8; this
3278E6:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278EA:  MOVS            R0, #byte_9; this
3278EC:  BLX             j__ZN10CStreaming34SetMissionDoesntRequireSpecialCharEi; CStreaming::SetMissionDoesntRequireSpecialChar(int)
3278F0:  BLX             j__ZN11CTheScripts27ClearAllSuppressedCarModelsEv; CTheScripts::ClearAllSuppressedCarModels(void)
3278F4:  LDR.W           R0, =(_ZN11CTheScripts19ForceRandomCarModelE_ptr - 0x327900)
3278F8:  LDR.W           R5, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x327906)
3278FC:  ADD             R0, PC; _ZN11CTheScripts19ForceRandomCarModelE_ptr
3278FE:  LDR.W           R1, =(_ZN11CTheScripts14RadarZoomValueE_ptr - 0x32790E)
327902:  ADD             R5, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
327904:  LDR.W           R2, =(_ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr - 0x327912)
327908:  LDR             R0, [R0]; CTheScripts::ForceRandomCarModel ...
32790A:  ADD             R1, PC; _ZN11CTheScripts14RadarZoomValueE_ptr
32790C:  LDR             R5, [R5]; CStreaming::ms_disableStreaming ...
32790E:  ADD             R2, PC; _ZN11CTheScripts24RadarShowBlipOnAllLevelsE_ptr
327910:  LDR.W           R3, =(_ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr - 0x327920)
327914:  STR.W           R8, [R0]; CTheScripts::ForceRandomCarModel
327918:  LDR.W           R0, =(_ZN4CHud13m_ItemToFlashE_ptr - 0x32792A)
32791C:  ADD             R3, PC; _ZN11CTheScripts23HideAllFrontEndMapBlipsE_ptr
32791E:  STRB.W          R11, [R5]; CStreaming::ms_disableStreaming
327922:  MOVW            R5, #0xFFFF
327926:  ADD             R0, PC; _ZN4CHud13m_ItemToFlashE_ptr
327928:  LDR             R1, [R1]; unsigned __int8
32792A:  LDR             R2, [R2]; CTheScripts::RadarShowBlipOnAllLevels ...
32792C:  LDR             R0, [R0]; CHud::m_ItemToFlash ...
32792E:  LDR             R3, [R3]; CTheScripts::HideAllFrontEndMapBlips ...
327930:  STRB.W          R11, [R1]; CTheScripts::RadarZoomValue
327934:  STRH            R5, [R0]; CHud::m_ItemToFlash
327936:  LDR.W           R0, =(_ZN4CHud23bScriptDontDisplayRadarE_ptr - 0x327942)
32793A:  STRB.W          R11, [R2]; CTheScripts::RadarShowBlipOnAllLevels
32793E:  ADD             R0, PC; _ZN4CHud23bScriptDontDisplayRadarE_ptr
327940:  STRB.W          R11, [R3]; CTheScripts::HideAllFrontEndMapBlips
327944:  LDR             R0, [R0]; CHud::bScriptDontDisplayRadar ...
327946:  STRB.W          R11, [R0]; CHud::bScriptDontDisplayRadar
32794A:  LDR.W           R0, =(_ZN4CHud29bScriptDontDisplayVehicleNameE_ptr - 0x327952)
32794E:  ADD             R0, PC; _ZN4CHud29bScriptDontDisplayVehicleNameE_ptr
327950:  LDR             R0, [R0]; CHud::bScriptDontDisplayVehicleName ...
327952:  STRB.W          R11, [R0]; CHud::bScriptDontDisplayVehicleName
327956:  LDR.W           R0, =(_ZN4CHud26bScriptDontDisplayAreaNameE_ptr - 0x32795E)
32795A:  ADD             R0, PC; _ZN4CHud26bScriptDontDisplayAreaNameE_ptr
32795C:  LDR             R0, [R0]; CHud::bScriptDontDisplayAreaName ...
32795E:  STRB.W          R11, [R0]; CHud::bScriptDontDisplayAreaName
327962:  LDR.W           R0, =(_ZN4CHud31bScriptForceDisplayWithCountersE_ptr - 0x32796A)
327966:  ADD             R0, PC; _ZN4CHud31bScriptForceDisplayWithCountersE_ptr
327968:  LDR             R0, [R0]; CHud::bScriptForceDisplayWithCounters ...
32796A:  STRB.W          R11, [R0]; CHud::bScriptForceDisplayWithCounters
32796E:  LDR.W           R0, =(FrontEndMenuManager_ptr - 0x327976)
327972:  ADD             R0, PC; FrontEndMenuManager_ptr
327974:  LDR             R0, [R0]; FrontEndMenuManager
327976:  STRB.W          R11, [R0,#(byte_98F119 - 0x98F0F8)]
32797A:  MOVS            R0, #0; this
32797C:  BLX             j__ZN10C3dMarkers11ForceRenderEh; C3dMarkers::ForceRender(uchar)
327980:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x327990)
327984:  LDR.W           R1, =(_ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr - 0x327992)
327988:  LDR.W           R2, =(_ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr - 0x327994)
32798C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
32798E:  ADD             R1, PC; _ZN11CTheScripts26bDrawOddJobTitleBeforeFadeE_ptr
327990:  ADD             R2, PC; _ZN11CTheScripts24bDrawSubtitlesBeforeFadeE_ptr
327992:  LDR             R4, [R0]; CWorld::Players ...
327994:  LDR             R0, [R1]; CTheScripts::bDrawOddJobTitleBeforeFade ...
327996:  LDR             R1, [R2]; CTheScripts::bDrawSubtitlesBeforeFade ...
327998:  LDR.W           R2, =(_ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr - 0x3279A4)
32799C:  STRB.W          R10, [R0]; CTheScripts::bDrawOddJobTitleBeforeFade
3279A0:  ADD             R2, PC; _ZN11CTheScripts34fCameraHeadingWhenPlayerIsAttachedE_ptr
3279A2:  STRB.W          R10, [R1]; CTheScripts::bDrawSubtitlesBeforeFade
3279A6:  LDR.W           R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x3279B0)
3279AA:  LDR             R2, [R2]; CTheScripts::fCameraHeadingWhenPlayerIsAttached ...
3279AC:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
3279AE:  STR.W           R11, [R2]; CTheScripts::fCameraHeadingWhenPlayerIsAttached
3279B2:  LDR.W           R2, =(_ZN11CTheScripts11bDisplayHudE_ptr - 0x3279BC)
3279B6:  LDR             R1, [R1]; CPedGroups::ms_groups ...
3279B8:  ADD             R2, PC; _ZN11CTheScripts11bDisplayHudE_ptr
3279BA:  LDR             R2, [R2]; CTheScripts::bDisplayHud ...
3279BC:  STRB.W          R10, [R2]; CTheScripts::bDisplayHud
3279C0:  LDR.W           R2, =(_ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr - 0x3279C8)
3279C4:  ADD             R2, PC; _ZN11CTheScripts38fCameraHeadingStepWhenPlayerIsAttachedE_ptr
3279C6:  LDR             R2, [R2]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached ...
3279C8:  STR.W           R11, [R2]; CTheScripts::fCameraHeadingStepWhenPlayerIsAttached
3279CC:  LDR.W           R2, =(_ZN11CTheScripts17bEnableCraneRaiseE_ptr - 0x3279D4)
3279D0:  ADD             R2, PC; _ZN11CTheScripts17bEnableCraneRaiseE_ptr
3279D2:  LDR             R2, [R2]; CTheScripts::bEnableCraneRaise ...
3279D4:  STRB.W          R10, [R2]; CTheScripts::bEnableCraneRaise
3279D8:  LDR.W           R2, =(_ZN11CTheScripts17bEnableCraneLowerE_ptr - 0x3279E0)
3279DC:  ADD             R2, PC; _ZN11CTheScripts17bEnableCraneLowerE_ptr
3279DE:  LDR             R2, [R2]; CTheScripts::bEnableCraneLower ...
3279E0:  STRB.W          R10, [R2]; CTheScripts::bEnableCraneLower
3279E4:  LDR.W           R2, =(_ZN11CTheScripts19bEnableCraneReleaseE_ptr - 0x3279EC)
3279E8:  ADD             R2, PC; _ZN11CTheScripts19bEnableCraneReleaseE_ptr
3279EA:  LDR             R2, [R2]; CTheScripts::bEnableCraneRelease ...
3279EC:  STRB.W          R10, [R2]; CTheScripts::bEnableCraneRelease
3279F0:  LDR.W           R2, =(_ZN12CUserDisplay10OnscnTimerE_ptr - 0x3279F8)
3279F4:  ADD             R2, PC; _ZN12CUserDisplay10OnscnTimerE_ptr
3279F6:  LDR             R2, [R2]; CUserDisplay::OnscnTimer ...
3279F8:  STRB.W          R11, [R2,#(byte_96B691 - 0x96B540)]
3279FC:  LDR.W           R2, =(_ZN11CTheScripts21bUseMessageFormattingE_ptr - 0x327A04)
327A00:  ADD             R2, PC; _ZN11CTheScripts21bUseMessageFormattingE_ptr
327A02:  LDR             R2, [R2]; CTheScripts::bUseMessageFormatting ...
327A04:  STRB.W          R11, [R2]; CTheScripts::bUseMessageFormatting
327A08:  LDR.W           R2, =(_ZN11CTheScripts13MessageCentreE_ptr - 0x327A10)
327A0C:  ADD             R2, PC; _ZN11CTheScripts13MessageCentreE_ptr
327A0E:  LDR             R2, [R2]; CTheScripts::MessageCentre ...
327A10:  STRH.W          R11, [R2]; CTheScripts::MessageCentre
327A14:  LDR.W           R2, =(_ZN11CTheScripts12MessageWidthE_ptr - 0x327A1C)
327A18:  ADD             R2, PC; _ZN11CTheScripts12MessageWidthE_ptr
327A1A:  LDR             R2, [R2]; CTheScripts::MessageWidth ...
327A1C:  STRH.W          R11, [R2]; CTheScripts::MessageWidth
327A20:  LDR             R2, [R4]; CWorld::Players
327A22:  LDR.W           R0, [R2,#0x444]
327A26:  MOV.W           R2, #0x2D4
327A2A:  LDR             R0, [R0,#0x38]
327A2C:  MLA.W           R6, R0, R2, R1
327A30:  MOVS            R1, #1; int
327A32:  ADD.W           R5, R6, #0x30 ; '0'
327A36:  MOV             R0, R5; this
327A38:  BLX             j__ZN21CPedGroupIntelligence27SetDefaultTaskAllocatorTypeEi; CPedGroupIntelligence::SetDefaultTaskAllocatorType(int)
327A3C:  MOV             R0, R5; this
327A3E:  MOV.W           R1, #0xFFFFFFFF; int
327A42:  BLX             j__ZN21CPedGroupIntelligence25SetGroupDecisionMakerTypeEi; CPedGroupIntelligence::SetGroupDecisionMakerType(int)
327A46:  LDR.W           R0, =(_ZN19CPedGroupMembership28ms_fPlayerGroupMaxSeparationE_ptr - 0x327A4E)
327A4A:  ADD             R0, PC; _ZN19CPedGroupMembership28ms_fPlayerGroupMaxSeparationE_ptr
327A4C:  LDR             R0, [R0]; CPedGroupMembership::ms_fPlayerGroupMaxSeparation ...
327A4E:  LDR             R0, [R0]; CPedGroupMembership::ms_fPlayerGroupMaxSeparation
327A50:  STR             R0, [R6,#0x2C]
327A52:  LDR             R0, [R4]; this
327A54:  LDR.W           R1, [R0,#0x444]
327A58:  LDRH            R2, [R1,#0x34]
327A5A:  BIC.W           R2, R2, #0x100
327A5E:  STRH            R2, [R1,#0x34]
327A60:  MOVS            R1, #0; bool
327A62:  BLX             j__ZN10CPlayerPed24ForceGroupToAlwaysFollowEb; CPlayerPed::ForceGroupToAlwaysFollow(bool)
327A66:  LDR             R0, [R4]; this
327A68:  MOVS            R1, #0; bool
327A6A:  BLX             j__ZN10CPlayerPed23ForceGroupToNeverFollowEb; CPlayerPed::ForceGroupToNeverFollow(bool)
327A6E:  LDR             R0, [R4]; this
327A70:  BLX             j__ZN10CPlayerPed23MakePlayerGroupReappearEv; CPlayerPed::MakePlayerGroupReappear(void)
327A74:  LDR             R0, [R4]; this
327A76:  MOVS            R2, #0x63 ; 'c'
327A78:  LDR.W           R1, [R0,#0x444]
327A7C:  STRB.W          R2, [R1,#0x43]
327A80:  MOV.W           R1, #0x3F800000
327A84:  STR.W           R1, [R0,#0x73C]
327A88:  STRH.W          R10, [R4,#(word_96B6E1 - 0x96B69C)]
327A8C:  BLX             j__ZN4CPed15EnablePedSpeechEv; CPed::EnablePedSpeech(void)
327A90:  LDR             R0, [R4]; this
327A92:  BLX             j__ZN4CPed30EnablePedSpeechForScriptSpeechEv; CPed::EnablePedSpeechForScriptSpeech(void)
327A96:  MOVS            R0, #0; this
327A98:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327A9C:  MOVS            R1, #0; int
327A9E:  BLX             j__ZN4CPad18SetDrunkInputDelayEi; CPad::SetDrunkInputDelay(int)
327AA2:  MOVS            R0, #0; this
327AA4:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327AA8:  STRB.W          R11, [R0,#0x12C]
327AAC:  MOVS            R0, #0; this
327AAE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327AB2:  STRB.W          R11, [R0,#0x12D]
327AB6:  MOVS            R0, #0; this
327AB8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327ABC:  STRB.W          R11, [R0,#0x12E]
327AC0:  MOVS            R0, #0; this
327AC2:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327AC6:  STRB.W          R11, [R0,#0x12F]
327ACA:  MOVS            R0, #0; this
327ACC:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327AD0:  STRB.W          R11, [R0,#0x130]
327AD4:  MOVS            R0, #0; this
327AD6:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327ADA:  STRB.W          R11, [R0,#0x131]
327ADE:  MOVS            R0, #0; this
327AE0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327AE4:  STRB.W          R11, [R0,#0x132]
327AE8:  MOVS            R0, #0; this
327AEA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
327AEE:  STRB.W          R11, [R0,#0x133]
327AF2:  MOVS            R1, #3; int
327AF4:  LDR             R0, [R4]; CWorld::Players
327AF6:  MOV.W           R2, #0x640; int
327AFA:  STRB.W          R10, [R4,#(byte_96B7EF - 0x96B69C)]
327AFE:  LDR.W           R0, [R0,#0x440]
327B02:  ADDS            R0, #4; this
327B04:  BLX             j__ZNK12CTaskManager14FindTaskByTypeEii; CTaskManager::FindTaskByType(int,int)
327B08:  MOV             R5, R0
327B0A:  CBZ             R5, loc_327B2A
327B0C:  LDR             R0, [R5]
327B0E:  LDR             R1, [R0,#0x14]
327B10:  MOV             R0, R5
327B12:  BLX             R1
327B14:  CMP.W           R0, #0x640
327B18:  BNE             loc_327B2A
327B1A:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x327B22)
327B1E:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
327B20:  LDR             R0, [R0]; CWorld::Players ...
327B22:  LDR             R1, [R0]; CPed *
327B24:  MOV             R0, R5; this
327B26:  BLX             j__ZN26CTaskComplexUseMobilePhone4StopEP4CPed; CTaskComplexUseMobilePhone::Stop(CPed *)
327B2A:  LDR.W           R0, =(_ZN8CVehicle33bDisableRemoteDetonationOnContactE_ptr - 0x327B38)
327B2E:  MOVS            R4, #1
327B30:  LDR.W           R1, =(_ZN8CVehicle24bDisableRemoteDetonationE_ptr - 0x327B3A)
327B34:  ADD             R0, PC; _ZN8CVehicle33bDisableRemoteDetonationOnContactE_ptr
327B36:  ADD             R1, PC; _ZN8CVehicle24bDisableRemoteDetonationE_ptr
327B38:  LDR             R0, [R0]; CVehicle::bDisableRemoteDetonationOnContact ...
327B3A:  LDR             R1, [R1]; bool
327B3C:  STRB.W          R11, [R0]; CVehicle::bDisableRemoteDetonationOnContact
327B40:  MOVS            R0, #(stderr+1); this
327B42:  STRB.W          R11, [R1]; CVehicle::bDisableRemoteDetonation
327B46:  BLX             j__ZN10CGameLogic9ClearSkipEb; CGameLogic::ClearSkip(bool)
327B4A:  LDR.W           R0, =(_ZN10CGameLogic9GameStateE_ptr - 0x327B52)
327B4E:  ADD             R0, PC; _ZN10CGameLogic9GameStateE_ptr
327B50:  LDR             R0, [R0]; CGameLogic::GameState ...
327B52:  LDRB            R0, [R0]; CGameLogic::GameState
327B54:  SUBS            R0, #1
327B56:  UXTB            R0, R0
327B58:  CMP             R0, #2
327B5A:  BCC             loc_327B80
327B5C:  MOV.W           R0, #0xFFFFFFFF; int
327B60:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
327B64:  LDR.W           R0, [R0,#0x44C]
327B68:  CMP             R0, #0x37 ; '7'
327B6A:  BEQ             loc_327B80
327B6C:  MOV.W           R0, #0xFFFFFFFF; int
327B70:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
327B74:  LDR.W           R0, [R0,#0x44C]; this
327B78:  CMP             R0, #0x36 ; '6'
327B7A:  IT NE
327B7C:  BLXNE           j__ZN8CRestart37ClearRespawnPointForDurationOfMissionEv; CRestart::ClearRespawnPointForDurationOfMission(void)
327B80:  LDR.W           R0, =(_ZN11CTheScripts13RiotIntensityE_ptr - 0x327B8E)
327B84:  MOVS            R5, #0
327B86:  LDR.W           R1, =(gFireManager_ptr - 0x327B90)
327B8A:  ADD             R0, PC; _ZN11CTheScripts13RiotIntensityE_ptr
327B8C:  ADD             R1, PC; gFireManager_ptr
327B8E:  LDR             R2, [R0]; CTheScripts::RiotIntensity ...
327B90:  LDR             R0, [R1]; gFireManager ; this
327B92:  STRB            R5, [R2]; CTheScripts::RiotIntensity
327B94:  BLX             j__ZN12CFireManager23ClearAllScriptFireFlagsEv; CFireManager::ClearAllScriptFireFlags(void)
327B98:  LDR.W           R0, =(_ZN11CTheScripts14UpsideDownCarsE_ptr - 0x327BAC)
327B9C:  VMOV.I64        Q8, #0xFFFFFFFF
327BA0:  LDR.W           R2, =(_ZN11CTheScripts21StoreVehicleWasRandomE_ptr - 0x327BAE)
327BA4:  LDR.W           R1, =(_ZN11CTheScripts17StoreVehicleIndexE_ptr - 0x327BB0)
327BA8:  ADD             R0, PC; _ZN11CTheScripts14UpsideDownCarsE_ptr
327BAA:  ADD             R2, PC; _ZN11CTheScripts21StoreVehicleWasRandomE_ptr
327BAC:  ADD             R1, PC; _ZN11CTheScripts17StoreVehicleIndexE_ptr
327BAE:  LDR             R3, [R0]; CTheScripts::UpsideDownCars ...
327BB0:  LDR             R0, [R2]; CTheScripts::StoreVehicleWasRandom ...
327BB2:  LDR             R1, [R1]; CTheScripts::StoreVehicleIndex ...
327BB4:  ADD.W           R2, R3, #0x20 ; ' '
327BB8:  STRB            R4, [R0]; CTheScripts::StoreVehicleWasRandom
327BBA:  MOV.W           R0, #0xFFFFFFFF
327BBE:  STR             R0, [R1]; CTheScripts::StoreVehicleIndex
327BC0:  LDR.W           R1, =(_ZN11CTheScripts9StuckCarsE_ptr - 0x327BD0)
327BC4:  VST1.32         {D16-D17}, [R2]
327BC8:  MOVW            R2, #0x4000
327BCC:  ADD             R1, PC; _ZN11CTheScripts9StuckCarsE_ptr
327BCE:  MOVT            R2, #0xC59C
327BD2:  VST1.32         {D16-D17}, [R3]!
327BD6:  LDR             R1, [R1]; CTheScripts::StuckCars ...
327BD8:  VST1.32         {D16-D17}, [R3]
327BDC:  MOVS            R3, #0
327BDE:  STR             R0, [R1,R3]
327BE0:  ADDS            R6, R1, R3
327BE2:  ADDS            R3, #0x24 ; '$'
327BE4:  CMP.W           R3, #0x240
327BE8:  STRD.W          R2, R2, [R6,#4]
327BEC:  STRD.W          R2, R0, [R6,#0xC]
327BF0:  STR.W           R5, [R6,#0x1E]
327BF4:  STR.W           R5, [R6,#0x1A]
327BF8:  STRD.W          R5, R5, [R6,#0x14]
327BFC:  BNE             loc_327BDE
327BFE:  LDR.W           R1, =(_ZN13CEventGunShot29ms_fGunShotSenseRangeForRiot2E_ptr - 0x327C14)
327C02:  MOVS            R6, #0
327C04:  LDR.W           R2, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x327C16)
327C08:  MOVT            R6, #0xBF80
327C0C:  LDR.W           R3, =(_ZN11CTheScripts19bMiniGameInProgressE_ptr - 0x327C1C)
327C10:  ADD             R1, PC; _ZN13CEventGunShot29ms_fGunShotSenseRangeForRiot2E_ptr
327C12:  ADD             R2, PC; _ZN6CStats16bShowUpdateStatsE_ptr
327C14:  LDR.W           R0, =(_ZN8CVehicle24ms_forceVehicleLightsOffE_ptr - 0x327C22)
327C18:  ADD             R3, PC; _ZN11CTheScripts19bMiniGameInProgressE_ptr
327C1A:  LDR             R1, [R1]; CEventGunShot::ms_fGunShotSenseRangeForRiot2 ...
327C1C:  LDR             R2, [R2]; CStats::bShowUpdateStats ...
327C1E:  ADD             R0, PC; _ZN8CVehicle24ms_forceVehicleLightsOffE_ptr
327C20:  LDR             R3, [R3]; CTheScripts::bMiniGameInProgress ...
327C22:  MOVS            R5, #0
327C24:  STR             R6, [R1]; CEventGunShot::ms_fGunShotSenseRangeForRiot2
327C26:  MOVS            R1, #1
327C28:  LDR             R0, [R0]; CVehicle::ms_forceVehicleLightsOff ...
327C2A:  STRB            R1, [R2]; CStats::bShowUpdateStats
327C2C:  LDRB            R1, [R3]; CTheScripts::bMiniGameInProgress
327C2E:  STRB            R5, [R0]; CVehicle::ms_forceVehicleLightsOff
327C30:  CBNZ            R1, loc_327CA4
327C32:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x327C42)
327C36:  MOV.W           R2, #0x194
327C3A:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x327C44)
327C3E:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
327C40:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
327C42:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
327C44:  LDR             R1, [R1]; CWorld::Players ...
327C46:  LDR             R0, [R0]; CWorld::PlayerInFocus
327C48:  SMLABB.W        R0, R0, R2, R1
327C4C:  LDR.W           R0, [R0,#0xB0]
327C50:  CBNZ            R0, loc_327C5E
327C52:  LDR.W           R0, =(TheCamera_ptr - 0x327C5A)
327C56:  ADD             R0, PC; TheCamera_ptr
327C58:  LDR             R0, [R0]; TheCamera ; this
327C5A:  BLX             j__ZN7CCamera7RestoreEv; CCamera::Restore(void)
327C5E:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x327C68)
327C62:  MOVS            R4, #0
327C64:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
327C66:  LDR             R0, [R0]; this
327C68:  LDR             R1, [R0]; CWorld::Players
327C6A:  LDR.W           R2, [R1,#0x444]
327C6E:  LDR             R2, [R2]
327C70:  LDRB            R3, [R2,#0x1E]
327C72:  AND.W           R3, R3, #0xFE
327C76:  STRB            R3, [R2,#0x1E]
327C78:  LDR.W           R1, [R1,#0x444]
327C7C:  LDR             R1, [R1]
327C7E:  LDRB            R2, [R1,#0x1E]
327C80:  AND.W           R2, R2, #0xFB
327C84:  STRB            R2, [R1,#0x1E]
327C86:  MOVW            R2, #0x4000
327C8A:  MOVS            R1, #0; bool
327C8C:  MOVT            R2, #0x461C; float
327C90:  BLX             j__ZN11CPlayerInfo14MakePlayerSafeEbf; CPlayerInfo::MakePlayerSafe(bool,float)
327C94:  MOVS            R0, #0; this
327C96:  MOVS            R1, #0; char *
327C98:  MOVS            R2, #(stderr+1); unsigned __int16 *
327C9A:  MOVS            R3, #0; bool
327C9C:  STRD.W          R4, R4, [SP,#0x48+var_48]; bool
327CA0:  BLX             j__ZN4CHud14SetHelpMessageEPKcPtbbbj; CHud::SetHelpMessage(char const*,ushort *,bool,bool,bool,uint)
327CA4:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x327CB6)
327CA8:  MOV.W           R8, #0
327CAC:  LDR.W           R1, =(_ZN11CTheScripts23ScriptSequenceTaskArrayE_ptr - 0x327CB8)
327CB0:  MOV             R4, R9
327CB2:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
327CB4:  ADD             R1, PC; _ZN11CTheScripts23ScriptSequenceTaskArrayE_ptr
327CB6:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
327CB8:  STR             R0, [SP,#0x48+var_20]
327CBA:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x327CC2)
327CBE:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
327CC0:  LDR             R0, [R0]; CPools::ms_pPedPool ...
327CC2:  STR             R0, [SP,#0x48+var_24]
327CC4:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x327CCC)
327CC8:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
327CCA:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
327CCC:  STR             R0, [SP,#0x48+var_28]
327CCE:  LDR.W           R0, =(_ZN11CTheScripts23ScriptEffectSystemArrayE_ptr - 0x327CD6)
327CD2:  ADD             R0, PC; _ZN11CTheScripts23ScriptEffectSystemArrayE_ptr
327CD4:  LDR             R0, [R0]; CTheScripts::ScriptEffectSystemArray ...
327CD6:  STR             R0, [SP,#0x48+var_2C]
327CD8:  LDR.W           R0, =(_ZN18CScripted2dEffects12ms_activatedE_ptr - 0x327CE0)
327CDC:  ADD             R0, PC; _ZN18CScripted2dEffects12ms_activatedE_ptr
327CDE:  LDR             R0, [R0]; CScripted2dEffects::ms_activated ...
327CE0:  STR             R0, [SP,#0x48+var_30]
327CE2:  LDR.W           R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x327CEA)
327CE6:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
327CE8:  LDR             R0, [R0]; CTaskSequences::ms_taskSequence ...
327CEA:  STR             R0, [SP,#0x48+var_34]
327CEC:  LDR.W           R0, =(_ZN14CTaskSequences15ms_taskSequenceE_ptr - 0x327CF4)
327CF0:  ADD             R0, PC; _ZN14CTaskSequences15ms_taskSequenceE_ptr
327CF2:  LDR             R0, [R0]; CTaskSequences::ms_taskSequence ...
327CF4:  STR             R0, [SP,#0x48+var_40]
327CF6:  LDR.W           R0, =(_ZN14CTaskSequences12ms_bIsOpenedE_ptr - 0x327CFE)
327CFA:  ADD             R0, PC; _ZN14CTaskSequences12ms_bIsOpenedE_ptr
327CFC:  LDR             R0, [R0]; CTaskSequences::ms_bIsOpened ...
327CFE:  STR             R0, [SP,#0x48+var_38]
327D00:  LDR             R0, [R1]; CTheScripts::ScriptSequenceTaskArray ...
327D02:  STR             R0, [SP,#0x48+var_3C]
327D04:  LDR.W           R0, =(_ZN11CTheScripts13ScriptSpritesE_ptr - 0x327D0C)
327D08:  ADD             R0, PC; _ZN11CTheScripts13ScriptSpritesE_ptr
327D0A:  LDR.W           R10, [R0]; CTheScripts::ScriptSprites ...
327D0E:  LDR.W           R0, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x327D16)
327D12:  ADD             R0, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
327D14:  LDR.W           R11, [R0]; CTxdStore::ms_pTxdPool ...
327D18:  LDRB            R0, [R4]
327D1A:  CMP             R0, #0xD; switch 14 cases
327D1C:  BHI.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327D20:  TBB.W           [PC,R0]; switch jump
327D24:  DCB 0xCA; jump table for switch statement
327D25:  DCB 7
327D26:  DCB 0x1F
327D27:  DCB 0x37
327D28:  DCB 0x4E
327D29:  DCB 0x60
327D2A:  DCB 0xC5
327D2B:  DCB 0x69
327D2C:  DCB 0x72
327D2D:  DCB 0x82
327D2E:  DCB 0xC5
327D2F:  DCB 0x8B
327D30:  DCB 0x95
327D31:  DCB 0x9F
327D32:  LDR             R1, [R4,#4]; jumptable 00327D20 case 1
327D34:  CMP             R1, #0
327D36:  BLT.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327D3A:  LDR             R0, [SP,#0x48+var_20]
327D3C:  LSRS            R2, R1, #8
327D3E:  UXTB            R1, R1
327D40:  LDR             R0, [R0]
327D42:  LDR             R3, [R0,#4]
327D44:  LDRB            R3, [R3,R2]
327D46:  CMP             R3, R1
327D48:  BNE.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327D4C:  LDR             R0, [R0]
327D4E:  MOVW            R1, #(elf_hash_bucket+0x930); CVehicle *
327D52:  MLA.W           R0, R2, R1, R0; this
327D56:  CMP             R0, #0
327D58:  BEQ.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327D5C:  BLX             j__ZN11CTheScripts18CleanUpThisVehicleEP8CVehicle; CTheScripts::CleanUpThisVehicle(CVehicle *)
327D60:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327D62:  LDR             R1, [R4,#4]; jumptable 00327D20 case 2
327D64:  CMP             R1, #0
327D66:  BLT.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327D6A:  LDR             R0, [SP,#0x48+var_24]
327D6C:  LSRS            R2, R1, #8
327D6E:  UXTB            R1, R1
327D70:  LDR             R0, [R0]
327D72:  LDR             R3, [R0,#4]
327D74:  LDRB            R3, [R3,R2]
327D76:  CMP             R3, R1
327D78:  BNE.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327D7C:  LDR             R0, [R0]
327D7E:  MOVW            R1, #(elf_hash_bucket+0x6D0); CPed *
327D82:  MLA.W           R0, R2, R1, R0; this
327D86:  CMP             R0, #0
327D88:  BEQ.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327D8C:  BLX             j__ZN11CTheScripts14CleanUpThisPedEP4CPed; CTheScripts::CleanUpThisPed(CPed *)
327D90:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327D92:  LDR             R1, [R4,#4]; jumptable 00327D20 case 3
327D94:  CMP             R1, #0
327D96:  BLT.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327D9A:  LDR             R0, [SP,#0x48+var_28]
327D9C:  LSRS            R2, R1, #8
327D9E:  UXTB            R1, R1
327DA0:  LDR             R0, [R0]
327DA2:  LDR             R3, [R0,#4]
327DA4:  LDRB            R3, [R3,R2]
327DA6:  CMP             R3, R1
327DA8:  BNE.W           def_327D20; jumptable 00327D20 default case, cases 6,10
327DAC:  LDR             R0, [R0]
327DAE:  MOV.W           R1, #(elf_hash_bucket+0xA8); CObject *
327DB2:  MLA.W           R0, R2, R1, R0; this
327DB6:  CMP             R0, #0
327DB8:  BEQ             def_327D20; jumptable 00327D20 default case, cases 6,10
327DBA:  BLX             j__ZN11CTheScripts17CleanUpThisObjectEP7CObject; CTheScripts::CleanUpThisObject(CObject *)
327DBE:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327DC0:  LDR             R0, [R4,#4]; jumptable 00327D20 case 4
327DC2:  MOVS            R1, #1; int
327DC4:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
327DC8:  CMP             R0, #0
327DCA:  BLT             def_327D20; jumptable 00327D20 default case, cases 6,10
327DCC:  LDR             R1, [SP,#0x48+var_2C]
327DCE:  ADD.W           R0, R1, R0,LSL#3
327DD2:  LDR             R0, [R0,#4]; this
327DD4:  CMP             R0, #0
327DD6:  BEQ             def_327D20; jumptable 00327D20 default case, cases 6,10
327DD8:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
327DDC:  LDR             R0, [R4,#4]; this
327DDE:  BLX             j__ZN11CTheScripts24RemoveScriptEffectSystemEi; CTheScripts::RemoveScriptEffectSystem(int)
327DE2:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327DE4:  LDR             R0, [R4,#4]; jumptable 00327D20 case 5
327DE6:  MOVS            R1, #8; int
327DE8:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
327DEC:  CMP             R0, #0
327DEE:  BLT             def_327D20; jumptable 00327D20 default case, cases 6,10
327DF0:  BLX             j__ZN10CPedGroups11RemoveGroupEi; CPedGroups::RemoveGroup(int)
327DF4:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327DF6:  LDR             R0, [R4,#4]; jumptable 00327D20 case 7
327DF8:  MOVS            R1, #6; int
327DFA:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
327DFE:  CMP             R0, #0
327E00:  ITT GE
327E02:  LDRGE           R1, [SP,#0x48+var_30]
327E04:  STRBGE          R5, [R1,R0]
327E06:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327E08:  LDR             R0, [R4,#4]; jumptable 00327D20 case 8
327E0A:  MOVS            R1, #4; int
327E0C:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
327E10:  MOV             R6, R0
327E12:  CMP             R6, #0
327E14:  BLT             def_327D20; jumptable 00327D20 default case, cases 6,10
327E16:  LDR             R0, [SP,#0x48+var_34]
327E18:  ADD.W           R0, R0, R6,LSL#6
327E1C:  LDR             R1, [R0,#0x3C]
327E1E:  ADDS            R0, #0x38 ; '8'
327E20:  CBZ             R1, loc_327E98
327E22:  MOVS            R1, #1
327E24:  STRB            R1, [R0]
327E26:  B               loc_327EA4
327E28:  LDR             R0, [R4,#4]; jumptable 00327D20 case 9
327E2A:  MOVS            R1, #7; int
327E2C:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
327E30:  CMP             R0, #0
327E32:  BLT             def_327D20; jumptable 00327D20 default case, cases 6,10
327E34:  BLX             j__ZN29CDecisionMakerTypesFileLoader19UnloadDecisionMakerEi; CDecisionMakerTypesFileLoader::UnloadDecisionMaker(int)
327E38:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327E3A:  LDR             R0, [R4,#4]; jumptable 00327D20 case 11
327E3C:  MOVS            R1, #2; int
327E3E:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
327E42:  CMP             R0, #0
327E44:  BLT             def_327D20; jumptable 00327D20 default case, cases 6,10
327E46:  LDR             R0, [R4,#4]; this
327E48:  BLX             j__ZN11CTheScripts23RemoveScriptSearchLightEi; CTheScripts::RemoveScriptSearchLight(int)
327E4C:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327E4E:  LDR             R0, [R4,#4]; jumptable 00327D20 case 12
327E50:  MOVS            R1, #3; int
327E52:  BLX             j__ZN11CTheScripts25GetActualScriptThingIndexEih; CTheScripts::GetActualScriptThingIndex(int,uchar)
327E56:  CMP             R0, #0
327E58:  BLT             def_327D20; jumptable 00327D20 default case, cases 6,10
327E5A:  LDR             R0, [R4,#4]; this
327E5C:  BLX             j__ZN11CTheScripts22RemoveScriptCheckpointEi; CTheScripts::RemoveScriptCheckpoint(int)
327E60:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327E62:  MOVS            R6, #0; jumptable 00327D20 case 13
327E64:  ADD.W           R0, R10, R6; this
327E68:  BLX             j__ZN9CSprite2d6DeleteEv; CSprite2d::Delete(void)
327E6C:  ADDS            R6, #4
327E6E:  CMP.W           R6, #0x200
327E72:  BNE             loc_327E64
327E74:  LDR             R0, =(aScript_0 - 0x327E7A); "script"
327E76:  ADD             R0, PC; "script"
327E78:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
327E7C:  ADDS            R1, R0, #1
327E7E:  BEQ             def_327D20; jumptable 00327D20 default case, cases 6,10
327E80:  LDR.W           R1, [R11]; CTxdStore::ms_pTxdPool
327E84:  RSB.W           R2, R0, R0,LSL#3
327E88:  LDR             R1, [R1]
327E8A:  LDR.W           R1, [R1,R2,LSL#3]; int
327E8E:  CMP             R1, #0
327E90:  IT NE
327E92:  BLXNE           j__ZN9CTxdStore9RemoveTxdEi; CTxdStore::RemoveTxd(int)
327E96:  B               def_327D20; jumptable 00327D20 default case, cases 6,10
327E98:  STRB            R5, [R0]
327E9A:  LDR             R0, [SP,#0x48+var_40]
327E9C:  ADD.W           R0, R0, R6,LSL#6; this
327EA0:  BLX             j__ZN20CTaskComplexSequence5FlushEv; CTaskComplexSequence::Flush(void)
327EA4:  LDR             R0, [SP,#0x48+var_38]
327EA6:  STRB            R5, [R0,R6]
327EA8:  LDR             R0, [SP,#0x48+var_3C]
327EAA:  STRB.W          R5, [R0,R6,LSL#2]
327EAE:  LDRB            R2, [R4]; jumptable 00327D20 default case, cases 6,10
327EB0:  MOV             R0, R9; this
327EB2:  LDR             R1, [R4,#4]; int
327EB4:  BLX             j__ZN15CMissionCleanup20RemoveEntityFromListEih; CMissionCleanup::RemoveEntityFromList(int,uchar)
327EB8:  ADD.W           R8, R8, #1; jumptable 00327D20 case 0
327EBC:  ADDS            R4, #8
327EBE:  UXTH.W          R0, R8
327EC2:  CMP             R0, #0x4B ; 'K'
327EC4:  BCC.W           loc_327D18
327EC8:  MOVS            R4, #0
327ECA:  MOVS            R5, #off_18
327ECC:  MOV             R0, R5; this
327ECE:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
327ED2:  MOV             R2, R0; int
327ED4:  MOVS            R0, #0; this
327ED6:  MOV             R1, R4; int
327ED8:  BLX             j__ZN8CPedType26ClearPedTypeAsAcquaintanceEiij; CPedType::ClearPedTypeAsAcquaintance(int,int,uint)
327EDC:  MOV             R0, R5; this
327EDE:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
327EE2:  MOV             R2, R0; int
327EE4:  MOVS            R0, #(stderr+1); this
327EE6:  MOV             R1, R4; int
327EE8:  BLX             j__ZN8CPedType26ClearPedTypeAsAcquaintanceEiij; CPedType::ClearPedTypeAsAcquaintance(int,int,uint)
327EEC:  MOV             R0, R5; this
327EEE:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
327EF2:  MOV             R2, R0; int
327EF4:  MOVS            R0, #(stderr+2); this
327EF6:  MOV             R1, R4; int
327EF8:  BLX             j__ZN8CPedType26ClearPedTypeAsAcquaintanceEiij; CPedType::ClearPedTypeAsAcquaintance(int,int,uint)
327EFC:  MOV             R0, R5; this
327EFE:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
327F02:  MOV             R2, R0; int
327F04:  MOVS            R0, #(stderr+3); this
327F06:  MOV             R1, R4; int
327F08:  BLX             j__ZN8CPedType26ClearPedTypeAsAcquaintanceEiij; CPedType::ClearPedTypeAsAcquaintance(int,int,uint)
327F0C:  MOV             R0, R5; this
327F0E:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
327F12:  MOV             R2, R0; int
327F14:  MOVS            R0, #byte_4; this
327F16:  MOV             R1, R4; int
327F18:  BLX             j__ZN8CPedType26ClearPedTypeAsAcquaintanceEiij; CPedType::ClearPedTypeAsAcquaintance(int,int,uint)
327F1C:  ADDS            R5, #1
327F1E:  CMP             R5, #0x20 ; ' '
327F20:  BNE             loc_327ECC
327F22:  ADDS            R4, #1
327F24:  CMP             R4, #0x18
327F26:  BNE             loc_327ECA
327F28:  MOVS            R0, #0; this
327F2A:  MOVS            R1, #0x18; int
327F2C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F30:  MOVS            R0, #(stderr+1); this
327F32:  MOVS            R1, #0x18; int
327F34:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F38:  MOVS            R0, #(stderr+2); this
327F3A:  MOVS            R1, #0x18; int
327F3C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F40:  MOVS            R0, #(stderr+3); this
327F42:  MOVS            R1, #0x18; int
327F44:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F48:  MOVS            R0, #byte_4; this
327F4A:  MOVS            R1, #0x18; int
327F4C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F50:  MOVS            R0, #0; this
327F52:  MOVS            R1, #0x19; int
327F54:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F58:  MOVS            R0, #(stderr+1); this
327F5A:  MOVS            R1, #0x19; int
327F5C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F60:  MOVS            R0, #(stderr+2); this
327F62:  MOVS            R1, #0x19; int
327F64:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F68:  MOVS            R0, #(stderr+3); this
327F6A:  MOVS            R1, #0x19; int
327F6C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F70:  MOVS            R0, #byte_4; this
327F72:  MOVS            R1, #0x19; int
327F74:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F78:  MOVS            R0, #0; this
327F7A:  MOVS            R1, #0x1A; int
327F7C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F80:  MOVS            R0, #(stderr+1); this
327F82:  MOVS            R1, #0x1A; int
327F84:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F88:  MOVS            R0, #(stderr+2); this
327F8A:  MOVS            R1, #0x1A; int
327F8C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F90:  MOVS            R0, #(stderr+3); this
327F92:  MOVS            R1, #0x1A; int
327F94:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327F98:  MOVS            R0, #byte_4; this
327F9A:  MOVS            R1, #0x1A; int
327F9C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FA0:  MOVS            R0, #0; this
327FA2:  MOVS            R1, #0x1B; int
327FA4:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FA8:  MOVS            R0, #(stderr+1); this
327FAA:  MOVS            R1, #0x1B; int
327FAC:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FB0:  MOVS            R0, #(stderr+2); this
327FB2:  MOVS            R1, #0x1B; int
327FB4:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FB8:  MOVS            R0, #(stderr+3); this
327FBA:  MOVS            R1, #0x1B; int
327FBC:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FC0:  MOVS            R0, #byte_4; this
327FC2:  MOVS            R1, #0x1B; int
327FC4:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FC8:  MOVS            R0, #0; this
327FCA:  MOVS            R1, #0x1C; int
327FCC:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FD0:  MOVS            R0, #(stderr+1); this
327FD2:  MOVS            R1, #0x1C; int
327FD4:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FD8:  MOVS            R0, #(stderr+2); this
327FDA:  MOVS            R1, #0x1C; int
327FDC:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FE0:  MOVS            R0, #(stderr+3); this
327FE2:  MOVS            R1, #0x1C; int
327FE4:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FE8:  MOVS            R0, #byte_4; this
327FEA:  MOVS            R1, #0x1C; int
327FEC:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FF0:  MOVS            R0, #0; this
327FF2:  MOVS            R1, #0x1D; int
327FF4:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
327FF8:  MOVS            R0, #(stderr+1); this
327FFA:  MOVS            R1, #0x1D; int
327FFC:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328000:  MOVS            R0, #(stderr+2); this
328002:  MOVS            R1, #0x1D; int
328004:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328008:  MOVS            R0, #(stderr+3); this
32800A:  MOVS            R1, #0x1D; int
32800C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328010:  MOVS            R0, #byte_4; this
328012:  MOVS            R1, #0x1D; int
328014:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328018:  MOVS            R0, #0; this
32801A:  MOVS            R1, #0x1E; int
32801C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328020:  MOVS            R0, #(stderr+1); this
328022:  MOVS            R1, #0x1E; int
328024:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328028:  MOVS            R0, #(stderr+2); this
32802A:  MOVS            R1, #0x1E; int
32802C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328030:  MOVS            R0, #(stderr+3); this
328032:  MOVS            R1, #0x1E; int
328034:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328038:  MOVS            R0, #byte_4; this
32803A:  MOVS            R1, #0x1E; int
32803C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328040:  MOVS            R0, #0; this
328042:  MOVS            R1, #0x1F; int
328044:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328048:  MOVS            R0, #(stderr+1); this
32804A:  MOVS            R1, #0x1F; int
32804C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328050:  MOVS            R0, #(stderr+2); this
328052:  MOVS            R1, #0x1F; int
328054:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328058:  MOVS            R0, #(stderr+3); this
32805A:  MOVS            R1, #0x1F; int
32805C:  BLX             j__ZN8CPedType25ClearPedTypeAcquaintancesEii; CPedType::ClearPedTypeAcquaintances(int,int)
328060:  MOVS            R0, #byte_4; this
328062:  MOVS            R1, #0x1F; int
328064:  ADD             SP, SP, #0x2C ; ','
328066:  POP.W           {R8-R11}
32806A:  POP.W           {R4-R7,LR}
32806E:  B.W             sub_197248
