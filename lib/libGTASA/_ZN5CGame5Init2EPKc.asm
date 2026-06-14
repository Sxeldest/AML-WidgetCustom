; =========================================================
; Game Engine Function: _ZN5CGame5Init2EPKc
; Address            : 0x472EB8 - 0x47309E
; =========================================================

472EB8:  PUSH            {R4-R7,LR}
472EBA:  ADD             R7, SP, #0xC
472EBC:  PUSH.W          {R11}
472EC0:  LDR             R5, =(aLoadingTheGame_0 - 0x472ECC); "Loading the Game"
472EC2:  ADR             R1, aAddParticles; "Add Particles"
472EC4:  MOVS            R2, #0; char *
472EC6:  MOVS            R4, #0
472EC8:  ADD             R5, PC; "Loading the Game"
472ECA:  MOV             R0, R5; char *
472ECC:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472ED0:  BLX             j__ZN9CTheZones16PostZoneCreationEv; CTheZones::PostZoneCreation(void)
472ED4:  BLX             j__ZN17CEntryExitManager22PostEntryExitsCreationEv; CEntryExitManager::PostEntryExitsCreation(void)
472ED8:  ADR             R1, aSetupPaths; "Setup paths"
472EDA:  MOV             R0, R5; char *
472EDC:  MOVS            R2, #0; char *
472EDE:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472EE2:  LDR             R0, =(ThePaths_ptr - 0x472EE8)
472EE4:  ADD             R0, PC; ThePaths_ptr
472EE6:  LDR             R0, [R0]; ThePaths ; this
472EE8:  BLX             j__ZN9CPathFind15PreparePathDataEv; CPathFind::PreparePathData(void)
472EEC:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x472EF2)
472EEE:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
472EF0:  LDR             R6, [R0]; CWorld::Players ...
472EF2:  MOV             R0, R6; this
472EF4:  BLX             j__ZN11CPlayerInfo5ClearEv; CPlayerInfo::Clear(void)
472EF8:  ADD.W           R0, R6, #0x194; this
472EFC:  BLX             j__ZN11CPlayerInfo5ClearEv; CPlayerInfo::Clear(void)
472F00:  MOV             R0, R6; this
472F02:  BLX             j__ZN11CPlayerInfo14LoadPlayerSkinEv; CPlayerInfo::LoadPlayerSkin(void)
472F06:  BLX             j__Z16TestModelIndicesv; TestModelIndices(void)
472F0A:  ADR             R1, aSetupWater; "Setup water"
472F0C:  MOV             R0, R5; char *
472F0E:  MOVS            R2, #0; char *
472F10:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472F14:  BLX             j__ZN8CClothes4InitEv; CClothes::Init(void)
472F18:  BLX             j__ZN11CWaterLevel20WaterLevelInitialiseEv; CWaterLevel::WaterLevelInitialise(void)
472F1C:  MOVS            R0, #0
472F1E:  MOVS            R1, #0; float
472F20:  MOVT            R0, #0x42F0; this
472F24:  BLX             j__ZN5CDraw6SetFOVEfb; CDraw::SetFOV(float,bool)
472F28:  LDR             R0, =(_ZN5CDraw15ms_fLODDistanceE_ptr - 0x472F34)
472F2A:  MOVS            R1, #0x43FA0000
472F30:  ADD             R0, PC; _ZN5CDraw15ms_fLODDistanceE_ptr
472F32:  LDR             R0, [R0]; this
472F34:  STR             R1, [R0]; CDraw::ms_fLODDistance
472F36:  BLX             j__ZN18CCustomCarPlateMgr10InitialiseEv; CCustomCarPlateMgr::Initialise(void)
472F3A:  CMP             R0, #0
472F3C:  BEQ.W           loc_473096
472F40:  LDR             R5, =(aLoadingTheGame_0 - 0x472F4A); "Loading the Game"
472F42:  ADR             R6, aSetupStreaming; "Setup streaming"
472F44:  MOVS            R2, #0; char *
472F46:  ADD             R5, PC; "Loading the Game"
472F48:  MOV             R1, R6; char *
472F4A:  MOV             R0, R5; char *
472F4C:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472F50:  BLX             j__ZN10CStreaming19LoadInitialVehiclesEv; CStreaming::LoadInitialVehicles(void)
472F54:  BLX             j__ZN10CStreaming15LoadInitialPedsEv; CStreaming::LoadInitialPeds(void)
472F58:  MOVS            R0, #0; this
472F5A:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
472F5E:  ADR             R1, aLoadAnimations; "Load animations"
472F60:  MOV             R0, R5; char *
472F62:  MOVS            R2, #0; char *
472F64:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472F68:  BLX             j__ZN12CAnimManager13LoadAnimFilesEv; CAnimManager::LoadAnimFiles(void)
472F6C:  MOV             R0, R5; char *
472F6E:  MOV             R1, R6; char *
472F70:  MOVS            R2, #0; char *
472F72:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472F76:  BLX             j__ZN10CStreaming18LoadInitialWeaponsEv; CStreaming::LoadInitialWeapons(void)
472F7A:  MOVS            R0, #0; this
472F7C:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
472F80:  ADR             R1, aPedInit; "Ped Init"
472F82:  MOV             R0, R5; char *
472F84:  MOVS            R2, #0; char *
472F86:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472F8A:  BLX             j__ZN4CPed10InitialiseEv; CPed::Initialise(void)
472F8E:  BLX             j__ZN9CRenderer4InitEv; CRenderer::Init(void)
472F92:  ADR             R6, aSetupGameVaria; "Setup game variables"
472F94:  MOV             R0, R5; char *
472F96:  MOVS            R2, #0; char *
472F98:  MOV             R1, R6; char *
472F9A:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472F9E:  BLX             j__ZN6CRadar10InitialiseEv; CRadar::Initialise(void)
472FA2:  BLX             j__ZN6CRadar12LoadTexturesEv; CRadar::LoadTextures(void)
472FA6:  MOVS            R0, #0; char *
472FA8:  MOVS            R1, #0; char *
472FAA:  MOVS            R2, #0; char *
472FAC:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472FB0:  BLX             j__ZN7CWeapon17InitialiseWeaponsEv; CWeapon::InitialiseWeapons(void)
472FB4:  BLX             j__ZN11CRoadBlocks4InitEv; CRoadBlocks::Init(void)
472FB8:  MOVS            R0, #0; char *
472FBA:  MOVS            R1, #0; char *
472FBC:  MOVS            R2, #0; char *
472FBE:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472FC2:  BLX             j__ZN11CPopulation10InitialiseEv; CPopulation::Initialise(void)
472FC6:  MOVS            R0, #0; char *
472FC8:  MOVS            R1, #0; char *
472FCA:  MOVS            R2, #0; char *
472FCC:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472FD0:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x472FD6)
472FD2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
472FD4:  LDR             R0, [R0]; this
472FD6:  STR             R4, [R0]; CWorld::PlayerInFocus
472FD8:  BLX             j__ZN8CCoronas4InitEv; CCoronas::Init(void)
472FDC:  BLX             j__ZN8CShadows4InitEv; CShadows::Init(void)
472FE0:  MOVS            R0, #0; char *
472FE2:  MOVS            R1, #0; char *
472FE4:  MOVS            R2, #0; char *
472FE6:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
472FEA:  BLX             j__ZN14CWeaponEffects4InitEv; CWeaponEffects::Init(void)
472FEE:  BLX             j__ZN10CSkidmarks4InitEv; CSkidmarks::Init(void)
472FF2:  BLX             j__ZN6CGlass4InitEv; CGlass::Init(void)
472FF6:  BLX             j__ZN8CGarages17Init_AfterRestartEv; CGarages::Init_AfterRestart(void)
472FFA:  ADR             R1, aLoadScripts; "Load scripts"
472FFC:  MOV             R0, R5; char *
472FFE:  MOVS            R2, #0; char *
473000:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
473004:  BLX             j__ZN11CTheScripts4InitEv; CTheScripts::Init(void)
473008:  BLX             j__ZN6CGangs10InitialiseEv; CGangs::Initialise(void)
47300C:  MOV             R0, R5; char *
47300E:  MOV             R1, R6; char *
473010:  MOVS            R2, #0; char *
473012:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
473016:  MOV.W           R0, #(elf_hash_bucket+0x2EC); this
47301A:  BLX             j__ZN6CClock10InitialiseEj; CClock::Initialise(uint)
47301E:  BLX             j__ZN5CHeli9InitHelisEv; CHeli::InitHelis(void)
473022:  BLX             j__ZN7CCranes10InitCranesEv; CCranes::InitCranes(void)
473026:  MOVS            R0, #0; char *
473028:  MOVS            R1, #0; char *
47302A:  MOVS            R2, #0; char *
47302C:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
473030:  BLX             j__ZN13CMovingThings4InitEv; CMovingThings::Init(void)
473034:  BLX             j__ZN7CDarkel4InitEv; CDarkel::Init(void)
473038:  MOVS            R0, #0; char *
47303A:  MOVS            R1, #0; char *
47303C:  MOVS            R2, #0; char *
47303E:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
473042:  BLX             j__ZN8CGridRef4InitEv; CGridRef::Init(void)
473046:  BLX             j__ZN6CStats4InitEv; CStats::Init(void)
47304A:  BLX             j__ZN7CClouds4InitEv; CClouds::Init(void)
47304E:  BLX             j__ZN10CSpecialFX4InitEv; CSpecialFX::Init(void)
473052:  MOVS            R0, #0; char *
473054:  MOVS            R1, #0; char *
473056:  MOVS            R2, #0; char *
473058:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
47305C:  BLX             j__ZN6CRopes4InitEv; CRopes::Init(void)
473060:  BLX             j__ZN13CWaterCannons4InitEv; CWaterCannons::Init(void)
473064:  BLX             j__ZN7CBridge4InitEv; CBridge::Init(void)
473068:  BLX             j__ZN10CPedGroups4InitEv; CPedGroups::Init(void)
47306C:  BLX             j__ZN24CInformFriendsEventQueue4InitEv; CInformFriendsEventQueue::Init(void)
473070:  BLX             j__ZN22CInformGroupEventQueue4InitEv; CInformGroupEventQueue::Init(void)
473074:  MOVS            R0, #0; char *
473076:  MOVS            R1, #0; char *
473078:  MOVS            R2, #0; char *
47307A:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
47307E:  LDR             R0, =(_ZN8CCredits13bCreditsGoingE_ptr - 0x473084)
473080:  ADD             R0, PC; _ZN8CCredits13bCreditsGoingE_ptr
473082:  LDR             R0, [R0]; this
473084:  STRB            R4, [R0]; CCredits::bCreditsGoing
473086:  BLX             j__ZN9CShopping4InitEv; CShopping::Init(void)
47308A:  MOVS            R0, #0; char *
47308C:  MOVS            R1, #0; char *
47308E:  MOVS            R2, #0; char *
473090:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
473094:  MOVS            R4, #1
473096:  MOV             R0, R4
473098:  POP.W           {R11}
47309C:  POP             {R4-R7,PC}
