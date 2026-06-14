; =========================================================
; Game Engine Function: _ZN17CVehicleModelInfo15SetupCommonDataEv
; Address            : 0x468AF8 - 0x468C08
; =========================================================

468AF8:  PUSH            {R4-R7,LR}
468AFA:  ADD             R7, SP, #0xC
468AFC:  PUSH.W          {R11}
468B00:  BLX             j__ZN17CVehicleModelInfo18LoadVehicleColoursEv; CVehicleModelInfo::LoadVehicleColours(void)
468B04:  BLX             j__ZN14CLoadingScreen14NewChunkLoadedEv; CLoadingScreen::NewChunkLoaded(void)
468B08:  BLX             j__ZN17CVehicleModelInfo19LoadVehicleUpgradesEv; CVehicleModelInfo::LoadVehicleUpgrades(void)
468B0C:  BLX             j__ZN14CLoadingScreen14NewChunkLoadedEv; CLoadingScreen::NewChunkLoaded(void)
468B10:  BLX             j__ZN17CVehicleModelInfo19LoadEnvironmentMapsEv; CVehicleModelInfo::LoadEnvironmentMaps(void)
468B14:  BLX             j__ZN14CLoadingScreen14NewChunkLoadedEv; CLoadingScreen::NewChunkLoaded(void)
468B18:  LDR             R0, =(aVehicle_0 - 0x468B1E); "vehicle"
468B1A:  ADD             R0, PC; "vehicle"
468B1C:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
468B20:  MOV             R4, R0
468B22:  ADDS            R0, R4, #1
468B24:  BNE             loc_468B34
468B26:  LDR             R0, =(aVehicle_0 - 0x468B30); "vehicle"
468B28:  ADR             R1, off_468C10; char *
468B2A:  MOVS            R2, #(stderr+1); char *
468B2C:  ADD             R0, PC; "vehicle"
468B2E:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
468B32:  MOV             R4, R0
468B34:  ADR             R1, aModelsGenericV; "MODELS\\GENERIC\\VEHICLE.TXD"
468B36:  MOV             R0, R4; this
468B38:  BLX             j__ZN9CTxdStore7LoadTxdEiPKc; CTxdStore::LoadTxd(int,char const*)
468B3C:  MOV             R0, R4; this
468B3E:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
468B42:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
468B46:  MOV             R0, R4; this
468B48:  MOVS            R1, #0; int
468B4A:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
468B4E:  ADR             R0, aVehiclelights1; "vehiclelights128"
468B50:  MOVS            R1, #0; char *
468B52:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
468B56:  LDR             R1, =(_ZN17CVehicleModelInfo17ms_pLightsTextureE_ptr - 0x468B5C)
468B58:  ADD             R1, PC; _ZN17CVehicleModelInfo17ms_pLightsTextureE_ptr
468B5A:  LDR             R1, [R1]; CVehicleModelInfo::ms_pLightsTexture ...
468B5C:  STR             R0, [R1]; CVehicleModelInfo::ms_pLightsTexture
468B5E:  ADR             R0, aVehiclelightso; "vehiclelightson128"
468B60:  MOVS            R1, #0; char *
468B62:  BLX             j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
468B66:  LDR             R1, =(_ZN17CVehicleModelInfo19ms_pLightsOnTextureE_ptr - 0x468B6C)
468B68:  ADD             R1, PC; _ZN17CVehicleModelInfo19ms_pLightsOnTextureE_ptr
468B6A:  LDR             R1, [R1]; CVehicleModelInfo::ms_pLightsOnTexture ...
468B6C:  STR             R0, [R1]; CVehicleModelInfo::ms_pLightsOnTexture
468B6E:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
468B72:  BLX             j__ZN14CLoadingScreen14NewChunkLoadedEv; CLoadingScreen::NewChunkLoaded(void)
468B76:  MOVS            R0, #0x14; unsigned int
468B78:  BLX             _Znwj; operator new(uint)
468B7C:  MOV             R4, R0
468B7E:  MOVW            R0, #0x9E98; unsigned int
468B82:  BLX             _Znaj; operator new[](uint)
468B86:  STR             R0, [R4]
468B88:  MOVS            R0, #0x32 ; '2'; unsigned int
468B8A:  MOVS            R5, #0x32 ; '2'
468B8C:  BLX             _Znaj; operator new[](uint)
468B90:  MOVS            R1, #1
468B92:  MOVS            R2, #0x80
468B94:  STRB            R1, [R4,#0x10]
468B96:  MOV.W           R1, #0xFFFFFFFF
468B9A:  STRD.W          R0, R5, [R4,#4]
468B9E:  STR             R1, [R4,#0xC]
468BA0:  LDRB            R1, [R0,#1]
468BA2:  STRB            R2, [R0]
468BA4:  ORR.W           R1, R1, #0x80
468BA8:  STRB            R1, [R0,#1]
468BAA:  LDR             R0, [R4,#4]
468BAC:  LDRB            R1, [R0,#1]
468BAE:  AND.W           R1, R1, #0x80
468BB2:  STRB            R1, [R0,#1]
468BB4:  MOVS            R0, #2
468BB6:  LDR             R1, [R4,#4]
468BB8:  LDRB            R2, [R1,R0]
468BBA:  ORR.W           R2, R2, #0x80
468BBE:  STRB            R2, [R1,R0]
468BC0:  LDR             R1, [R4,#4]
468BC2:  LDRB            R2, [R1,R0]
468BC4:  AND.W           R2, R2, #0x80
468BC8:  STRB            R2, [R1,R0]
468BCA:  ADDS            R0, #1
468BCC:  CMP             R0, #0x32 ; '2'
468BCE:  BNE             loc_468BB6
468BD0:  LDR             R0, =(_ZN17CVehicleModelInfo17CVehicleStructure11m_pInfoPoolE_ptr - 0x468BD6)
468BD2:  ADD             R0, PC; _ZN17CVehicleModelInfo17CVehicleStructure11m_pInfoPoolE_ptr
468BD4:  LDR             R0, [R0]; this
468BD6:  STR             R4, [R0]; CVehicleModelInfo::CVehicleStructure::m_pInfoPool
468BD8:  BLX             j__ZN14CCarFXRenderer21InitialiseDirtTextureEv; CCarFXRenderer::InitialiseDirtTexture(void)
468BDC:  LDR             R5, =(off_6684B8 - 0x468BE4); "blade" ...
468BDE:  MOVS            R4, #0
468BE0:  ADD             R5, PC; off_6684B8
468BE2:  LDR.W           R0, [R5,R4,LSL#3]; this
468BE6:  MOV.W           R1, #(elf_hash_bucket+0x94); char *
468BEA:  MOVW            R2, #0x276; int
468BEE:  ADD.W           R6, R5, R4,LSL#3
468BF2:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcii; CModelInfo::GetModelInfo(char const*,int,int)
468BF6:  LDR             R1, [R6,#4]; char *
468BF8:  BLX             j__ZN17CVehicleModelInfo8AddRemapEPKc; CVehicleModelInfo::AddRemap(char const*)
468BFC:  ADDS            R4, #1
468BFE:  CMP             R4, #0x24 ; '$'
468C00:  BNE             loc_468BE2
468C02:  POP.W           {R11}
468C06:  POP             {R4-R7,PC}
