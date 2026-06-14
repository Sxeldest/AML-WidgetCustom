; =========================================================
; Game Engine Function: _ZN10CEntryExit18TransitionFinishedEP4CPed
; Address            : 0x3051E0 - 0x3059C8
; =========================================================

3051E0:  PUSH            {R4-R7,LR}
3051E2:  ADD             R7, SP, #0xC
3051E4:  PUSH.W          {R8-R10}
3051E8:  VPUSH           {D8}
3051EC:  SUB             SP, SP, #0x28
3051EE:  MOV             R8, R0
3051F0:  LDR.W           R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x3051FA)
3051F4:  MOV             R9, R1
3051F6:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
3051F8:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
3051FA:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
3051FC:  LDRD.W          R1, R2, [R0,#0x20]
305200:  LDR             R0, [R0,#0x28]
305202:  STRD.W          R1, R2, [SP,#0x48+var_2C]
305206:  STR             R0, [SP,#0x48+var_24]
305208:  MOV             R0, R9; this
30520A:  BLX             j__ZN4CPed29GetEntityThatThisPedIsHoldingEv; CPed::GetEntityThatThisPedIsHolding(void)
30520E:  CBZ             R0, loc_305222
305210:  LDR.W           R1, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305218)
305214:  ADD             R1, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305216:  LDR             R1, [R1]; CEntryExit::ms_spawnPoint ...
305218:  LDR             R1, [R1]; CEntryExit::ms_spawnPoint
30521A:  LDRB.W          R1, [R1,#0x32]
30521E:  STRB.W          R1, [R0,#0x33]
305222:  LDRH.W          R0, [R8,#0x30]
305226:  MOVW            R1, #(elf_hash_bucket+0x106); CVector *
30522A:  TST             R0, R1
30522C:  ITT EQ
30522E:  LDRBEQ.W        R0, [R9,#0x485]
305232:  MOVSEQ.W        R0, R0,LSL#31
305236:  BEQ.W           loc_3053DA
30523A:  LDR.W           R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x305242)
30523E:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
305240:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
305242:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState
305244:  CMP             R0, #2
305246:  BEQ             loc_305324
305248:  CMP             R0, #0
30524A:  BNE             loc_30533A
30524C:  LDR.W           R0, =(TheCamera_ptr - 0x30525A)
305250:  MOVS            R1, #0; unsigned __int8
305252:  MOVS            R2, #0; unsigned __int8
305254:  MOVS            R3, #0; unsigned __int8
305256:  ADD             R0, PC; TheCamera_ptr
305258:  LDR             R6, [R0]; TheCamera
30525A:  MOV             R0, R6; this
30525C:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
305260:  MOV             R0, R6; this
305262:  MOV.W           R1, #0x3F000000; float
305266:  MOVS            R2, #0; __int16
305268:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
30526C:  LDR.W           R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x305276)
305270:  MOVS            R1, #(stderr+2); CPed *
305272:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
305274:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
305276:  STR             R1, [R0]; CEntryExitManager::ms_exitEnterState
305278:  MOV             R0, R9; this
30527A:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
30527E:  MOV             R6, R0
305280:  CBZ             R6, loc_3052B8
305282:  MOVS            R0, #word_10; this
305284:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
305288:  MOV             R1, R9; CPed *
30528A:  MOV             R5, R0
30528C:  BLX             j__ZN15CEventAreaCodesC2EP4CPed; CEventAreaCodes::CEventAreaCodes(CPed *)
305290:  LDR.W           R0, =(_ZTV21CEventLeaderEntryExit_ptr - 0x30529E)
305294:  ADD             R4, SP, #0x48+var_40
305296:  MOV             R1, R9; CPed *
305298:  MOV             R2, R5; CEvent *
30529A:  ADD             R0, PC; _ZTV21CEventLeaderEntryExit_ptr
30529C:  LDR             R0, [R0]; `vtable for'CEventLeaderEntryExit ...
30529E:  ADDS            R0, #8
3052A0:  STR             R0, [R5]
3052A2:  MOV             R0, R4; this
3052A4:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
3052A8:  ADD.W           R0, R6, #0x30 ; '0'; this
3052AC:  MOV             R1, R4; CEvent *
3052AE:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
3052B2:  MOV             R0, R4; this
3052B4:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
3052B8:  LDR.W           R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x3052C0)
3052BC:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
3052BE:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
3052C0:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
3052C2:  LDRB.W          R1, [R0,#0x32]
3052C6:  CBZ             R1, loc_305336
3052C8:  LDRB.W          R1, [R8]
3052CC:  CBZ             R1, loc_305336
3052CE:  LDRB.W          R1, [R8,#0x32]
3052D2:  CBZ             R1, loc_30530C
3052D4:  LDR.W           R1, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x3052DC)
3052D8:  ADD             R1, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
3052DA:  LDR             R1, [R1]; CEntryExitManager::ms_entryExitStackPosn ...
3052DC:  LDR             R1, [R1]; CEntryExitManager::ms_entryExitStackPosn
3052DE:  CMP             R1, #2
3052E0:  BLT             loc_30530C
3052E2:  LDR.W           R2, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x3052EA)
3052E6:  ADD             R2, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
3052E8:  LDR             R2, [R2]; CEntryExitManager::ms_entryExitStack ...
3052EA:  ADD.W           R2, R2, R1,LSL#2
3052EE:  LDR.W           R2, [R2,#-4]
3052F2:  CMP             R2, R0
3052F4:  BNE             loc_30530C
3052F6:  LDR.W           R0, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x3052FE)
3052FA:  ADD             R0, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
3052FC:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStack ...
3052FE:  ADD.W           R0, R0, R1,LSL#2
305302:  LDR.W           R8, [R0,#-8]
305306:  CMP.W           R8, #0
30530A:  BEQ             loc_305336
30530C:  LDR.W           R0, =(TheText_ptr - 0x305314)
305310:  ADD             R0, PC; TheText_ptr
305312:  LDR             R0, [R0]; TheText ; this
305314:  MOV             R1, R8; CKeyGen *
305316:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
30531A:  MOVS            R1, #(stderr+1); unsigned __int16 *
30531C:  BLX             j__ZN4CHud11SetZoneNameEPth; CHud::SetZoneName(ushort *,uchar)
305320:  MOVS            R4, #0
305322:  B               loc_3059BA
305324:  LDR.W           R0, =(TheCamera_ptr - 0x30532C)
305328:  ADD             R0, PC; TheCamera_ptr
30532A:  LDR             R0, [R0]; TheCamera ; this
30532C:  BLX             j__ZN7CCamera9GetFadingEv; CCamera::GetFading(void)
305330:  CMP             R0, #0
305332:  BEQ.W           loc_305554
305336:  MOVS            R4, #0
305338:  B               loc_3059BA
30533A:  LDR.W           R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305346)
30533E:  LDR.W           R1, =(_ZN5CGame8currAreaE_ptr - 0x30534C)
305342:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305344:  LDR.W           R2, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x305350)
305348:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
30534A:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
30534C:  ADD             R2, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
30534E:  LDR             R1, [R1]; CGame::currArea ...
305350:  LDR             R2, [R2]; CEntryExitManager::ms_numVisibleEntities ...
305352:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
305354:  LDRB.W          R0, [R0,#0x32]
305358:  STR             R0, [R1]; CGame::currArea
30535A:  MOVS            R0, #0
30535C:  STR             R0, [R2]; CEntryExitManager::ms_numVisibleEntities
30535E:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x30536A)
305362:  LDR.W           R1, [R9,#0x590]
305366:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
305368:  CMP             R1, #0
30536A:  LDR             R0, [R0]; CGame::currArea ...
30536C:  LDR             R0, [R0]; CGame::currArea
30536E:  STRB.W          R0, [R9,#0x33]
305372:  BEQ             loc_305380
305374:  LDRB.W          R2, [R9,#0x485]
305378:  LSLS            R2, R2, #0x1F
30537A:  IT NE
30537C:  STRBNE.W        R0, [R1,#0x33]
305380:  LDR.W           R2, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x30538E)
305384:  CMP             R0, #0
305386:  IT NE
305388:  MOVNE           R0, R8
30538A:  ADD             R2, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
30538C:  STR.W           R0, [R9,#0x794]
305390:  LDR.W           R1, [R8,#0x38]
305394:  LDR             R0, [R2]; CEntryExitManager::ms_entryExitStackPosn ...
305396:  CMP             R1, #0
305398:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStackPosn
30539A:  IT EQ
30539C:  MOVEQ           R1, R8; int
30539E:  CMP             R0, #1
3053A0:  BLT             loc_3053B6
3053A2:  LDR.W           R2, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x3053AA)
3053A6:  ADD             R2, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
3053A8:  LDR             R3, [R2]; CEntryExitManager::ms_entryExitStack ...
3053AA:  SUBS            R2, R0, #1
3053AC:  LDR.W           R3, [R3,R2,LSL#2]
3053B0:  CMP             R3, R1
3053B2:  BEQ.W           loc_305572
3053B6:  LDRB.W          R1, [R1,#0x32]
3053BA:  CMP             R1, #0
3053BC:  BEQ.W           loc_305564
3053C0:  LDR.W           R1, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x3053CE)
3053C4:  ADDS            R3, R0, #1
3053C6:  LDR.W           R2, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x3053D0)
3053CA:  ADD             R1, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
3053CC:  ADD             R2, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
3053CE:  LDR             R1, [R1]; CEntryExitManager::ms_entryExitStackPosn ...
3053D0:  LDR             R2, [R2]; CEntryExitManager::ms_entryExitStack ...
3053D2:  STR             R3, [R1]; CEntryExitManager::ms_entryExitStackPosn
3053D4:  STR.W           R8, [R2,R0,LSL#2]
3053D8:  B               loc_30557C
3053DA:  ADD             R4, SP, #0x48+var_2C
3053DC:  MOV             R0, R4; this
3053DE:  BLX             j__ZN9CColStore24AddCollisionNeededAtPosnERK7CVector; CColStore::AddCollisionNeededAtPosn(CVector const&)
3053E2:  MOV             R0, R4; this
3053E4:  BLX             j__ZN9CIplStore19AddIplsNeededAtPosnERK7CVector; CIplStore::AddIplsNeededAtPosn(CVector const&)
3053E8:  LDR.W           R0, =(_ZN10CEntryExit11ms_bWarpingE_ptr - 0x3053F0)
3053EC:  ADD             R0, PC; _ZN10CEntryExit11ms_bWarpingE_ptr
3053EE:  LDR             R0, [R0]; CEntryExit::ms_bWarping ...
3053F0:  LDRB            R0, [R0]; CEntryExit::ms_bWarping
3053F2:  CBZ             R0, loc_305436
3053F4:  LDR.W           R0, =(_ZN9CRenderer17m_loadingPriorityE_ptr - 0x305400)
3053F8:  ADD             R4, SP, #0x48+var_2C
3053FA:  MOVS            R1, #0
3053FC:  ADD             R0, PC; _ZN9CRenderer17m_loadingPriorityE_ptr
3053FE:  LDR             R0, [R0]; CRenderer::m_loadingPriority ...
305400:  STRB            R1, [R0]; CRenderer::m_loadingPriority
305402:  MOV             R0, R4; this
305404:  MOVS            R1, #dword_20; CVector *
305406:  BLX             j__ZN10CStreaming22AddModelsToRequestListERK7CVectorj; CStreaming::AddModelsToRequestList(CVector const&,uint)
30540A:  LDR.W           R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305412)
30540E:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305410:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
305412:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
305414:  ADD.W           R6, R0, #0x20 ; ' '
305418:  LDM             R6, {R2,R3,R6}; int
30541A:  LDR             R1, [R0,#0x2C]; CVector *
30541C:  ADD             R0, SP, #0x48+var_40
30541E:  STM             R0!, {R2,R3,R6}
305420:  ADD             R0, SP, #0x48+var_40; this
305422:  MOVS            R2, #0x20 ; ' '; float
305424:  BLX             j__ZN9CRenderer25RequestObjectsInDirectionERK7CVectorfi; CRenderer::RequestObjectsInDirection(CVector const&,float,int)
305428:  LDR.W           R0, =(ThePaths_ptr - 0x305432)
30542C:  MOV             R1, R4; CVector *
30542E:  ADD             R0, PC; ThePaths_ptr
305430:  LDR             R0, [R0]; ThePaths ; this
305432:  BLX             j__ZN9CPathFind24SetPathsNeededAtPositionERK7CVector; CPathFind::SetPathsNeededAtPosition(CVector const&)
305436:  LDR.W           R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x30543E)
30543A:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
30543C:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
30543E:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState
305440:  CMP             R0, #2
305442:  BEQ.W           loc_3057FA
305446:  CMP             R0, #1
305448:  BEQ.W           loc_305816
30544C:  CMP             R0, #0
30544E:  BNE             loc_30535E
305450:  LDR.W           R0, =(PC_Scratch_ptr - 0x305460)
305454:  MOVS            R1, #0x40C00000
30545A:  MOVS            R2, #0
30545C:  ADD             R0, PC; PC_Scratch_ptr
30545E:  MOVS            R4, #0
305460:  LDR             R0, [R0]; PC_Scratch
305462:  ADD.W           R0, R0, #0x400
305466:  BLX             j__ZN9CRenderer19GetObjectsInFrustumEPP7CEntityfP11RwMatrixTag; CRenderer::GetObjectsInFrustum(CEntity **,float,RwMatrixTag *)
30546A:  MOV             R5, R0
30546C:  MOV.W           R0, #0xFFFFFFFF; int
305470:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
305474:  LDR.W           R1, =(_ZN5CGame8currAreaE_ptr - 0x305482)
305478:  CMP             R5, #0
30547A:  LDR.W           R2, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x305484)
30547E:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
305480:  ADD             R2, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
305482:  LDR             R1, [R1]; CGame::currArea ...
305484:  LDR             R2, [R2]; CEntryExitManager::ms_numVisibleEntities ...
305486:  LDR             R1, [R1]; CPed *
305488:  STR             R4, [R2]; CEntryExitManager::ms_numVisibleEntities
30548A:  BEQ             loc_3054E0
30548C:  LDR.W           R2, =(PC_Scratch_ptr - 0x30549E)
305490:  MOVS            R6, #0
305492:  LDR.W           R4, =(_ZN17CEntryExitManager20ms_visibleEntityListE_ptr - 0x3054A0)
305496:  MOV.W           R12, #0xD
30549A:  ADD             R2, PC; PC_Scratch_ptr
30549C:  ADD             R4, PC; _ZN17CEntryExitManager20ms_visibleEntityListE_ptr
30549E:  LDR             R3, [R2]; PC_Scratch
3054A0:  RSB.W           R2, R5, #1
3054A4:  LDR.W           R5, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x3054B4)
3054A8:  LDR.W           R8, [R4]; CEntryExitManager::ms_visibleEntityList ...
3054AC:  ADD.W           R3, R3, #0x400
3054B0:  ADD             R5, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
3054B2:  LDR.W           LR, [R5]; CEntryExitManager::ms_numVisibleEntities ...
3054B6:  LDR             R5, [R3]
3054B8:  CMP             R5, R0
3054BA:  BEQ             loc_3054D6
3054BC:  LDRB.W          R4, [R5,#0x33]
3054C0:  CMP             R1, R4
3054C2:  BNE             loc_3054D6
3054C4:  ADDS            R4, R6, #1
3054C6:  STR.W           R5, [R8,R6,LSL#2]
3054CA:  LDR             R5, [R3]
3054CC:  MOV             R6, R4
3054CE:  STR.W           R4, [LR]; CEntryExitManager::ms_numVisibleEntities
3054D2:  STRB.W          R12, [R5,#0x33]
3054D6:  CBZ             R2, loc_3054E0
3054D8:  ADDS            R2, #1
3054DA:  ADDS            R3, #4
3054DC:  CMP             R6, #0x20 ; ' '
3054DE:  BLT             loc_3054B6
3054E0:  LDR.W           R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x3054EE)
3054E4:  MOVS            R5, #1
3054E6:  LDR.W           R2, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x3054F4)
3054EA:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
3054EC:  LDR.W           R6, =(_ZN17CEntryExitManager14ms_oldAreaCodeE_ptr - 0x3054FA)
3054F0:  ADD             R2, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
3054F2:  LDR.W           R3, =(_ZN5CGame8currAreaE_ptr - 0x3054FE)
3054F6:  ADD             R6, PC; _ZN17CEntryExitManager14ms_oldAreaCodeE_ptr
3054F8:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
3054FA:  ADD             R3, PC; _ZN5CGame8currAreaE_ptr
3054FC:  LDR             R2, [R2]; CEntryExitManager::ms_exitEnterState ...
3054FE:  LDR             R6, [R6]; CEntryExitManager::ms_oldAreaCode ...
305500:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
305502:  LDR             R3, [R3]; CGame::currArea ...
305504:  STR             R5, [R2]; CEntryExitManager::ms_exitEnterState
305506:  STR             R1, [R6]; CEntryExitManager::ms_oldAreaCode
305508:  LDRB.W          R0, [R0,#0x32]
30550C:  STR             R0, [R3]; CGame::currArea
30550E:  MOV             R0, R9; this
305510:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
305514:  MOV             R5, R0
305516:  CMP             R5, #0
305518:  BEQ.W           loc_305336
30551C:  MOVS            R0, #word_10; this
30551E:  BLX             j__ZN6CEventnwEj; CEvent::operator new(uint)
305522:  MOV             R1, R9; CPed *
305524:  MOV             R4, R0
305526:  BLX             j__ZN15CEventAreaCodesC2EP4CPed; CEventAreaCodes::CEventAreaCodes(CPed *)
30552A:  LDR.W           R0, =(_ZTV21CEventLeaderEntryExit_ptr - 0x305538)
30552E:  ADD             R6, SP, #0x48+var_40
305530:  MOV             R1, R9; CPed *
305532:  MOV             R2, R4; CEvent *
305534:  ADD             R0, PC; _ZTV21CEventLeaderEntryExit_ptr
305536:  LDR             R0, [R0]; `vtable for'CEventLeaderEntryExit ...
305538:  ADDS            R0, #8
30553A:  STR             R0, [R4]
30553C:  MOV             R0, R6; this
30553E:  BLX             j__ZN16CEventGroupEventC2EP4CPedP6CEvent; CEventGroupEvent::CEventGroupEvent(CPed *,CEvent *)
305542:  ADD.W           R0, R5, #0x30 ; '0'; this
305546:  MOV             R1, R6; CEvent *
305548:  BLX             j__ZN21CPedGroupIntelligence8AddEventER6CEvent; CPedGroupIntelligence::AddEvent(CEvent &)
30554C:  MOV             R0, R6; this
30554E:  BLX             j__ZN16CEventGroupEventD2Ev; CEventGroupEvent::~CEventGroupEvent()
305552:  B               loc_305336
305554:  LDR.W           R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x305560)
305558:  MOVS            R1, #3
30555A:  MOVS            R4, #0
30555C:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
30555E:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
305560:  STR             R1, [R0]; CEntryExitManager::ms_exitEnterState
305562:  B               loc_3059BA
305564:  LDR.W           R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x30556E)
305568:  MOVS            R1, #0
30556A:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
30556C:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
30556E:  STR             R1, [R0]; CEntryExitManager::ms_entryExitStackPosn
305570:  B               loc_30557C
305572:  LDR.W           R0, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x30557A)
305576:  ADD             R0, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
305578:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStackPosn ...
30557A:  STR             R2, [R0]; CEntryExitManager::ms_entryExitStackPosn
30557C:  LDR.W           R0, [R9,#0x48C]
305580:  ORR.W           R0, R0, #0x4000000
305584:  STR.W           R0, [R9,#0x48C]
305588:  MOVS            R0, #0; this
30558A:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
30558E:  LDRH.W          R1, [R0,#0x110]
305592:  BIC.W           R1, R1, #8; CPlayerPed *
305596:  STRH.W          R1, [R0,#0x110]
30559A:  MOV             R0, R9; this
30559C:  BLX             j__ZN8CClothes21RebuildPlayerIfNeededEP10CPlayerPed; CClothes::RebuildPlayerIfNeeded(CPlayerPed *)
3055A0:  LDRB.W          R0, [R8,#0x31]
3055A4:  LSLS            R0, R0, #0x1E
3055A6:  BMI             loc_3055C4
3055A8:  LDR.W           R0, =(TheCamera_ptr - 0x3055B4)
3055AC:  LDRD.W          R2, R1, [SP,#0x48+var_2C]
3055B0:  ADD             R0, PC; TheCamera_ptr
3055B2:  LDR             R3, [R0]; TheCamera
3055B4:  LDR             R0, [SP,#0x48+var_24]
3055B6:  LDR             R3, [R3,#(dword_951FBC - 0x951FA8)]
3055B8:  CBZ             R3, loc_3055DA
3055BA:  STRD.W          R2, R1, [R3,#0x30]
3055BE:  ADD.W           R1, R3, #0x38 ; '8'
3055C2:  B               loc_3055EA
3055C4:  LDR.W           R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x3055CE)
3055C8:  MOVS            R4, #1
3055CA:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
3055CC:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
3055CE:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
3055D0:  LDRH            R1, [R0,#0x30]
3055D2:  BIC.W           R1, R1, #0x2000
3055D6:  STRH            R1, [R0,#0x30]
3055D8:  B               loc_3059BA
3055DA:  LDR.W           R3, =(TheCamera_ptr - 0x3055E2)
3055DE:  ADD             R3, PC; TheCamera_ptr
3055E0:  LDR             R3, [R3]; TheCamera
3055E2:  STRD.W          R2, R1, [R3,#(dword_951FAC - 0x951FA8)]
3055E6:  ADD.W           R1, R3, #0xC
3055EA:  LDR.W           R2, =(TheCamera_ptr - 0x3055F4)
3055EE:  STR             R0, [R1]
3055F0:  ADD             R2, PC; TheCamera_ptr
3055F2:  LDR             R0, [R2]; TheCamera ; this
3055F4:  BLX             j__ZN7CCamera18RestoreWithJumpCutEv; CCamera::RestoreWithJumpCut(void)
3055F8:  ADD             R3, SP, #0x48+var_2C
3055FA:  MOVS            R0, #1
3055FC:  MOVS            R4, #1
3055FE:  LDM             R3, {R1-R3}
305600:  BLX             j__ZN11CAudioZones6UpdateEb7CVector; CAudioZones::Update(bool,CVector)
305604:  BLX             j__ZN11CWaterLevel26FindNearestWaterAndItsFlowEv; CWaterLevel::FindNearestWaterAndItsFlow(void)
305608:  BLX             j__ZN8CGarages29CloseHideOutGaragesBeforeSaveEv; CGarages::CloseHideOutGaragesBeforeSave(void)
30560C:  LDR.W           R0, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x305614)
305610:  ADD             R0, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
305612:  LDR             R1, [R0]; CEntryExitManager::ms_numVisibleEntities ...
305614:  LDR             R0, [R1]; CEntryExitManager::ms_numVisibleEntities
305616:  CMP             R0, #0
305618:  SUB.W           R2, R0, #1
30561C:  STR             R2, [R1]; CEntryExitManager::ms_numVisibleEntities
30561E:  BEQ             loc_305650
305620:  LDR.W           R1, =(_ZN17CEntryExitManager14ms_oldAreaCodeE_ptr - 0x30562C)
305624:  LDR.W           R2, =(_ZN17CEntryExitManager20ms_visibleEntityListE_ptr - 0x30562E)
305628:  ADD             R1, PC; _ZN17CEntryExitManager14ms_oldAreaCodeE_ptr
30562A:  ADD             R2, PC; _ZN17CEntryExitManager20ms_visibleEntityListE_ptr
30562C:  LDR             R1, [R1]; CEntryExitManager::ms_oldAreaCode ...
30562E:  LDR             R2, [R2]; CEntryExitManager::ms_visibleEntityList ...
305630:  LDR             R1, [R1]; CEntryExitManager::ms_oldAreaCode
305632:  ADD.W           R3, R2, R0,LSL#2
305636:  SUBS            R0, #1
305638:  LDR.W           R3, [R3,#-4]
30563C:  STRB.W          R1, [R3,#0x33]
305640:  BNE             loc_305632
305642:  LDR.W           R0, =(_ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr - 0x30564E)
305646:  MOV.W           R1, #0xFFFFFFFF
30564A:  ADD             R0, PC; _ZN17CEntryExitManager21ms_numVisibleEntitiesE_ptr
30564C:  LDR             R0, [R0]; CEntryExitManager::ms_numVisibleEntities ...
30564E:  STR             R1, [R0]; CEntryExitManager::ms_numVisibleEntities
305650:  LDR.W           R0, =(g_interiorMan_ptr - 0x30565A)
305654:  MOV             R1, R8; CEntryExit *
305656:  ADD             R0, PC; g_interiorMan_ptr
305658:  LDR             R0, [R0]; g_interiorMan ; this
30565A:  BLX             j__ZN17InteriorManager_c15SetEntryExitPtrEP10CEntryExit; InteriorManager_c::SetEntryExitPtr(CEntryExit *)
30565E:  BLX             j__ZN11CPopulation19RemoveAllRandomPedsEv; CPopulation::RemoveAllRandomPeds(void)
305662:  MOV             R0, R8; this
305664:  BLX             j__ZN10CEntryExit18RequestAmbientPedsEv; CEntryExit::RequestAmbientPeds(void)
305668:  LDR.W           R0, =(bLoadingScene_ptr - 0x305670)
30566C:  ADD             R0, PC; bLoadingScene_ptr
30566E:  LDR             R5, [R0]; bLoadingScene
305670:  MOVS            R0, #0; this
305672:  STRB            R4, [R5]
305674:  MOVS            R4, #0
305676:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
30567A:  STRB            R4, [R5]
30567C:  BLX             j__ZN6CTimer7SuspendEv; CTimer::Suspend(void)
305680:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x305688)
305684:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
305686:  LDR             R0, [R0]; CGame::currArea ...
305688:  LDR             R0, [R0]; CGame::currArea
30568A:  CBNZ            R0, loc_3056A6
30568C:  ADD             R2, SP, #0x48+var_2C
30568E:  LDM             R2, {R0-R2}
305690:  BLX             j__ZN10CTimeCycle19FindFarClipForCoorsE7CVector; CTimeCycle::FindFarClipForCoors(CVector)
305694:  MOV             R1, R0
305696:  LDR.W           R0, =(TheCamera_ptr - 0x30569E)
30569A:  ADD             R0, PC; TheCamera_ptr
30569C:  LDR             R0, [R0]; TheCamera
30569E:  LDR.W           R0, [R0,#(dword_952880 - 0x951FA8)]
3056A2:  BLX             j__Z23RwCameraSetFarClipPlaneP8RwCameraf; RwCameraSetFarClipPlane(RwCamera *,float)
3056A6:  LDR.W           R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x3056B2)
3056AA:  ADDW            R5, R9, #0x484
3056AE:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
3056B0:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
3056B2:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
3056B4:  ADD.W           R6, R0, #0x20 ; ' '
3056B8:  LDM             R6, {R2,R3,R6}; int
3056BA:  LDR             R1, [R0,#0x2C]; CVector *
3056BC:  ADD             R0, SP, #0x48+var_40
3056BE:  STM             R0!, {R2,R3,R6}
3056C0:  ADD             R0, SP, #0x48+var_40; this
3056C2:  MOVS            R2, #0x20 ; ' '; float
3056C4:  BLX             j__ZN9CRenderer25RequestObjectsInDirectionERK7CVectorfi; CRenderer::RequestObjectsInDirection(CVector const&,float,int)
3056C8:  ADD             R4, SP, #0x48+var_2C
3056CA:  MOV             R0, R4; this
3056CC:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
3056D0:  MOVS            R0, #0; this
3056D2:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
3056D6:  MOV             R0, R8
3056D8:  MOV             R1, R4
3056DA:  NOP
3056DC:  NOP
3056DE:  LDR.W           R0, =(g_interiorMan_ptr - 0x3056E6)
3056E2:  ADD             R0, PC; g_interiorMan_ptr
3056E4:  LDR             R0, [R0]; g_interiorMan ; this
3056E6:  BLX             j__ZN17InteriorManager_c6UpdateEv; InteriorManager_c::Update(void)
3056EA:  CMP             R0, #1
3056EC:  BNE             loc_305700
3056EE:  MOVS            R0, #0; this
3056F0:  BLX             j__ZN10CStreaming26SetLoadVehiclesInLoadSceneEb; CStreaming::SetLoadVehiclesInLoadScene(bool)
3056F4:  ADD             R0, SP, #0x48+var_2C; this
3056F6:  BLX             j__ZN10CStreaming9LoadSceneERK7CVector; CStreaming::LoadScene(CVector const&)
3056FA:  MOVS            R0, #(stderr+1); this
3056FC:  BLX             j__ZN10CStreaming26SetLoadVehiclesInLoadSceneEb; CStreaming::SetLoadVehiclesInLoadScene(bool)
305700:  BLX             j__ZN6CTimer6ResumeEv; CTimer::Resume(void)
305704:  MOVS            R0, #dword_20; this
305706:  BLX             j__ZN10CStreaming15ClearFlagForAllEj; CStreaming::ClearFlagForAll(uint)
30570A:  LDR.W           R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305712)
30570E:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305710:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
305712:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
305714:  LDRB.W          R0, [R0,#0x33]
305718:  CBZ             R0, loc_305724
30571A:  SUBS            R0, #1; this
30571C:  MOVS            R1, #0; int
30571E:  BLX             j__ZN10CTimeCycle16StartExtraColourEib; CTimeCycle::StartExtraColour(int,bool)
305722:  B               loc_30572A
305724:  MOVS            R0, #0; this
305726:  BLX             j__ZN10CTimeCycle15StopExtraColourEb; CTimeCycle::StopExtraColour(bool)
30572A:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305730)
30572C:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
30572E:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
305730:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
305732:  LDRH            R0, [R0,#0x30]
305734:  AND.W           R0, R0, #1; this
305738:  BLX             j__ZN8CRubbish13SetVisibilityEb; CRubbish::SetVisibility(bool)
30573C:  LDRB            R0, [R5,#1]
30573E:  LSLS            R0, R0, #0x1F; this
305740:  BNE             loc_305794
305742:  ADD             R1, SP, #0x48+var_2C; CVector *
305744:  BLX             j__ZN10CEntryExit22FindValidTeleportPointER7CVector; CEntryExit::FindValidTeleportPoint(CVector &)
305748:  LDR.W           R0, [R9]
30574C:  ADD             R3, SP, #0x48+var_2C
30574E:  LDM             R3, {R1-R3}
305750:  LDR             R6, [R0,#0x3C]
305752:  MOVS            R0, #0
305754:  STR             R0, [SP,#0x48+var_48]
305756:  MOV             R0, R9
305758:  BLX             R6
30575A:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305768)
30575C:  ADD.W           R1, R9, #0x560
305760:  VLDR            S0, =3.1416
305764:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305766:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
305768:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
30576A:  VLDR            S2, [R0,#0x2C]
30576E:  LDR.W           R0, [R9,#0x14]
305772:  VMUL.F32        S0, S2, S0
305776:  VLDR            S2, =180.0
30577A:  CMP             R0, #0
30577C:  VDIV.F32        S0, S0, S2
305780:  VSTR            S0, [R1]
305784:  ADDW            R1, R9, #0x55C
305788:  VSTR            S0, [R1]
30578C:  BNE             loc_3057F0
30578E:  VSTR            S0, [R9,#0x10]
305792:  B               loc_3058B2
305794:  LDR.W           R6, [R9,#0x590]
305798:  VMOV.F32        S0, #-1.0
30579C:  VLDR            S2, [SP,#0x48+var_24]
3057A0:  LDR             R0, [R6]
3057A2:  LDRD.W          R5, R10, [SP,#0x48+var_2C]
3057A6:  LDR.W           R1, [R0,#0xD8]
3057AA:  MOV             R0, R6
3057AC:  VADD.F32        S16, S2, S0
3057B0:  BLX             R1
3057B2:  VMOV            S0, R0
3057B6:  LDR             R0, [R6]
3057B8:  MOV             R1, R5
3057BA:  MOV             R2, R10
3057BC:  VADD.F32        S0, S16, S0
3057C0:  LDR             R4, [R0,#0x3C]
3057C2:  MOVS            R0, #0
3057C4:  STR             R0, [SP,#0x48+var_48]
3057C6:  MOV             R0, R6
3057C8:  VMOV            R3, S0
3057CC:  BLX             R4
3057CE:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x3057D8)
3057D0:  VLDR            S0, =3.1416
3057D4:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
3057D6:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
3057D8:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
3057DA:  VLDR            S2, [R0,#0x2C]
3057DE:  LDR             R0, [R6,#0x14]; this
3057E0:  VMUL.F32        S0, S2, S0
3057E4:  VLDR            S2, =180.0
3057E8:  CMP             R0, #0
3057EA:  VDIV.F32        S0, S0, S2
3057EE:  BEQ             loc_3058AE
3057F0:  VMOV            R1, S0; x
3057F4:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
3057F8:  B               loc_3058B2
3057FA:  LDR             R0, =(TheCamera_ptr - 0x305800)
3057FC:  ADD             R0, PC; TheCamera_ptr
3057FE:  LDR             R0, [R0]; TheCamera ; this
305800:  BLX             j__ZN7CCamera9GetFadingEv; CCamera::GetFading(void)
305804:  CMP             R0, #0
305806:  BNE.W           loc_305336
30580A:  LDR             R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x305812)
30580C:  MOVS            R1, #3
30580E:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
305810:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
305812:  STR             R1, [R0]; CEntryExitManager::ms_exitEnterState
305814:  B               loc_30535E
305816:  LDR.W           R0, [R9,#0x440]
30581A:  LDR             R0, [R0,#0x10]
30581C:  CBZ             R0, loc_30582A
30581E:  LDR             R1, [R0]
305820:  LDR             R1, [R1,#0x14]
305822:  BLX             R1
305824:  CMP.W           R0, #0x3A4
305828:  BEQ             loc_305852
30582A:  LDR             R0, =(TheCamera_ptr - 0x305836)
30582C:  MOVS            R1, #0; unsigned __int8
30582E:  MOVS            R2, #0; unsigned __int8
305830:  MOVS            R3, #0; unsigned __int8
305832:  ADD             R0, PC; TheCamera_ptr
305834:  LDR             R4, [R0]; TheCamera
305836:  MOV             R0, R4; this
305838:  BLX             j__ZN7CCamera13SetFadeColourEhhh; CCamera::SetFadeColour(uchar,uchar,uchar)
30583C:  MOV             R0, R4; this
30583E:  MOV.W           R1, #0x3F800000; float
305842:  MOVS            R2, #0; __int16
305844:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
305848:  LDR             R0, =(_ZN17CEntryExitManager17ms_exitEnterStateE_ptr - 0x305850)
30584A:  MOVS            R1, #2
30584C:  ADD             R0, PC; _ZN17CEntryExitManager17ms_exitEnterStateE_ptr
30584E:  LDR             R0, [R0]; CEntryExitManager::ms_exitEnterState ...
305850:  STR             R1, [R0]; CEntryExitManager::ms_exitEnterState
305852:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305858)
305854:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305856:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
305858:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
30585A:  LDRB.W          R1, [R0,#0x32]
30585E:  CMP             R1, #0
305860:  BEQ.W           loc_305336
305864:  LDRB.W          R1, [R8]
305868:  CMP             R1, #0
30586A:  BEQ.W           loc_305336
30586E:  LDRB.W          R1, [R8,#0x32]
305872:  CBZ             R1, loc_3058A8
305874:  LDR             R1, =(_ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr - 0x30587A)
305876:  ADD             R1, PC; _ZN17CEntryExitManager21ms_entryExitStackPosnE_ptr
305878:  LDR             R1, [R1]; CEntryExitManager::ms_entryExitStackPosn ...
30587A:  LDR             R1, [R1]; CEntryExitManager::ms_entryExitStackPosn
30587C:  CMP             R1, #2
30587E:  BLT             loc_3058A8
305880:  LDR             R2, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x305886)
305882:  ADD             R2, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
305884:  LDR             R2, [R2]; CEntryExitManager::ms_entryExitStack ...
305886:  ADD.W           R2, R2, R1,LSL#2
30588A:  LDR.W           R2, [R2,#-4]
30588E:  CMP             R2, R0
305890:  BNE             loc_3058A8
305892:  LDR             R0, =(_ZN17CEntryExitManager17ms_entryExitStackE_ptr - 0x305898)
305894:  ADD             R0, PC; _ZN17CEntryExitManager17ms_entryExitStackE_ptr
305896:  LDR             R0, [R0]; CEntryExitManager::ms_entryExitStack ...
305898:  ADD.W           R0, R0, R1,LSL#2
30589C:  LDR.W           R8, [R0,#-8]
3058A0:  CMP.W           R8, #0
3058A4:  BEQ.W           loc_305336
3058A8:  LDR             R0, =(TheText_ptr - 0x3058AE)
3058AA:  ADD             R0, PC; TheText_ptr
3058AC:  B               loc_305312
3058AE:  VSTR            S0, [R6,#0x10]
3058B2:  LDR             R0, =(TheCamera_ptr - 0x3058BE)
3058B4:  MOV.W           R1, #0x3F800000; float
3058B8:  MOVS            R2, #1; __int16
3058BA:  ADD             R0, PC; TheCamera_ptr
3058BC:  LDR             R0, [R0]; TheCamera ; this
3058BE:  BLX             j__ZN7CCamera4FadeEfs; CCamera::Fade(float,short)
3058C2:  LDR.W           R1, [R9,#0x14]
3058C6:  ADD.W           R0, R1, #0x30 ; '0'
3058CA:  CMP             R1, #0
3058CC:  IT EQ
3058CE:  ADDEQ.W         R0, R9, #4; this
3058D2:  MOV             R1, R9; CVector *
3058D4:  BLX             j__ZN11CTheScripts26ClearSpaceForMissionEntityERK7CVectorP7CEntity; CTheScripts::ClearSpaceForMissionEntity(CVector const&,CEntity *)
3058D8:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x3058DE)
3058DA:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
3058DC:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
3058DE:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
3058E0:  LDRH            R0, [R0,#0x30]; this
3058E2:  TST.W           R0, #0x10
3058E6:  BNE             loc_305908
3058E8:  LSLS            R0, R0, #0x1C
3058EA:  BPL             loc_30590C
3058EC:  MOV             R0, R8; this
3058EE:  BLX             j__ZN9CShopping8LoadShopEPKc; CShopping::LoadShop(char const*)
3058F2:  LDR.W           R0, [R8,#0x38]
3058F6:  CMP             R0, #0
3058F8:  ITTT NE
3058FA:  LDRHNE.W        R0, [R8,#0x30]
3058FE:  ORRNE.W         R0, R0, #0x10
305902:  STRHNE.W        R0, [R8,#0x30]
305906:  B               loc_30590C
305908:  BLX             j__ZN9CShopping16RemoveLoadedShopEv; CShopping::RemoveLoadedShop(void)
30590C:  BLX             j__ZN11CPopulation19ManageAllPopulationEv; CPopulation::ManageAllPopulation(void)
305910:  BLX             j__ZN11CTheScripts7ProcessEv; CTheScripts::Process(void)
305914:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x30591A)
305916:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305918:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
30591A:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
30591C:  LDRB.W          R0, [R0,#0x31]
305920:  LSLS            R0, R0, #0x1F; this
305922:  ITT NE
305924:  MOVNE           R1, R9; CPed *
305926:  BLXNE           j__ZN10CEntryExit18WarpGangWithPlayerEP4CPed; CEntryExit::WarpGangWithPlayer(CPed *)
30592A:  MOV             R1, R9; CPed *
30592C:  BLX             j__ZN10CEntryExit23ProcessStealableObjectsEP4CPed; CEntryExit::ProcessStealableObjects(CPed *)
305930:  LDR             R0, =(_ZN10CEntryExit13ms_spawnPointE_ptr - 0x305936)
305932:  ADD             R0, PC; _ZN10CEntryExit13ms_spawnPointE_ptr
305934:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint ...
305936:  LDR             R0, [R0]; CEntryExit::ms_spawnPoint
305938:  LDRH            R1, [R0,#0x30]
30593A:  BIC.W           R2, R1, #0x2000
30593E:  STRH            R2, [R0,#0x30]
305940:  SXTH            R1, R1
305942:  CMP.W           R1, #0xFFFFFFFF
305946:  BGT             loc_3059A0
305948:  LDR             R1, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x305956)
30594A:  MOV             R5, #0xEEEEEEEF
305952:  ADD             R1, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
305954:  LDR             R1, [R1]; CEntryExitManager::mp_poolEntryExits ...
305956:  LDR             R2, [R1]; CEntryExitManager::mp_poolEntryExits
305958:  LDRD.W          R1, R2, [R2]
30595C:  SUBS            R0, R0, R1
30595E:  ASRS            R0, R0, #2
305960:  MULS            R0, R5
305962:  LDRSB           R2, [R2,R0]
305964:  CMP             R2, #0
305966:  BLT             loc_3059A0
305968:  LDR             R2, =(_ZN17CEntryExitManager11mp_QuadTreeE_ptr - 0x305972)
30596A:  RSB.W           R3, R0, R0,LSL#4
30596E:  ADD             R2, PC; _ZN17CEntryExitManager11mp_QuadTreeE_ptr
305970:  ADD.W           R4, R1, R3,LSL#2
305974:  LDR             R2, [R2]; CEntryExitManager::mp_QuadTree ...
305976:  MOV             R1, R4; void *
305978:  LDR             R0, [R2]; this
30597A:  BLX             j__ZN13CQuadTreeNode10DeleteItemEPv; CQuadTreeNode::DeleteItem(void *)
30597E:  LDR             R0, =(_ZN17CEntryExitManager17mp_poolEntryExitsE_ptr - 0x305984)
305980:  ADD             R0, PC; _ZN17CEntryExitManager17mp_poolEntryExitsE_ptr
305982:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits ...
305984:  LDR             R0, [R0]; CEntryExitManager::mp_poolEntryExits
305986:  LDRD.W          R1, R2, [R0]
30598A:  SUBS            R1, R4, R1
30598C:  ASRS            R1, R1, #2
30598E:  MULS            R1, R5
305990:  LDRB            R3, [R2,R1]
305992:  ORR.W           R3, R3, #0x80
305996:  STRB            R3, [R2,R1]
305998:  LDR             R2, [R0,#0xC]
30599A:  CMP             R1, R2
30599C:  IT LT
30599E:  STRLT           R1, [R0,#0xC]
3059A0:  LDR.W           R0, [R9,#0x440]
3059A4:  MOVS            R1, #3; int
3059A6:  ADDS            R0, #4; this
3059A8:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
3059AC:  BLX             j__ZN18CTaskComplexFacial7StopAllEv; CTaskComplexFacial::StopAll(void)
3059B0:  MOVS            R0, #(stderr+1); this
3059B2:  MOVS            R1, #1; bool
3059B4:  MOVS            R4, #1
3059B6:  BLX             j__ZN5CGame12TidyUpMemoryEbb; CGame::TidyUpMemory(bool,bool)
3059BA:  MOV             R0, R4
3059BC:  ADD             SP, SP, #0x28 ; '('
3059BE:  VPOP            {D8}
3059C2:  POP.W           {R8-R10}
3059C6:  POP             {R4-R7,PC}
