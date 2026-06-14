; =========================================================
; Game Engine Function: _ZN15CMissionCleanup42CheckIfCollisionHasLoadedForMissionObjectsEv
; Address            : 0x327368 - 0x3274FC
; =========================================================

327368:  PUSH            {R4-R7,LR}
32736A:  ADD             R7, SP, #0xC
32736C:  PUSH.W          {R8-R11}
327370:  SUB             SP, SP, #0xC
327372:  ADDS            R6, R0, #4
327374:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x32737C)
327376:  MOVS            R5, #0
327378:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
32737A:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
32737C:  STR             R0, [SP,#0x28+var_20]
32737E:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x327384)
327380:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
327382:  LDR             R0, [R0]; CPools::ms_pPedPool ...
327384:  STR             R0, [SP,#0x28+var_24]
327386:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32738C)
327388:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
32738A:  LDR.W           R10, [R0]; CPools::ms_pVehiclePool ...
32738E:  B               loc_327398
327390:  MOV             R0, R9; this
327392:  BLX             j__ZN5CBike19PlaceOnRoadProperlyEv; CBike::PlaceOnRoadProperly(void)
327396:  B               loc_3274E8
327398:  LDRB.W          R0, [R6,#-4]
32739C:  CMP             R0, #3
32739E:  BEQ             loc_32744A
3273A0:  CMP             R0, #2
3273A2:  BEQ             loc_327468
3273A4:  CMP             R0, #1
3273A6:  BNE.W           loc_3274E8
3273AA:  LDR             R1, [R6]
3273AC:  CMP             R1, #0
3273AE:  BLT.W           loc_3274E8
3273B2:  LDR.W           R0, [R10]; CPools::ms_pVehiclePool
3273B6:  LSRS            R2, R1, #8
3273B8:  UXTB            R1, R1
3273BA:  LDR             R3, [R0,#4]
3273BC:  LDRB            R3, [R3,R2]
3273BE:  CMP             R3, R1
3273C0:  BNE.W           loc_3274E8
3273C4:  MOVW            R1, #0xA2C
3273C8:  LDR             R0, [R0]
3273CA:  MLA.W           R9, R2, R1, R0
3273CE:  CMP.W           R9, #0
3273D2:  BEQ.W           loc_3274E8
3273D6:  LDRB.W          R0, [R9,#0x1E]
3273DA:  LSLS            R0, R0, #0x1D
3273DC:  BPL.W           loc_3274E8
3273E0:  MOV             R4, R9
3273E2:  LDR.W           R2, [R4,#0x14]!; int
3273E6:  SUB.W           R8, R4, #0x10
3273EA:  MOV             R11, R4
3273EC:  CMP             R2, #0
3273EE:  LDRB.W          R1, [R11,#0x1F]!; CVector *
3273F2:  MOV             R0, R8
3273F4:  IT NE
3273F6:  ADDNE.W         R0, R2, #0x30 ; '0'; this
3273FA:  BLX             j__ZN9CColStore18HasCollisionLoadedERK7CVectori; CColStore::HasCollisionLoaded(CVector const&,int)
3273FE:  CMP             R0, #1
327400:  BNE             loc_3274E8
327402:  LDR             R0, [R4]
327404:  LDRB.W          R1, [R11]; CVector *
327408:  CMP             R0, #0
32740A:  IT NE
32740C:  ADDNE.W         R8, R0, #0x30 ; '0'
327410:  MOV             R0, R8; this
327412:  BLX             j__ZN9CIplStore14HaveIplsLoadedERK7CVectori; CIplStore::HaveIplsLoaded(CVector const&,int)
327416:  CMP             R0, #1
327418:  BNE             loc_3274E8
32741A:  ADD.W           R0, R9, #0x1C
32741E:  LDR             R1, [R0]
327420:  TST.W           R1, #4
327424:  BIC.W           R2, R1, #0x40000
327428:  STR             R2, [R0]
32742A:  ITT EQ
32742C:  MOVEQ           R0, R9; this
32742E:  BLXEQ           j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
327432:  LDR.W           R0, [R9,#0x5A0]
327436:  CMP             R0, #0xB
327438:  BEQ             loc_327442
32743A:  CMP             R0, #9
32743C:  BEQ             loc_327390
32743E:  CMP             R0, #0
327440:  BNE             loc_3274E8
327442:  MOV             R0, R9; this
327444:  BLX             j__ZN11CAutomobile19PlaceOnRoadProperlyEv; CAutomobile::PlaceOnRoadProperly(void)
327448:  B               loc_3274E8
32744A:  LDR             R1, [R6]
32744C:  CMP             R1, #0
32744E:  BLT             loc_3274E8
327450:  LDR             R0, [SP,#0x28+var_20]
327452:  LSRS            R2, R1, #8
327454:  UXTB            R1, R1
327456:  LDR             R0, [R0]
327458:  LDR             R3, [R0,#4]
32745A:  LDRB            R3, [R3,R2]
32745C:  CMP             R3, R1
32745E:  BNE             loc_3274E8
327460:  LDR             R0, [R0]
327462:  MOV.W           R1, #0x1A4
327466:  B               loc_327484
327468:  LDR             R1, [R6]
32746A:  CMP             R1, #0
32746C:  BLT             loc_3274E8
32746E:  LDR             R0, [SP,#0x28+var_24]
327470:  LSRS            R2, R1, #8
327472:  UXTB            R1, R1
327474:  LDR             R0, [R0]
327476:  LDR             R3, [R0,#4]
327478:  LDRB            R3, [R3,R2]
32747A:  CMP             R3, R1
32747C:  BNE             loc_3274E8
32747E:  LDR             R0, [R0]
327480:  MOVW            R1, #0x7CC
327484:  MLA.W           R9, R2, R1, R0
327488:  CMP.W           R9, #0
32748C:  BEQ             loc_3274E8
32748E:  LDRB.W          R0, [R9,#0x1E]
327492:  LSLS            R0, R0, #0x1D
327494:  BPL             loc_3274E8
327496:  MOV             R4, R9
327498:  LDR.W           R2, [R4,#0x14]!; int
32749C:  SUB.W           R8, R4, #0x10
3274A0:  MOV             R11, R4
3274A2:  CMP             R2, #0
3274A4:  LDRB.W          R1, [R11,#0x1F]!; CVector *
3274A8:  MOV             R0, R8
3274AA:  IT NE
3274AC:  ADDNE.W         R0, R2, #0x30 ; '0'; this
3274B0:  BLX             j__ZN9CColStore18HasCollisionLoadedERK7CVectori; CColStore::HasCollisionLoaded(CVector const&,int)
3274B4:  CMP             R0, #1
3274B6:  BNE             loc_3274E8
3274B8:  LDR             R0, [R4]
3274BA:  LDRB.W          R1, [R11]; CVector *
3274BE:  CMP             R0, #0
3274C0:  IT NE
3274C2:  ADDNE.W         R8, R0, #0x30 ; '0'
3274C6:  MOV             R0, R8; this
3274C8:  BLX             j__ZN9CIplStore14HaveIplsLoadedERK7CVectori; CIplStore::HaveIplsLoaded(CVector const&,int)
3274CC:  CMP             R0, #1
3274CE:  BNE             loc_3274E8
3274D0:  ADD.W           R0, R9, #0x1C
3274D4:  LDR             R1, [R0]
3274D6:  TST.W           R1, #4
3274DA:  BIC.W           R2, R1, #0x40000
3274DE:  STR             R2, [R0]
3274E0:  ITT EQ
3274E2:  MOVEQ           R0, R9; this
3274E4:  BLXEQ           j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
3274E8:  ADDS            R5, #1
3274EA:  ADDS            R6, #8
3274EC:  UXTH            R0, R5
3274EE:  CMP             R0, #0x4B ; 'K'
3274F0:  BCC.W           loc_327398
3274F4:  ADD             SP, SP, #0xC
3274F6:  POP.W           {R8-R11}
3274FA:  POP             {R4-R7,PC}
