; =========================================================
; Game Engine Function: _ZN13CEventHandler24ComputeShotFiredResponseEP6CEventP5CTaskS3_
; Address            : 0x3801F4 - 0x380568
; =========================================================

3801F4:  PUSH            {R4-R7,LR}
3801F6:  ADD             R7, SP, #0xC
3801F8:  PUSH.W          {R8}
3801FC:  SUB             SP, SP, #0x10
3801FE:  LDR             R5, [R1,#0x10]
380200:  MOV             R8, R0
380202:  CMP             R5, #0
380204:  BEQ.W           loc_380530
380208:  LDRSH.W         R0, [R1,#0xA]
38020C:  MOVW            R1, #0x38E
380210:  CMP             R0, R1
380212:  BLE             loc_3802AA
380214:  CMP.W           R0, #0x3E8
380218:  BLT             loc_3802E8
38021A:  BEQ.W           loc_380372
38021E:  MOVW            R1, #0x404; unsigned int
380222:  CMP             R0, R1
380224:  BEQ.W           loc_3803E8
380228:  MOVW            R1, #0x451
38022C:  CMP             R0, R1
38022E:  ITTT EQ
380230:  LDRBEQ.W        R0, [R5,#0x3A]
380234:  ANDEQ.W         R0, R0, #7
380238:  CMPEQ           R0, #3
38023A:  BNE.W           loc_380530
38023E:  LDR.W           R0, [R8]
380242:  LDR.W           R1, [R5,#0x59C]
380246:  LDR.W           R0, [R0,#0x59C]
38024A:  CMP             R1, R0
38024C:  BEQ.W           loc_380530
380250:  MOV             R0, R5; this
380252:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
380256:  CMP             R0, #1
380258:  BEQ.W           loc_38052A
38025C:  LDR.W           R0, [R8]
380260:  LDRB.W          R1, [R0,#0x448]
380264:  CMP             R1, #2
380266:  BEQ             loc_38029A
380268:  LDRSB.W         R1, [R0,#0x71C]
38026C:  LDRSB.W         R6, [R5,#0x71C]
380270:  RSB.W           R1, R1, R1,LSL#3
380274:  ADD.W           R0, R0, R1,LSL#2
380278:  ADDW            R0, R0, #0x5A4; this
38027C:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
380280:  CMP             R0, #1
380282:  BNE             loc_38029A
380284:  RSB.W           R0, R6, R6,LSL#3
380288:  ADD.W           R0, R5, R0,LSL#2
38028C:  ADDW            R0, R0, #0x5A4; this
380290:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
380294:  CMP             R0, #1
380296:  BNE.W           loc_3804CC
38029A:  MOVS            R0, #dword_20; this
38029C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3802A0:  MOV             R1, R5; CPed *
3802A2:  MOVS            R2, #0; bool
3802A4:  BLX             j__ZN24CTaskComplexKillCriminalC2EP4CPedb; CTaskComplexKillCriminal::CTaskComplexKillCriminal(CPed *,bool)
3802A8:  B               loc_38052C
3802AA:  MOVW            R5, #0xFFFF
3802AE:  CMP.W           R0, #0x1AA
3802B2:  BGT             loc_380318
3802B4:  CMP             R0, #0xC8
3802B6:  BEQ.W           loc_38052A
3802BA:  MOVW            R1, #0x19F
3802BE:  CMP             R0, R1
3802C0:  BNE.W           loc_380530
3802C4:  LDR.W           R0, [R8]
3802C8:  MOVS            R1, #1; bool
3802CA:  LDR.W           R0, [R0,#0x440]; this
3802CE:  BLX             j__ZNK16CPedIntelligence11GetTaskDuckEb; CPedIntelligence::GetTaskDuck(bool)
3802D2:  CMP             R0, #0
3802D4:  BNE.W           loc_380530
3802D8:  MOVS            R0, #word_28; this
3802DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3802DE:  SXTH            R3, R5
3802E0:  MOVS            R1, #0
3802E2:  MOVW            R2, #0xBB8
3802E6:  B               loc_38043E
3802E8:  MOVW            R1, #0x38F; unsigned int
3802EC:  CMP             R0, R1
3802EE:  BEQ.W           loc_3803F6
3802F2:  CMP.W           R0, #0x398
3802F6:  BNE.W           loc_380530
3802FA:  MOVS            R0, #word_28; this
3802FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380300:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x380308)
380302:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x38030A)
380304:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
380306:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
380308:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
38030A:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
38030C:  LDR             R2, [R1]; float
38030E:  MOV             R1, R5; CEntity *
380310:  LDR             R3, [R3]; float
380312:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
380316:  B               loc_38052C
380318:  MOVW            R1, #0x1AB; unsigned int
38031C:  CMP             R0, R1
38031E:  BEQ.W           loc_380430
380322:  MOVW            R1, #0x2D6
380326:  CMP             R0, R1
380328:  BNE.W           loc_380530
38032C:  LDR.W           R1, [R8]; unsigned int
380330:  LDR.W           R0, [R1,#0x590]; this
380334:  CMP             R0, #0
380336:  BEQ.W           loc_380444
38033A:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
38033E:  CMP             R0, #1
380340:  BNE.W           loc_380444
380344:  MOVS            R0, #word_2C; this
380346:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38034A:  LDR.W           R1, [R8]
38034E:  MOVS            R2, #0x42200000
380354:  MOVS            R3, #2
380356:  LDR.W           R1, [R1,#0x590]; CVehicle *
38035A:  STRD.W          R3, R2, [SP,#0x20+var_20]; int
38035E:  MOVS            R2, #0; CEntity *
380360:  MOVS            R3, #1; int
380362:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
380366:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x38036C)
380368:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
38036A:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionFleeScene ...
38036C:  ADDS            R1, #8
38036E:  STR             R1, [R0]
380370:  B               loc_38052C
380372:  LDRB.W          R0, [R5,#0x3A]
380376:  AND.W           R0, R0, #7
38037A:  CMP             R0, #3
38037C:  BNE.W           loc_380530
380380:  LDR.W           R0, [R8]
380384:  LDR.W           R1, [R5,#0x59C]
380388:  LDR.W           R2, [R0,#0x59C]
38038C:  CMP             R1, R2
38038E:  BEQ.W           loc_380530
380392:  LDRB.W          R1, [R0,#0x448]
380396:  CMP             R1, #2
380398:  BEQ             loc_3803CA
38039A:  LDRSB.W         R1, [R0,#0x71C]
38039E:  LDRSB.W         R6, [R5,#0x71C]
3803A2:  RSB.W           R1, R1, R1,LSL#3
3803A6:  ADD.W           R0, R0, R1,LSL#2
3803AA:  ADDW            R0, R0, #0x5A4; this
3803AE:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
3803B2:  CMP             R0, #1
3803B4:  BNE             loc_3803CA
3803B6:  RSB.W           R0, R6, R6,LSL#3
3803BA:  ADD.W           R0, R5, R0,LSL#2
3803BE:  ADDW            R0, R0, #0x5A4; this
3803C2:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
3803C6:  CMP             R0, #1
3803C8:  BNE             loc_380488
3803CA:  MOVS            R0, #dword_38; this
3803CC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3803D0:  MOVS            R2, #0
3803D2:  MOVS            R1, #1
3803D4:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned int
3803D8:  MOV.W           R2, #0xFFFFFFFF; int
3803DC:  STR             R1, [SP,#0x20+var_18]; int
3803DE:  MOV             R1, R5; CPed *
3803E0:  MOVS            R3, #0; unsigned int
3803E2:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
3803E6:  B               loc_38052C
3803E8:  MOVS            R0, #dword_48; this
3803EA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3803EE:  MOV             R1, R5; CPed *
3803F0:  BLX             j__ZN32CTaskComplexKillPedOnFootStealthC2EP4CPed; CTaskComplexKillPedOnFootStealth::CTaskComplexKillPedOnFootStealth(CPed *)
3803F4:  B               loc_38052C
3803F6:  MOVS            R0, #dword_40; this
3803F8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3803FC:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x380408)
3803FE:  LDR.W           R12, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38040C)
380402:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x38040E)
380404:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
380406:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x380412)
380408:  ADD             R12, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38040A:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
38040C:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
38040E:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
380410:  LDR.W           R4, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
380414:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
380416:  LDR             R6, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
380418:  VLDR            S0, [R2]
38041C:  LDR             R2, [R4]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
38041E:  LDR             R3, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance
380420:  LDR             R1, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
380422:  STRD.W          R1, R2, [SP,#0x20+var_20]
380426:  MOV             R1, R5
380428:  MOVS            R2, #1
38042A:  VSTR            S0, [SP,#0x20+var_18]
38042E:  B               loc_380482
380430:  MOVS            R0, #word_28; this
380432:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
380436:  SXTH            R3, R5; __int16
380438:  MOVS            R1, #0; unsigned __int8
38043A:  MOVW            R2, #0xFFFF; unsigned __int16
38043E:  BLX             j__ZN15CTaskSimpleDuckC2Ehts; CTaskSimpleDuck::CTaskSimpleDuck(uchar,ushort,short)
380442:  B               loc_38052C
380444:  MOVS            R0, #dword_40; this
380446:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38044A:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x380454)
38044C:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x380456)
38044E:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x38045A)
380450:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
380452:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
380454:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x380462)
380456:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
380458:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
38045A:  LDR.W           R12, [R3]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
38045E:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
380460:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
380462:  LDR             R4, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
380464:  LDR.W           R5, [R8]
380468:  VLDR            S0, [R2]
38046C:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
38046E:  LDR.W           R6, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
380472:  LDR.W           R1, [R5,#0x590]; CEntity *
380476:  LDR             R3, [R4]; float
380478:  STRD.W          R2, R6, [SP,#0x20+var_20]; int
38047C:  VSTR            S0, [SP,#0x20+var_18]
380480:  MOVS            R2, #0; bool
380482:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
380486:  B               loc_38052C
380488:  LDR.W           R1, [R8]; CPed *
38048C:  LDR.W           R2, [R1,#0x484]
380490:  TST.W           R2, #0x100
380494:  ITT NE
380496:  LDRNE.W         R0, [R1,#0x590]; this
38049A:  CMPNE           R0, #0
38049C:  BEQ             loc_380516
38049E:  BLX             j__ZNK8CVehicle8IsDriverEPK4CPed; CVehicle::IsDriver(CPed const*)
3804A2:  CBZ             R0, loc_38050E
3804A4:  MOVS            R0, #word_2C; this
3804A6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3804AA:  LDR.W           R1, [R8]
3804AE:  MOVS            R2, #0x42200000
3804B4:  MOVS            R3, #2
3804B6:  LDR.W           R1, [R1,#0x590]; CVehicle *
3804BA:  STRD.W          R3, R2, [SP,#0x20+var_20]; int
3804BE:  MOVS            R2, #0; CEntity *
3804C0:  MOVS            R3, #1; int
3804C2:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
3804C6:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x3804CC)
3804C8:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
3804CA:  B               loc_38036A
3804CC:  MOVS            R0, #dword_40; this
3804CE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3804D2:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x3804DC)
3804D4:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x3804E0)
3804D6:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x3804E2)
3804D8:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
3804DA:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x3804E6)
3804DC:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
3804DE:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
3804E0:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
3804E2:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
3804E4:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
3804E6:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
3804E8:  LDR             R4, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
3804EA:  VLDR            S0, [R2]
3804EE:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
3804F0:  LDR             R3, [R1]; float
3804F2:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iFleeTime
3804F4:  STRD.W          R1, R2, [SP,#0x20+var_20]; int
3804F8:  MOV             R1, R5; CEntity *
3804FA:  MOVS            R2, #0; bool
3804FC:  VSTR            S0, [SP,#0x20+var_18]
380500:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
380504:  MOVS            R1, #4
380506:  STR.W           R0, [R8,#0x24]
38050A:  STR             R1, [R0,#0x30]
38050C:  B               loc_380530
38050E:  LDR.W           R1, [R8]; unsigned int
380512:  LDR.W           R2, [R1,#0x484]
380516:  LSLS            R0, R2, #0x17
380518:  BPL             loc_380538
38051A:  LDR.W           R0, [R1,#0x590]
38051E:  CMP             R0, #0
380520:  ITT NE
380522:  LDRNE.W         R0, [R0,#0x464]
380526:  CMPNE           R0, #0
380528:  BEQ             loc_380538
38052A:  MOVS            R0, #0
38052C:  STR.W           R0, [R8,#0x24]
380530:  ADD             SP, SP, #0x10
380532:  POP.W           {R8}
380536:  POP             {R4-R7,PC}
380538:  MOVS            R0, #dword_40; this
38053A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
38053E:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x380548)
380540:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x38054C)
380542:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x38054E)
380544:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
380546:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x380552)
380548:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
38054A:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
38054C:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
38054E:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
380550:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
380552:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
380554:  LDR             R4, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
380556:  VLDR            S0, [R2]
38055A:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
38055C:  LDR             R3, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance
38055E:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iFleeTime
380560:  STRD.W          R1, R2, [SP,#0x20+var_20]
380564:  MOV             R1, R5
380566:  B               loc_38047C
