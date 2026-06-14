; =========================================================
; Game Engine Function: _ZN12CMenuManager25CheckMissionPackValidMenuEv
; Address            : 0x4368B0 - 0x4369A4
; =========================================================

4368B0:  PUSH            {R4-R7,LR}
4368B2:  ADD             R7, SP, #0xC
4368B4:  PUSH.W          {R8}
4368B8:  SUB             SP, SP, #0x10
4368BA:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
4368BE:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x4368C6)
4368C0:  LDR             R1, =(gString_ptr - 0x4368C8)
4368C2:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
4368C4:  ADD             R1, PC; gString_ptr
4368C6:  LDR             R6, [R0]; CGame::bMissionPackGame ...
4368C8:  LDR             R5, [R1]; gString
4368CA:  ADR             R1, aMpackMpackDScr_2; "MPACK//MPACK%d//SCR.SCM"
4368CC:  LDRB            R2, [R6]; CGame::bMissionPackGame
4368CE:  MOV             R0, R5
4368D0:  BL              sub_5E6BC0
4368D4:  ADR.W           R8, aRb_13; "rb"
4368D8:  MOV             R0, R5; this
4368DA:  MOV             R1, R8; char *
4368DC:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4368E0:  LDRB            R2, [R6]; CGame::bMissionPackGame
4368E2:  ADR             R1, aMpackMpackDTex; "MPACK//MPACK%d//TEXT.GXT"
4368E4:  MOV             R4, R0
4368E6:  MOV             R0, R5
4368E8:  BL              sub_5E6BC0
4368EC:  MOV             R0, R5; this
4368EE:  MOV             R1, R8; char *
4368F0:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4368F4:  MOV             R5, R0
4368F6:  LDR             R0, =(byte_61CD7E - 0x4368FC)
4368F8:  ADD             R0, PC; byte_61CD7E ; this
4368FA:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
4368FE:  CMP             R4, #0
436900:  IT NE
436902:  CMPNE           R5, #0
436904:  BEQ             loc_436916
436906:  MOV             R0, R4; this
436908:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
43690C:  MOV             R0, R5; this
43690E:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
436912:  MOVS            R4, #1
436914:  B               loc_43699A
436916:  CMP             R4, #0
436918:  ITT NE
43691A:  MOVNE           R0, R4; this
43691C:  BLXNE           j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
436920:  CMP             R5, #0
436922:  ITT NE
436924:  MOVNE           R0, R5; this
436926:  BLXNE           j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
43692A:  BLX             j__ZN6CTimer14StartUserPauseEv; CTimer::StartUserPause(void)
43692E:  LDR             R0, =(FrontEndMenuManager_ptr - 0x436938)
436930:  ADR             R4, aNoPak; "NO_PAK"
436932:  MOVS            R6, #0
436934:  ADD             R0, PC; FrontEndMenuManager_ptr ; this
436936:  LDR             R5, [R0]; FrontEndMenuManager
436938:  BLX             j__ZN4CPad10UpdatePadsEv; CPad::UpdatePads(void)
43693C:  MOV             R0, R5; this
43693E:  MOV             R1, R4; char *
436940:  MOVS            R2, #1; bool
436942:  MOVS            R3, #0; bool
436944:  BLX             j__ZN12CMenuManager13MessageScreenEPcbb; CMenuManager::MessageScreen(char *,bool,bool)
436948:  MOVS            R0, #0; __int16
43694A:  MOVS            R1, #0; __int16
43694C:  MOVS            R2, #0; __int16
43694E:  MOVS            R3, #0; __int16
436950:  STRD.W          R6, R6, [SP,#0x20+var_20]; __int16
436954:  STR             R6, [SP,#0x20+var_18]; __int16
436956:  BLX             j__Z21DoRWStuffStartOfFramesssssss; DoRWStuffStartOfFrame(short,short,short,short,short,short,short)
43695A:  MOVS            R0, #0; bool
43695C:  BLX             j__Z19DoRWStuffEndOfFrameb; DoRWStuffEndOfFrame(bool)
436960:  MOVS            R0, #0; this
436962:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
436966:  MOVS            R0, #0x35 ; '5'
436968:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
43696C:  CBNZ            R0, loc_436982
43696E:  MOVS            R0, #0; this
436970:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
436974:  LDRH            R1, [R0,#0x20]
436976:  CMP             R1, #0
436978:  BEQ             loc_436938
43697A:  LDRH.W          R0, [R0,#0x50]; this
43697E:  CMP             R0, #0
436980:  BNE             loc_436938
436982:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
436986:  LDR             R0, =(_ZN5CGame16bMissionPackGameE_ptr - 0x436990)
436988:  MOVS            R4, #0
43698A:  LDR             R1, =(FrontEndMenuManager_ptr - 0x436992)
43698C:  ADD             R0, PC; _ZN5CGame16bMissionPackGameE_ptr
43698E:  ADD             R1, PC; FrontEndMenuManager_ptr
436990:  LDR             R2, [R0]; CGame::bMissionPackGame ...
436992:  LDR             R0, [R1]; FrontEndMenuManager ; this
436994:  STRB            R4, [R2]; CGame::bMissionPackGame
436996:  BLX             j__ZN12CMenuManager29DoSettingsBeforeStartingAGameEv; CMenuManager::DoSettingsBeforeStartingAGame(void)
43699A:  MOV             R0, R4
43699C:  ADD             SP, SP, #0x10
43699E:  POP.W           {R8}
4369A2:  POP             {R4-R7,PC}
