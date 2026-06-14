; =========================================================
; Game Engine Function: _ZN10CStreaming5Init2Ev
; Address            : 0x46BA94 - 0x46BEB0
; =========================================================

46BA94:  PUSH            {R4-R7,LR}
46BA96:  ADD             R7, SP, #0xC
46BA98:  PUSH.W          {R8-R10}
46BA9C:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46BAA8)
46BAA0:  MOVW            R5, #0x66CC
46BAA4:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
46BAA6:  LDR             R4, [R0]; CStreaming::ms_aInfoForModel ...
46BAA8:  MOV             R0, R4; this
46BAAA:  BLX             j__ZN14CStreamingInfo4InitEv; CStreamingInfo::Init(void)
46BAAE:  SUBS            R5, #1
46BAB0:  ADD.W           R4, R4, #0x14
46BAB4:  BNE             loc_46BAA8
46BAB6:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46BACA)
46BABA:  MOVW            R2, #0x66C9
46BABE:  LDR.W           R1, =(_ZN10CStreaming10ms_channelE_ptr - 0x46BAD0)
46BAC2:  MOVW            R3, #:lower16:(aZ23rpmultitext+0x1C); "K14RpMultiTexturej"
46BAC6:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
46BAC8:  MOVT            R2, #0xFFFF
46BACC:  ADD             R1, PC; _ZN10CStreaming10ms_channelE_ptr
46BACE:  MOVT            R3, #:upper16:(aZ23rpmultitext+0x1C); "K14RpMultiTexturej"
46BAD2:  LDR             R6, [R0]; CStreaming::ms_aInfoForModel ...
46BAD4:  MOVW            R0, #:lower16:(aZ23rpmultitext+8); "ltiTextureGetCoordsPK14RpMultiTexturej"
46BAD8:  LDR.W           R8, [R1]; CStreaming::ms_channel ...
46BADC:  MOVW            R1, #0xFFFF
46BAE0:  MOVT            R0, #:upper16:(aZ23rpmultitext+8); "ltiTextureGetCoordsPK14RpMultiTexturej"
46BAE4:  MOVT            R1, #0x66C8
46BAE8:  STR             R2, [R6,R0]
46BAEA:  MOV             R2, #(dword_792AF8 - 0x712330)
46BAF2:  STR             R1, [R6,R3]
46BAF4:  MOV             R1, #0xFFFF66CB
46BAFC:  STR             R1, [R6,R2]
46BAFE:  MOVW            R1, #:lower16:(aZ23rpmultitext_0+0x15); "EffectPK14RpMultiTexture"
46BB02:  MOVW            R5, #0xFFFF
46BB06:  MOVT            R1, #:upper16:(aZ23rpmultitext_0+0x15); "EffectPK14RpMultiTexture"
46BB0A:  MOVT            R5, #0x66CA
46BB0E:  STR             R5, [R6,R1]
46BB10:  MOVW            R5, #(byte_714078 - 0x712330)
46BB14:  MOV.W           R10, #1
46BB18:  STRB.W          R10, [R6,R5]
46BB1C:  MOVW            R5, #(byte_71408C - 0x712330)
46BB20:  ADD             R2, R6
46BB22:  LDR.W           R4, =(_ZN10CStreaming19ms_pStartLoadedListE_ptr - 0x46BB34)
46BB26:  ADD             R1, R6
46BB28:  STRB.W          R10, [R6,R5]
46BB2C:  MOVW            R5, #(byte_7140A0 - 0x712330)
46BB30:  ADD             R4, PC; _ZN10CStreaming19ms_pStartLoadedListE_ptr
46BB32:  STRB.W          R10, [R6,R5]
46BB36:  MOVW            R5, #(byte_7140B4 - 0x712330)
46BB3A:  MOV.W           R9, #0xFF
46BB3E:  STRB.W          R10, [R6,R5]
46BB42:  MOVW            R5, #(byte_7140C8 - 0x712330)
46BB46:  STRB.W          R10, [R6,R5]
46BB4A:  MOVW            R5, #(byte_7140DC - 0x712330)
46BB4E:  STRB.W          R10, [R6,R5]
46BB52:  MOV.W           R5, #(byte_7140F0 - 0x712330)
46BB56:  LDR             R4, [R4]; CStreaming::ms_pStartLoadedList ...
46BB58:  STRB.W          R10, [R6,R5]
46BB5C:  MOVW            R5, #(byte_714104 - 0x712330)
46BB60:  STRB.W          R10, [R6,R5]
46BB64:  ADDS            R5, R6, R0
46BB66:  STR             R5, [R4]; CStreaming::ms_pStartLoadedList
46BB68:  LDR             R5, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x46BB70)
46BB6A:  LDR             R4, =(_ZN10CStreaming17ms_pEndLoadedListE_ptr - 0x46BB74)
46BB6C:  ADD             R5, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
46BB6E:  LDR             R0, =(_ZN10CStreaming27m_bHarvesterModelsRequestedE_ptr - 0x46BB78)
46BB70:  ADD             R4, PC; _ZN10CStreaming17ms_pEndLoadedListE_ptr
46BB72:  LDR             R5, [R5]; CStreamingInfo::ms_pArrayBase ...
46BB74:  ADD             R0, PC; _ZN10CStreaming27m_bHarvesterModelsRequestedE_ptr
46BB76:  LDR             R4, [R4]; CStreaming::ms_pEndLoadedList ...
46BB78:  LDR             R0, [R0]; CStreaming::m_bHarvesterModelsRequested ...
46BB7A:  STR             R6, [R5]; CStreamingInfo::ms_pArrayBase
46BB7C:  ADDS            R5, R6, R3
46BB7E:  STR             R5, [R4]; CStreaming::ms_pEndLoadedList
46BB80:  LDR             R4, =(_ZN10CStreaming22ms_pStartRequestedListE_ptr - 0x46BB88)
46BB82:  LDR             R3, =(_ZN10CStreaming33m_bStreamHarvesterModelsThisFrameE_ptr - 0x46BB8C)
46BB84:  ADD             R4, PC; _ZN10CStreaming22ms_pStartRequestedListE_ptr
46BB86:  LDR             R5, =(_ZN10CStreaming26ms_bEnableRequestListPurgeE_ptr - 0x46BB90)
46BB88:  ADD             R3, PC; _ZN10CStreaming33m_bStreamHarvesterModelsThisFrameE_ptr
46BB8A:  LDR             R4, [R4]; CStreaming::ms_pStartRequestedList ...
46BB8C:  ADD             R5, PC; _ZN10CStreaming26ms_bEnableRequestListPurgeE_ptr
46BB8E:  LDR             R3, [R3]; CStreaming::m_bStreamHarvesterModelsThisFrame ...
46BB90:  LDR             R5, [R5]; CStreaming::ms_bEnableRequestListPurge ...
46BB92:  STR             R2, [R4]; CStreaming::ms_pStartRequestedList
46BB94:  LDR             R4, =(_ZN10CStreaming20ms_pEndRequestedListE_ptr - 0x46BB9C)
46BB96:  LDR             R2, =(_ZN10CStreaming13ms_oldSectorYE_ptr - 0x46BBA2)
46BB98:  ADD             R4, PC; _ZN10CStreaming20ms_pEndRequestedListE_ptr
46BB9A:  STRB.W          R10, [R5]; CStreaming::ms_bEnableRequestListPurge
46BB9E:  ADD             R2, PC; _ZN10CStreaming13ms_oldSectorYE_ptr
46BBA0:  LDR             R4, [R4]; CStreaming::ms_pEndRequestedList ...
46BBA2:  LDR             R2, [R2]; CStreaming::ms_oldSectorY ...
46BBA4:  STR             R1, [R4]; CStreaming::ms_pEndRequestedList
46BBA6:  MOVS            R1, #0
46BBA8:  STR             R1, [R2]; CStreaming::ms_oldSectorY
46BBAA:  MOV.W           R4, #0xFFFFFFFF
46BBAE:  LDR             R2, =(_ZN10CStreaming13ms_oldSectorXE_ptr - 0x46BBB8)
46BBB0:  STRB            R1, [R0]; CStreaming::m_bHarvesterModelsRequested
46BBB2:  MOV             R0, R8
46BBB4:  ADD             R2, PC; _ZN10CStreaming13ms_oldSectorXE_ptr
46BBB6:  STR.W           R1, [R8,#(dword_792CB8 - 0x792C38)]
46BBBA:  STRB            R1, [R3]; CStreaming::m_bStreamHarvesterModelsThisFrame
46BBBC:  LDR             R2, [R2]; CStreaming::ms_oldSectorX ...
46BBBE:  STR.W           R1, [R8,#(dword_792D50 - 0x792C38)]
46BBC2:  STR             R1, [R2]; CStreaming::ms_oldSectorX
46BBC4:  LDR             R2, =(_ZN10CStreaming19ms_disableStreamingE_ptr - 0x46BBCA)
46BBC6:  ADD             R2, PC; _ZN10CStreaming19ms_disableStreamingE_ptr
46BBC8:  LDR             R2, [R2]; CStreaming::ms_disableStreaming ...
46BBCA:  STRB            R1, [R2]; CStreaming::ms_disableStreaming
46BBCC:  LDR             R2, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x46BBD2)
46BBCE:  ADD             R2, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
46BBD0:  LDR             R2, [R2]; CStreaming::ms_streamingBufferSize ...
46BBD2:  STR             R1, [R2]; CStreaming::ms_streamingBufferSize
46BBD4:  LDR             R2, =(_ZN10CStreaming13ms_memoryUsedE_ptr - 0x46BBDA)
46BBD6:  ADD             R2, PC; _ZN10CStreaming13ms_memoryUsedE_ptr
46BBD8:  LDR             R2, [R2]; CStreaming::ms_memoryUsed ...
46BBDA:  STR             R1, [R2]; CStreaming::ms_memoryUsed
46BBDC:  LDR             R2, =(_ZN10CStreaming15ms_channelErrorE_ptr - 0x46BBE2)
46BBDE:  ADD             R2, PC; _ZN10CStreaming15ms_channelErrorE_ptr
46BBE0:  LDR             R2, [R2]; CStreaming::ms_channelError ...
46BBE2:  STR             R4, [R2]; CStreaming::ms_channelError
46BBE4:  LDR             R2, =(_ZN10CStreaming19ms_bLoadingBigModelE_ptr - 0x46BBEA)
46BBE6:  ADD             R2, PC; _ZN10CStreaming19ms_bLoadingBigModelE_ptr
46BBE8:  LDR             R2, [R2]; CStreaming::ms_bLoadingBigModel ...
46BBEA:  STRB            R1, [R2]; CStreaming::ms_bLoadingBigModel
46BBEC:  MOVS            R1, #0x40 ; '@'
46BBEE:  MOVS            R2, #0xFF
46BBF0:  BLX             j___aeabi_memset8_0
46BBF4:  ADD.W           R0, R8, #0x98
46BBF8:  MOVS            R1, #0x40 ; '@'
46BBFA:  MOVS            R2, #0xFF
46BBFC:  BLX             j___aeabi_memset8_0
46BC00:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x46BC10)
46BC02:  ADDS            R6, #0x10
46BC04:  MOVW            R5, #0x4E20
46BC08:  MOV.W           R8, #2
46BC0C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
46BC0E:  LDR             R4, [R0]; CModelInfo::ms_modelInfoPtrs ...
46BC10:  LDR             R0, [R4]; CModelInfo::ms_modelInfoPtrs
46BC12:  CMP             R0, #0
46BC14:  ITT NE
46BC16:  LDRNE           R1, [R0,#0x34]
46BC18:  CMPNE           R1, #0
46BC1A:  BEQ             loc_46BC32
46BC1C:  LDR             R1, [R0]
46BC1E:  LDR             R1, [R1,#8]
46BC20:  BLX             R1
46BC22:  CMP             R0, #0
46BC24:  STRB.W          R8, [R6,#-0xA]
46BC28:  STRB.W          R10, [R6]
46BC2C:  IT NE
46BC2E:  STRBNE.W        R9, [R0,#0x22]
46BC32:  ADDS            R6, #0x14
46BC34:  ADDS            R4, #4
46BC36:  SUBS            R5, #1
46BC38:  BNE             loc_46BC10
46BC3A:  LDR             R0, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x46BC4A)
46BC3C:  MOVW            R3, #:lower16:stru_445B8.st_size
46BC40:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x46BC50)
46BC42:  MOVT            R3, #:upper16:stru_445B8.st_size
46BC46:  ADD             R0, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
46BC48:  MOV.W           R12, #1
46BC4C:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
46BC4E:  MOVS            R5, #0
46BC50:  LDR             R2, [R0]; CTxdStore::ms_pTxdPool ...
46BC52:  LDR             R0, [R1]; CStreaming::ms_aInfoForModel ...
46BC54:  ADD.W           R0, R0, #0x61000
46BC58:  LDR             R1, [R2]; CTxdStore::ms_pTxdPool
46BC5A:  ADD.W           R0, R0, #0xA90
46BC5E:  MOVS            R2, #0
46BC60:  LDR             R4, [R1,#4]
46BC62:  LDRSB           R4, [R4,R5]
46BC64:  CMP             R4, #0
46BC66:  BLT             loc_46BC78
46BC68:  LDR             R4, [R1]
46BC6A:  ADDS            R6, R4, R2
46BC6C:  BEQ             loc_46BC78
46BC6E:  LDR             R6, [R4,R2]
46BC70:  CMP             R6, #0
46BC72:  IT NE
46BC74:  STRBNE.W        R12, [R0]
46BC78:  ADDS            R2, #0x38 ; '8'
46BC7A:  ADDS            R0, #0x14
46BC7C:  ADDS            R5, #1
46BC7E:  CMP             R2, R3
46BC80:  BNE             loc_46BC60
46BC82:  LDR             R0, =(_ZN10CStreaming17ms_vehiclesLoadedE_ptr - 0x46BC88)
46BC84:  ADD             R0, PC; _ZN10CStreaming17ms_vehiclesLoadedE_ptr
46BC86:  LDR             R0, [R0]; this
46BC88:  BLX             j__ZN15CLoadedCarGroup5ClearEv; CLoadedCarGroup::Clear(void)
46BC8C:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x46BC9C)
46BC8E:  VMOV.I32        Q8, #0
46BC92:  LDR             R1, =(_ZN10CStreaming25ms_NextPedToLoadFromGroupE_ptr - 0x46BCA0)
46BC94:  MOV.W           R4, #0xFFFFFFFF
46BC98:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
46BC9A:  LDR             R2, =(_ZN10CStreaming16ms_numPedsLoadedE_ptr - 0x46BCA6)
46BC9C:  ADD             R1, PC; _ZN10CStreaming25ms_NextPedToLoadFromGroupE_ptr
46BC9E:  MOV.W           R8, #0
46BCA2:  ADD             R2, PC; _ZN10CStreaming16ms_numPedsLoadedE_ptr
46BCA4:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
46BCA6:  LDR             R1, [R1]; CStreaming::ms_NextPedToLoadFromGroup ...
46BCA8:  LDR             R2, [R2]; CStreaming::ms_numPedsLoaded ...
46BCAA:  STRD.W          R4, R4, [R0]; CStreaming::ms_pedsLoaded
46BCAE:  STRD.W          R4, R4, [R0,#(dword_792BB4 - 0x792BAC)]
46BCB2:  STRD.W          R4, R4, [R0,#(dword_792BBC - 0x792BAC)]
46BCB6:  STRD.W          R4, R4, [R0,#(dword_792BC4 - 0x792BAC)]
46BCBA:  ADD.W           R0, R1, #0x30 ; '0'
46BCBE:  STR.W           R8, [R2]; CStreaming::ms_numPedsLoaded
46BCC2:  STRD.W          R8, R8, [R1,#(dword_792C0C - 0x792BCC)]
46BCC6:  VST1.32         {D16-D17}, [R0]
46BCCA:  ADD.W           R0, R1, #0x20 ; ' '
46BCCE:  VST1.32         {D16-D17}, [R0]
46BCD2:  MOVS            R0, #0x10; unsigned int
46BCD4:  VST1.32         {D16-D17}, [R1]!
46BCD8:  VST1.32         {D16-D17}, [R1]
46BCDC:  BLX             _Znwj; operator new(uint)
46BCE0:  MOVW            R1, #0x226; int
46BCE4:  BLX             j__ZN10CDirectoryC2Ei; CDirectory::CDirectory(int)
46BCE8:  LDR             R1, =(_ZN10CStreaming14ms_loadedGangsE_ptr - 0x46BCF0)
46BCEA:  LDR             R6, =(_ZN11CTheScripts15StreamedScriptsE_ptr - 0x46BCF4)
46BCEC:  ADD             R1, PC; _ZN10CStreaming14ms_loadedGangsE_ptr
46BCEE:  LDR             R2, =(_ZN10CStreaming15ms_lastCullZoneE_ptr - 0x46BCFA)
46BCF0:  ADD             R6, PC; _ZN11CTheScripts15StreamedScriptsE_ptr
46BCF2:  LDR             R3, =(_ZN10CStreaming22ms_numPriorityRequestsE_ptr - 0x46BCFE)
46BCF4:  LDR             R5, [R1]; CStreaming::ms_loadedGangs ...
46BCF6:  ADD             R2, PC; _ZN10CStreaming15ms_lastCullZoneE_ptr
46BCF8:  LDR             R1, [R6]; CTheScripts::StreamedScripts ...
46BCFA:  ADD             R3, PC; _ZN10CStreaming22ms_numPriorityRequestsE_ptr
46BCFC:  LDR             R6, =(_ZN10CStreaming18ms_currentZoneTypeE_ptr - 0x46BD04)
46BCFE:  LDR             R2, [R2]; CStreaming::ms_lastCullZone ...
46BD00:  ADD             R6, PC; _ZN10CStreaming18ms_currentZoneTypeE_ptr
46BD02:  LDR             R3, [R3]; CStreaming::ms_numPriorityRequests ...
46BD04:  STRH.W          R8, [R5]; CStreaming::ms_loadedGangs
46BD08:  LDR             R6, [R6]; CStreaming::ms_currentZoneType ...
46BD0A:  STR             R4, [R2]; CStreaming::ms_lastCullZone
46BD0C:  STR.W           R8, [R3]; CStreaming::ms_numPriorityRequests
46BD10:  STR             R4, [R6]; CStreaming::ms_currentZoneType
46BD12:  LDR             R6, =(_ZN10CStreaming19ms_pExtraObjectsDirE_ptr - 0x46BD18)
46BD14:  ADD             R6, PC; _ZN10CStreaming19ms_pExtraObjectsDirE_ptr
46BD16:  LDR             R6, [R6]; CStreaming::ms_pExtraObjectsDir ...
46BD18:  STR             R0, [R6]; CStreaming::ms_pExtraObjectsDir
46BD1A:  MOV             R0, R1; this
46BD1C:  BLX             j__ZN16CStreamedScripts10InitialiseEv; CStreamedScripts::Initialise(void)
46BD20:  LDR             R0, =(gModelInfoAccelerator_ptr - 0x46BD28)
46BD22:  ADR             R1, aModelsMinfoBin; "MODELS\\MINFO.BIN"
46BD24:  ADD             R0, PC; gModelInfoAccelerator_ptr
46BD26:  LDR             R0, [R0]; gModelInfoAccelerator ; this
46BD28:  BLX             j__ZN21CModelInfoAccelerator5BeginEPc; CModelInfoAccelerator::Begin(char *)
46BD2C:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x46BD34)
46BD2E:  LDR             R1, =(_ZN10CStreaming15ms_imageOffsetsE_ptr - 0x46BD36)
46BD30:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
46BD32:  ADD             R1, PC; _ZN10CStreaming15ms_imageOffsetsE_ptr
46BD34:  LDR             R0, [R0]; CStreaming::ms_files ...
46BD36:  LDR             R1, [R1]; CStreaming::ms_imageOffsets ...
46BD38:  LDRB            R0, [R0]; CStreaming::ms_files
46BD3A:  STRD.W          R8, R4, [R1]; CStreaming::ms_imageOffsets
46BD3E:  CMP             R0, #0
46BD40:  STRD.W          R4, R4, [R1,#(dword_792B28 - 0x792B20)]
46BD44:  STRD.W          R4, R4, [R1,#(dword_792B30 - 0x792B20)]
46BD48:  BEQ             loc_46BD96
46BD4A:  LDR             R0, =(_ZN10CStreaming8ms_filesE_ptr - 0x46BD52)
46BD4C:  MOVS            R5, #0
46BD4E:  ADD             R0, PC; _ZN10CStreaming8ms_filesE_ptr
46BD50:  LDR             R4, [R0]; CStreaming::ms_files ...
46BD52:  LDR             R0, =(_ZN14CLoadingScreen9m_bActiveE_ptr - 0x46BD58)
46BD54:  ADD             R0, PC; _ZN14CLoadingScreen9m_bActiveE_ptr
46BD56:  LDR             R6, [R0]; CLoadingScreen::m_bActive ...
46BD58:  LDR             R0, =(bLoadingScene_ptr - 0x46BD5E)
46BD5A:  ADD             R0, PC; bLoadingScene_ptr
46BD5C:  LDR.W           R9, [R0]; bLoadingScene
46BD60:  LDRB.W          R0, [R4,#0x28]
46BD64:  CMP             R0, #0
46BD66:  ITTT NE
46BD68:  MOVNE           R0, R4; this
46BD6A:  MOVNE           R1, R5; char *
46BD6C:  BLXNE           j__ZN10CStreaming15LoadCdDirectoryEPKci; CStreaming::LoadCdDirectory(char const*,int)
46BD70:  LDRB            R0, [R6]; this
46BD72:  CBZ             R0, loc_46BD7E
46BD74:  BLX             j__ZN14CLoadingScreen15DisplayPCScreenEv; CLoadingScreen::DisplayPCScreen(void)
46BD78:  CMP             R5, #0x1E
46BD7A:  BLE             loc_46BD8C
46BD7C:  B               loc_46BD96
46BD7E:  LDRB.W          R0, [R9]
46BD82:  CBZ             R0, loc_46BD88
46BD84:  BLX             j__Z16Pump_SwapBuffersv; Pump_SwapBuffers(void)
46BD88:  CMP             R5, #0x1E
46BD8A:  BGT             loc_46BD96
46BD8C:  LDRB.W          R0, [R4,#0x30]!
46BD90:  ADDS            R5, #1
46BD92:  CMP             R0, #0
46BD94:  BNE             loc_46BD60
46BD96:  LDR             R0, =(_ZN10CStreaming12ms_imageSizeE_ptr - 0x46BD9E)
46BD98:  LDR             R1, =(_ZN10CStreaming16ms_lastImageReadE_ptr - 0x46BDA0)
46BD9A:  ADD             R0, PC; _ZN10CStreaming12ms_imageSizeE_ptr
46BD9C:  ADD             R1, PC; _ZN10CStreaming16ms_lastImageReadE_ptr
46BD9E:  LDR             R2, [R0]; CStreaming::ms_imageSize ...
46BDA0:  LDR             R0, =(gModelInfoAccelerator_ptr - 0x46BDAA)
46BDA2:  LDR             R1, [R1]; CStreaming::ms_lastImageRead ...
46BDA4:  LDR             R3, [R2]; CStreaming::ms_imageSize
46BDA6:  ADD             R0, PC; gModelInfoAccelerator_ptr
46BDA8:  STR.W           R8, [R1]; CStreaming::ms_lastImageRead
46BDAC:  LSRS            R1, R3, #0xB
46BDAE:  LDR             R0, [R0]; gModelInfoAccelerator ; this
46BDB0:  STR             R1, [R2]; CStreaming::ms_imageSize
46BDB2:  ADR             R1, aModelsMinfoBin; "MODELS\\MINFO.BIN"
46BDB4:  BLX             j__ZN21CModelInfoAccelerator3EndEPc; CModelInfoAccelerator::End(char *)
46BDB8:  LDR             R0, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x46BDBE)
46BDBA:  ADD             R0, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
46BDBC:  LDR             R0, [R0]; CStreaming::ms_streamingBufferSize ...
46BDBE:  LDR             R0, [R0]; CStreaming::ms_streamingBufferSize
46BDC0:  TST.W           R0, #1
46BDC4:  BEQ             loc_46BDD0
46BDC6:  LDR             R1, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x46BDCE)
46BDC8:  ADDS            R0, #1
46BDCA:  ADD             R1, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
46BDCC:  LDR             R1, [R1]; CStreaming::ms_streamingBufferSize ...
46BDCE:  STR             R0, [R1]; CStreaming::ms_streamingBufferSize
46BDD0:  LSLS            R0, R0, #0xB; this
46BDD2:  MOV.W           R1, #0x800; unsigned int
46BDD6:  BLX             j__ZN10CMemoryMgr11MallocAlignEjj; CMemoryMgr::MallocAlign(uint,uint)
46BDDA:  LDR             R1, =(_ZN10CStreaming22ms_streamingBufferSizeE_ptr - 0x46BDE2)
46BDDC:  LDR             R3, =(_ZN10CStreaming24desiredNumVehiclesLoadedE_ptr - 0x46BDE6)
46BDDE:  ADD             R1, PC; _ZN10CStreaming22ms_streamingBufferSizeE_ptr
46BDE0:  LDR             R2, =(_ZN10CStreaming19ms_pStreamingBufferE_ptr - 0x46BDEC)
46BDE2:  ADD             R3, PC; _ZN10CStreaming24desiredNumVehiclesLoadedE_ptr
46BDE4:  LDR             R6, =(_ZN10CStreaming18ms_memoryAvailableE_ptr - 0x46BDF0)
46BDE6:  LDR             R1, [R1]; CStreaming::ms_streamingBufferSize ...
46BDE8:  ADD             R2, PC; _ZN10CStreaming19ms_pStreamingBufferE_ptr
46BDEA:  LDR             R4, [R3]; CStreaming::desiredNumVehiclesLoaded ...
46BDEC:  ADD             R6, PC; _ZN10CStreaming18ms_memoryAvailableE_ptr
46BDEE:  LDR             R2, [R2]; CStreaming::ms_pStreamingBuffer ...
46BDF0:  LDR             R5, [R1]; CStreaming::ms_streamingBufferSize
46BDF2:  LDR             R6, [R6]; CStreaming::ms_memoryAvailable ...
46BDF4:  ADD.W           R3, R5, R5,LSR#31
46BDF8:  ASRS            R3, R3, #1
46BDFA:  STR             R3, [R1]; CStreaming::ms_streamingBufferSize
46BDFC:  ADD.W           R1, R0, R3,LSL#11
46BE00:  STRD.W          R0, R1, [R2]; CStreaming::ms_pStreamingBuffer
46BE04:  BLX             j__Z15IsLowSpecDevicev; IsLowSpecDevice(void)
46BE08:  CMP             R0, #0
46BE0A:  MOV.W           R1, #0x3200000
46BE0E:  IT NE
46BE10:  MOVNE.W         R1, #0x1800000
46BE14:  MOV.W           R0, #0x16
46BE18:  STR             R1, [R6]; CStreaming::ms_memoryAvailable
46BE1A:  IT NE
46BE1C:  MOVNE           R0, #0x10
46BE1E:  STR             R0, [R4]; CStreaming::desiredNumVehiclesLoaded
46BE20:  MOVW            R0, #0x4650; unsigned int
46BE24:  BLX             _Znaj; operator new[](uint)
46BE28:  LDR             R1, =(_ZN10CStreaming20ms_rwObjectInstancesE_ptr - 0x46BE36)
46BE2A:  MOVW            R3, #0x464C
46BE2E:  MOVW            R6, #0x4648
46BE32:  ADD             R1, PC; _ZN10CStreaming20ms_rwObjectInstancesE_ptr
46BE34:  LDR             R1, [R1]; CStreaming::ms_rwObjectInstances ...
46BE36:  ADD.W           R2, R1, #0xC
46BE3A:  STR             R0, [R1,#(dword_792F30 - 0x792F00)]
46BE3C:  STR             R2, [R1,#(dword_792F08 - 0x792F00)]
46BE3E:  ADD.W           R2, R1, #0x24 ; '$'
46BE42:  STR             R2, [R0,R3]
46BE44:  MOVW            R2, #0x4644
46BE48:  ADD.W           R3, R1, #0x18
46BE4C:  STR             R3, [R0,R6]
46BE4E:  ADD             R2, R0
46BE50:  MOVW            R6, #0x4640
46BE54:  STR             R1, [R1,#(dword_792F10 - 0x792F00)]
46BE56:  STR             R2, [R1,#(dword_792F28 - 0x792F00)]
46BE58:  STR             R2, [R1,#(dword_792F20 - 0x792F00)]
46BE5A:  STR             R2, [R0,R6]
46BE5C:  MOVW            R2, #0x4638
46BE60:  ADD             R2, R0
46BE62:  LDR             R6, [R1,#(dword_792F20 - 0x792F00)]
46BE64:  STR             R2, [R6,#4]
46BE66:  MOVW            R6, #0x463C
46BE6A:  STR             R3, [R0,R6]
46BE6C:  MOVW            R0, #0x5DA
46BE70:  LDR             R3, =(_ZN10CStreaming20ms_rwObjectInstancesE_ptr - 0x46BE7C)
46BE72:  STR             R2, [R1,#(dword_792F20 - 0x792F00)]
46BE74:  MOVW            R1, #0x462C
46BE78:  ADD             R3, PC; _ZN10CStreaming20ms_rwObjectInstancesE_ptr
46BE7A:  LDR             R3, [R3]; CStreaming::ms_rwObjectInstances ...
46BE7C:  LDR             R6, [R3,#(dword_792F30 - 0x792F00)]
46BE7E:  SUBS            R0, #1
46BE80:  ADDS            R5, R6, R1
46BE82:  SUBS            R1, #0xC
46BE84:  STR             R2, [R5,#8]
46BE86:  LDR             R2, [R3,#(dword_792F20 - 0x792F00)]
46BE88:  STR             R5, [R2,#4]
46BE8A:  ADD.W           R2, R3, #0x18
46BE8E:  STR             R2, [R5,#4]
46BE90:  ADD.W           R2, R0, R0,LSL#1
46BE94:  STR             R5, [R3,#(dword_792F20 - 0x792F00)]
46BE96:  ADD.W           R2, R6, R2,LSL#2
46BE9A:  ADDS.W          R6, R1, #0xC
46BE9E:  BNE             loc_46BE7C
46BEA0:  LDR             R0, =(_ZN10CStreaming17ms_bIsInitialisedE_ptr - 0x46BEA8)
46BEA2:  MOVS            R1, #1
46BEA4:  ADD             R0, PC; _ZN10CStreaming17ms_bIsInitialisedE_ptr
46BEA6:  LDR             R0, [R0]; CStreaming::ms_bIsInitialised ...
46BEA8:  STR             R1, [R0]; CStreaming::ms_bIsInitialised
46BEAA:  POP.W           {R8-R10}
46BEAE:  POP             {R4-R7,PC}
