; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorFixedPosE13CreateSubTaskEiP4CPed
; Address            : 0x49E328 - 0x49E528
; =========================================================

49E328:  PUSH            {R4-R7,LR}
49E32A:  ADD             R7, SP, #0xC
49E32C:  PUSH.W          {R8,R9,R11}
49E330:  SUB             SP, SP, #0x20; float
49E332:  MOV             R5, R0
49E334:  MOVW            R0, #0x2CE
49E338:  MOV             R6, R2
49E33A:  MOVS            R4, #0
49E33C:  CMP             R1, R0
49E33E:  BGT             loc_49E360
49E340:  CMP             R1, #0xF3
49E342:  BGT             loc_49E3CA
49E344:  CMP             R1, #0xCB
49E346:  BEQ             loc_49E428
49E348:  CMP             R1, #0xDB
49E34A:  BNE.W           loc_49E51E
49E34E:  MOVS            R0, #dword_1C; this
49E350:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E354:  MOV.W           R1, #0x3E8; int
49E358:  MOV             R4, R0
49E35A:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49E35E:  B               loc_49E51E
49E360:  MOVW            R0, #0x389
49E364:  CMP             R1, R0
49E366:  BGT             loc_49E3F6
49E368:  MOVW            R0, #0x2CF
49E36C:  CMP             R1, R0
49E36E:  BEQ             loc_49E446
49E370:  MOVW            R0, #0x387
49E374:  CMP             R1, R0
49E376:  BNE.W           loc_49E51E
49E37A:  MOVS            R0, #word_28; this
49E37C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E380:  ADD.W           R9, SP, #0x38+var_24
49E384:  LDR             R2, [R5,#0xC]; CEntity *
49E386:  MOV             R4, R0
49E388:  ADD.W           R0, R5, #0x40 ; '@'; this
49E38C:  MOV             R1, R6; CPed *
49E38E:  MOV             R3, R9; CVector *
49E390:  LDR.W           R8, [R5,#0x50]
49E394:  BLX             j__ZNK32CEntitySeekPosCalculatorFixedPos20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorFixedPos::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49E398:  LDR             R3, [R5,#0x18]; float
49E39A:  MOVS            R0, #0
49E39C:  VLDR            S0, [R5,#0x1C]
49E3A0:  MOV             R1, R8; int
49E3A2:  STRD.W          R0, R0, [SP,#0x38+var_34]; bool
49E3A6:  MOV             R0, R4; this
49E3A8:  MOV             R2, R9; CVector *
49E3AA:  VSTR            S0, [SP,#0x38+var_38]
49E3AE:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
49E3B2:  LDRB.W          R0, [R5,#0x54]
49E3B6:  LDRB.W          R1, [R4,#0x24]
49E3BA:  AND.W           R0, R0, #8
49E3BE:  AND.W           R1, R1, #0xF7; unsigned int
49E3C2:  ORRS            R0, R1
49E3C4:  STRB.W          R0, [R4,#0x24]
49E3C8:  B               loc_49E51E
49E3CA:  CMP             R1, #0xF4
49E3CC:  BEQ             loc_49E476
49E3CE:  CMP.W           R1, #0x2C0
49E3D2:  BNE.W           loc_49E51E
49E3D6:  MOVS            R0, #dword_34; this
49E3D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E3DC:  LDR.W           R1, [R6,#0x590]; CVehicle *
49E3E0:  MOV             R4, R0
49E3E2:  MOVS            R0, #0
49E3E4:  MOVS            R2, #1
49E3E6:  STRD.W          R2, R0, [SP,#0x38+var_38]; bool
49E3EA:  MOV             R0, R4; this
49E3EC:  MOVS            R2, #0; int
49E3EE:  MOVS            R3, #0; int
49E3F0:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
49E3F4:  B               loc_49E51E
49E3F6:  MOVW            R0, #0x38A
49E3FA:  CMP             R1, R0
49E3FC:  BEQ             loc_49E4D6
49E3FE:  CMP.W           R1, #0x398
49E402:  BNE.W           loc_49E51E
49E406:  MOVS            R0, #word_28; this
49E408:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E40C:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x49E416)
49E40E:  MOV             R4, R0
49E410:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49E418)
49E412:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
49E414:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
49E416:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49E418:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49E41A:  LDR             R1, [R5,#0xC]; CEntity *
49E41C:  LDR             R3, [R3]; float
49E41E:  LDR             R2, [R0]; float
49E420:  MOV             R0, R4; this
49E422:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
49E426:  B               loc_49E51E
49E428:  MOVS            R0, #dword_20; this
49E42A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E42E:  MOV             R4, R0
49E430:  MOV.W           R0, #0x41000000
49E434:  STR             R0, [SP,#0x38+var_38]; float
49E436:  MOV             R0, R4; this
49E438:  MOV.W           R1, #0x7D0; int
49E43C:  MOVS            R2, #0; bool
49E43E:  MOVS            R3, #0; bool
49E440:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49E444:  B               loc_49E51E
49E446:  MOVS            R0, #dword_70; this
49E448:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E44C:  LDR.W           R1, [R6,#0x590]; CVehicle *
49E450:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49E452:  MOVS            R3, #0; bool
49E454:  MOV             R4, R0
49E456:  MOVS            R5, #0
49E458:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49E45C:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49E468)
49E45E:  MOV.W           R1, #0x7D0; unsigned int
49E462:  STR             R1, [R4,#0x60]
49E464:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49E466:  STRH.W          R5, [R4,#0x6C]
49E46A:  STRD.W          R5, R5, [R4,#0x64]
49E46E:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed ...
49E470:  ADDS            R0, #8
49E472:  STR             R0, [R4]
49E474:  B               loc_49E51E
49E476:  MOVS            R0, #dword_40; this
49E478:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E47C:  MOV             R4, R0
49E47E:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
49E482:  LDRB.W          R0, [R5,#0x54]
49E486:  LSLS            R0, R0, #0x1E
49E488:  BPL             loc_49E4B2
49E48A:  MOVS            R0, #word_28; this
49E48C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E490:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x49E49A)
49E492:  MOV             R6, R0
49E494:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49E49C)
49E496:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
49E498:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
49E49A:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49E49C:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49E49E:  LDR             R1, [R5,#0xC]; CEntity *
49E4A0:  LDR             R3, [R3]; float
49E4A2:  LDR             R2, [R0]; float
49E4A4:  MOV             R0, R6; this
49E4A6:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
49E4AA:  MOV             R0, R4; this
49E4AC:  MOV             R1, R6; CTask *
49E4AE:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
49E4B2:  MOVS            R0, #dword_20; this
49E4B4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E4B8:  MOV             R5, R0
49E4BA:  MOV.W           R0, #0x41000000
49E4BE:  STR             R0, [SP,#0x38+var_38]; float
49E4C0:  MOV             R0, R5; this
49E4C2:  MOVS            R1, #0x64 ; 'd'; int
49E4C4:  MOVS            R2, #0; bool
49E4C6:  MOVS            R3, #0; bool
49E4C8:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49E4CC:  MOV             R0, R4; this
49E4CE:  MOV             R1, R5; CTask *
49E4D0:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
49E4D4:  B               loc_49E51E
49E4D6:  MOVS            R0, #dword_60; this
49E4D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49E4DC:  ADD.W           R9, SP, #0x38+var_24
49E4E0:  LDR             R2, [R5,#0xC]; CEntity *
49E4E2:  MOV             R4, R0
49E4E4:  ADD.W           R0, R5, #0x40 ; '@'; this
49E4E8:  MOV             R1, R6; CPed *
49E4EA:  MOV             R3, R9; CVector *
49E4EC:  LDR.W           R8, [R5,#0x50]
49E4F0:  BLX             j__ZNK32CEntitySeekPosCalculatorFixedPos20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorFixedPos::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49E4F4:  LDR             R3, [R5,#0x18]; float
49E4F6:  MOVS            R0, #1
49E4F8:  VLDR            S0, [R5,#0x1C]
49E4FC:  MOV.W           R1, #0xFFFFFFFF
49E500:  VLDR            S2, [R5,#0x24]
49E504:  MOVS            R2, #0
49E506:  STRD.W          R2, R1, [SP,#0x38+var_30]; bool
49E50A:  MOV             R1, R8; int
49E50C:  STR             R0, [SP,#0x38+var_28]; bool
49E50E:  MOV             R0, R4; this
49E510:  MOV             R2, R9; CVector *
49E512:  VSTR            S0, [SP,#0x38+var_38]
49E516:  VSTR            S2, [SP,#0x38+var_34]
49E51A:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
49E51E:  MOV             R0, R4
49E520:  ADD             SP, SP, #0x20 ; ' '
49E522:  POP.W           {R8,R9,R11}
49E526:  POP             {R4-R7,PC}
