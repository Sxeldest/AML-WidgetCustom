; =========================================================
; Game Engine Function: _ZNK26CEventPotentialWalkIntoPed10AffectsPedEP4CPed
; Address            : 0x374374 - 0x37447E
; =========================================================

374374:  PUSH            {R4-R7,LR}
374376:  ADD             R7, SP, #0xC
374378:  PUSH.W          {R8}
37437C:  MOV             R4, R1
37437E:  MOV             R5, R0
374380:  MOV             R0, R4; this
374382:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
374386:  CMP             R0, #1
374388:  BNE             loc_374476
37438A:  LDR             R0, [R5,#0x1C]
37438C:  CMP             R0, #0
37438E:  ITT NE
374390:  LDRNE           R0, [R5,#0x20]
374392:  CMPNE           R0, #1
374394:  BEQ             loc_374476
374396:  LDR.W           R0, [R4,#0x440]
37439A:  MOVW            R1, #0x4B2; int
37439E:  ADDS            R0, #4; this
3743A0:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3743A4:  MOV             R8, R0
3743A6:  CMP.W           R8, #0
3743AA:  BNE             loc_3743D8
3743AC:  LDR.W           R0, [R4,#0x440]
3743B0:  MOVW            R1, #0x4BF; int
3743B4:  ADDS            R0, #4; this
3743B6:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3743BA:  MOV             R8, R0
3743BC:  CMP.W           R8, #0
3743C0:  BNE             loc_3743D8
3743C2:  LDR.W           R0, [R4,#0x440]
3743C6:  MOVW            R1, #0x4B3; int
3743CA:  ADDS            R0, #4; this
3743CC:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3743D0:  MOV             R8, R0
3743D2:  CMP.W           R8, #0
3743D6:  BEQ             loc_37442C
3743D8:  LDR             R0, [R5,#0x1C]
3743DA:  MOVW            R1, #0x4B2; int
3743DE:  LDR.W           R0, [R0,#0x440]
3743E2:  ADDS            R0, #4; this
3743E4:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3743E8:  MOV             R6, R0
3743EA:  CBNZ            R6, loc_374414
3743EC:  LDR             R0, [R5,#0x1C]
3743EE:  MOVW            R1, #0x4BF; int
3743F2:  LDR.W           R0, [R0,#0x440]
3743F6:  ADDS            R0, #4; this
3743F8:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
3743FC:  MOV             R6, R0
3743FE:  CBNZ            R6, loc_374414
374400:  LDR             R0, [R5,#0x1C]
374402:  MOVW            R1, #0x4B3; int
374406:  LDR.W           R0, [R0,#0x440]
37440A:  ADDS            R0, #4; this
37440C:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
374410:  MOV             R6, R0
374412:  CBZ             R6, loc_37442C
374414:  LDR.W           R0, [R8]
374418:  LDR             R1, [R0,#0x14]
37441A:  MOV             R0, R8
37441C:  BLX             R1
37441E:  MOV             R8, R0
374420:  LDR             R0, [R6]
374422:  LDR             R1, [R0,#0x14]
374424:  MOV             R0, R6
374426:  BLX             R1
374428:  CMP             R8, R0
37442A:  BEQ             loc_374476
37442C:  LDR.W           R0, [R4,#0x440]
374430:  MOV.W           R1, #0x3A8; int
374434:  ADDS            R0, #4; this
374436:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
37443A:  CBZ             R0, loc_374444
37443C:  LDR             R1, [R5,#0x1C]
37443E:  LDR             R0, [R0,#0xC]
374440:  CMP             R0, R1
374442:  BEQ             loc_374476
374444:  LDR.W           R0, [R4,#0x440]; this
374448:  MOV.W           R1, #0x3E8; int
37444C:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
374450:  CBZ             R0, loc_37445A
374452:  LDR             R1, [R5,#0x1C]
374454:  LDR             R0, [R0,#0x10]
374456:  CMP             R0, R1
374458:  BEQ             loc_374476
37445A:  LDR.W           R0, [R4,#0x440]
37445E:  ADDS            R0, #4; this
374460:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
374464:  CBZ             R0, loc_374476
374466:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
37446A:  CMP             R0, #0
37446C:  IT NE
37446E:  MOVNE           R0, #1
374470:  POP.W           {R8}
374474:  POP             {R4-R7,PC}
374476:  MOVS            R0, #0
374478:  POP.W           {R8}
37447C:  POP             {R4-R7,PC}
