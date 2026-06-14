; =========================================================
; Game Engine Function: _ZN9CColAccel10startCacheEv
; Address            : 0x465F50 - 0x4661A8
; =========================================================

465F50:  PUSH            {R4-R7,LR}
465F52:  ADD             R7, SP, #0xC
465F54:  PUSH.W          {R8-R10}
465F58:  VPUSH           {D8-D9}
465F5C:  LDR             R0, =(_ZN6CPools16ms_pColModelPoolE_ptr - 0x465F64)
465F5E:  LDR             R1, =(_ZN9CColAccel17m_iCachingColSizeE_ptr - 0x465F66)
465F60:  ADD             R0, PC; _ZN6CPools16ms_pColModelPoolE_ptr
465F62:  ADD             R1, PC; _ZN9CColAccel17m_iCachingColSizeE_ptr
465F64:  LDR             R0, [R0]; CPools::ms_pColModelPool ...
465F66:  LDR             R1, [R1]; CColAccel::m_iCachingColSize ...
465F68:  LDR             R0, [R0]; CPools::ms_pColModelPool
465F6A:  LDR             R0, [R0,#8]
465F6C:  STR             R0, [R1]; CColAccel::m_iCachingColSize
465F6E:  MOV.W           R0, #0x100; unsigned int
465F72:  BLX             _Znaj; operator new[](uint)
465F76:  LDR             R1, =(_ZN9CColAccel14m_iSectionSizeE_ptr - 0x465F7C)
465F78:  ADD             R1, PC; _ZN9CColAccel14m_iSectionSizeE_ptr
465F7A:  LDR             R1, [R1]; CColAccel::m_iSectionSize ...
465F7C:  STR             R0, [R1]; CColAccel::m_iSectionSize
465F7E:  MOV.W           R0, #0x3400; unsigned int
465F82:  BLX             _Znaj; operator new[](uint)
465F86:  ADR             R2, dword_4661B0
465F88:  MOVS            R1, #0
465F8A:  VLD1.64         {D8-D9}, [R2@128]
465F8E:  ADDS            R2, R0, R1
465F90:  ADDS            R1, #0x34 ; '4'
465F92:  CMP.W           R1, #0x3400
465F96:  VST1.32         {D8-D9}, [R2]
465F9A:  BNE             loc_465F8E
465F9C:  LDR             R1, =(_ZN9CColAccel9m_iplDefsE_ptr - 0x465FA2)
465F9E:  ADD             R1, PC; _ZN9CColAccel9m_iplDefsE_ptr
465FA0:  LDR             R1, [R1]; CColAccel::m_iplDefs ...
465FA2:  STR             R0, [R1]; CColAccel::m_iplDefs
465FA4:  MOV.W           R0, #0x1800; unsigned int
465FA8:  BLX             _Znaj; operator new[](uint)
465FAC:  MOVS            R1, #0
465FAE:  ADDS            R2, R0, R1
465FB0:  ADDS            R1, #0x18
465FB2:  CMP.W           R1, #0x1800
465FB6:  VST1.32         {D8-D9}, [R2]
465FBA:  BNE             loc_465FAE
465FBC:  LDR             R1, =(_ZN9CColAccel13mp_cCacheNameE_ptr - 0x465FC4)
465FBE:  LDR             R2, =(_ZN9CColAccel11m_colBoundsE_ptr - 0x465FC6)
465FC0:  ADD             R1, PC; _ZN9CColAccel13mp_cCacheNameE_ptr
465FC2:  ADD             R2, PC; _ZN9CColAccel11m_colBoundsE_ptr
465FC4:  LDR             R1, [R1]; CColAccel::mp_cCacheName ...
465FC6:  LDR             R3, [R2]; CColAccel::m_colBounds ...
465FC8:  LDR             R2, [R1]; "CINFO.BIN"
465FCA:  ADR             R1, dword_4661D8; char *
465FCC:  STR             R0, [R3]; CColAccel::m_colBounds
465FCE:  MOV             R0, R2; this
465FD0:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
465FD4:  MOV             R4, R0
465FD6:  CBZ             R4, loc_46603A
465FD8:  LDR             R0, =(bDontBuildPaths_ptr - 0x465FDE)
465FDA:  ADD             R0, PC; bDontBuildPaths_ptr
465FDC:  LDR             R0, [R0]; bDontBuildPaths
465FDE:  LDRB            R0, [R0]
465FE0:  CBZ             R0, loc_46603A
465FE2:  LDR             R0, =(_ZN9CColAccel14m_iNumColItemsE_ptr - 0x465FEA)
465FE4:  MOVS            R2, #4; n
465FE6:  ADD             R0, PC; _ZN9CColAccel14m_iNumColItemsE_ptr
465FE8:  LDR             R5, [R0]; CColAccel::m_iNumColItems ...
465FEA:  MOV             R0, R4; this
465FEC:  MOV             R1, R5; ptr
465FEE:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
465FF2:  LDR             R6, [R5]; CColAccel::m_iNumColItems
465FF4:  MOVS            R0, #0x30 ; '0'
465FF6:  UMULL.W         R0, R1, R6, R0
465FFA:  CMP             R1, #0
465FFC:  IT NE
465FFE:  MOVNE           R1, #1
466000:  CMP             R1, #0
466002:  IT NE
466004:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
466008:  BLX             _Znaj; operator new[](uint)
46600C:  MOV             R5, R0
46600E:  MOV.W           R10, #0
466012:  CMP             R6, #0
466014:  BEQ             loc_4660D0
466016:  ADD.W           R0, R6, R6,LSL#1
46601A:  LSLS            R6, R0, #4
46601C:  MOV             R0, R5; this
46601E:  BLX             j__ZN12CBoundingBoxC2Ev; CBoundingBox::CBoundingBox(void)
466022:  SUBS            R6, #0x30 ; '0'
466024:  ADD.W           R0, R0, #0x30 ; '0'
466028:  BNE             loc_46601E
46602A:  LDR             R0, =(_ZN9CColAccel14m_iNumColItemsE_ptr - 0x466030)
46602C:  ADD             R0, PC; _ZN9CColAccel14m_iNumColItemsE_ptr
46602E:  LDR             R0, [R0]; CColAccel::m_iNumColItems ...
466030:  LDR             R0, [R0]; CColAccel::m_iNumColItems
466032:  ADD.W           R0, R0, R0,LSL#1
466036:  LSLS            R2, R0, #4
466038:  B               loc_4660D2
46603A:  LDR             R0, =(_ZN9CColAccel17m_iCachingColSizeE_ptr - 0x466040)
46603C:  ADD             R0, PC; _ZN9CColAccel17m_iCachingColSizeE_ptr
46603E:  LDR             R0, [R0]; CColAccel::m_iCachingColSize ...
466040:  LDR             R6, [R0]; CColAccel::m_iCachingColSize
466042:  MOVS            R0, #0x30 ; '0'
466044:  UMULL.W         R0, R1, R6, R0
466048:  CMP             R1, #0
46604A:  IT NE
46604C:  MOVNE           R1, #1
46604E:  CMP             R1, #0
466050:  IT NE
466052:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
466056:  BLX             _Znaj; operator new[](uint)
46605A:  MOV             R5, R0
46605C:  CBZ             R6, loc_466072
46605E:  ADD.W           R0, R6, R6,LSL#1
466062:  LSLS            R6, R0, #4
466064:  MOV             R0, R5; this
466066:  BLX             j__ZN12CBoundingBoxC2Ev; CBoundingBox::CBoundingBox(void)
46606A:  SUBS            R6, #0x30 ; '0'
46606C:  ADD.W           R0, R0, #0x30 ; '0'
466070:  BNE             loc_466066
466072:  LDR             R0, =(_ZN9CColAccel17m_iCachingIPLSizeE_ptr - 0x46607C)
466074:  MOVS            R2, #0x14
466076:  LDR             R1, =(_ZN9CColAccel15mp_caccColItemsE_ptr - 0x46607E)
466078:  ADD             R0, PC; _ZN9CColAccel17m_iCachingIPLSizeE_ptr
46607A:  ADD             R1, PC; _ZN9CColAccel15mp_caccColItemsE_ptr
46607C:  LDR             R0, [R0]; CColAccel::m_iCachingIPLSize ...
46607E:  LDR             R1, [R1]; CColAccel::mp_caccColItems ...
466080:  LDR             R0, [R0]; CColAccel::m_iCachingIPLSize
466082:  STR             R5, [R1]; CColAccel::mp_caccColItems
466084:  UMULL.W         R0, R2, R0, R2
466088:  CMP             R2, #0
46608A:  IT NE
46608C:  MOVNE           R2, #1
46608E:  CMP             R2, #0
466090:  IT NE
466092:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
466096:  BLX             _Znaj; operator new[](uint)
46609A:  LDR             R1, =(_ZN9CColAccel15mp_caccIPLItemsE_ptr - 0x4660A4)
46609C:  CMP             R4, #0
46609E:  LDR             R2, =(_ZN9CColAccel14m_iNumIPLItemsE_ptr - 0x4660A8)
4660A0:  ADD             R1, PC; _ZN9CColAccel15mp_caccIPLItemsE_ptr
4660A2:  LDR             R3, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x4660AA)
4660A4:  ADD             R2, PC; _ZN9CColAccel14m_iNumIPLItemsE_ptr
4660A6:  ADD             R3, PC; _ZN9CColAccel13m_iCacheStateE_ptr
4660A8:  LDR             R1, [R1]; unsigned int
4660AA:  LDR             R2, [R2]; CColAccel::m_iNumIPLItems ...
4660AC:  LDR             R3, [R3]; CColAccel::m_iCacheState ...
4660AE:  STR             R0, [R1]; CColAccel::mp_caccIPLItems
4660B0:  MOV.W           R0, #0
4660B4:  STR             R0, [R2]; CColAccel::m_iNumIPLItems
4660B6:  MOV.W           R0, #1
4660BA:  STR             R0, [R3]; CColAccel::m_iCacheState
4660BC:  BEQ             loc_46619E
4660BE:  MOV             R0, R4; this
4660C0:  VPOP            {D8-D9}
4660C4:  POP.W           {R8-R10}
4660C8:  POP.W           {R4-R7,LR}
4660CC:  B.W             j_j__ZN8CFileMgr9CloseFileEj; j_CFileMgr::CloseFile(uint)
4660D0:  MOVS            R2, #0; n
4660D2:  LDR             R0, =(_ZN9CColAccel15mp_caccColItemsE_ptr - 0x4660DA)
4660D4:  MOV             R1, R5; ptr
4660D6:  ADD             R0, PC; _ZN9CColAccel15mp_caccColItemsE_ptr
4660D8:  LDR             R0, [R0]; CColAccel::mp_caccColItems ...
4660DA:  STR             R5, [R0]; CColAccel::mp_caccColItems
4660DC:  MOV             R0, R4; this
4660DE:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
4660E2:  LDR             R0, =(_ZN9CColAccel14m_iNumSectionsE_ptr - 0x4660EA)
4660E4:  MOVS            R2, #4; n
4660E6:  ADD             R0, PC; _ZN9CColAccel14m_iNumSectionsE_ptr
4660E8:  LDR.W           R8, [R0]; CColAccel::m_iNumSections ...
4660EC:  MOV             R0, R4; this
4660EE:  MOV             R1, R8; ptr
4660F0:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
4660F4:  LDR             R0, =(_ZN9CColAccel14m_iSectionSizeE_ptr - 0x4660FE)
4660F6:  LDR.W           R2, [R8]; CColAccel::m_iNumSections
4660FA:  ADD             R0, PC; _ZN9CColAccel14m_iSectionSizeE_ptr
4660FC:  LDR             R0, [R0]; CColAccel::m_iSectionSize ...
4660FE:  LSLS            R2, R2, #2; n
466100:  LDR             R1, [R0]; ptr
466102:  MOV             R0, R4; this
466104:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
466108:  LDR             R0, =(_ZN9CColAccel9m_iplDefsE_ptr - 0x466112)
46610A:  MOV.W           R2, #0x3400; n
46610E:  ADD             R0, PC; _ZN9CColAccel9m_iplDefsE_ptr
466110:  LDR             R0, [R0]; CColAccel::m_iplDefs ...
466112:  LDR             R1, [R0]; ptr
466114:  MOV             R0, R4; this
466116:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
46611A:  LDR             R0, =(_ZN9CColAccel15m_iNumColBoundsE_ptr - 0x466122)
46611C:  MOVS            R2, #4; n
46611E:  ADD             R0, PC; _ZN9CColAccel15m_iNumColBoundsE_ptr
466120:  LDR.W           R9, [R0]; CColAccel::m_iNumColBounds ...
466124:  MOV             R0, R4; this
466126:  MOV             R1, R9; ptr
466128:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
46612C:  LDR             R0, =(_ZN9CColAccel11m_colBoundsE_ptr - 0x466136)
46612E:  LDR.W           R2, [R9]; CColAccel::m_iNumColBounds
466132:  ADD             R0, PC; _ZN9CColAccel11m_colBoundsE_ptr
466134:  LDR             R0, [R0]; CColAccel::m_colBounds ...
466136:  LDR             R1, [R0]; ptr
466138:  ADD.W           R0, R2, R2,LSL#1
46613C:  LSLS            R2, R0, #3; n
46613E:  MOV             R0, R4; this
466140:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
466144:  LDR             R0, =(_ZN9CColAccel14m_iNumIPLItemsE_ptr - 0x46614C)
466146:  MOVS            R2, #4; n
466148:  ADD             R0, PC; _ZN9CColAccel14m_iNumIPLItemsE_ptr
46614A:  LDR             R5, [R0]; CColAccel::m_iNumIPLItems ...
46614C:  MOV             R0, R4; this
46614E:  MOV             R1, R5; ptr
466150:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
466154:  LDR             R0, [R5]; CColAccel::m_iNumIPLItems
466156:  MOVS            R1, #0x14
466158:  UMULL.W         R6, R0, R0, R1
46615C:  CMP             R0, #0
46615E:  IT NE
466160:  MOVNE           R0, #1
466162:  CMP             R0, #0
466164:  MOV             R0, R6
466166:  IT NE
466168:  MOVNE.W         R0, #0xFFFFFFFF; unsigned int
46616C:  BLX             _Znaj; operator new[](uint)
466170:  MOV             R1, R0; ptr
466172:  LDR             R0, =(_ZN9CColAccel15mp_caccIPLItemsE_ptr - 0x46617A)
466174:  MOV             R2, R6; n
466176:  ADD             R0, PC; _ZN9CColAccel15mp_caccIPLItemsE_ptr
466178:  LDR             R0, [R0]; CColAccel::mp_caccIPLItems ...
46617A:  STR             R1, [R0]; CColAccel::mp_caccIPLItems
46617C:  MOV             R0, R4; this
46617E:  BLX             j__Z11OS_FileReadPvS_i; OS_FileRead(void *,void *,int)
466182:  MOV             R0, R4; this
466184:  STR.W           R10, [R8]; CColAccel::m_iNumSections
466188:  STR.W           R10, [R5]; CColAccel::m_iNumIPLItems
46618C:  STR.W           R10, [R9]; CColAccel::m_iNumColBounds
466190:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
466194:  LDR             R0, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x46619C)
466196:  MOVS            R1, #2
466198:  ADD             R0, PC; _ZN9CColAccel13m_iCacheStateE_ptr
46619A:  LDR             R0, [R0]; CColAccel::m_iCacheState ...
46619C:  STR             R1, [R0]; CColAccel::m_iCacheState
46619E:  VPOP            {D8-D9}
4661A2:  POP.W           {R8-R10}
4661A6:  POP             {R4-R7,PC}
