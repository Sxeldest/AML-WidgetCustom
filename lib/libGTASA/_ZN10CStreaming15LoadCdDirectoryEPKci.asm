; =========================================================
; Game Engine Function: _ZN10CStreaming15LoadCdDirectoryEPKci
; Address            : 0x46C03C - 0x46C36C
; =========================================================

46C03C:  PUSH            {R4-R7,LR}
46C03E:  ADD             R7, SP, #0xC
46C040:  PUSH.W          {R8-R11}
46C044:  SUB             SP, SP, #0x5C
46C046:  STR             R1, [SP,#0x78+var_50]
46C048:  ADR             R1, dword_46C36C; char *
46C04A:  MOV             R4, R0
46C04C:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
46C050:  MOV             R6, R0
46C052:  CMP             R6, #0
46C054:  BEQ.W           loc_46C364
46C058:  ADD             R1, SP, #0x78+var_34; unsigned int
46C05A:  MOVS            R5, #0
46C05C:  MOV             R0, R6; this
46C05E:  MOVS            R2, #byte_4; char *
46C060:  STRB.W          R5, [SP,#0x78+var_30]
46C064:  STR             R4, [SP,#0x78+var_6C]
46C066:  STR             R5, [SP,#0x78+var_34]
46C068:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
46C06C:  ADD             R1, SP, #0x78+ptr; ptr
46C06E:  MOV             R0, R6; this
46C070:  MOVS            R2, #4; n
46C072:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
46C076:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
46C07A:  MOV             R4, R0
46C07C:  LDR             R0, [SP,#0x78+ptr]
46C07E:  MOV.W           R8, R0,LSL#5
46C082:  MOV             R0, R8; byte_count
46C084:  BLX             malloc
46C088:  MOV             R1, R0; ptr
46C08A:  MOV             R0, R6; this
46C08C:  MOV             R2, R8; n
46C08E:  STR             R1, [SP,#0x78+p]
46C090:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
46C094:  MOV             R0, R6; this
46C096:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
46C09A:  LDR             R0, [SP,#0x78+ptr]
46C09C:  CMP             R0, #0
46C09E:  SUB.W           R1, R0, #1
46C0A2:  STR             R1, [SP,#0x78+ptr]
46C0A4:  BEQ.W           loc_46C35E
46C0A8:  LDR             R0, [SP,#0x78+var_50]
46C0AA:  MOV.W           R6, #0xFFFFFFFF
46C0AE:  LDR.W           R11, [SP,#0x78+p]
46C0B2:  LSLS            R0, R0, #0x18
46C0B4:  STR             R0, [SP,#0x78+var_70]
46C0B6:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x46C0BC)
46C0B8:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
46C0BA:  LDR             R0, [R0]; CLoadingScreen::m_bActive ...
46C0BC:  STR             R0, [SP,#0x78+var_40]
46C0BE:  LDR             R0, =(bLoadingScene_ptr - 0x46C0C4)
46C0C0:  ADD             R0, PC; bLoadingScene_ptr
46C0C2:  LDR             R0, [R0]; bLoadingScene
46C0C4:  STR             R0, [SP,#0x78+var_54]
46C0C6:  LDR             R0, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x46C0CC)
46C0C8:  ADD             R0, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
46C0CA:  LDR.W           R9, [R0]; CStreaming::ms_streamingBufferSize ...
46C0CE:  LDR             R0, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x46C0D8)
46C0D0:  STR.W           R9, [SP,#0x78+var_48]
46C0D4:  ADD             R0, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
46C0D6:  LDR             R0, [R0]; CStreaming::ms_streamingBufferSize ...
46C0D8:  STR             R0, [SP,#0x78+var_44]
46C0DA:  LDR             R0, =(gModelInfoAccelerator_ptr - 0x46C0E0)
46C0DC:  ADD             R0, PC; gModelInfoAccelerator_ptr
46C0DE:  LDR             R0, [R0]; gModelInfoAccelerator
46C0E0:  STR             R0, [SP,#0x78+var_60]
46C0E2:  LDR             R0, =(_ZN10CStreaming19ms_pExtraObjectsDirE_ptr - 0x46C0E8)
46C0E4:  ADD             R0, PC; _ZN10CStreaming19ms_pExtraObjectsDirE_ptr
46C0E6:  LDR             R0, [R0]; CStreaming::ms_pExtraObjectsDir ...
46C0E8:  STR             R0, [SP,#0x78+var_74]
46C0EA:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46C0F0)
46C0EC:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
46C0EE:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
46C0F0:  STR             R0, [SP,#0x78+var_4C]
46C0F2:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46C0F8)
46C0F4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
46C0F6:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
46C0F8:  STR             R0, [SP,#0x78+var_58]
46C0FA:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46C100)
46C0FC:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
46C0FE:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
46C100:  STR             R0, [SP,#0x78+var_5C]
46C102:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46C108)
46C104:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
46C106:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
46C108:  STR             R0, [SP,#0x78+var_68]
46C10A:  LDR             R0, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x46C110)
46C10C:  ADD             R0, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
46C10E:  LDR             R0, [R0]; CTheScripts::StreamedScripts ...
46C110:  STR             R0, [SP,#0x78+var_78]
46C112:  B               loc_46C25A
46C114:  LDR             R0, [SP,#0x78+var_60]; this
46C116:  ADD             R1, SP, #0x78+var_2C; CBaseModelInfo **
46C118:  ADD             R2, SP, #0x78+var_28; char *
46C11A:  MOV             R3, R10; CModelInfoAccelerator *
46C11C:  BLX             j__ZN21CModelInfoAccelerator8GetEntryEPP14CBaseModelInfoPiPc; CModelInfoAccelerator::GetEntry(CBaseModelInfo **,int *,char *)
46C120:  LDR             R0, [SP,#0x78+var_2C]
46C122:  CBZ             R0, loc_46C160
46C124:  LDR             R0, [SP,#0x78+var_28]
46C126:  B               loc_46C1E8
46C128:  MOV             R0, R10; this
46C12A:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
46C12E:  ADDS            R1, R0, #1
46C130:  STR             R0, [SP,#0x78+var_28]
46C132:  BNE             loc_46C140
46C134:  LDR             R1, [SP,#0x78+var_6C]; char *
46C136:  MOV             R0, R10; this
46C138:  MOVS            R2, #0; char *
46C13A:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
46C13E:  STR             R0, [SP,#0x78+var_28]
46C140:  MOVW            R1, #0x4E20
46C144:  B               loc_46C1E4
46C146:  MOV             R0, R10; this
46C148:  BLX             j__ZN9CColStore11FindColSlotEPKc; CColStore::FindColSlot(char const*)
46C14C:  ADDS            R1, R0, #1; char *
46C14E:  STR             R0, [SP,#0x78+var_28]
46C150:  BNE             loc_46C15A
46C152:  MOV             R0, R10; this
46C154:  BLX             j__ZN9CColStore10AddColSlotEPKc; CColStore::AddColSlot(char const*)
46C158:  STR             R0, [SP,#0x78+var_28]
46C15A:  MOVW            R1, #0x61A8
46C15E:  B               loc_46C1E4
46C160:  LDR.W           R0, [R11]
46C164:  LDR             R1, [SP,#0x78+var_70]
46C166:  ORRS            R0, R1
46C168:  STR.W           R0, [R11]
46C16C:  LDR             R0, [SP,#0x78+var_74]
46C16E:  MOV             R1, R11
46C170:  LDR             R0, [R0]
46C172:  BLX             j__ZN10CDirectory7AddItemERKNS_13DirectoryInfoE; CDirectory::AddItem(CDirectory::DirectoryInfo const&)
46C176:  MOV.W           R6, #0xFFFFFFFF
46C17A:  MOVS            R5, #0
46C17C:  LDR.W           R9, [SP,#0x78+var_48]
46C180:  B               loc_46C34C
46C182:  MOV             R0, R10; this
46C184:  BLX             j__ZN9CIplStore11FindIplSlotEPKc; CIplStore::FindIplSlot(char const*)
46C188:  LDR.W           R9, [SP,#0x78+var_48]
46C18C:  ADDS            R1, R0, #1; char *
46C18E:  LDR.W           R8, [SP,#0x78+var_3C]
46C192:  MOV.W           R5, #0
46C196:  STR             R0, [SP,#0x78+var_28]
46C198:  BNE             loc_46C1A2
46C19A:  MOV             R0, R10; this
46C19C:  BLX             j__ZN9CIplStore10AddIplSlotEPKc; CIplStore::AddIplSlot(char const*)
46C1A0:  STR             R0, [SP,#0x78+var_28]
46C1A2:  MOVW            R1, #0x62A7
46C1A6:  ADD             R0, R1
46C1A8:  STR             R0, [SP,#0x78+var_28]
46C1AA:  B               loc_46C1F2
46C1AC:  ADD.W           R0, R11, #0xD; s
46C1B0:  ADR             R1, dword_46C3A4; format
46C1B2:  ADD             R2, SP, #0x78+var_28
46C1B4:  BLX             sscanf
46C1B8:  LDR             R0, [SP,#0x78+var_28]
46C1BA:  MOVW            R1, #0x63A7
46C1BE:  B               loc_46C1E4
46C1C0:  MOV             R0, R10; this
46C1C2:  BLX             j__ZN12CAnimManager17RegisterAnimBlockEPKc; CAnimManager::RegisterAnimBlock(char const*)
46C1C6:  MOVW            R1, #0x63E7
46C1CA:  B               loc_46C1E4
46C1CC:  MOV             R0, R10; this
46C1CE:  BLX             j__ZN17CVehicleRecording21RegisterRecordingFileEPKc; CVehicleRecording::RegisterRecordingFile(char const*)
46C1D2:  MOVW            R1, #0x649B
46C1D6:  B               loc_46C1E4
46C1D8:  LDR             R0, [SP,#0x78+var_78]; this
46C1DA:  MOV             R1, R10; char *
46C1DC:  BLX             j__ZN16CStreamedScripts14RegisterScriptEPKc; CStreamedScripts::RegisterScript(char const*)
46C1E0:  MOVW            R1, #0x6676
46C1E4:  ADD             R0, R1
46C1E6:  STR             R0, [SP,#0x78+var_28]
46C1E8:  MOVS            R5, #0
46C1EA:  LDR.W           R9, [SP,#0x78+var_48]
46C1EE:  LDR.W           R8, [SP,#0x78+var_3C]
46C1F2:  ADD.W           R0, R0, R0,LSL#2
46C1F6:  LDR             R1, [SP,#0x78+var_4C]
46C1F8:  ADD             R2, SP, #0x78+var_24; unsigned int *
46C1FA:  ADD.W           R0, R1, R0,LSL#2; this
46C1FE:  ADD             R1, SP, #0x78+var_20; unsigned int *
46C200:  BLX             j__ZN14CStreamingInfo16GetCdPosnAndSizeERjS0_; CStreamingInfo::GetCdPosnAndSize(uint &,uint &)
46C204:  CMP             R0, #0
46C206:  BNE.W           loc_46C348
46C20A:  LDR             R0, [SP,#0x78+var_28]
46C20C:  LDR             R1, [SP,#0x78+var_58]
46C20E:  LDR             R2, [SP,#0x78+var_50]
46C210:  ADD.W           R0, R0, R0,LSL#2
46C214:  ADD.W           R1, R1, R0,LSL#2
46C218:  STRB            R2, [R1,#7]
46C21A:  LDRH.W          R2, [R11,#6]
46C21E:  CMP             R2, #0
46C220:  ITE NE
46C222:  STRHNE.W        R2, [R11,#4]
46C226:  LDRHEQ.W        R2, [R11,#4]; unsigned int
46C22A:  LDR             R6, [SP,#0x78+var_5C]
46C22C:  LDR.W           R1, [R11]; unsigned int
46C230:  ADD.W           R0, R6, R0,LSL#2; this
46C234:  BLX             j__ZN14CStreamingInfo16SetCdPosnAndSizeEjj; CStreamingInfo::SetCdPosnAndSize(uint,uint)
46C238:  LDR             R0, [SP,#0x78+var_28]
46C23A:  ADD.W           R1, R0, R0,LSL#2
46C23E:  ADD.W           R1, R6, R1,LSL#2
46C242:  MOV             R6, R0
46C244:  STRB            R5, [R1,#6]
46C246:  ADDS.W          R1, R8, #1
46C24A:  ITTTT NE
46C24C:  ADDNE.W         R1, R8, R8,LSL#2
46C250:  LDRNE           R2, [SP,#0x78+var_68]
46C252:  ADDNE.W         R1, R2, R1,LSL#2
46C256:  STRHNE          R0, [R1,#4]
46C258:  B               loc_46C34C
46C25A:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
46C25E:  SUBS            R0, R0, R4
46C260:  CMP             R0, #0x22 ; '"'
46C262:  BCC             loc_46C282
46C264:  LDR             R0, [SP,#0x78+var_40]
46C266:  LDRB            R0, [R0]; this
46C268:  CBZ             R0, loc_46C270
46C26A:  BLX             j__ZN14CLoadingScreen15DisplayPCScreenEv; CLoadingScreen::DisplayPCScreen(void)
46C26E:  B               loc_46C27C
46C270:  LDR             R0, [SP,#0x78+var_54]
46C272:  LDRB            R0, [R0]
46C274:  CMP             R0, #0
46C276:  IT NE
46C278:  BLXNE           j__Z16Pump_SwapBuffersv; Pump_SwapBuffers(void)
46C27C:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
46C280:  MOV             R4, R0
46C282:  LDRH.W          R0, [R11,#4]
46C286:  ADD.W           R10, R11, #8
46C28A:  LDR.W           R1, [R9]; CStreaming::ms_streamingBufferSize
46C28E:  CMP             R1, R0
46C290:  ITT LT
46C292:  LDRLT           R1, [SP,#0x78+var_44]
46C294:  STRLT           R0, [R1]
46C296:  MOV             R0, R10; s
46C298:  MOVS            R1, #0x2E ; '.'; c
46C29A:  STRB.W          R5, [R11,#0x1F]
46C29E:  BLX             strchr
46C2A2:  MOV             R8, R0
46C2A4:  CMP.W           R8, #0
46C2A8:  BEQ             loc_46C344
46C2AA:  SUB.W           R0, R8, R10
46C2AE:  CMP             R0, #0x15
46C2B0:  BGE             loc_46C344
46C2B2:  MOVS            R0, #0
46C2B4:  MOV             R9, R8
46C2B6:  STR             R6, [SP,#0x78+var_3C]
46C2B8:  ADR             R1, dword_46C380; char *
46C2BA:  STRB.W          R0, [R9],#1
46C2BE:  MOVS            R2, #3; size_t
46C2C0:  MOV             R0, R9; char *
46C2C2:  BLX             strncasecmp
46C2C6:  CMP             R0, #0
46C2C8:  BEQ.W           loc_46C114
46C2CC:  ADR             R1, dword_46C384; char *
46C2CE:  MOV             R0, R9; char *
46C2D0:  MOVS            R2, #3; size_t
46C2D2:  BLX             strncasecmp
46C2D6:  CMP             R0, #0
46C2D8:  BEQ.W           loc_46C128
46C2DC:  ADR             R1, dword_46C388; char *
46C2DE:  MOV             R0, R9; char *
46C2E0:  MOVS            R2, #3; size_t
46C2E2:  BLX             strncasecmp
46C2E6:  CMP             R0, #0
46C2E8:  BEQ.W           loc_46C146
46C2EC:  ADR             R1, dword_46C38C; char *
46C2EE:  MOV             R0, R9; char *
46C2F0:  MOVS            R2, #3; size_t
46C2F2:  BLX             strncasecmp
46C2F6:  CMP             R0, #0
46C2F8:  BEQ.W           loc_46C182
46C2FC:  ADR             R1, dword_46C390; char *
46C2FE:  MOV             R0, R9; char *
46C300:  MOVS            R2, #3; size_t
46C302:  BLX             strncasecmp
46C306:  CMP             R0, #0
46C308:  BEQ.W           loc_46C1AC
46C30C:  ADR             R1, dword_46C394; char *
46C30E:  MOV             R0, R9; char *
46C310:  MOVS            R2, #3; size_t
46C312:  BLX             strncasecmp
46C316:  CMP             R0, #0
46C318:  BEQ.W           loc_46C1C0
46C31C:  ADR             R1, dword_46C398; char *
46C31E:  MOV             R0, R9; char *
46C320:  MOVS            R2, #3; size_t
46C322:  BLX             strncasecmp
46C326:  CMP             R0, #0
46C328:  BEQ.W           loc_46C1CC
46C32C:  ADR             R1, off_46C39C; char *
46C32E:  MOV             R0, R9; char *
46C330:  MOVS            R2, #3; size_t
46C332:  BLX             strncasecmp
46C336:  CMP             R0, #0
46C338:  BEQ.W           loc_46C1D8
46C33C:  MOVS            R0, #0x2E ; '.'
46C33E:  STRB.W          R0, [R8]
46C342:  B               loc_46C176
46C344:  STRB.W          R5, [R11,#0x1F]
46C348:  MOV.W           R6, #0xFFFFFFFF
46C34C:  LDR             R0, [SP,#0x78+ptr]
46C34E:  ADD.W           R11, R11, #0x20 ; ' '
46C352:  CMP             R0, #0
46C354:  SUB.W           R1, R0, #1
46C358:  STR             R1, [SP,#0x78+ptr]
46C35A:  BNE.W           loc_46C25A
46C35E:  LDR             R0, [SP,#0x78+p]; p
46C360:  BLX             free
46C364:  ADD             SP, SP, #0x5C ; '\'
46C366:  POP.W           {R8-R11}
46C36A:  POP             {R4-R7,PC}
