; =========================================================
; Game Engine Function: _ZN5CGame5Init3EPKc
; Address            : 0x473138 - 0x47319C
; =========================================================

473138:  PUSH            {R4,R6,R7,LR}
47313A:  ADD             R7, SP, #8
47313C:  LDR             R4, =(aLoadingTheGame_0 - 0x473146); "Loading the Game"
47313E:  ADR             R1, aLoadScene; "Load scene"
473140:  MOVS            R2, #0; char *
473142:  ADD             R4, PC; "Loading the Game"
473144:  MOV             R0, R4; char *
473146:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
47314A:  MOVS            R0, #0; this
47314C:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
473150:  MOVS            R1, #1; bool
473152:  MOVS            R2, #1; bool
473154:  BLX             j__ZN4CPad5ClearEbb; CPad::Clear(bool,bool)
473158:  MOVS            R0, #(stderr+1); this
47315A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
47315E:  MOVS            R1, #1; bool
473160:  MOVS            R2, #1; bool
473162:  BLX             j__ZN4CPad5ClearEbb; CPad::Clear(bool,bool)
473166:  ADR             R1, aProceduralInte; "Procedural Interiors"
473168:  MOV             R0, R4; char *
47316A:  MOVS            R2, #0; char *
47316C:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
473170:  LDR             R0, =(g_interiorMan_ptr - 0x473176)
473172:  ADD             R0, PC; g_interiorMan_ptr
473174:  LDR             R0, [R0]; g_interiorMan ; this
473176:  BLX             j__ZN17InteriorManager_c4InitEv; InteriorManager_c::Init(void)
47317A:  LDR             R0, =(g_procObjMan_ptr - 0x473180)
47317C:  ADD             R0, PC; g_procObjMan_ptr
47317E:  LDR             R0, [R0]; g_procObjMan ; this
473180:  BLX             j__ZN15ProcObjectMan_c4InitEv; ProcObjectMan_c::Init(void)
473184:  LDR             R0, =(g_waterCreatureMan_ptr - 0x47318A)
473186:  ADD             R0, PC; g_waterCreatureMan_ptr
473188:  LDR             R0, [R0]; g_waterCreatureMan ; this
47318A:  BLX             j__ZN22WaterCreatureManager_c4InitEv; WaterCreatureManager_c::Init(void)
47318E:  LDR             R0, =(g_realTimeShadowMan_ptr - 0x473194)
473190:  ADD             R0, PC; g_realTimeShadowMan_ptr
473192:  LDR             R0, [R0]; g_realTimeShadowMan ; this
473194:  BLX             j__ZN22CRealTimeShadowManager4InitEv; CRealTimeShadowManager::Init(void)
473198:  MOVS            R0, #1
47319A:  POP             {R4,R6,R7,PC}
