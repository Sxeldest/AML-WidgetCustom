; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE13CreateSubTaskEiP4CPed
; Address            : 0x49D2B4 - 0x49D4B4
; =========================================================

49D2B4:  PUSH            {R4-R7,LR}
49D2B6:  ADD             R7, SP, #0xC
49D2B8:  PUSH.W          {R8,R9,R11}
49D2BC:  SUB             SP, SP, #0x20; float
49D2BE:  MOV             R5, R0
49D2C0:  MOVW            R0, #0x2CE
49D2C4:  MOV             R6, R2
49D2C6:  MOVS            R4, #0
49D2C8:  CMP             R1, R0
49D2CA:  BGT             loc_49D2EC
49D2CC:  CMP             R1, #0xF3
49D2CE:  BGT             loc_49D356
49D2D0:  CMP             R1, #0xCB
49D2D2:  BEQ             loc_49D3B4
49D2D4:  CMP             R1, #0xDB
49D2D6:  BNE.W           loc_49D4AA
49D2DA:  MOVS            R0, #dword_1C; this
49D2DC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D2E0:  MOV.W           R1, #0x3E8; int
49D2E4:  MOV             R4, R0
49D2E6:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49D2EA:  B               loc_49D4AA
49D2EC:  MOVW            R0, #0x389
49D2F0:  CMP             R1, R0
49D2F2:  BGT             loc_49D382
49D2F4:  MOVW            R0, #0x2CF
49D2F8:  CMP             R1, R0
49D2FA:  BEQ             loc_49D3D2
49D2FC:  MOVW            R0, #0x387
49D300:  CMP             R1, R0
49D302:  BNE.W           loc_49D4AA
49D306:  MOVS            R0, #word_28; this
49D308:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D30C:  ADD.W           R9, SP, #0x38+var_24
49D310:  LDR             R2, [R5,#0xC]; CEntity *
49D312:  MOV             R4, R0
49D314:  ADD.W           R0, R5, #0x40 ; '@'; this
49D318:  MOV             R1, R6; CPed *
49D31A:  MOV             R3, R9; CVector *
49D31C:  LDR.W           R8, [R5,#0x50]
49D320:  BLX             j__ZNK31CEntitySeekPosCalculatorDriving20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorDriving::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49D324:  LDR             R3, [R5,#0x18]; float
49D326:  MOVS            R0, #0
49D328:  VLDR            S0, [R5,#0x1C]
49D32C:  MOV             R1, R8; int
49D32E:  STRD.W          R0, R0, [SP,#0x38+var_34]; bool
49D332:  MOV             R0, R4; this
49D334:  MOV             R2, R9; CVector *
49D336:  VSTR            S0, [SP,#0x38+var_38]
49D33A:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
49D33E:  LDRB.W          R0, [R5,#0x54]
49D342:  LDRB.W          R1, [R4,#0x24]
49D346:  AND.W           R0, R0, #8
49D34A:  AND.W           R1, R1, #0xF7; unsigned int
49D34E:  ORRS            R0, R1
49D350:  STRB.W          R0, [R4,#0x24]
49D354:  B               loc_49D4AA
49D356:  CMP             R1, #0xF4
49D358:  BEQ             loc_49D402
49D35A:  CMP.W           R1, #0x2C0
49D35E:  BNE.W           loc_49D4AA
49D362:  MOVS            R0, #dword_34; this
49D364:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D368:  LDR.W           R1, [R6,#0x590]; CVehicle *
49D36C:  MOV             R4, R0
49D36E:  MOVS            R0, #0
49D370:  MOVS            R2, #1
49D372:  STRD.W          R2, R0, [SP,#0x38+var_38]; bool
49D376:  MOV             R0, R4; this
49D378:  MOVS            R2, #0; int
49D37A:  MOVS            R3, #0; int
49D37C:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
49D380:  B               loc_49D4AA
49D382:  MOVW            R0, #0x38A
49D386:  CMP             R1, R0
49D388:  BEQ             loc_49D462
49D38A:  CMP.W           R1, #0x398
49D38E:  BNE.W           loc_49D4AA
49D392:  MOVS            R0, #word_28; this
49D394:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D398:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x49D3A2)
49D39A:  MOV             R4, R0
49D39C:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49D3A4)
49D39E:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
49D3A0:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
49D3A2:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49D3A4:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49D3A6:  LDR             R1, [R5,#0xC]; CEntity *
49D3A8:  LDR             R3, [R3]; float
49D3AA:  LDR             R2, [R0]; float
49D3AC:  MOV             R0, R4; this
49D3AE:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
49D3B2:  B               loc_49D4AA
49D3B4:  MOVS            R0, #dword_20; this
49D3B6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D3BA:  MOV             R4, R0
49D3BC:  MOV.W           R0, #0x41000000
49D3C0:  STR             R0, [SP,#0x38+var_38]; float
49D3C2:  MOV             R0, R4; this
49D3C4:  MOV.W           R1, #0x7D0; int
49D3C8:  MOVS            R2, #0; bool
49D3CA:  MOVS            R3, #0; bool
49D3CC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49D3D0:  B               loc_49D4AA
49D3D2:  MOVS            R0, #dword_70; this
49D3D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D3D8:  LDR.W           R1, [R6,#0x590]; CVehicle *
49D3DC:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49D3DE:  MOVS            R3, #0; bool
49D3E0:  MOV             R4, R0
49D3E2:  MOVS            R5, #0
49D3E4:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49D3E8:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49D3F4)
49D3EA:  MOV.W           R1, #0x7D0; unsigned int
49D3EE:  STR             R1, [R4,#0x60]
49D3F0:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49D3F2:  STRH.W          R5, [R4,#0x6C]
49D3F6:  STRD.W          R5, R5, [R4,#0x64]
49D3FA:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed ...
49D3FC:  ADDS            R0, #8
49D3FE:  STR             R0, [R4]
49D400:  B               loc_49D4AA
49D402:  MOVS            R0, #dword_40; this
49D404:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D408:  MOV             R4, R0
49D40A:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
49D40E:  LDRB.W          R0, [R5,#0x54]
49D412:  LSLS            R0, R0, #0x1E
49D414:  BPL             loc_49D43E
49D416:  MOVS            R0, #word_28; this
49D418:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D41C:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x49D426)
49D41E:  MOV             R6, R0
49D420:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49D428)
49D422:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
49D424:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
49D426:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49D428:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49D42A:  LDR             R1, [R5,#0xC]; CEntity *
49D42C:  LDR             R3, [R3]; float
49D42E:  LDR             R2, [R0]; float
49D430:  MOV             R0, R6; this
49D432:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
49D436:  MOV             R0, R4; this
49D438:  MOV             R1, R6; CTask *
49D43A:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
49D43E:  MOVS            R0, #dword_20; this
49D440:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D444:  MOV             R5, R0
49D446:  MOV.W           R0, #0x41000000
49D44A:  STR             R0, [SP,#0x38+var_38]; float
49D44C:  MOV             R0, R5; this
49D44E:  MOVS            R1, #0x64 ; 'd'; int
49D450:  MOVS            R2, #0; bool
49D452:  MOVS            R3, #0; bool
49D454:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49D458:  MOV             R0, R4; this
49D45A:  MOV             R1, R5; CTask *
49D45C:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
49D460:  B               loc_49D4AA
49D462:  MOVS            R0, #dword_60; this
49D464:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49D468:  ADD.W           R9, SP, #0x38+var_24
49D46C:  LDR             R2, [R5,#0xC]; CEntity *
49D46E:  MOV             R4, R0
49D470:  ADD.W           R0, R5, #0x40 ; '@'; this
49D474:  MOV             R1, R6; CPed *
49D476:  MOV             R3, R9; CVector *
49D478:  LDR.W           R8, [R5,#0x50]
49D47C:  BLX             j__ZNK31CEntitySeekPosCalculatorDriving20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorDriving::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49D480:  LDR             R3, [R5,#0x18]; float
49D482:  MOVS            R0, #1
49D484:  VLDR            S0, [R5,#0x1C]
49D488:  MOV.W           R1, #0xFFFFFFFF
49D48C:  VLDR            S2, [R5,#0x24]
49D490:  MOVS            R2, #0
49D492:  STRD.W          R2, R1, [SP,#0x38+var_30]; bool
49D496:  MOV             R1, R8; int
49D498:  STR             R0, [SP,#0x38+var_28]; bool
49D49A:  MOV             R0, R4; this
49D49C:  MOV             R2, R9; CVector *
49D49E:  VSTR            S0, [SP,#0x38+var_38]
49D4A2:  VSTR            S2, [SP,#0x38+var_34]
49D4A6:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
49D4AA:  MOV             R0, R4
49D4AC:  ADD             SP, SP, #0x20 ; ' '
49D4AE:  POP.W           {R8,R9,R11}
49D4B2:  POP             {R4-R7,PC}
