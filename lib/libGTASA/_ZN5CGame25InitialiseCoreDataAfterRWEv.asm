; =========================================================
; Game Engine Function: _ZN5CGame25InitialiseCoreDataAfterRWEv
; Address            : 0x470000 - 0x470112
; =========================================================

470000:  PUSH            {R4-R7,LR}
470002:  ADD             R7, SP, #0xC
470004:  PUSH.W          {R8-R10}
470008:  BLX             j__ZN14CTempColModels10InitialiseEv; CTempColModels::Initialise(void)
47000C:  LDR             R0, =(mod_HandlingManager_ptr - 0x470012)
47000E:  ADD             R0, PC; mod_HandlingManager_ptr
470010:  LDR             R4, [R0]; mod_HandlingManager
470012:  MOV             R0, R4; this
470014:  BLX             j__ZN16cHandlingDataMgr16LoadHandlingDataEv; cHandlingDataMgr::LoadHandlingData(void)
470018:  LDR             R0, =(g_surfaceInfos_ptr - 0x470028)
47001A:  ADR             R1, dword_470120
47001C:  VLD1.64         {D16-D17}, [R1@128]
470020:  MOVW            R1, #0xE148
470024:  ADD             R0, PC; g_surfaceInfos_ptr
470026:  MOVT            R1, #0x3F7A
47002A:  VST1.32         {D16-D17}, [R4]!
47002E:  LDR             R0, [R0]; g_surfaceInfos ; this
470030:  STR             R1, [R4]
470032:  BLX             j__ZN14SurfaceInfos_c4InitEv; SurfaceInfos_c::Init(void)
470036:  MOVW            R0, #0x8BC; unsigned int
47003A:  BLX             _Znaj; operator new[](uint)
47003E:  LDR             R1, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x47004E)
470040:  MOVW            R9, #0
470044:  LDR             R3, =(_ZN9CPedStats13ms_apPedStatsE_ptr - 0x470054)
470046:  MOVW            R10, #0
47004A:  ADD             R1, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
47004C:  MOVW            R6, #0x4C50
470050:  ADD             R3, PC; _ZN9CPedStats13ms_apPedStatsE_ptr
470052:  MOVS            R2, #0x32 ; '2'
470054:  LDR             R1, [R1]; CPedStats::ms_apPedStats ...
470056:  MOVS            R4, #0
470058:  LDR.W           LR, [R3]; CPedStats::ms_apPedStats ...
47005C:  MOVW            R12, #0x5245
470060:  MOV.W           R3, #0x3F800000
470064:  MOV.W           R8, #0x32323232
470068:  STR             R0, [R1]; CPedStats::ms_apPedStats
47006A:  MOVS            R1, #0x2B ; '+'
47006C:  MOVT            R9, #0x41A0
470070:  MOVT            R10, #0x4170
470074:  MOVT            R6, #0x5941
470078:  ADD             R0, R2
47007A:  SUBS            R1, #1
47007C:  STR.W           R4, [R0,#-0x32]
470080:  LDR.W           R0, [LR]; this
470084:  ADD.W           R5, R0, R2
470088:  STRB            R4, [R0,R2]
47008A:  ADD.W           R2, R2, #0x34 ; '4'
47008E:  STRB.W          R4, [R5,#-0x28]
470092:  STRH.W          R12, [R5,#-0x2A]
470096:  STR.W           R3, [R5,#-0xA]
47009A:  STR.W           R8, [R5,#-0xE]
47009E:  STR.W           R9, [R5,#-0x16]
4700A2:  STR.W           R10, [R5,#-0x12]
4700A6:  STR.W           R6, [R5,#-0x2E]
4700AA:  STR.W           R3, [R5,#-6]
4700AE:  STRH.W          R4, [R5,#-2]
4700B2:  BNE             loc_470078
4700B4:  BLX             j__ZN9CPedStats12LoadPedStatsEv; CPedStats::LoadPedStats(void)
4700B8:  BLX             j__ZN29CDecisionMakerTypesFileLoader24LoadDefaultDecisionMakerEv; CDecisionMakerTypesFileLoader::LoadDefaultDecisionMaker(void)
4700BC:  MOVS            R0, #0; this
4700BE:  BLX             j__ZN10CTimeCycle10InitialiseEb; CTimeCycle::Initialise(bool)
4700C2:  BLX             j__ZN9CPopCycle10InitialiseEv; CPopCycle::Initialise(void)
4700C6:  BLX             j__ZN17CVehicleRecording17InitAtStartOfGameEv; CVehicleRecording::InitAtStartOfGame(void)
4700CA:  BLX             j__Z19NeedsAmazonDownloadv; NeedsAmazonDownload(void)
4700CE:  CBNZ            R0, loc_4700DC
4700D0:  LDR             R0, =(AudioEngine_ptr - 0x4700D6)
4700D2:  ADD             R0, PC; AudioEngine_ptr
4700D4:  LDR             R0, [R0]; AudioEngine ; this
4700D6:  BLX             j__ZN12CAudioEngine10InitialiseEv; CAudioEngine::Initialise(void)
4700DA:  CBZ             R0, loc_470108
4700DC:  LDR             R0, =(g_breakMan_ptr - 0x4700E2)
4700DE:  ADD             R0, PC; g_breakMan_ptr
4700E0:  LDR             R0, [R0]; g_breakMan ; this
4700E2:  BLX             j__ZN14BreakManager_c4InitEv; BreakManager_c::Init(void)
4700E6:  CBZ             R0, loc_470108
4700E8:  LDR             R0, =(g_boneNodeMan_ptr - 0x4700EE)
4700EA:  ADD             R0, PC; g_boneNodeMan_ptr
4700EC:  LDR             R0, [R0]; g_boneNodeMan ; this
4700EE:  BLX             j__ZN17BoneNodeManager_c4InitEv; BoneNodeManager_c::Init(void)
4700F2:  MOVS            R4, #0
4700F4:  CBZ             R0, loc_47010A
4700F6:  LDR             R0, =(g_ikChainMan_ptr - 0x4700FC)
4700F8:  ADD             R0, PC; g_ikChainMan_ptr
4700FA:  LDR             R0, [R0]; g_ikChainMan ; this
4700FC:  BLX             j__ZN16IKChainManager_c4InitEv; IKChainManager_c::Init(void)
470100:  CMP             R0, #0
470102:  IT EQ
470104:  MOVEQ           R4, #1
470106:  B               loc_47010A
470108:  MOVS            R4, #0
47010A:  MOV             R0, R4
47010C:  POP.W           {R8-R10}
470110:  POP             {R4-R7,PC}
