; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage11GenericLoadERb
; Address            : 0x482BA8 - 0x482FDA
; =========================================================

482BA8:  PUSH            {R4-R7,LR}
482BAA:  ADD             R7, SP, #0xC
482BAC:  PUSH.W          {R8-R11}
482BB0:  SUB.W           SP, SP, #0x374
482BB4:  MOV             R6, R0
482BB6:  LDR.W           R0, =(TotalLoadSize_ptr - 0x482BC0)
482BBA:  MOVS            R4, #0
482BBC:  ADD             R0, PC; TotalLoadSize_ptr
482BBE:  LDR             R0, [R0]; TotalLoadSize
482BC0:  STR             R4, [R0]
482BC2:  BLX             j__Z15ResetFenceCountv; ResetFenceCount(void)
482BC6:  LDR.W           R0, =(_ZN19CGenericGameStorage11ms_CheckSumE_ptr - 0x482BD6)
482BCA:  LDR.W           R1, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x482BD8)
482BCE:  LDR.W           R2, =(UseDataFence_ptr - 0x482BDA)
482BD2:  ADD             R0, PC; _ZN19CGenericGameStorage11ms_CheckSumE_ptr
482BD4:  ADD             R1, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
482BD6:  ADD             R2, PC; UseDataFence_ptr
482BD8:  LDR             R0, [R0]; this
482BDA:  LDR             R1, [R1]; CGenericGameStorage::ms_bFailed ...
482BDC:  LDR             R2, [R2]; UseDataFence
482BDE:  LDRB.W          R8, [R2]
482BE2:  STRB            R4, [R6]
482BE4:  STR             R4, [R0]; CGenericGameStorage::ms_CheckSum
482BE6:  STRB            R4, [R1]; CGenericGameStorage::ms_bFailed
482BE8:  BLX             j__ZN6CCheat11ResetCheatsEv; CCheat::ResetCheats(void)
482BEC:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
482BF0:  LDR.W           R0, =(_ZN19CGenericGameStorage15ms_LoadFileNameE_ptr - 0x482BFC)
482BF4:  ADR.W           R1, dword_482FF0; char *
482BF8:  ADD             R0, PC; _ZN19CGenericGameStorage15ms_LoadFileNameE_ptr
482BFA:  LDR             R0, [R0]; this
482BFC:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
482C00:  LDR.W           R1, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482C08)
482C04:  ADD             R1, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482C06:  LDR             R5, [R1]; CGenericGameStorage::ms_FileHandle ...
482C08:  LDR.W           R1, =(byte_61CD7E - 0x482C10)
482C0C:  ADD             R1, PC; byte_61CD7E ; char *
482C0E:  STR             R0, [R5]; CGenericGameStorage::ms_FileHandle
482C10:  MOV             R0, R1; this
482C12:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
482C16:  LDR             R0, [R5]; this
482C18:  CMP             R0, #0
482C1A:  BEQ.W           loc_482EA4
482C1E:  STR             R6, [SP,#0x390+var_38C]
482C20:  MOV             R6, R8
482C22:  STR             R6, [SP,#0x390+var_388]
482C24:  BLX             j__ZN8CFileMgr12GetTotalSizeEj; CFileMgr::GetTotalSize(uint)
482C28:  LDR.W           R1, =(_ZN19CGenericGameStorage11ms_FileSizeE_ptr - 0x482C34)
482C2C:  LDR.W           R5, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482C3A)
482C30:  ADD             R1, PC; _ZN19CGenericGameStorage11ms_FileSizeE_ptr
482C32:  LDR.W           R2, =(_ZN19CGenericGameStorage10ms_FilePosE_ptr - 0x482C44)
482C36:  ADD             R5, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482C38:  LDR.W           R3, =(_ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr - 0x482C48)
482C3C:  LDR.W           R6, =(_ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr - 0x482C4C)
482C40:  ADD             R2, PC; _ZN19CGenericGameStorage10ms_FilePosE_ptr
482C42:  LDR             R1, [R1]; CGenericGameStorage::ms_FileSize ...
482C44:  ADD             R3, PC; _ZN19CGenericGameStorage17ms_WorkBufferSizeE_ptr
482C46:  LDR             R5, [R5]; CGenericGameStorage::_ms_WorkBuffer ...
482C48:  ADD             R6, PC; _ZN19CGenericGameStorage16ms_WorkBufferPosE_ptr
482C4A:  LDR             R2, [R2]; CGenericGameStorage::ms_FilePos ...
482C4C:  STR             R0, [R1]; CGenericGameStorage::ms_FileSize
482C4E:  MOVW            R1, #0xFDE8
482C52:  LDR             R3, [R3]; CGenericGameStorage::ms_WorkBufferSize ...
482C54:  LDR             R6, [R6]; CGenericGameStorage::ms_WorkBufferPos ...
482C56:  LDR             R0, [R5]; CGenericGameStorage::_ms_WorkBuffer
482C58:  STR             R4, [R2]; CGenericGameStorage::ms_FilePos
482C5A:  CMP             R0, #0
482C5C:  STR             R1, [R3]; CGenericGameStorage::ms_WorkBufferSize
482C5E:  STR             R1, [R6]; CGenericGameStorage::ms_WorkBufferPos
482C60:  BNE             loc_482C84
482C62:  MOVW            R0, #0xFDE9; unsigned int
482C66:  MOVW            R4, #0xFDE9
482C6A:  BLX             _Znaj; operator new[](uint)
482C6E:  LDR.W           R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482C7A)
482C72:  LDR.W           R2, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482C7C)
482C76:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482C78:  ADD             R2, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482C7A:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer ...
482C7C:  LDR             R2, [R2]; CGenericGameStorage::ms_WorkBuffer ...
482C7E:  STR             R0, [R1]; CGenericGameStorage::_ms_WorkBuffer
482C80:  STRD.W          R0, R4, [R2]; CGenericGameStorage::ms_WorkBuffer
482C84:  LDR.W           R0, =(_ZN19CGenericGameStorage11ms_bLoadingE_ptr - 0x482C96)
482C88:  MOVS            R1, #1
482C8A:  ADD.W           R4, SP, #0x390+var_37D
482C8E:  MOV.W           R5, #0xFFFFFFFF
482C92:  ADD             R0, PC; _ZN19CGenericGameStorage11ms_bLoadingE_ptr
482C94:  LDR             R0, [R0]; CGenericGameStorage::ms_bLoading ...
482C96:  STRB            R1, [R0]; CGenericGameStorage::ms_bLoading
482C98:  LDR.W           R0, =(_ZN19CGenericGameStorage26m_currentSlotVersionNumberE_ptr - 0x482CA4)
482C9C:  LDR.W           R1, =(_ZN19CGenericGameStorage15ms_BlockTagNameE_ptr - 0x482CA6)
482CA0:  ADD             R0, PC; _ZN19CGenericGameStorage26m_currentSlotVersionNumberE_ptr
482CA2:  ADD             R1, PC; _ZN19CGenericGameStorage15ms_BlockTagNameE_ptr
482CA4:  LDR             R0, [R0]; CGenericGameStorage::m_currentSlotVersionNumber ...
482CA6:  STR             R0, [SP,#0x390+var_384]
482CA8:  LDR.W           R0, =(UseDataFence_ptr - 0x482CB2)
482CAC:  LDR             R6, [R1]; "BLOCK" ...
482CAE:  ADD             R0, PC; UseDataFence_ptr
482CB0:  LDR.W           R10, [R0]; UseDataFence
482CB4:  LDR.W           R0, =(UseDataFence_ptr - 0x482CBC)
482CB8:  ADD             R0, PC; UseDataFence_ptr
482CBA:  LDR.W           R8, [R0]; UseDataFence
482CBE:  LDR.W           R0, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x482CC6)
482CC2:  ADD             R0, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
482CC4:  LDR.W           R11, [R0]; CGenericGameStorage::ms_bFailed ...
482CC8:  CMP             R5, #0x1B
482CCA:  BNE             loc_482CD6
482CCC:  LDR             R0, [SP,#0x390+var_384]
482CCE:  LDR             R0, [R0]; this
482CD0:  CMP             R0, #3
482CD2:  BLT.W           loc_482E58
482CD6:  BLX             j__ZN14CLoadingScreen14NewChunkLoadedEv; CLoadingScreen::NewChunkLoaded(void)
482CDA:  MOVS            R0, #0
482CDC:  LDRB.W          R9, [R10]
482CE0:  STRB.W          R0, [R10]
482CE4:  MOV             R0, R4; this
482CE6:  MOVS            R1, #byte_5; void *
482CE8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
482CEC:  CMP             R0, #0
482CEE:  BEQ.W           loc_482EB2
482CF2:  MOV             R0, R4; char *
482CF4:  MOV             R1, R6; char *
482CF6:  MOVS            R2, #5; size_t
482CF8:  STRB.W          R9, [R8]
482CFC:  ADDS            R4, R5, #1
482CFE:  MOV             R9, R0
482D00:  BLX             strncmp
482D04:  CMP             R0, #0
482D06:  BNE.W           loc_482EE4
482D0A:  CMP             R4, #0x1C; switch 29 cases
482D0C:  BHI.W           def_482D10; jumptable 00482D10 default case, cases 7,13,14
482D10:  TBB.W           [PC,R4]; switch jump
482D14:  DCB 0xF; jump table for switch statement
482D15:  DCB 0x3D
482D16:  DCB 0x40
482D17:  DCB 0x47
482D18:  DCB 0x4A
482D19:  DCB 0x4D
482D1A:  DCB 0x53
482D1B:  DCB 0x99
482D1C:  DCB 0x56
482D1D:  DCB 0x59
482D1E:  DCB 0x5C
482D1F:  DCB 0x5F
482D20:  DCB 0x62
482D21:  DCB 0x99
482D22:  DCB 0x99
482D23:  DCB 0x65
482D24:  DCB 0x73
482D25:  DCB 0x76
482D26:  DCB 0x79
482D27:  DCB 0x7C
482D28:  DCB 0x7F
482D29:  DCB 0x82
482D2A:  DCB 0x85
482D2B:  DCB 0x88
482D2C:  DCB 0x8B
482D2D:  DCB 0x8E
482D2E:  DCB 0x91
482D2F:  DCB 0x94
482D30:  DCB 0x97
482D31:  ALIGN 2
482D32:  ADD             R0, SP, #0x390+var_1C8; jumptable 00482D10 case 0
482D34:  BLX             j__ZN29CSimpleVariablesSaveStructure9ConstructEv; CSimpleVariablesSaveStructure::Construct(void)
482D38:  LDR             R0, =(UseDataFence_ptr - 0x482D42)
482D3A:  MOV.W           R1, #(elf_hash_bucket+0xB0); void *
482D3E:  ADD             R0, PC; UseDataFence_ptr
482D40:  LDR             R5, [R0]; UseDataFence
482D42:  LDRB            R0, [R5]
482D44:  STR             R0, [SP,#0x390+var_390]
482D46:  MOVS            R0, #0
482D48:  STRB            R0, [R5]
482D4A:  ADD             R0, SP, #0x390+var_374; this
482D4C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
482D50:  LDR             R1, =(_ZN19CGenericGameStorage10ms_bFailedE_ptr - 0x482D5A)
482D52:  EORS.W          R0, R0, #1
482D56:  ADD             R1, PC; _ZN19CGenericGameStorage10ms_bFailedE_ptr
482D58:  LDR             R1, [R1]; CGenericGameStorage::ms_bFailed ...
482D5A:  STRB            R0, [R1]; CGenericGameStorage::ms_bFailed
482D5C:  LDR             R1, [SP,#0x390+var_390]
482D5E:  STRB            R1, [R5]
482D60:  BNE             loc_482E4A
482D62:  ADD             R0, SP, #0x390+var_374; this
482D64:  ADD             R1, SP, #0x390+var_378; unsigned int *
482D66:  BLX             j__ZN29CSimpleVariablesSaveStructure7ExtractERj; CSimpleVariablesSaveStructure::Extract(uint &)
482D6A:  LDR             R0, [SP,#0x390+var_378]; this
482D6C:  BLX             j__ZN19CGenericGameStorage21GetSavedVersionNumberEj; CGenericGameStorage::GetSavedVersionNumber(uint)
482D70:  LDR             R1, =(_ZN19CGenericGameStorage26m_currentSlotVersionNumberE_ptr - 0x482D78)
482D72:  CMP             R0, #1
482D74:  ADD             R1, PC; _ZN19CGenericGameStorage26m_currentSlotVersionNumberE_ptr
482D76:  LDR             R1, [R1]; CGenericGameStorage::m_currentSlotVersionNumber ...
482D78:  STR             R0, [R1]; CGenericGameStorage::m_currentSlotVersionNumber
482D7A:  BLE.W           loc_482F9A
482D7E:  CMP             R0, #2
482D80:  BNE             def_482D10; jumptable 00482D10 default case, cases 7,13,14
482D82:  LDR             R0, =(UseDataFence_ptr - 0x482D8A)
482D84:  MOVS            R1, #1
482D86:  ADD             R0, PC; UseDataFence_ptr
482D88:  LDR             R0, [R0]; UseDataFence
482D8A:  STRB            R1, [R0]
482D8C:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482D8E:  BLX             j__ZN11CTheScripts4LoadEv; jumptable 00482D10 case 1
482D92:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482D94:  BLX             j__ZN6CPools4LoadEv; jumptable 00482D10 case 2
482D98:  CMP             R0, #1
482D9A:  BNE             def_482D10; jumptable 00482D10 default case, cases 7,13,14
482D9C:  BLX             j__ZN11CTheScripts33DoScriptSetupAfterPoolsHaveLoadedEv; CTheScripts::DoScriptSetupAfterPoolsHaveLoaded(void)
482DA0:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DA2:  BLX             j__ZN8CGarages4LoadEv; jumptable 00482D10 case 3
482DA6:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DA8:  BLX             j__ZN10CGameLogic4LoadEv; jumptable 00482D10 case 4
482DAC:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DAE:  LDR             R0, =(ThePaths_ptr - 0x482DB4); jumptable 00482D10 case 5
482DB0:  ADD             R0, PC; ThePaths_ptr
482DB2:  LDR             R0, [R0]; ThePaths ; this
482DB4:  BLX             j__ZN9CPathFind4LoadEv; CPathFind::Load(void)
482DB8:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DBA:  BLX             j__ZN8CPickups4LoadEv; jumptable 00482D10 case 6
482DBE:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DC0:  BLX             j__ZN8CRestart4LoadEv; jumptable 00482D10 case 8
482DC4:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DC6:  BLX             j__ZN6CRadar4LoadEv; jumptable 00482D10 case 9
482DCA:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DCC:  BLX             j__ZN9CTheZones4LoadEv; jumptable 00482D10 case 10
482DD0:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DD2:  BLX             j__ZN6CGangs4LoadEv; jumptable 00482D10 case 11
482DD6:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DD8:  BLX             j__ZN17CTheCarGenerators4LoadEv; jumptable 00482D10 case 12
482DDC:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DDE:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x482DEA); jumptable 00482D10 case 15
482DE0:  MOV.W           R2, #0x194
482DE4:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x482DEC)
482DE6:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
482DE8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
482DEA:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
482DEC:  LDR             R1, [R1]; CWorld::Players ...
482DEE:  LDR             R0, [R0]; CWorld::PlayerInFocus
482DF0:  SMLABB.W        R0, R0, R2, R1; this
482DF4:  BLX             j__ZN11CPlayerInfo4LoadEv; CPlayerInfo::Load(void)
482DF8:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482DFA:  BLX             j__ZN6CStats4LoadEv; jumptable 00482D10 case 16
482DFE:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E00:  BLX             j__ZN10CSetPieces4LoadEv; jumptable 00482D10 case 17
482E04:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E06:  BLX             j__ZN10CStreaming4LoadEv; jumptable 00482D10 case 18
482E0A:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E0C:  BLX             j__ZN8CPedType4LoadEv; jumptable 00482D10 case 19
482E10:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E12:  BLX             j__ZN11CTagManager4LoadEv; jumptable 00482D10 case 20
482E16:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E18:  BLX             j__ZN9CIplStore4LoadEv; jumptable 00482D10 case 21
482E1C:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E1E:  BLX             j__ZN9CShopping4LoadEv; jumptable 00482D10 case 22
482E22:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E24:  BLX             j__ZN9CGangWars4LoadEv; jumptable 00482D10 case 23
482E28:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E2A:  BLX             j__ZN17CStuntJumpManager4LoadEv; jumptable 00482D10 case 24
482E2E:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E30:  BLX             j__ZN17CEntryExitManager4LoadEv; jumptable 00482D10 case 25
482E34:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E36:  BLX             j__ZN20CAERadioTrackManager4LoadEv; jumptable 00482D10 case 26
482E3A:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E3C:  BLX             j__ZN10C3dMarkers17LoadUser3dMarkersEv; jumptable 00482D10 case 27
482E40:  B               def_482D10; jumptable 00482D10 default case, cases 7,13,14
482E42:  BLX             j__ZN12CPostEffects4LoadEv; jumptable 00482D10 case 28
482E46:  LDRB.W          R0, [R11]; jumptable 00482D10 default case, cases 7,13,14
482E4A:  CMP             R0, #0
482E4C:  BNE             loc_482F34
482E4E:  CMP             R4, #0x1C
482E50:  MOV             R5, R4
482E52:  MOV             R4, R9
482E54:  BLT.W           loc_482CC8
482E58:  BLX             j__Z10LoadBriefsv; LoadBriefs(void)
482E5C:  LDR             R0, =(UseDataFence_ptr - 0x482E66)
482E5E:  MOVS            R4, #0
482E60:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482E6A)
482E62:  ADD             R0, PC; UseDataFence_ptr
482E64:  LDR             R2, =(_ZN19CGenericGameStorage11ms_bLoadingE_ptr - 0x482E70)
482E66:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482E68:  LDR             R3, [SP,#0x390+var_388]
482E6A:  LDR             R0, [R0]; UseDataFence
482E6C:  ADD             R2, PC; _ZN19CGenericGameStorage11ms_bLoadingE_ptr
482E6E:  LDR             R1, [R1]; CGenericGameStorage::_ms_WorkBuffer ...
482E70:  LDR             R2, [R2]; CGenericGameStorage::ms_bLoading ...
482E72:  STRB            R3, [R0]
482E74:  LDR             R0, [R1]; void *
482E76:  STRB            R4, [R2]; CGenericGameStorage::ms_bLoading
482E78:  CBZ             R0, loc_482E90
482E7A:  BLX             _ZdaPv; operator delete[](void *)
482E7E:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482E86)
482E80:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482E88)
482E82:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482E84:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482E86:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482E88:  LDR             R1, [R1]; unsigned int
482E8A:  STR             R4, [R1]; CGenericGameStorage::_ms_WorkBuffer
482E8C:  STRD.W          R4, R4, [R0]; CGenericGameStorage::ms_WorkBuffer
482E90:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482E96)
482E92:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482E94:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
482E96:  LDR             R0, [R0]; this
482E98:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
482E9C:  CMP             R0, #0
482E9E:  BEQ             loc_482F80
482EA0:  MOVS            R0, #0
482EA2:  B               loc_482F90
482EA4:  LDR             R0, =(PcSaveHelper_ptr - 0x482EAC)
482EA6:  MOVS            R1, #4
482EA8:  ADD             R0, PC; PcSaveHelper_ptr
482EAA:  LDR             R0, [R0]; PcSaveHelper
482EAC:  STR             R1, [R0]
482EAE:  MOVS            R0, #0
482EB0:  B               loc_482F90
482EB2:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482EB8)
482EB4:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482EB6:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482EB8:  LDR             R0, [R0]; void *
482EBA:  CBZ             R0, loc_482ED4
482EBC:  BLX             _ZdaPv; operator delete[](void *)
482EC0:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482ECA)
482EC2:  MOVS            R2, #0
482EC4:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482ECC)
482EC6:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482EC8:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482ECA:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482ECC:  LDR             R1, [R1]; unsigned int
482ECE:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
482ED0:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
482ED4:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482EDA)
482ED6:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482ED8:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
482EDA:  LDR             R0, [R0]; this
482EDC:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
482EE0:  MOVS            R0, #0
482EE2:  B               loc_482F90
482EE4:  CMP             R4, #1
482EE6:  BLT             loc_482EFA
482EE8:  MOV             R0, R5
482EEA:  MOVS            R1, #2
482EEC:  BLX             j__ZN19CGenericGameStorage11ReportErrorENS_7eBlocksENS_14eSaveLoadErrorE; CGenericGameStorage::ReportError(CGenericGameStorage::eBlocks,CGenericGameStorage::eSaveLoadError)
482EF0:  CBNZ            R5, loc_482EFA
482EF2:  ADD             R0, SP, #0x390+var_1C8; this
482EF4:  ADD             R1, SP, #0x390+var_378; unsigned int *
482EF6:  BLX             j__ZN29CSimpleVariablesSaveStructure7ExtractERj; CSimpleVariablesSaveStructure::Extract(uint &)
482EFA:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482F00)
482EFC:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482EFE:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482F00:  LDR             R0, [R0]; void *
482F02:  CBZ             R0, loc_482F1C
482F04:  BLX             _ZdaPv; operator delete[](void *)
482F08:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482F12)
482F0A:  MOVS            R2, #0
482F0C:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482F14)
482F0E:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482F10:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482F12:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482F14:  LDR             R1, [R1]; unsigned int
482F16:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
482F18:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
482F1C:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482F22)
482F1E:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482F20:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
482F22:  LDR             R0, [R0]; this
482F24:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
482F28:  LDR             R0, =(_ZN19CGenericGameStorage11ms_bLoadingE_ptr - 0x482F2E)
482F2A:  ADD             R0, PC; _ZN19CGenericGameStorage11ms_bLoadingE_ptr
482F2C:  LDR             R1, [R0]; CGenericGameStorage::ms_bLoading ...
482F2E:  MOVS            R0, #0
482F30:  STRB            R0, [R1]; CGenericGameStorage::ms_bLoading
482F32:  B               loc_482F90
482F34:  MOV             R0, R4
482F36:  MOVS            R1, #1
482F38:  BLX             j__ZN19CGenericGameStorage11ReportErrorENS_7eBlocksENS_14eSaveLoadErrorE; CGenericGameStorage::ReportError(CGenericGameStorage::eBlocks,CGenericGameStorage::eSaveLoadError)
482F3C:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482F42)
482F3E:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482F40:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482F42:  LDR             R0, [R0]; void *
482F44:  CBZ             R0, loc_482F5E
482F46:  BLX             _ZdaPv; operator delete[](void *)
482F4A:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482F54)
482F4C:  MOVS            R2, #0
482F4E:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482F56)
482F50:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482F52:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482F54:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482F56:  LDR             R1, [R1]; unsigned int
482F58:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
482F5A:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
482F5E:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482F64)
482F60:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482F62:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
482F64:  LDR             R0, [R0]; this
482F66:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
482F6A:  LDR             R0, =(_ZN19CGenericGameStorage11ms_bLoadingE_ptr - 0x482F72)
482F6C:  LDR             R1, =(UseDataFence_ptr - 0x482F74)
482F6E:  ADD             R0, PC; _ZN19CGenericGameStorage11ms_bLoadingE_ptr
482F70:  ADD             R1, PC; UseDataFence_ptr
482F72:  LDR             R2, [R0]; CGenericGameStorage::ms_bLoading ...
482F74:  MOVS            R0, #0
482F76:  LDR             R1, [R1]; UseDataFence
482F78:  STRB            R0, [R2]; CGenericGameStorage::ms_bLoading
482F7A:  LDR             R2, [SP,#0x390+var_388]
482F7C:  STRB            R2, [R1]
482F7E:  B               loc_482F90
482F80:  BLX             j__ZN19CGenericGameStorage34DoGameSpecificStuffAfterSucessLoadEv; CGenericGameStorage::DoGameSpecificStuffAfterSucessLoad(void)
482F84:  BLX             j__ZN19CGenericGameStorage35DoAnytimeSavingStuffAfterSucessLoadEv; CGenericGameStorage::DoAnytimeSavingStuffAfterSucessLoad(void)
482F88:  MOVS            R0, #0; this
482F8A:  BLX             j__ZN14CLoadingScreen8ShutdownEb; CLoadingScreen::Shutdown(bool)
482F8E:  MOVS            R0, #1
482F90:  ADD.W           SP, SP, #0x374
482F94:  POP.W           {R8-R11}
482F98:  POP             {R4-R7,PC}
482F9A:  ADD             R0, SP, #0x390+var_1C8; this
482F9C:  ADD             R1, SP, #0x390+var_378; unsigned int *
482F9E:  BLX             j__ZN29CSimpleVariablesSaveStructure7ExtractERj; CSimpleVariablesSaveStructure::Extract(uint &)
482FA2:  LDR             R0, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482FA8)
482FA4:  ADD             R0, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482FA6:  LDR             R0, [R0]; CGenericGameStorage::_ms_WorkBuffer ...
482FA8:  LDR             R0, [R0]; void *
482FAA:  CBZ             R0, loc_482FC4
482FAC:  BLX             _ZdaPv; operator delete[](void *)
482FB0:  LDR             R0, =(_ZN19CGenericGameStorage13ms_WorkBufferE_ptr - 0x482FBA)
482FB2:  MOVS            R2, #0
482FB4:  LDR             R1, =(_ZN19CGenericGameStorage14_ms_WorkBufferE_ptr - 0x482FBC)
482FB6:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_WorkBufferE_ptr
482FB8:  ADD             R1, PC; _ZN19CGenericGameStorage14_ms_WorkBufferE_ptr
482FBA:  LDR             R0, [R0]; CGenericGameStorage::ms_WorkBuffer ...
482FBC:  LDR             R1, [R1]; unsigned int
482FBE:  STR             R2, [R1]; CGenericGameStorage::_ms_WorkBuffer
482FC0:  STRD.W          R2, R2, [R0]; CGenericGameStorage::ms_WorkBuffer
482FC4:  LDR             R0, =(_ZN19CGenericGameStorage13ms_FileHandleE_ptr - 0x482FCA)
482FC6:  ADD             R0, PC; _ZN19CGenericGameStorage13ms_FileHandleE_ptr
482FC8:  LDR             R0, [R0]; CGenericGameStorage::ms_FileHandle ...
482FCA:  LDR             R0, [R0]; this
482FCC:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
482FD0:  LDR             R1, [SP,#0x390+var_38C]
482FD2:  MOVS            R0, #1
482FD4:  STRB            R0, [R1]
482FD6:  MOVS            R0, #0
482FD8:  B               loc_482F90
