; =========================================================
; Game Engine Function: _ZN17CAEMP3TrackLoader10InitialiseEv
; Address            : 0x27F100 - 0x27F170
; =========================================================

27F100:  PUSH            {R4,R5,R7,LR}
27F102:  ADD             R7, SP, #8
27F104:  SUB             SP, SP, #8
27F106:  MOV             R4, R0
27F108:  BLX             j__ZN17CAEMP3TrackLoader19LoadStreamPackTableEv; CAEMP3TrackLoader::LoadStreamPackTable(void)
27F10C:  MOV             R1, R0
27F10E:  MOVS            R0, #0
27F110:  CMP             R1, #1
27F112:  BNE             loc_27F16C
27F114:  LDR             R2, =(aAudioConfigTra - 0x27F120); "AUDIO\\CONFIG\\TRAKLKUP.DAT"
27F116:  ADD             R1, SP, #0x10+var_C
27F118:  STR             R0, [SP,#0x10+var_C]
27F11A:  MOVS            R0, #0
27F11C:  ADD             R2, PC; "AUDIO\\CONFIG\\TRAKLKUP.DAT"
27F11E:  MOVS            R3, #0
27F120:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
27F124:  CBZ             R0, loc_27F12C
27F126:  MOVS            R0, #0
27F128:  ADD             SP, SP, #8
27F12A:  POP             {R4,R5,R7,PC}
27F12C:  LDR             R0, [SP,#0x10+var_C]; this
27F12E:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
27F132:  MOV             R5, R0
27F134:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
27F138:  MOV             R1, R0; ptr
27F13A:  MOV             R2, R5; n
27F13C:  STR             R1, [R4,#0xC]
27F13E:  LDR             R0, [SP,#0x10+var_C]; this
27F140:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27F144:  LDR             R0, [SP,#0x10+var_C]; this
27F146:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
27F14A:  MOV             R0, #0xAAAAAAAB
27F152:  UMULL.W         R0, R1, R5, R0
27F156:  LSRS            R0, R1, #3
27F158:  ADR             R1, aRb_22; "rb"
27F15A:  STR             R0, [R4,#4]
27F15C:  ADR             R0, aAudioConfigTrk; "AUDIO/CONFIG/TRKHEAD.DAT"
27F15E:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
27F162:  CMP             R0, #0
27F164:  STR             R0, [R4,#0x14]
27F166:  BEQ             loc_27F126
27F168:  MOVS            R0, #1
27F16A:  STRB            R0, [R4]
27F16C:  ADD             SP, SP, #8
27F16E:  POP             {R4,R5,R7,PC}
