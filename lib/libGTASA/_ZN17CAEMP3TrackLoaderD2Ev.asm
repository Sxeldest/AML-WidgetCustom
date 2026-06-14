; =========================================================
; Game Engine Function: _ZN17CAEMP3TrackLoaderD2Ev
; Address            : 0x27F0CA - 0x27F0FE
; =========================================================

27F0CA:  PUSH            {R4,R5,R7,LR}; Alternative name is 'CAEMP3TrackLoader::~CAEMP3TrackLoader()'
27F0CC:  ADD             R7, SP, #8
27F0CE:  MOV             R4, R0
27F0D0:  LDRB            R0, [R4]
27F0D2:  CBZ             R0, loc_27F0EA
27F0D4:  LDR             R0, [R4,#0xC]; this
27F0D6:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
27F0DA:  LDR             R0, [R4,#0x10]; this
27F0DC:  BLX             j__ZN10CMemoryMgr4FreeEPv; CMemoryMgr::Free(void *)
27F0E0:  LDR             R0, [R4,#0x14]; this
27F0E2:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
27F0E6:  MOVS            R0, #0
27F0E8:  STR             R0, [R4,#0x14]
27F0EA:  LDR             R0, [R4,#0x20]; p
27F0EC:  MOVS            R5, #0
27F0EE:  STR             R5, [R4,#0x1C]
27F0F0:  CBZ             R0, loc_27F0F8
27F0F2:  BLX             free
27F0F6:  STR             R5, [R4,#0x20]
27F0F8:  MOV             R0, R4
27F0FA:  STR             R5, [R4,#0x18]
27F0FC:  POP             {R4,R5,R7,PC}
