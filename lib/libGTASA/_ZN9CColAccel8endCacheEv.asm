; =========================================================
; Game Engine Function: _ZN9CColAccel8endCacheEv
; Address            : 0x46623C - 0x46638C
; =========================================================

46623C:  PUSH            {R4,R5,R7,LR}
46623E:  ADD             R7, SP, #8
466240:  LDR             R0, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x466246)
466242:  ADD             R0, PC; _ZN9CColAccel13m_iCacheStateE_ptr
466244:  LDR             R0, [R0]; CColAccel::m_iCacheState ...
466246:  LDR             R0, [R0]; CColAccel::m_iCacheState
466248:  CMP             R0, #1
46624A:  BNE             loc_466306
46624C:  LDR             R0, =(_ZN9CColAccel13mp_cCacheNameE_ptr - 0x466252)
46624E:  ADD             R0, PC; _ZN9CColAccel13mp_cCacheNameE_ptr
466250:  LDR             R0, [R0]; CColAccel::mp_cCacheName ...
466252:  LDR             R0, [R0]; "CINFO.BIN"
466254:  BLX             j__ZN8CFileMgr18OpenFileForWritingEPKc; CFileMgr::OpenFileForWriting(char const*)
466258:  MOV             R4, R0
46625A:  LDR             R0, =(_ZN9CColAccel14m_iNumColItemsE_ptr - 0x466262)
46625C:  MOVS            R2, #byte_4; char *
46625E:  ADD             R0, PC; _ZN9CColAccel14m_iNumColItemsE_ptr
466260:  LDR             R5, [R0]; CColAccel::m_iNumColItems ...
466262:  MOV             R0, R4; this
466264:  MOV             R1, R5; unsigned int
466266:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
46626A:  LDR             R0, =(_ZN9CColAccel15mp_caccColItemsE_ptr - 0x466272)
46626C:  LDR             R2, [R5]; CColAccel::m_iNumColItems
46626E:  ADD             R0, PC; _ZN9CColAccel15mp_caccColItemsE_ptr
466270:  LDR             R0, [R0]; CColAccel::mp_caccColItems ...
466272:  LDR             R1, [R0]; unsigned int
466274:  ADD.W           R0, R2, R2,LSL#1
466278:  LSLS            R2, R0, #4; char *
46627A:  MOV             R0, R4; this
46627C:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
466280:  LDR             R0, =(_ZN9CColAccel14m_iNumSectionsE_ptr - 0x466288)
466282:  MOVS            R2, #byte_4; char *
466284:  ADD             R0, PC; _ZN9CColAccel14m_iNumSectionsE_ptr
466286:  LDR             R5, [R0]; CColAccel::m_iNumSections ...
466288:  MOV             R0, R4; this
46628A:  MOV             R1, R5; unsigned int
46628C:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
466290:  LDR             R0, =(_ZN9CColAccel14m_iSectionSizeE_ptr - 0x466298)
466292:  LDR             R2, [R5]; CColAccel::m_iNumSections
466294:  ADD             R0, PC; _ZN9CColAccel14m_iSectionSizeE_ptr
466296:  LDR             R0, [R0]; CColAccel::m_iSectionSize ...
466298:  LSLS            R2, R2, #2; char *
46629A:  LDR             R1, [R0]; unsigned int
46629C:  MOV             R0, R4; this
46629E:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
4662A2:  LDR             R0, =(_ZN9CColAccel9m_iplDefsE_ptr - 0x4662AC)
4662A4:  MOV.W           R2, #(elf_hash_bucket+0x3304); char *
4662A8:  ADD             R0, PC; _ZN9CColAccel9m_iplDefsE_ptr
4662AA:  LDR             R0, [R0]; CColAccel::m_iplDefs ...
4662AC:  LDR             R1, [R0]; unsigned int
4662AE:  MOV             R0, R4; this
4662B0:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
4662B4:  LDR             R0, =(_ZN9CColAccel15m_iNumColBoundsE_ptr - 0x4662BC)
4662B6:  MOVS            R2, #byte_4; char *
4662B8:  ADD             R0, PC; _ZN9CColAccel15m_iNumColBoundsE_ptr
4662BA:  LDR             R5, [R0]; CColAccel::m_iNumColBounds ...
4662BC:  MOV             R0, R4; this
4662BE:  MOV             R1, R5; unsigned int
4662C0:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
4662C4:  LDR             R0, =(_ZN9CColAccel11m_colBoundsE_ptr - 0x4662CC)
4662C6:  LDR             R2, [R5]; CColAccel::m_iNumColBounds
4662C8:  ADD             R0, PC; _ZN9CColAccel11m_colBoundsE_ptr
4662CA:  LDR             R0, [R0]; CColAccel::m_colBounds ...
4662CC:  LDR             R1, [R0]; unsigned int
4662CE:  ADD.W           R0, R2, R2,LSL#1
4662D2:  LSLS            R2, R0, #3; char *
4662D4:  MOV             R0, R4; this
4662D6:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
4662DA:  LDR             R0, =(_ZN9CColAccel14m_iNumIPLItemsE_ptr - 0x4662E2)
4662DC:  MOVS            R2, #byte_4; char *
4662DE:  ADD             R0, PC; _ZN9CColAccel14m_iNumIPLItemsE_ptr
4662E0:  LDR             R5, [R0]; CColAccel::m_iNumIPLItems ...
4662E2:  MOV             R0, R4; this
4662E4:  MOV             R1, R5; unsigned int
4662E6:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
4662EA:  LDR             R0, =(_ZN9CColAccel15mp_caccIPLItemsE_ptr - 0x4662F2)
4662EC:  LDR             R2, [R5]; CColAccel::m_iNumIPLItems
4662EE:  ADD             R0, PC; _ZN9CColAccel15mp_caccIPLItemsE_ptr
4662F0:  LDR             R0, [R0]; CColAccel::mp_caccIPLItems ...
4662F2:  LDR             R1, [R0]; unsigned int
4662F4:  ADD.W           R0, R2, R2,LSL#2
4662F8:  LSLS            R2, R0, #2; char *
4662FA:  MOV             R0, R4; this
4662FC:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
466300:  MOV             R0, R4; this
466302:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
466306:  LDR             R0, =(_ZN9CColAccel15mp_caccIPLItemsE_ptr - 0x46630C)
466308:  ADD             R0, PC; _ZN9CColAccel15mp_caccIPLItemsE_ptr
46630A:  LDR             R0, [R0]; CColAccel::mp_caccIPLItems ...
46630C:  LDR             R0, [R0]; void *
46630E:  CBZ             R0, loc_46631E
466310:  BLX             _ZdaPv; operator delete[](void *)
466314:  LDR             R0, =(_ZN9CColAccel15mp_caccIPLItemsE_ptr - 0x46631C)
466316:  MOVS            R1, #0
466318:  ADD             R0, PC; _ZN9CColAccel15mp_caccIPLItemsE_ptr
46631A:  LDR             R0, [R0]; CColAccel::mp_caccIPLItems ...
46631C:  STR             R1, [R0]; CColAccel::mp_caccIPLItems
46631E:  LDR             R0, =(_ZN9CColAccel15mp_caccColItemsE_ptr - 0x466324)
466320:  ADD             R0, PC; _ZN9CColAccel15mp_caccColItemsE_ptr
466322:  LDR             R0, [R0]; CColAccel::mp_caccColItems ...
466324:  LDR             R0, [R0]; void *
466326:  CBZ             R0, loc_466336
466328:  BLX             _ZdaPv; operator delete[](void *)
46632C:  LDR             R0, =(_ZN9CColAccel15mp_caccColItemsE_ptr - 0x466334)
46632E:  MOVS            R1, #0
466330:  ADD             R0, PC; _ZN9CColAccel15mp_caccColItemsE_ptr
466332:  LDR             R0, [R0]; CColAccel::mp_caccColItems ...
466334:  STR             R1, [R0]; CColAccel::mp_caccColItems
466336:  LDR             R0, =(_ZN9CColAccel14m_iSectionSizeE_ptr - 0x46633C)
466338:  ADD             R0, PC; _ZN9CColAccel14m_iSectionSizeE_ptr
46633A:  LDR             R0, [R0]; CColAccel::m_iSectionSize ...
46633C:  LDR             R0, [R0]; void *
46633E:  CMP             R0, #0
466340:  IT NE
466342:  BLXNE           _ZdaPv; operator delete[](void *)
466346:  LDR             R0, =(_ZN9CColAccel9m_iplDefsE_ptr - 0x466350)
466348:  MOVS            R4, #0
46634A:  LDR             R1, =(_ZN9CColAccel14m_iSectionSizeE_ptr - 0x466352)
46634C:  ADD             R0, PC; _ZN9CColAccel9m_iplDefsE_ptr
46634E:  ADD             R1, PC; _ZN9CColAccel14m_iSectionSizeE_ptr
466350:  LDR             R0, [R0]; CColAccel::m_iplDefs ...
466352:  LDR             R1, [R1]; CColAccel::m_iSectionSize ...
466354:  LDR             R0, [R0]; void *
466356:  STR             R4, [R1]; CColAccel::m_iSectionSize
466358:  CMP             R0, #0
46635A:  IT NE
46635C:  BLXNE           _ZdaPv; operator delete[](void *)
466360:  LDR             R0, =(_ZN9CColAccel11m_colBoundsE_ptr - 0x466368)
466362:  LDR             R1, =(_ZN9CColAccel9m_iplDefsE_ptr - 0x46636A)
466364:  ADD             R0, PC; _ZN9CColAccel11m_colBoundsE_ptr
466366:  ADD             R1, PC; _ZN9CColAccel9m_iplDefsE_ptr
466368:  LDR             R0, [R0]; CColAccel::m_colBounds ...
46636A:  LDR             R1, [R1]; CColAccel::m_iplDefs ...
46636C:  LDR             R0, [R0]; void *
46636E:  STR             R4, [R1]; CColAccel::m_iplDefs
466370:  CMP             R0, #0
466372:  IT NE
466374:  BLXNE           _ZdaPv; operator delete[](void *)
466378:  LDR             R0, =(_ZN9CColAccel13m_iCacheStateE_ptr - 0x466382)
46637A:  MOVS            R2, #0
46637C:  LDR             R1, =(_ZN9CColAccel11m_colBoundsE_ptr - 0x466384)
46637E:  ADD             R0, PC; _ZN9CColAccel13m_iCacheStateE_ptr
466380:  ADD             R1, PC; _ZN9CColAccel11m_colBoundsE_ptr
466382:  LDR             R0, [R0]; CColAccel::m_iCacheState ...
466384:  LDR             R1, [R1]; CColAccel::m_colBounds ...
466386:  STR             R2, [R0]; CColAccel::m_iCacheState
466388:  STR             R2, [R1]; CColAccel::m_colBounds
46638A:  POP             {R4,R5,R7,PC}
