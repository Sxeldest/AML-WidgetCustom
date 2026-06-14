; =========================================================
; Game Engine Function: _ZN5CGame25ReInitGameObjectVariablesEv
; Address            : 0x3F3A14 - 0x3F3BBC
; =========================================================

3F3A14:  PUSH            {R4,R5,R7,LR}
3F3A16:  ADD             R7, SP, #8
3F3A18:  LDR             R0, =(TheCamera_ptr - 0x3F3A1E)
3F3A1A:  ADD             R0, PC; TheCamera_ptr
3F3A1C:  LDR             R4, [R0]; TheCamera
3F3A1E:  MOV             R0, R4; this
3F3A20:  BLX             j__ZN7CCamera4InitEv; CCamera::Init(void)
3F3A24:  BLX             j__ZN10CGameLogic17InitAtStartOfGameEv; CGameLogic::InitAtStartOfGame(void)
3F3A28:  BLX             j__ZN9CGangWars17InitAtStartOfGameEv; CGangWars::InitAtStartOfGame(void)
3F3A2C:  BLX             j__ZN7CWanted25InitialiseStaticVariablesEv; CWanted::InitialiseStaticVariables(void)
3F3A30:  MOV             R0, R4; this
3F3A32:  BLX             j__ZN7CCamera4InitEv; CCamera::Init(void)
3F3A36:  LDR             R0, =(Scene_ptr - 0x3F3A3C)
3F3A38:  ADD             R0, PC; Scene_ptr
3F3A3A:  LDR             R0, [R0]; Scene
3F3A3C:  LDR             R1, [R0,#(dword_9FC93C - 0x9FC938)]
3F3A3E:  MOV             R0, R4
3F3A40:  BLX             j__ZN7CCamera11SetRwCameraEP8RwCamera; CCamera::SetRwCamera(RwCamera *)
3F3A44:  BLX             j__ZN10CSkidmarks5ClearEv; CSkidmarks::Clear(void)
3F3A48:  BLX             j__ZN8CWeather4InitEv; CWeather::Init(void)
3F3A4C:  BLX             j__ZN6CCover4InitEv; CCover::Init(void)
3F3A50:  BLX             j__ZN12CUserDisplay4InitEv; CUserDisplay::Init(void)
3F3A54:  BLX             j__ZN9CMessages4InitEv; CMessages::Init(void)
3F3A58:  BLX             j__ZN8CRestart10InitialiseEv; CRestart::Initialise(void)
3F3A5C:  BLX             j__ZN12CPostEffects21ScriptResetForEffectsEv; CPostEffects::ScriptResetForEffects(void)
3F3A60:  LDR             R0, =(_ZN6CWorld19bDoingCarCollisionsE_ptr - 0x3F3A68)
3F3A62:  MOVS            R5, #0
3F3A64:  ADD             R0, PC; _ZN6CWorld19bDoingCarCollisionsE_ptr
3F3A66:  LDR             R0, [R0]; this
3F3A68:  STRB            R5, [R0]; CWorld::bDoingCarCollisions
3F3A6A:  BLX             j__ZN4CHud12ReInitialiseEv; CHud::ReInitialise(void)
3F3A6E:  BLX             j__ZN6CRadar10InitialiseEv; CRadar::Initialise(void)
3F3A72:  BLX             j__ZN8CCarCtrl6ReInitEv; CCarCtrl::ReInit(void)
3F3A76:  LDR             R0, =(ThePaths_ptr - 0x3F3A7C)
3F3A78:  ADD             R0, PC; ThePaths_ptr
3F3A7A:  LDR             R0, [R0]; ThePaths ; this
3F3A7C:  BLX             j__ZN9CPathFind6ReInitEv; CPathFind::ReInit(void)
3F3A80:  MOVS            R0, #0; this
3F3A82:  BLX             j__ZN10CTimeCycle10InitialiseEb; CTimeCycle::Initialise(bool)
3F3A86:  BLX             j__ZN9CPopCycle10InitialiseEv; CPopCycle::Initialise(void)
3F3A8A:  MOVS            R0, #0
3F3A8C:  MOVS            R1, #0; float
3F3A8E:  MOVT            R0, #0x42F0; this
3F3A92:  BLX             j__ZN5CDraw6SetFOVEfb; CDraw::SetFOV(float,bool)
3F3A96:  LDR             R0, =(_ZN5CGame8currAreaE_ptr - 0x3F3A9E)
3F3A98:  LDR             R1, =(_ZN5CDraw15ms_fLODDistanceE_ptr - 0x3F3AA0)
3F3A9A:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
3F3A9C:  ADD             R1, PC; _ZN5CDraw15ms_fLODDistanceE_ptr
3F3A9E:  LDR             R0, [R0]; CGame::currArea ...
3F3AA0:  LDR             R1, [R1]; CDraw::ms_fLODDistance ...
3F3AA2:  STR             R5, [R0]; CGame::currArea
3F3AA4:  MOVS            R0, #0x43FA0000; this
3F3AAA:  STR             R0, [R1]; CDraw::ms_fLODDistance
3F3AAC:  BLX             j__ZN4CPed10InitialiseEv; CPed::Initialise(void)
3F3AB0:  BLX             j__ZN7CWeapon17InitialiseWeaponsEv; CWeapon::InitialiseWeapons(void)
3F3AB4:  BLX             j__ZN11CPopulation10InitialiseEv; CPopulation::Initialise(void)
3F3AB8:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x3F3ABE)
3F3ABA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
3F3ABC:  LDR             R4, [R0]; CWorld::Players ...
3F3ABE:  MOV             R0, R4; this
3F3AC0:  BLX             j__ZN11CPlayerInfo5ClearEv; CPlayerInfo::Clear(void)
3F3AC4:  ADD.W           R0, R4, #0x194; this
3F3AC8:  BLX             j__ZN11CPlayerInfo5ClearEv; CPlayerInfo::Clear(void)
3F3ACC:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3F3AD2)
3F3ACE:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3F3AD0:  LDR             R0, [R0]; this
3F3AD2:  STR             R5, [R0]; CWorld::PlayerInFocus
3F3AD4:  BLX             j__ZN6CGlass4InitEv; CGlass::Init(void)
3F3AD8:  LDR             R0, =(gbLARiots_ptr - 0x3F3AE0)
3F3ADA:  LDR             R1, =(gbLARiots_NoPoliceCars_ptr - 0x3F3AE2)
3F3ADC:  ADD             R0, PC; gbLARiots_ptr
3F3ADE:  ADD             R1, PC; gbLARiots_NoPoliceCars_ptr
3F3AE0:  LDR             R0, [R0]; gbLARiots ; this
3F3AE2:  LDR             R1, [R1]; gbLARiots_NoPoliceCars
3F3AE4:  STRB            R5, [R0]
3F3AE6:  STRB            R5, [R1]
3F3AE8:  BLX             j__ZN11CTheScripts4InitEv; CTheScripts::Init(void)
3F3AEC:  BLX             j__ZN11CMenuSystem10InitialiseEv; CMenuSystem::Initialise(void)
3F3AF0:  BLX             j__ZN6CGangs10InitialiseEv; CGangs::Initialise(void)
3F3AF4:  BLX             j__ZN6CTimer10InitialiseEv; CTimer::Initialise(void)
3F3AF8:  MOV.W           R0, #(elf_hash_bucket+0x2EC); this
3F3AFC:  BLX             j__ZN6CClock10InitialiseEj; CClock::Initialise(uint)
3F3B00:  BLX             j__ZN17CTheCarGenerators4InitEv; CTheCarGenerators::Init(void)
3F3B04:  BLX             j__ZN5CHeli9InitHelisEv; CHeli::InitHelis(void)
3F3B08:  BLX             j__ZN13CMovingThings4InitEv; CMovingThings::Init(void)
3F3B0C:  BLX             j__ZN7CDarkel4InitEv; CDarkel::Init(void)
3F3B10:  BLX             j__ZN6CStats4InitEv; CStats::Init(void)
3F3B14:  BLX             j__ZN8CGarages17Init_AfterRestartEv; CGarages::Init_AfterRestart(void)
3F3B18:  BLX             j__ZN11CRoadBlocks4InitEv; CRoadBlocks::Init(void)
3F3B1C:  MOVS            R0, #0; this
3F3B1E:  BLX             j__ZN10CStreaming15DisableCopBikesEb; CStreaming::DisableCopBikes(bool)
3F3B22:  BLX             j__ZN10CSpecialFX4InitEv; CSpecialFX::Init(void)
3F3B26:  BLX             j__ZN6CRopes4InitEv; CRopes::Init(void)
3F3B2A:  BLX             j__ZN13CWaterCannons4InitEv; CWaterCannons::Init(void)
3F3B2E:  BLX             j__ZN29CDecisionMakerTypesFileLoader7ReStartEv; CDecisionMakerTypesFileLoader::ReStart(void)
3F3B32:  BLX             j__ZN17CVehicleRecording4InitEv; CVehicleRecording::Init(void)
3F3B36:  LDR             R0, =(gFireManager_ptr - 0x3F3B3C)
3F3B38:  ADD             R0, PC; gFireManager_ptr
3F3B3A:  LDR             R0, [R0]; gFireManager ; this
3F3B3C:  BLX             j__ZN12CFireManager4InitEv; CFireManager::Init(void)
3F3B40:  LDR             R0, =(g_interiorMan_ptr - 0x3F3B46)
3F3B42:  ADD             R0, PC; g_interiorMan_ptr
3F3B44:  LDR             R0, [R0]; g_interiorMan ; this
3F3B46:  BLX             j__ZN17InteriorManager_c4InitEv; InteriorManager_c::Init(void)
3F3B4A:  LDR             R0, =(g_procObjMan_ptr - 0x3F3B50)
3F3B4C:  ADD             R0, PC; g_procObjMan_ptr
3F3B4E:  LDR             R0, [R0]; g_procObjMan ; this
3F3B50:  BLX             j__ZN15ProcObjectMan_c4InitEv; ProcObjectMan_c::Init(void)
3F3B54:  LDR             R0, =(g_waterCreatureMan_ptr - 0x3F3B5A)
3F3B56:  ADD             R0, PC; g_waterCreatureMan_ptr
3F3B58:  LDR             R0, [R0]; g_waterCreatureMan ; this
3F3B5A:  BLX             j__ZN22WaterCreatureManager_c4InitEv; WaterCreatureManager_c::Init(void)
3F3B5E:  LDR             R0, =(g_realTimeShadowMan_ptr - 0x3F3B64)
3F3B60:  ADD             R0, PC; g_realTimeShadowMan_ptr
3F3B62:  LDR             R0, [R0]; g_realTimeShadowMan ; this
3F3B64:  BLX             j__ZN22CRealTimeShadowManager4InitEv; CRealTimeShadowManager::Init(void)
3F3B68:  BLX             j__ZN10CStreaming28RemoveInappropriatePedModelsEv; CStreaming::RemoveInappropriatePedModels(void)
3F3B6C:  LDR             R0, =(AudioEngine_ptr - 0x3F3B72)
3F3B6E:  ADD             R0, PC; AudioEngine_ptr
3F3B70:  LDR             R0, [R0]; AudioEngine ; this
3F3B72:  BLX             j__ZN12CAudioEngine15ResetStatisticsEv; CAudioEngine::ResetStatistics(void)
3F3B76:  LDR             R0, =(gMobileMenu_ptr - 0x3F3B7C)
3F3B78:  ADD             R0, PC; gMobileMenu_ptr
3F3B7A:  LDR             R0, [R0]; gMobileMenu
3F3B7C:  LDRB.W          R0, [R0,#(byte_6E00B9 - 0x6E006C)]; this
3F3B80:  CBNZ            R0, loc_3F3B9C
3F3B82:  BLX             j__ZN7CCranes10InitCranesEv; CCranes::InitCranes(void)
3F3B86:  BLX             j__ZN11CTheScripts15StartTestScriptEv; CTheScripts::StartTestScript(void)
3F3B8A:  BLX             j__ZN11CTheScripts7ProcessEv; CTheScripts::Process(void)
3F3B8E:  LDR             R0, =(TheCamera_ptr - 0x3F3B94)
3F3B90:  ADD             R0, PC; TheCamera_ptr
3F3B92:  LDR             R0, [R0]; TheCamera ; this
3F3B94:  BLX             j__ZN7CCamera7ProcessEv; CCamera::Process(void)
3F3B98:  BLX             j__ZN6CTrain10InitTrainsEv; CTrain::InitTrains(void)
3F3B9C:  MOVS            R0, #0; this
3F3B9E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3F3BA2:  MOVS            R1, #1; bool
3F3BA4:  MOVS            R2, #1; bool
3F3BA6:  BLX             j__ZN4CPad5ClearEbb; CPad::Clear(bool,bool)
3F3BAA:  MOVS            R0, #(stderr+1); this
3F3BAC:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3F3BB0:  MOVS            R1, #1; bool
3F3BB2:  MOVS            R2, #1; bool
3F3BB4:  POP.W           {R4,R5,R7,LR}
3F3BB8:  B.W             sub_199964
