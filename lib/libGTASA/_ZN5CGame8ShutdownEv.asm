; =========================================================
; Game Engine Function: _ZN5CGame8ShutdownEv
; Address            : 0x3F37F4 - 0x3F39B8
; =========================================================

3F37F4:  PUSH            {R4,R6,R7,LR}
3F37F6:  ADD             R7, SP, #8
3F37F8:  LDR             R0, =(g_breakMan_ptr - 0x3F37FE)
3F37FA:  ADD             R0, PC; g_breakMan_ptr
3F37FC:  LDR             R0, [R0]; g_breakMan ; this
3F37FE:  BLX             j__ZN14BreakManager_c4ExitEv; BreakManager_c::Exit(void)
3F3802:  LDR             R0, =(g_interiorMan_ptr - 0x3F3808)
3F3804:  ADD             R0, PC; g_interiorMan_ptr
3F3806:  LDR             R0, [R0]; g_interiorMan ; this
3F3808:  BLX             j__ZN17InteriorManager_c4ExitEv; InteriorManager_c::Exit(void)
3F380C:  LDR             R0, =(g_procObjMan_ptr - 0x3F3812)
3F380E:  ADD             R0, PC; g_procObjMan_ptr
3F3810:  LDR             R0, [R0]; g_procObjMan ; this
3F3812:  BLX             j__ZN15ProcObjectMan_c4ExitEv; ProcObjectMan_c::Exit(void)
3F3816:  LDR             R0, =(g_waterCreatureMan_ptr - 0x3F381C)
3F3818:  ADD             R0, PC; g_waterCreatureMan_ptr
3F381A:  LDR             R0, [R0]; g_waterCreatureMan ; this
3F381C:  BLX             j__ZN22WaterCreatureManager_c4ExitEv; WaterCreatureManager_c::Exit(void)
3F3820:  BLX             j__ZN9CPlantMgr8ShutdownEv; CPlantMgr::Shutdown(void)
3F3824:  BLX             j__ZN14CGrassRenderer8ShutdownEv; CGrassRenderer::Shutdown(void)
3F3828:  BLX             j__ZN6CRopes8ShutdownEv; CRopes::Shutdown(void)
3F382C:  BLX             j__ZN17CVehicleRecording8ShutDownEv; CVehicleRecording::ShutDown(void)
3F3830:  BLX             j__ZN6CTrain8ShutdownEv; CTrain::Shutdown(void)
3F3834:  BLX             j__ZN6CBirds8ShutdownEv; CBirds::Shutdown(void)
3F3838:  BLX             j__ZN10CSpecialFX8ShutdownEv; CSpecialFX::Shutdown(void)
3F383C:  BLX             j__ZN8CGarages8ShutdownEv; CGarages::Shutdown(void)
3F3840:  BLX             j__ZN17CStuntJumpManager8ShutdownEv; CStuntJumpManager::Shutdown(void)
3F3844:  BLX             j__ZN13CMovingThings8ShutdownEv; CMovingThings::Shutdown(void)
3F3848:  BLX             j__ZN7CWeapon15ShutdownWeaponsEv; CWeapon::ShutdownWeapons(void)
3F384C:  BLX             j__ZN8CPedType8ShutdownEv; CPedType::Shutdown(void)
3F3850:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3F3856)
3F3852:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3F3854:  LDR             R0, [R0]; CWorld::Players ...
3F3856:  LDR             R0, [R0]; this
3F3858:  CBZ             R0, loc_3F387A
3F385A:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
3F385E:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3F3864)
3F3860:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3F3862:  LDR             R0, [R0]; CWorld::Players ...
3F3864:  LDR             R0, [R0]; CWorld::Players
3F3866:  CMP             R0, #0
3F3868:  ITTT NE
3F386A:  LDRNE           R1, [R0]
3F386C:  LDRNE           R1, [R1,#4]
3F386E:  BLXNE           R1
3F3870:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3F3878)
3F3872:  MOVS            R1, #0
3F3874:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3F3876:  LDR             R0, [R0]; CWorld::Players ...
3F3878:  STR             R1, [R0]; CWorld::Players
3F387A:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3F3880)
3F387C:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3F387E:  LDR             R4, [R0]; CWorld::Players ...
3F3880:  MOV             R0, R4; this
3F3882:  BLX             j__ZN11CPlayerInfo5ClearEv; CPlayerInfo::Clear(void)
3F3886:  LDR.W           R0, [R4,#(dword_96B830 - 0x96B69C)]; this
3F388A:  CBZ             R0, loc_3F38B0
3F388C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
3F3890:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3F3896)
3F3892:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3F3894:  LDR             R0, [R0]; CWorld::Players ...
3F3896:  LDR.W           R0, [R0,#(dword_96B830 - 0x96B69C)]
3F389A:  CMP             R0, #0
3F389C:  ITTT NE
3F389E:  LDRNE           R1, [R0]
3F38A0:  LDRNE           R1, [R1,#4]
3F38A2:  BLXNE           R1
3F38A4:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3F38AC)
3F38A6:  MOVS            R1, #0
3F38A8:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3F38AA:  LDR             R0, [R0]; CWorld::Players ...
3F38AC:  STR.W           R1, [R0,#(dword_96B830 - 0x96B69C)]
3F38B0:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3F38B6)
3F38B2:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3F38B4:  LDR             R0, [R0]; CWorld::Players ...
3F38B6:  ADD.W           R0, R0, #0x194; this
3F38BA:  BLX             j__ZN11CPlayerInfo5ClearEv; CPlayerInfo::Clear(void)
3F38BE:  BLX             j__ZN9CRenderer8ShutdownEv; CRenderer::Shutdown(void)
3F38C2:  BLX             j__ZN6CWorld8ShutDownEv; CWorld::ShutDown(void)
3F38C6:  BLX             j__ZN17CEntryExitManager8ShutdownEv; CEntryExitManager::Shutdown(void)
3F38CA:  LDR             R0, =(g_fx_ptr - 0x3F38D0)
3F38CC:  ADD             R0, PC; g_fx_ptr
3F38CE:  LDR             R0, [R0]; g_fx ; this
3F38D0:  BLX             j__ZN4Fx_c4ExitEv; Fx_c::Exit(void)
3F38D4:  LDR             R0, =(g_boneNodeMan_ptr - 0x3F38DA)
3F38D6:  ADD             R0, PC; g_boneNodeMan_ptr
3F38D8:  LDR             R0, [R0]; g_boneNodeMan ; this
3F38DA:  BLX             j__ZN17BoneNodeManager_c4ExitEv; BoneNodeManager_c::Exit(void)
3F38DE:  LDR             R0, =(g_ikChainMan_ptr - 0x3F38E4)
3F38E0:  ADD             R0, PC; g_ikChainMan_ptr
3F38E2:  LDR             R0, [R0]; g_ikChainMan ; this
3F38E4:  BLX             j__ZN16IKChainManager_c4ExitEv; IKChainManager_c::Exit(void)
3F38E8:  LDR             R0, =(g_realTimeShadowMan_ptr - 0x3F38EE)
3F38EA:  ADD             R0, PC; g_realTimeShadowMan_ptr
3F38EC:  LDR             R0, [R0]; g_realTimeShadowMan ; this
3F38EE:  BLX             j__ZN22CRealTimeShadowManager4ExitEv; CRealTimeShadowManager::Exit(void)
3F38F2:  BLX             j__ZN10CModelInfo8ShutDownEv; CModelInfo::ShutDown(void)
3F38F6:  BLX             j__ZN12CAnimManager8ShutdownEv; CAnimManager::Shutdown(void)
3F38FA:  BLX             j__ZN12CCutsceneMgr8ShutdownEv; CCutsceneMgr::Shutdown(void)
3F38FE:  BLX             j__ZN17CVehicleModelInfo27DeleteVehicleColourTexturesEv; CVehicleModelInfo::DeleteVehicleColourTextures(void)
3F3902:  BLX             j__ZN17CVehicleModelInfo23ShutdownEnvironmentMapsEv; CVehicleModelInfo::ShutdownEnvironmentMaps(void)
3F3906:  BLX             j__ZN6CRadar8ShutdownEv; CRadar::Shutdown(void)
3F390A:  BLX             j__ZN15CTouchInterface9DeleteAllEv; CTouchInterface::DeleteAll(void)
3F390E:  BLX             j__ZN10CStreaming8ShutdownEv; CStreaming::Shutdown(void)
3F3912:  BLX             j__ZN9CTxdStore12GameShutdownEv; CTxdStore::GameShutdown(void)
3F3916:  BLX             j__ZN10CCollision8ShutdownEv; CCollision::Shutdown(void)
3F391A:  BLX             j__ZN11CWaterLevel8ShutdownEv; CWaterLevel::Shutdown(void)
3F391E:  BLX             j__ZN7CClouds8ShutdownEv; CClouds::Shutdown(void)
3F3922:  BLX             j__ZN8CShadows8ShutdownEv; CShadows::Shutdown(void)
3F3926:  BLX             j__ZN8CCoronas8ShutdownEv; CCoronas::Shutdown(void)
3F392A:  BLX             j__ZN10CSkidmarks8ShutdownEv; CSkidmarks::Shutdown(void)
3F392E:  BLX             j__ZN14CWeaponEffects8ShutdownEv; CWeaponEffects::Shutdown(void)
3F3932:  BLX             j__ZN10CTimeCycle8ShutdownEv; CTimeCycle::Shutdown(void)
3F3936:  LDR             R0, =(_ZN6CCover26m_ListOfProcessedBuildingsE_ptr - 0x3F393C)
3F3938:  ADD             R0, PC; _ZN6CCover26m_ListOfProcessedBuildingsE_ptr
3F393A:  LDR             R0, [R0]; this
3F393C:  BLX             j__ZN18CPtrListDoubleLink5FlushEv; CPtrListDoubleLink::Flush(void)
3F3940:  BLX             j__ZN10CPedGroups18CleanUpForShutDownEv; CPedGroups::CleanUpForShutDown(void)
3F3944:  BLX             j__ZN14CTaskSequences18CleanUpForShutdownEv; CTaskSequences::CleanUpForShutdown(void)
3F3948:  BLX             j__ZN22CInformGroupEventQueue5FlushEv; CInformGroupEventQueue::Flush(void)
3F394C:  BLX             j__ZN24CInformFriendsEventQueue5FlushEv; CInformFriendsEventQueue::Flush(void)
3F3950:  BLX             j__ZN6CPools8ShutDownEv; CPools::ShutDown(void)
3F3954:  BLX             j__ZN14CCarFXRenderer8ShutdownEv; CCarFXRenderer::Shutdown(void)
3F3958:  BLX             j__ZN23CCustomBuildingRenderer8ShutdownEv; CCustomBuildingRenderer::Shutdown(void)
3F395C:  BLX             j__ZN17CVehicleModelInfo20ShutdownLightTextureEv; CVehicleModelInfo::ShutdownLightTexture(void)
3F3960:  BLX             j__ZN8CVehicle8ShutdownEv; CVehicle::Shutdown(void)
3F3964:  BLX             j__ZN14CCarFXRenderer8ShutdownEv; CCarFXRenderer::Shutdown(void)
3F3968:  BLX             j__ZN18CCustomCarPlateMgr8ShutdownEv; CCustomCarPlateMgr::Shutdown(void)
3F396C:  BLX             j__ZN18CCustomRoadsignMgr8ShutdownEv; CCustomRoadsignMgr::Shutdown(void)
3F3970:  BLX             j__ZN4CHud12ReInitialiseEv; CHud::ReInitialise(void)
3F3974:  LDR             R0, =(gameTxdSlot_ptr - 0x3F397A)
3F3976:  ADD             R0, PC; gameTxdSlot_ptr
3F3978:  LDR             R0, [R0]; gameTxdSlot
3F397A:  LDR             R0, [R0]; this
3F397C:  BLX             j__ZN9CTxdStore13RemoveTxdSlotEi; CTxdStore::RemoveTxdSlot(int)
3F3980:  ADR             R0, aParticle_0; "particle"
3F3982:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
3F3986:  BLX             j__ZN9CTxdStore13RemoveTxdSlotEi; CTxdStore::RemoveTxdSlot(int)
3F398A:  LDR             R0, =(_ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr - 0x3F3994)
3F398C:  MOVS            R4, #0
3F398E:  LDR             R1, =(_ZN16CTaskSimpleFight16m_sStrikeColDataE_ptr - 0x3F3996)
3F3990:  ADD             R0, PC; _ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr
3F3992:  ADD             R1, PC; _ZN16CTaskSimpleFight16m_sStrikeColDataE_ptr
3F3994:  LDR             R0, [R0]; this
3F3996:  LDR             R1, [R1]; CTaskSimpleFight::m_sStrikeColData ...
3F3998:  STR             R4, [R0,#(dword_9FDBC8 - 0x9FDB9C)]
3F399A:  STR             R4, [R1,#(dword_9FDBD4 - 0x9FDBCC)]
3F399C:  BLX             j__ZN16CTaskSimpleClimb8ShutdownEv; CTaskSimpleClimb::Shutdown(void)
3F39A0:  LDR             R0, =(_ZN13CPedAttractor8ms_tasksE_ptr - 0x3F39A6)
3F39A2:  ADD             R0, PC; _ZN13CPedAttractor8ms_tasksE_ptr
3F39A4:  LDR             R0, [R0]; this
3F39A6:  STR             R4, [R0,#(dword_9EE2C0 - 0x9EE2BC)]
3F39A8:  BLX             j__ZN11CTheScripts29RemoveScriptTextureDictionaryEv; CTheScripts::RemoveScriptTextureDictionary(void)
3F39AC:  BLX             j__ZN6CMBlur15MotionBlurCloseEv; CMBlur::MotionBlurClose(void)
3F39B0:  BLX             j__Z20CdStreamRemoveImagesv; CdStreamRemoveImages(void)
3F39B4:  MOVS            R0, #1
3F39B6:  POP             {R4,R6,R7,PC}
