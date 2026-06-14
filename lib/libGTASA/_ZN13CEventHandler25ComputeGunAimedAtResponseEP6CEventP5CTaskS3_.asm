; =========================================================
; Game Engine Function: _ZN13CEventHandler25ComputeGunAimedAtResponseEP6CEventP5CTaskS3_
; Address            : 0x381290 - 0x3817DE
; =========================================================

381290:  PUSH            {R4-R7,LR}
381292:  ADD             R7, SP, #0xC
381294:  PUSH.W          {R8}
381298:  SUB             SP, SP, #0x18; int
38129A:  MOV             R4, R0
38129C:  MOV             R6, R1
38129E:  LDR             R0, [R4]; this
3812A0:  MOV             R5, R2
3812A2:  LDR.W           R8, [R6,#0x10]
3812A6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3812AA:  CMP             R0, #0
3812AC:  BNE.W           loc_38174E; jumptable 0038147E cases 414,416-426
3812B0:  CMP             R5, #0
3812B2:  BEQ             loc_381376
3812B4:  LDR             R0, [R5]
3812B6:  LDR             R1, [R0,#0x14]
3812B8:  MOV             R0, R5
3812BA:  BLX             R1
3812BC:  MOVW            R1, #0x38D
3812C0:  CMP             R0, R1
3812C2:  BEQ             loc_3812D2
3812C4:  LDR             R0, [R5]
3812C6:  LDR             R1, [R0,#0x14]
3812C8:  MOV             R0, R5
3812CA:  BLX             R1
3812CC:  CMP.W           R0, #0x38C
3812D0:  BNE             loc_381314
3812D2:  MOVS            R0, #off_3C; this
3812D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3812D8:  LDR.W           R1, =(_ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr - 0x3812E8)
3812DC:  LDR.W           R2, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3812EE)
3812E0:  LDR.W           R3, =(_ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr - 0x3812F0)
3812E4:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr
3812E6:  LDR.W           R6, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3812F2)
3812EA:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3812EC:  ADD             R3, PC; _ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr
3812EE:  ADD             R6, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3812F0:  LDR             R2, [R2]; CTaskComplexFleeEntity::ms_fEntityPosChangeThreshold ...
3812F2:  LDR             R6, [R6]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod ...
3812F4:  LDR             R1, [R1]; CTaskComplexFleeEntity::ms_fSafeDistance ...
3812F6:  LDR             R5, [R3]; CTaskComplexFleeEntity::ms_iFleeTime ...
3812F8:  VLDR            S0, [R2]
3812FC:  LDR             R2, [R6]; CTaskComplexFleeEntity::ms_iEntityPosCheckPeriod
3812FE:  LDR             R3, [R1]; float
381300:  LDR             R1, [R5]; CTaskComplexFleeEntity::ms_iFleeTime
381302:  STRD.W          R1, R2, [SP,#0x28+var_28]; int
381306:  MOV             R1, R8; CEntity *
381308:  MOVS            R2, #0; bool
38130A:  VSTR            S0, [SP,#0x28+var_20]
38130E:  BLX             j__ZN22CTaskComplexFleeEntityC2EP7CEntitybfiif; CTaskComplexFleeEntity::CTaskComplexFleeEntity(CEntity *,bool,float,int,int,float)
381312:  B               loc_38174C
381314:  LDR             R0, [R5]
381316:  LDR             R1, [R0,#0x14]
381318:  MOV             R0, R5
38131A:  BLX             R1
38131C:  MOVW            R1, #0x38F
381320:  CMP             R0, R1
381322:  BEQ             loc_381334
381324:  LDR             R0, [R5]
381326:  LDR             R1, [R0,#0x14]
381328:  MOV             R0, R5
38132A:  BLX             R1
38132C:  MOVW            R1, #0x38E; unsigned int
381330:  CMP             R0, R1
381332:  BNE             loc_381376
381334:  MOVS            R0, #dword_40; this
381336:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38133A:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x38134A)
38133E:  LDR.W           R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381350)
381342:  LDR.W           R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x381352)
381346:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
381348:  LDR.W           R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x381354)
38134C:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
38134E:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
381350:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
381352:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
381354:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
381356:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
381358:  LDR             R5, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
38135A:  VLDR            S0, [R2]
38135E:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
381360:  LDR             R3, [R1]; float
381362:  LDR             R1, [R5]; CTaskComplexSmartFleeEntity::ms_iFleeTime
381364:  STRD.W          R1, R2, [SP,#0x28+var_28]; int
381368:  MOV             R1, R8; CEntity *
38136A:  MOVS            R2, #0; bool
38136C:  VSTR            S0, [SP,#0x28+var_20]
381370:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
381374:  B               loc_38174C
381376:  LDR             R0, [R4]
381378:  LDRB.W          R1, [R0,#0x448]
38137C:  CMP             R1, #1
38137E:  ITT EQ
381380:  LDRBEQ.W        R1, [R0,#0x485]
381384:  MOVSEQ.W        R1, R1,LSL#31; unsigned int
381388:  BEQ             loc_381430
38138A:  LDRSH.W         R0, [R6,#0xA]
38138E:  CMP.W           R0, #0x258
381392:  BGT             loc_3813C8
381394:  CMP.W           R0, #0x106
381398:  BGE             loc_381470
38139A:  CMP             R0, #0xC8
38139C:  BEQ.W           loc_3815B4
3813A0:  CMP.W           R0, #0x102
3813A4:  BEQ.W           loc_3815B8
3813A8:  MOVW            R1, #0x105; unsigned int
3813AC:  CMP             R0, R1
3813AE:  BNE.W           loc_38174E; jumptable 0038147E cases 414,416-426
3813B2:  MOVS            R0, #word_10; this
3813B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3813B8:  MOVS            R1, #0; bool
3813BA:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
3813BE:  LDR.W           R1, =(_ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr - 0x3813C8)
3813C2:  MOVS            R2, #6
3813C4:  ADD             R1, PC; _ZTV46CTaskComplexUseClosestFreeScriptedAttractorRun_ptr
3813C6:  B               loc_381676
3813C8:  MOVW            R1, #0x39E
3813CC:  CMP             R0, R1
3813CE:  BGT.W           loc_3814CE
3813D2:  MOV.W           R5, #0x800
3813D6:  CMP.W           R0, #0x38C
3813DA:  BGT.W           loc_381540
3813DE:  MOVW            R1, #0x259; unsigned int
3813E2:  CMP             R0, R1
3813E4:  BEQ.W           loc_3815C6
3813E8:  MOVW            R1, #0x2D6
3813EC:  CMP             R0, R1
3813EE:  BNE.W           loc_38174E; jumptable 0038147E cases 414,416-426
3813F2:  LDR             R1, [R4]; CPed *
3813F4:  LDR.W           R0, [R1,#0x590]; this
3813F8:  CMP             R0, #0
3813FA:  BEQ.W           loc_381758
3813FE:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
381402:  CMP             R0, #0
381404:  BEQ.W           loc_381756
381408:  MOVS            R0, #word_2C; this
38140A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38140E:  LDR             R1, [R4]
381410:  MOVS            R2, #0x42200000
381416:  MOVS            R3, #2
381418:  LDR.W           R1, [R1,#0x590]; CVehicle *
38141C:  STRD.W          R3, R2, [SP,#0x28+var_28]; int
381420:  MOVS            R2, #0; CEntity *
381422:  MOVS            R3, #1; int
381424:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
381428:  LDR.W           R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x381430)
38142C:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
38142E:  B               loc_3816B0
381430:  LDRSB.W         R1, [R0,#0x71C]
381434:  RSB.W           R1, R1, R1,LSL#3
381438:  ADD.W           R0, R0, R1,LSL#2
38143C:  ADDW            R0, R0, #0x5A4; this
381440:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
381444:  CMP.W           R8, #0
381448:  BEQ             loc_38138A
38144A:  CMP             R0, #0
38144C:  BNE             loc_38138A
38144E:  MOV             R0, R8; this
381450:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
381454:  CMP             R0, #1
381456:  BNE             loc_38138A
381458:  LDR             R0, [R4]
38145A:  MOV             R1, R8; CPed *
38145C:  LDR.W           R0, [R0,#0x440]; this
381460:  BLX             j__ZNK16CPedIntelligence14IsFriendlyWithERK4CPed; CPedIntelligence::IsFriendlyWith(CPed const&)
381464:  CMP             R0, #0
381466:  ITT EQ
381468:  MOVEQ.W         R0, #0x3E8
38146C:  STRHEQ          R0, [R6,#0xA]
38146E:  B               loc_38138A
381470:  SUB.W           R1, R0, #0x19C; switch 16 cases
381474:  CMP             R1, #0xF
381476:  BHI.W           def_38147E; jumptable 0038147E default case
38147A:  MOVW            R5, #0xFFFF
38147E:  TBH.W           [PC,R1,LSL#1]; switch jump
381482:  DCW 0x10; jump table for switch statement
381484:  DCW 0xFD
381486:  DCW 0x166
381488:  DCW 0x11B
38148A:  DCW 0x166
38148C:  DCW 0x166
38148E:  DCW 0x166
381490:  DCW 0x166
381492:  DCW 0x166
381494:  DCW 0x166
381496:  DCW 0x166
381498:  DCW 0x166
38149A:  DCW 0x166
38149C:  DCW 0x166
38149E:  DCW 0x166
3814A0:  DCW 0x12B
3814A2:  MOVS            R0, #dword_20; jumptable 0038147E case 412
3814A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3814A8:  LDR.W           R1, =(aCower - 0x3814B6); "Cower"
3814AC:  MOVS            R2, #0
3814AE:  MOV.W           R3, #0x19C
3814B2:  ADD             R1, PC; "Cower"
3814B4:  STRD.W          R3, R1, [SP,#0x28+var_28]
3814B8:  MOVS            R1, #0
3814BA:  STR             R2, [SP,#0x28+var_20]
3814BC:  MOVS            R2, #0x8F
3814BE:  MOV.W           R3, #0x40800000
3814C2:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
3814C6:  LDR.W           R1, =(_ZTV16CTaskSimpleCower_ptr - 0x3814CE)
3814CA:  ADD             R1, PC; _ZTV16CTaskSimpleCower_ptr
3814CC:  B               loc_3816B0
3814CE:  MOVW            R1, #0x403
3814D2:  CMP             R0, R1
3814D4:  BGT             loc_381596
3814D6:  MOVW            R1, #0x39F; unsigned int
3814DA:  CMP             R0, R1
3814DC:  BEQ             loc_3815D4
3814DE:  CMP.W           R0, #0x3E8
3814E2:  BNE.W           loc_38174E; jumptable 0038147E cases 414,416-426
3814E6:  LDR             R0, [R4]
3814E8:  LDRB.W          R1, [R0,#0x448]
3814EC:  CMP             R1, #2
3814EE:  BEQ             loc_381522
3814F0:  LDRSB.W         R1, [R0,#0x71C]
3814F4:  LDRSB.W         R5, [R8,#0x71C]
3814F8:  RSB.W           R1, R1, R1,LSL#3
3814FC:  ADD.W           R0, R0, R1,LSL#2
381500:  ADDW            R0, R0, #0x5A4; this
381504:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
381508:  CMP             R0, #1
38150A:  BNE             loc_381522
38150C:  RSB.W           R0, R5, R5,LSL#3
381510:  ADD.W           R0, R8, R0,LSL#2
381514:  ADDW            R0, R0, #0x5A4; this
381518:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
38151C:  CMP             R0, #1
38151E:  BNE.W           loc_3817AE
381522:  MOVS            R0, #dword_38; this
381524:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381528:  MOVS            R2, #0
38152A:  MOVS            R1, #1
38152C:  STRD.W          R2, R2, [SP,#0x28+var_28]; unsigned int
381530:  MOV.W           R2, #0xFFFFFFFF; int
381534:  STR             R1, [SP,#0x28+var_20]; int
381536:  MOV             R1, R8; CPed *
381538:  MOVS            R3, #0; unsigned int
38153A:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
38153E:  B               loc_38174C
381540:  MOVW            R1, #0x38D; unsigned int
381544:  CMP             R0, R1
381546:  BEQ             loc_381638
381548:  MOVW            R1, #0x38F; unsigned int
38154C:  CMP             R0, R1
38154E:  BNE.W           loc_38174E; jumptable 0038147E cases 414,416-426
381552:  LDR             R0, [R4]
381554:  LDR.W           R0, [R0,#0x490]
381558:  TST             R0, R5
38155A:  BEQ.W           loc_3816EC
38155E:  LDR.W           R0, [R8,#0x59C]
381562:  CMP             R0, #6
381564:  BNE.W           loc_3816EC
381568:  MOVS            R0, #dword_54; this
38156A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38156E:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x381578)
381570:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x38157C)
381572:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x381580)
381574:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
381576:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x381586)
381578:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
38157A:  LDR             R5, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x381588)
38157C:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
38157E:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38158E)
381582:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
381584:  ADD             R5, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
381586:  LDR.W           LR, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
38158A:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38158C:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381596)
38158E:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
381590:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
381592:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
381594:  B               loc_381600
381596:  MOVW            R1, #0x404; unsigned int
38159A:  CMP             R0, R1
38159C:  BEQ             loc_381650
38159E:  MOVW            R1, #0x451
3815A2:  CMP             R0, R1
3815A4:  BNE.W           loc_38174E; jumptable 0038147E cases 414,416-426
3815A8:  MOV             R0, R8; this
3815AA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
3815AE:  CMP             R0, #0
3815B0:  BEQ.W           loc_381704
3815B4:  MOVS            R0, #0
3815B6:  B               loc_38174C
3815B8:  MOVS            R0, #word_10; this
3815BA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3815BE:  MOVS            R1, #0; bool
3815C0:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
3815C4:  B               loc_38174C
3815C6:  MOVS            R0, #dword_1C; this
3815C8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3815CC:  MOV             R1, R8; CPed *
3815CE:  BLX             j__ZN29CTaskComplexReactToGunAimedAtC2EP4CPed; CTaskComplexReactToGunAimedAt::CTaskComplexReactToGunAimedAt(CPed *)
3815D2:  B               loc_38174C
3815D4:  MOVS            R0, #dword_54; this
3815D6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3815DA:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3815E4)
3815DC:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x3815E8)
3815DE:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3815EC)
3815E0:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3815E2:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x3815F2)
3815E4:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
3815E6:  LDR             R5, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x3815F4)
3815E8:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3815EA:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3815FA)
3815EE:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
3815F0:  ADD             R5, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
3815F2:  LDR.W           LR, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
3815F6:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3815F8:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381602)
3815FA:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
3815FC:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
3815FE:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
381600:  LDR             R6, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime ...
381602:  LDR             R5, [R5]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime ...
381604:  LDR.W           R12, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
381608:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
38160A:  LDR             R3, [R3]; float
38160C:  VLDR            S2, [R2]
381610:  VLDR            S0, [R1]
381614:  LDR.W           R1, [LR]; CTaskComplexSmartFleeEntity::ms_iFleeTime
381618:  LDR             R2, [R6]; CTaskComplexFleeAnyMeans::ms_iShootTime
38161A:  LDR             R6, [R5]; CTaskComplexFleeAnyMeans::ms_iShootRecoverTime
38161C:  LDR.W           R5, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
381620:  STR             R5, [SP,#0x28+var_18]; int
381622:  STMEA.W         SP, {R1,R2,R6}
381626:  MOV             R1, R8; CEntity *
381628:  MOVS            R2, #1; bool
38162A:  VSTR            S0, [SP,#0x28+var_14]
38162E:  VSTR            S2, [SP,#0x28+var_1C]
381632:  BLX             j__ZN24CTaskComplexFleeAnyMeansC2EP7CEntitybfiiifif; CTaskComplexFleeAnyMeans::CTaskComplexFleeAnyMeans(CEntity *,bool,float,int,int,int,float,int,float)
381636:  B               loc_38174C
381638:  MOVS            R0, #off_3C; this
38163A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38163E:  LDR             R1, =(_ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr - 0x381648)
381640:  LDR             R2, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x38164C)
381642:  LDR             R3, =(_ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr - 0x38164E)
381644:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr
381646:  LDR             R6, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x381650)
381648:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
38164A:  ADD             R3, PC; _ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr
38164C:  ADD             R6, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38164E:  B               loc_3812F0
381650:  MOVS            R0, #dword_48; this
381652:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381656:  MOV             R1, R8; CPed *
381658:  BLX             j__ZN32CTaskComplexKillPedOnFootStealthC2EP4CPed; CTaskComplexKillPedOnFootStealth::CTaskComplexKillPedOnFootStealth(CPed *)
38165C:  B               loc_38174C
38165E:  CMP.W           R0, #0x106; jumptable 0038147E default case
381662:  BNE             loc_38174E; jumptable 0038147E cases 414,416-426
381664:  MOVS            R0, #word_10; this
381666:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38166A:  MOVS            R1, #0; bool
38166C:  BLX             j__ZN43CTaskComplexUseClosestFreeScriptedAttractorC2Eb_0; CTaskComplexUseClosestFreeScriptedAttractor::CTaskComplexUseClosestFreeScriptedAttractor(bool)
381670:  LDR             R1, =(_ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr - 0x381678)
381672:  MOVS            R2, #7
381674:  ADD             R1, PC; _ZTV49CTaskComplexUseClosestFreeScriptedAttractorSprint_ptr
381676:  LDR             R1, [R1]; `vtable for'CTaskComplexUseClosestFreeScriptedAttractorRun
381678:  STR             R2, [R0,#0xC]
38167A:  B               loc_3816B2
38167C:  MOVS            R0, #dword_34; jumptable 0038147E case 413
38167E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381682:  LDR             R1, =(aHandsup - 0x381690); "HandsUp"
381684:  MOVS            R5, #0
381686:  MOVS            R2, #0
381688:  MOVW            R3, #0x19D
38168C:  ADD             R1, PC; "HandsUp"
38168E:  MOVW            R6, #0x1388
381692:  MOVT            R5, #0xC080
381696:  STRD.W          R5, R6, [SP,#0x28+var_28]; float
38169A:  STRD.W          R3, R1, [SP,#0x28+var_20]; int
38169E:  MOVS            R1, #0; int
3816A0:  STR             R2, [SP,#0x28+var_18]; int
3816A2:  MOVS            R2, #0x8E; int
3816A4:  MOV.W           R3, #0x40800000; int
3816A8:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
3816AC:  LDR             R1, =(_ZTV18CTaskSimpleHandsUp_ptr - 0x3816B2)
3816AE:  ADD             R1, PC; _ZTV18CTaskSimpleHandsUp_ptr
3816B0:  LDR             R1, [R1]; `vtable for'CTaskSimpleCower
3816B2:  ADDS            R1, #8
3816B4:  STR             R1, [R0]
3816B6:  B               loc_38174C
3816B8:  LDR             R0, [R4]; jumptable 0038147E case 415
3816BA:  MOVS            R1, #1; bool
3816BC:  LDR.W           R0, [R0,#0x440]; this
3816C0:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
3816C4:  CMP             R0, #0
3816C6:  BNE             loc_38174E; jumptable 0038147E cases 414,416-426
3816C8:  MOVS            R0, #word_28; this
3816CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3816CE:  SXTH            R3, R5
3816D0:  MOVS            R1, #0
3816D2:  MOVW            R2, #0x1388
3816D6:  B               loc_3816E6
3816D8:  MOVS            R0, #word_28; jumptable 0038147E case 427
3816DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3816DE:  SXTH            R3, R5; __int16
3816E0:  MOVS            R1, #0; unsigned __int8
3816E2:  MOVW            R2, #0xFFFF; unsigned __int16
3816E6:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
3816EA:  B               loc_38174C
3816EC:  MOVS            R0, #dword_40; this
3816EE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3816F2:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3816FC)
3816F4:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381700)
3816F6:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x381702)
3816F8:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3816FA:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x381704)
3816FC:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3816FE:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
381700:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
381702:  B               loc_381352
381704:  LDR             R0, [R4]
381706:  LDRB.W          R1, [R0,#0x448]
38170A:  CMP             R1, #2
38170C:  BEQ             loc_38173E
38170E:  LDRSB.W         R1, [R0,#0x71C]
381712:  LDRSB.W         R5, [R8,#0x71C]
381716:  RSB.W           R1, R1, R1,LSL#3
38171A:  ADD.W           R0, R0, R1,LSL#2
38171E:  ADDW            R0, R0, #0x5A4; this
381722:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
381726:  CMP             R0, #1
381728:  BNE             loc_38173E
38172A:  RSB.W           R0, R5, R5,LSL#3
38172E:  ADD.W           R0, R8, R0,LSL#2
381732:  ADDW            R0, R0, #0x5A4; this
381736:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
38173A:  CMP             R0, #1
38173C:  BNE             loc_3817C6
38173E:  MOVS            R0, #dword_20; this
381740:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
381744:  MOV             R1, R8; CPed *
381746:  MOVS            R2, #0; bool
381748:  BLX             j__ZN24CTaskComplexKillCriminalC2EP4CPedb; CTaskComplexKillCriminal::CTaskComplexKillCriminal(CPed *,bool)
38174C:  STR             R0, [R4,#0x24]
38174E:  ADD             SP, SP, #0x18; jumptable 0038147E cases 414,416-426
381750:  POP.W           {R8}
381754:  POP             {R4-R7,PC}
381756:  LDR             R1, [R4]; unsigned int
381758:  LDR.W           R0, [R1,#0x490]
38175C:  TST             R0, R5
38175E:  BEQ             loc_381796
381760:  LDR.W           R0, [R8,#0x59C]
381764:  CMP             R0, #6
381766:  BNE             loc_381796
381768:  MOVS            R0, #dword_54; this
38176A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38176E:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x381778)
381770:  LDR             R2, =(_ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr - 0x38177C)
381772:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x381780)
381774:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
381776:  LDR             R6, =(_ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr - 0x381786)
381778:  ADD             R2, PC; _ZN24CTaskComplexFleeAnyMeans16ms_fStealCarDistE_ptr
38177A:  LDR             R5, =(_ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr - 0x381788)
38177C:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
38177E:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38178E)
381782:  ADD             R6, PC; _ZN24CTaskComplexFleeAnyMeans13ms_iShootTimeE_ptr
381784:  ADD             R5, PC; _ZN24CTaskComplexFleeAnyMeans20ms_iShootRecoverTimeE_ptr
381786:  LDR.W           LR, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
38178A:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38178C:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x381796)
38178E:  LDR             R2, [R2]; CTaskComplexFleeAnyMeans::ms_fStealCarDist ...
381790:  LDR             R3, [R3]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
381792:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
381794:  B               loc_381600
381796:  MOVS            R0, #dword_40; this
381798:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38179C:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3817A6)
38179E:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3817AA)
3817A0:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3817AC)
3817A2:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3817A4:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3817AE)
3817A6:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3817A8:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3817AA:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3817AC:  B               loc_381352
3817AE:  MOVS            R0, #off_3C; this
3817B0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3817B4:  LDR             R1, =(_ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr - 0x3817BE)
3817B6:  LDR             R2, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3817C2)
3817B8:  LDR             R3, =(_ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr - 0x3817C4)
3817BA:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr
3817BC:  LDR             R6, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3817C6)
3817BE:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3817C0:  ADD             R3, PC; _ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr
3817C2:  ADD             R6, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3817C4:  B               loc_3812F0
3817C6:  MOVS            R0, #off_3C; this
3817C8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3817CC:  LDR             R1, =(_ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr - 0x3817D6)
3817CE:  LDR             R2, =(_ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3817DA)
3817D0:  LDR             R3, =(_ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr - 0x3817DC)
3817D2:  ADD             R1, PC; _ZN22CTaskComplexFleeEntity16ms_fSafeDistanceE_ptr
3817D4:  LDR             R6, =(_ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3817DE)
3817D6:  ADD             R2, PC; _ZN22CTaskComplexFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3817D8:  ADD             R3, PC; _ZN22CTaskComplexFleeEntity12ms_iFleeTimeE_ptr
3817DA:  ADD             R6, PC; _ZN22CTaskComplexFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3817DC:  B               loc_3812F0
