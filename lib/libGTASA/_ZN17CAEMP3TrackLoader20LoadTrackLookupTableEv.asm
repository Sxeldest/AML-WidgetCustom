; =========================================================
; Game Engine Function: _ZN17CAEMP3TrackLoader20LoadTrackLookupTableEv
; Address            : 0x27F294 - 0x27F2E6
; =========================================================

27F294:  PUSH            {R4,R5,R7,LR}
27F296:  ADD             R7, SP, #8
27F298:  SUB             SP, SP, #8
27F29A:  LDR             R2, =(aAudioConfigTra - 0x27F2A6); "AUDIO\\CONFIG\\TRAKLKUP.DAT"
27F29C:  ADD             R1, SP, #0x10+var_C
27F29E:  MOV             R4, R0
27F2A0:  MOVS            R5, #0
27F2A2:  ADD             R2, PC; "AUDIO\\CONFIG\\TRAKLKUP.DAT"
27F2A4:  MOVS            R0, #0
27F2A6:  MOVS            R3, #0
27F2A8:  STR             R5, [SP,#0x10+var_C]
27F2AA:  BLX             j__Z11OS_FileOpen14OSFileDataAreaPPvPKc16OSFileAccessType; OS_FileOpen(OSFileDataArea,void **,char const*,OSFileAccessType)
27F2AE:  CBNZ            R0, loc_27F2E0
27F2B0:  LDR             R0, [SP,#0x10+var_C]; this
27F2B2:  BLX             j__Z11OS_FileSizePv; OS_FileSize(void *)
27F2B6:  MOV             R5, R0
27F2B8:  BLX             j__ZN10CMemoryMgr6MallocEj; CMemoryMgr::Malloc(uint)
27F2BC:  MOV             R1, R0; ptr
27F2BE:  MOV             R2, R5; n
27F2C0:  STR             R1, [R4,#0xC]
27F2C2:  LDR             R0, [SP,#0x10+var_C]; this
27F2C4:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
27F2C8:  LDR             R0, [SP,#0x10+var_C]; this
27F2CA:  BLX             j__Z12OS_FileClosePv; OS_FileClose(void *)
27F2CE:  MOV             R0, #0xAAAAAAAB
27F2D6:  UMULL.W         R0, R1, R5, R0
27F2DA:  MOVS            R5, #1
27F2DC:  LSRS            R0, R1, #3
27F2DE:  STR             R0, [R4,#4]
27F2E0:  MOV             R0, R5
27F2E2:  ADD             SP, SP, #8
27F2E4:  POP             {R4,R5,R7,PC}
