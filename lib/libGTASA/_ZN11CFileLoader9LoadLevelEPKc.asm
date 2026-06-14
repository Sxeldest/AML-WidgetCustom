; =========================================================
; Game Engine Function: _ZN11CFileLoader9LoadLevelEPKc
; Address            : 0x46699C - 0x466D80
; =========================================================

46699C:  PUSH            {R4-R7,LR}
46699E:  ADD             R7, SP, #0xC
4669A0:  PUSH.W          {R8-R11}
4669A4:  SUB             SP, SP, #0x6C
4669A6:  MOV             R5, R0
4669A8:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x4669B0)
4669AC:  ADD             R0, PC; __stack_chk_guard_ptr
4669AE:  LDR             R0, [R0]; __stack_chk_guard
4669B0:  LDR             R0, [R0]
4669B2:  STR             R0, [SP,#0x88+var_20]
4669B4:  BLX             j__Z25RwTexDictionaryGetCurrentv; RwTexDictionaryGetCurrent(void)
4669B8:  MOV             R8, R0
4669BA:  CMP.W           R8, #0
4669BE:  BNE             loc_4669CA
4669C0:  BLX             j__Z21RwTexDictionaryCreatev; RwTexDictionaryCreate(void)
4669C4:  MOV             R8, R0
4669C6:  BLX             j__Z25RwTexDictionarySetCurrentP15RwTexDictionary; RwTexDictionarySetCurrent(RwTexDictionary *)
4669CA:  ADR.W           R1, dword_466D84; char *
4669CE:  MOV             R0, R5; this
4669D0:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4669D4:  MOV             R11, R0
4669D6:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4669DA:  MOV             R10, R0
4669DC:  CMP.W           R10, #0
4669E0:  BEQ             loc_466A40
4669E2:  MOVS            R0, #0
4669E4:  ADR.W           R9, aExit_1; "EXIT"
4669E8:  STR             R0, [SP,#0x88+var_6C]
4669EA:  ADR.W           R4, aTexdiction; "TEXDICTION"
4669EE:  LDR.W           R0, =(gString_ptr - 0x4669F6)
4669F2:  ADD             R0, PC; gString_ptr
4669F4:  LDR             R0, [R0]; gString
4669F6:  STR             R0, [SP,#0x88+var_64]
4669F8:  LDR.W           R0, =(gString_ptr - 0x466A00)
4669FC:  ADD             R0, PC; gString_ptr
4669FE:  LDR             R0, [R0]; gString
466A00:  STR             R0, [SP,#0x88+var_68]
466A02:  LDR.W           R0, =(gString_ptr - 0x466A0A)
466A06:  ADD             R0, PC; gString_ptr
466A08:  LDR             R0, [R0]; gString
466A0A:  STR             R0, [SP,#0x88+var_70]
466A0C:  LDR.W           R0, =(gString_ptr - 0x466A14)
466A10:  ADD             R0, PC; gString_ptr
466A12:  LDR             R0, [R0]; gString
466A14:  STR             R0, [SP,#0x88+var_74]
466A16:  LDR.W           R0, =(gString_ptr - 0x466A1E)
466A1A:  ADD             R0, PC; gString_ptr
466A1C:  LDR             R0, [R0]; gString
466A1E:  STR             R0, [SP,#0x88+var_78]
466A20:  LDR.W           R0, =(gString_ptr - 0x466A28)
466A24:  ADD             R0, PC; gString_ptr
466A26:  LDR             R0, [R0]; gString
466A28:  STR             R0, [SP,#0x88+var_7C]
466A2A:  LDR.W           R0, =(gString_ptr - 0x466A32)
466A2E:  ADD             R0, PC; gString_ptr
466A30:  LDR             R0, [R0]; gString
466A32:  STR             R0, [SP,#0x88+var_80]
466A34:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x466A3C)
466A38:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
466A3A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
466A3C:  STR             R0, [SP,#0x88+var_84]
466A3E:  B               loc_466B5E
466A40:  MOV             R0, R11; this
466A42:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
466A46:  MOV             R0, R8
466A48:  BLX             j__Z25RwTexDictionarySetCurrentP15RwTexDictionary; RwTexDictionarySetCurrent(RwTexDictionary *)
466A4C:  B               loc_466D66
466A4E:  ADD.W           R6, R10, #4
466A52:  MOVS            R1, #0x5C ; '\'; int
466A54:  MOV             R0, R6; char *
466A56:  BLX             strrchr
466A5A:  CMP             R0, #0
466A5C:  MOV             R2, R6
466A5E:  LDR.W           R1, =(aLoadingS_0 - 0x466A6C); "Loading %s"
466A62:  IT NE
466A64:  ADDNE           R2, R0, #1
466A66:  LDR             R5, [SP,#0x88+var_78]
466A68:  ADD             R1, PC; "Loading %s"
466A6A:  MOV             R0, R5
466A6C:  BL              sub_5E6BC0
466A70:  LDR.W           R0, =(aLoadingTheGame_0 - 0x466A7C); "Loading the Game"
466A74:  MOV             R1, R5; char *
466A76:  MOVS            R2, #0; char *
466A78:  ADD             R0, PC; "Loading the Game"
466A7A:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466A7E:  MOV             R0, R6; this
466A80:  BLX             j__ZN11CFileLoader15LoadObjectTypesEPKc; CFileLoader::LoadObjectTypes(char const*)
466A84:  B               loc_466D34
466A86:  BLX             j__Z20MatchAllModelStringsv; MatchAllModelStrings(void)
466A8A:  ADD.W           R1, R10, #4; char *
466A8E:  ADD             R0, SP, #0x88+var_60; char *
466A90:  BLX             strcpy
466A94:  LDR.W           R4, =(aLoadingS_0 - 0x466AA0); "Loading %s"
466A98:  ADR             R2, aObjectData; "Object Data"
466A9A:  LDR             R6, [SP,#0x88+var_80]
466A9C:  ADD             R4, PC; "Loading %s"
466A9E:  MOV             R0, R6
466AA0:  MOV             R1, R4
466AA2:  BL              sub_5E6BC0
466AA6:  LDR.W           R5, =(aLoadingTheGame_0 - 0x466AB2); "Loading the Game"
466AAA:  MOV             R1, R6; char *
466AAC:  MOVS            R2, #0; char *
466AAE:  ADD             R5, PC; "Loading the Game"
466AB0:  MOV             R0, R5; char *
466AB2:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466AB6:  ADR             R0, aDataObjectDat; "DATA\\OBJECT.DAT"
466AB8:  MOVS            R1, #0; char *
466ABA:  BLX             j__ZN11CObjectData10InitialiseEPcb; CObjectData::Initialise(char *,bool)
466ABE:  ADR             R2, aSetupVehicleIn; "Setup vehicle info data"
466AC0:  MOV             R0, R6
466AC2:  MOV             R1, R4
466AC4:  BL              sub_5E6BC0
466AC8:  MOV             R0, R5; char *
466ACA:  MOV             R1, R6; char *
466ACC:  MOVS            R2, #0; char *
466ACE:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466AD2:  BLX             j__ZN17CVehicleModelInfo15SetupCommonDataEv; CVehicleModelInfo::SetupCommonData(void)
466AD6:  ADR             R2, aStreamingInit; "Streaming Init"
466AD8:  MOV             R0, R6
466ADA:  MOV             R1, R4
466ADC:  BL              sub_5E6BC0
466AE0:  MOV             R0, R5; char *
466AE2:  MOV             R1, R6; char *
466AE4:  MOVS            R2, #0; char *
466AE6:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466AEA:  BLX             j__ZN10CStreaming5Init2Ev; CStreaming::Init2(void)
466AEE:  BLX             j__ZN14CLoadingScreen14NewChunkLoadedEv; CLoadingScreen::NewChunkLoaded(void)
466AF2:  ADR             R2, aCollision; "Collision"
466AF4:  MOV             R0, R6
466AF6:  MOV             R1, R4
466AF8:  BL              sub_5E6BC0
466AFC:  MOV             R0, R5; char *
466AFE:  MOV             R1, R6; char *
466B00:  MOVS            R2, #0; char *
466B02:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466B06:  BLX             j__ZN9CColStore20LoadAllBoundingBoxesEv; CColStore::LoadAllBoundingBoxes(void)
466B0A:  LDR             R4, [SP,#0x88+var_84]
466B0C:  MOVW            R6, #0x4E20
466B10:  LDR             R0, [R4]
466B12:  CMP             R0, #0
466B14:  ITTT NE
466B16:  LDRNE           R1, [R0]
466B18:  LDRNE           R1, [R1,#0x38]
466B1A:  BLXNE           R1
466B1C:  ADDS            R4, #4
466B1E:  SUBS            R6, #1
466B20:  BNE             loc_466B10
466B22:  ADD             R4, SP, #0x88+var_60
466B24:  MOVS            R1, #0x5C ; '\'; int
466B26:  MOV             R0, R4; char *
466B28:  BLX             strrchr
466B2C:  CMP             R0, #0
466B2E:  MOV             R2, R4
466B30:  LDR             R1, =(aLoadingS_0 - 0x466B3C); "Loading %s"
466B32:  IT NE
466B34:  ADDNE           R2, R0, #1
466B36:  LDR             R6, [SP,#0x88+var_7C]
466B38:  ADD             R1, PC; "Loading %s"
466B3A:  MOV             R0, R6
466B3C:  BL              sub_5E6BC0
466B40:  LDR             R0, =(aLoadingTheGame_0 - 0x466B4A); "Loading the Game"
466B42:  MOV             R1, R6; char *
466B44:  MOVS            R2, #0; char *
466B46:  ADD             R0, PC; "Loading the Game"
466B48:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466B4C:  MOV             R0, R4; this
466B4E:  BLX             j__ZN11CFileLoader9LoadSceneEPKc; CFileLoader::LoadScene(char const*)
466B52:  MOVS            R0, #1
466B54:  ADR             R4, aTexdiction; "TEXDICTION"
466B56:  STR             R0, [SP,#0x88+var_6C]
466B58:  LDR.W           R8, [SP,#0x88+var_88]
466B5C:  B               loc_466D34
466B5E:  LDRB.W          R0, [R10]
466B62:  CMP             R0, #0x23 ; '#'
466B64:  BEQ.W           loc_466D34
466B68:  MOV             R0, R9; char *
466B6A:  MOV             R1, R10; char *
466B6C:  MOVS            R2, #4; size_t
466B6E:  BLX             strncmp
466B72:  CMP             R0, #0
466B74:  BEQ.W           loc_466D44
466B78:  MOV             R0, R4; char *
466B7A:  MOV             R1, R10; char *
466B7C:  MOVS            R2, #0xA; size_t
466B7E:  BLX             strncmp
466B82:  CBZ             R0, loc_466BF8
466B84:  ADR             R0, aImg; "IMG"
466B86:  MOV             R1, R10; char *
466B88:  MOVS            R2, #3; size_t
466B8A:  BLX             strncmp
466B8E:  CMP             R0, #0
466B90:  BEQ             loc_466C46
466B92:  ADR             R0, aColfile; "COLFILE"
466B94:  MOV             R1, R10; char *
466B96:  MOVS            R2, #7; size_t
466B98:  BLX             strncmp
466B9C:  CMP             R0, #0
466B9E:  BEQ             loc_466C8A
466BA0:  ADR             R0, aModelfile; "MODELFILE"
466BA2:  MOV             R1, R10; char *
466BA4:  MOVS            R2, #9; size_t
466BA6:  BLX             strncmp
466BAA:  CMP             R0, #0
466BAC:  BEQ.W           loc_466CC0
466BB0:  ADR             R0, aHierfile; "HIERFILE"
466BB2:  MOV             R1, R10; char *
466BB4:  MOVS            R2, #8; size_t
466BB6:  BLX             strncmp
466BBA:  CMP             R0, #0
466BBC:  BEQ.W           loc_466CF4
466BC0:  ADR             R0, aIde; "IDE"
466BC2:  MOV             R1, R10; char *
466BC4:  MOVS            R2, #3; size_t
466BC6:  BLX             strncmp
466BCA:  CMP             R0, #0
466BCC:  BEQ.W           loc_466A4E
466BD0:  ADR             R0, aIpl; "IPL"
466BD2:  MOV             R1, R10; char *
466BD4:  MOVS            R2, #3; size_t
466BD6:  BLX             strncmp
466BDA:  CMP             R0, #0
466BDC:  BNE.W           loc_466D34
466BE0:  LDR             R0, [SP,#0x88+var_6C]
466BE2:  STR.W           R8, [SP,#0x88+var_88]
466BE6:  LSLS            R0, R0, #0x1F
466BE8:  BEQ.W           loc_466A86
466BEC:  ADD.W           R1, R10, #4; char *
466BF0:  ADD             R0, SP, #0x88+var_60; char *
466BF2:  BLX             strcpy
466BF6:  B               loc_466B22
466BF8:  ADD             R6, SP, #0x88+var_60
466BFA:  ADD.W           R1, R10, #0xB; char *
466BFE:  MOV             R0, R6; char *
466C00:  BLX             strcpy
466C04:  MOV             R0, R6; char *
466C06:  MOVS            R1, #0x5C ; '\'; int
466C08:  BLX             strrchr
466C0C:  CMP             R0, #0
466C0E:  MOV             R2, R6
466C10:  LDR             R1, =(aLoadingS_0 - 0x466C1C); "Loading %s"
466C12:  IT NE
466C14:  ADDNE           R2, R0, #1
466C16:  LDR             R5, [SP,#0x88+var_64]
466C18:  ADD             R1, PC; "Loading %s"
466C1A:  MOV             R0, R5
466C1C:  BL              sub_5E6BC0
466C20:  LDR             R0, =(aLoadingTheGame_0 - 0x466C2A); "Loading the Game"
466C22:  MOV             R1, R5; char *
466C24:  MOVS            R2, #0; char *
466C26:  ADD             R0, PC; "Loading the Game"
466C28:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466C2C:  MOV             R0, R6; this
466C2E:  BLX             j__ZN11CFileLoader17LoadTexDictionaryEPKc; CFileLoader::LoadTexDictionary(char const*)
466C32:  LDR             R1, =(sub_469364+1 - 0x466C3C)
466C34:  MOV             R2, R8
466C36:  MOV             R6, R0
466C38:  ADD             R1, PC; sub_469364
466C3A:  BLX             j__Z29RwTexDictionaryForAllTexturesPK15RwTexDictionaryPFP9RwTextureS3_PvES4_; RwTexDictionaryForAllTextures(RwTexDictionary const*,RwTexture * (*)(RwTexture *,void *),void *)
466C3E:  MOV             R0, R6
466C40:  BLX             j__Z22RwTexDictionaryDestroyP15RwTexDictionary; RwTexDictionaryDestroy(RwTexDictionary *)
466C44:  B               loc_466D34
466C46:  MOV             R5, R8
466C48:  ADD.W           R8, R10, #4
466C4C:  ADR             R1, aModelsGtaIntIm; "MODELS\\GTA_INT.IMG"
466C4E:  MOV             R0, R8; char *
466C50:  BLX             strcmp
466C54:  CMP             R0, #0
466C56:  BEQ             loc_466D32
466C58:  ADR             R1, aModels; "MODELS"
466C5A:  MOV             R0, R8; char *
466C5C:  MOVS            R2, #6; size_t
466C5E:  BLX             strncmp
466C62:  CBNZ            R0, loc_466C78
466C64:  MOV             R0, #0x44584554
466C6C:  STR.W           R0, [R10,#5]!
466C70:  MOVS            R0, #0x42 ; 'B'
466C72:  MOV             R8, R10
466C74:  STRB.W          R0, [R10,#4]
466C78:  LDR             R1, =(aDataScriptScri - 0x466C80); "DATA\\SCRIPT\\SCRIPT.IMG"
466C7A:  MOV             R0, R8; char *
466C7C:  ADD             R1, PC; "DATA\\SCRIPT\\SCRIPT.IMG"
466C7E:  BLX             strcmp
466C82:  CMP             R0, #0
466C84:  BEQ             loc_466D28
466C86:  MOV             R0, R8
466C88:  B               loc_466D2C
466C8A:  ADD.W           R6, R10, #0xA
466C8E:  MOVS            R1, #0x5C ; '\'; int
466C90:  MOV             R0, R6; char *
466C92:  BLX             strrchr
466C96:  CMP             R0, #0
466C98:  MOV             R2, R6
466C9A:  LDR             R1, =(aLoadingS_0 - 0x466CA6); "Loading %s"
466C9C:  IT NE
466C9E:  ADDNE           R2, R0, #1
466CA0:  LDR             R5, [SP,#0x88+var_68]
466CA2:  ADD             R1, PC; "Loading %s"
466CA4:  MOV             R0, R5
466CA6:  BL              sub_5E6BC0
466CAA:  LDR             R0, =(aLoadingTheGame_0 - 0x466CB4); "Loading the Game"
466CAC:  MOV             R1, R5; char *
466CAE:  MOVS            R2, #0; char *
466CB0:  ADD             R0, PC; "Loading the Game"
466CB2:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466CB6:  MOV             R0, R6; this
466CB8:  MOVS            R1, #0; char *
466CBA:  BLX             j__ZN11CFileLoader17LoadCollisionFileEPKch; CFileLoader::LoadCollisionFile(char const*,uchar)
466CBE:  B               loc_466D34
466CC0:  ADD.W           R6, R10, #0xA
466CC4:  MOVS            R1, #0x5C ; '\'; int
466CC6:  MOV             R0, R6; char *
466CC8:  BLX             strrchr
466CCC:  CMP             R0, #0
466CCE:  MOV             R2, R6
466CD0:  LDR             R1, =(aLoadingS_0 - 0x466CDC); "Loading %s"
466CD2:  IT NE
466CD4:  ADDNE           R2, R0, #1
466CD6:  LDR             R5, [SP,#0x88+var_70]
466CD8:  ADD             R1, PC; "Loading %s"
466CDA:  MOV             R0, R5
466CDC:  BL              sub_5E6BC0
466CE0:  LDR             R0, =(aLoadingTheGame_0 - 0x466CEA); "Loading the Game"
466CE2:  MOV             R1, R5; char *
466CE4:  MOVS            R2, #0; char *
466CE6:  ADD             R0, PC; "Loading the Game"
466CE8:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466CEC:  MOV             R0, R6; this
466CEE:  BLX             j__ZN11CFileLoader14LoadAtomicFileEPKc; CFileLoader::LoadAtomicFile(char const*)
466CF2:  B               loc_466D34
466CF4:  ADD.W           R6, R10, #9
466CF8:  MOVS            R1, #0x5C ; '\'; int
466CFA:  MOV             R0, R6; char *
466CFC:  BLX             strrchr
466D00:  CMP             R0, #0
466D02:  MOV             R2, R6
466D04:  LDR             R1, =(aLoadingS_0 - 0x466D10); "Loading %s"
466D06:  IT NE
466D08:  ADDNE           R2, R0, #1
466D0A:  LDR             R5, [SP,#0x88+var_74]
466D0C:  ADD             R1, PC; "Loading %s"
466D0E:  MOV             R0, R5
466D10:  BL              sub_5E6BC0
466D14:  LDR             R0, =(aLoadingTheGame_0 - 0x466D1E); "Loading the Game"
466D16:  MOV             R1, R5; char *
466D18:  MOVS            R2, #0; char *
466D1A:  ADD             R0, PC; "Loading the Game"
466D1C:  BLX             j__Z13LoadingScreenPKcS0_S0_; LoadingScreen(char const*,char const*,char const*)
466D20:  MOV             R0, R6; this
466D22:  BLX             j__ZN11CFileLoader13LoadClumpFileEPKc; CFileLoader::LoadClumpFile(char const*)
466D26:  B               loc_466D34
466D28:  LDR             R0, =(aDataScriptScri_0 - 0x466D2E); "DATA\\SCRIPT\\SCRIPTV1.IMG"
466D2A:  ADD             R0, PC; "DATA\\SCRIPT\\SCRIPTV1.IMG"
466D2C:  MOVS            R1, #(stderr+1); char *
466D2E:  BLX             j__ZN10CStreaming14AddImageToListEPKcb; CStreaming::AddImageToList(char const*,bool)
466D32:  MOV             R8, R5
466D34:  MOV             R0, R11; this
466D36:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
466D3A:  MOV             R10, R0
466D3C:  CMP.W           R10, #0
466D40:  BNE.W           loc_466B5E
466D44:  MOV             R0, R11; this
466D46:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
466D4A:  MOV             R0, R8
466D4C:  BLX             j__Z25RwTexDictionarySetCurrentP15RwTexDictionary; RwTexDictionarySetCurrent(RwTexDictionary *)
466D50:  LDR             R0, [SP,#0x88+var_6C]
466D52:  LSLS            R0, R0, #0x1F; this
466D54:  BEQ             loc_466D66
466D56:  BLX             j__ZN9CIplStore20LoadAllRemainingIplsEv; CIplStore::LoadAllRemainingIpls(void)
466D5A:  BLX             j__ZN9CColStore24BoundingBoxesPostProcessEv; CColStore::BoundingBoxesPostProcess(void)
466D5E:  BLX             j__ZN6CTrain10InitTrainsEv; CTrain::InitTrains(void)
466D62:  BLX             j__ZN9CColStore18RemoveAllCollisionEv; CColStore::RemoveAllCollision(void)
466D66:  LDR             R0, =(__stack_chk_guard_ptr - 0x466D6E)
466D68:  LDR             R1, [SP,#0x88+var_20]
466D6A:  ADD             R0, PC; __stack_chk_guard_ptr
466D6C:  LDR             R0, [R0]; __stack_chk_guard
466D6E:  LDR             R0, [R0]
466D70:  SUBS            R0, R0, R1
466D72:  ITTT EQ
466D74:  ADDEQ           SP, SP, #0x6C ; 'l'
466D76:  POPEQ.W         {R8-R11}
466D7A:  POPEQ           {R4-R7,PC}
466D7C:  BLX             __stack_chk_fail
