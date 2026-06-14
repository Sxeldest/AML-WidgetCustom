; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE13CreateSubTaskEiP4CPed
; Address            : 0x49B1DC - 0x49B3DC
; =========================================================

49B1DC:  PUSH            {R4-R7,LR}
49B1DE:  ADD             R7, SP, #0xC
49B1E0:  PUSH.W          {R8,R9,R11}
49B1E4:  SUB             SP, SP, #0x20; float
49B1E6:  MOV             R5, R0
49B1E8:  MOVW            R0, #0x2CE
49B1EC:  MOV             R6, R2
49B1EE:  MOVS            R4, #0
49B1F0:  CMP             R1, R0
49B1F2:  BGT             loc_49B214
49B1F4:  CMP             R1, #0xF3
49B1F6:  BGT             loc_49B27E
49B1F8:  CMP             R1, #0xCB
49B1FA:  BEQ             loc_49B2DC
49B1FC:  CMP             R1, #0xDB
49B1FE:  BNE.W           loc_49B3D2
49B202:  MOVS            R0, #dword_1C; this
49B204:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B208:  MOV.W           R1, #0x3E8; int
49B20C:  MOV             R4, R0
49B20E:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49B212:  B               loc_49B3D2
49B214:  MOVW            R0, #0x389
49B218:  CMP             R1, R0
49B21A:  BGT             loc_49B2AA
49B21C:  MOVW            R0, #0x2CF
49B220:  CMP             R1, R0
49B222:  BEQ             loc_49B2FA
49B224:  MOVW            R0, #0x387
49B228:  CMP             R1, R0
49B22A:  BNE.W           loc_49B3D2
49B22E:  MOVS            R0, #word_28; this
49B230:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B234:  ADD.W           R9, SP, #0x38+var_24
49B238:  LDR             R2, [R5,#0xC]; CEntity *
49B23A:  MOV             R4, R0
49B23C:  ADD.W           R0, R5, #0x40 ; '@'; this
49B240:  MOV             R1, R6; CPed *
49B242:  MOV             R3, R9; CVector *
49B244:  LDR.W           R8, [R5,#0x44]
49B248:  BLX             j__ZNK37CEntitySeekPosCalculatorEntitySurface20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorEntitySurface::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49B24C:  LDR             R3, [R5,#0x18]; float
49B24E:  MOVS            R0, #0
49B250:  VLDR            S0, [R5,#0x1C]
49B254:  MOV             R1, R8; int
49B256:  STRD.W          R0, R0, [SP,#0x38+var_34]; bool
49B25A:  MOV             R0, R4; this
49B25C:  MOV             R2, R9; CVector *
49B25E:  VSTR            S0, [SP,#0x38+var_38]
49B262:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
49B266:  LDRB.W          R0, [R5,#0x48]
49B26A:  LDRB.W          R1, [R4,#0x24]
49B26E:  AND.W           R0, R0, #8
49B272:  AND.W           R1, R1, #0xF7; unsigned int
49B276:  ORRS            R0, R1
49B278:  STRB.W          R0, [R4,#0x24]
49B27C:  B               loc_49B3D2
49B27E:  CMP             R1, #0xF4
49B280:  BEQ             loc_49B32A
49B282:  CMP.W           R1, #0x2C0
49B286:  BNE.W           loc_49B3D2
49B28A:  MOVS            R0, #dword_34; this
49B28C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B290:  LDR.W           R1, [R6,#0x590]; CVehicle *
49B294:  MOV             R4, R0
49B296:  MOVS            R0, #0
49B298:  MOVS            R2, #1
49B29A:  STRD.W          R2, R0, [SP,#0x38+var_38]; bool
49B29E:  MOV             R0, R4; this
49B2A0:  MOVS            R2, #0; int
49B2A2:  MOVS            R3, #0; int
49B2A4:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
49B2A8:  B               loc_49B3D2
49B2AA:  MOVW            R0, #0x38A
49B2AE:  CMP             R1, R0
49B2B0:  BEQ             loc_49B38A
49B2B2:  CMP.W           R1, #0x398
49B2B6:  BNE.W           loc_49B3D2
49B2BA:  MOVS            R0, #word_28; this
49B2BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B2C0:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x49B2CA)
49B2C2:  MOV             R4, R0
49B2C4:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49B2CC)
49B2C6:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
49B2C8:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
49B2CA:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49B2CC:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49B2CE:  LDR             R1, [R5,#0xC]; CEntity *
49B2D0:  LDR             R3, [R3]; float
49B2D2:  LDR             R2, [R0]; float
49B2D4:  MOV             R0, R4; this
49B2D6:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
49B2DA:  B               loc_49B3D2
49B2DC:  MOVS            R0, #dword_20; this
49B2DE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B2E2:  MOV             R4, R0
49B2E4:  MOV.W           R0, #0x41000000
49B2E8:  STR             R0, [SP,#0x38+var_38]; float
49B2EA:  MOV             R0, R4; this
49B2EC:  MOV.W           R1, #0x7D0; int
49B2F0:  MOVS            R2, #0; bool
49B2F2:  MOVS            R3, #0; bool
49B2F4:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49B2F8:  B               loc_49B3D2
49B2FA:  MOVS            R0, #dword_70; this
49B2FC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B300:  LDR.W           R1, [R6,#0x590]; CVehicle *
49B304:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49B306:  MOVS            R3, #0; bool
49B308:  MOV             R4, R0
49B30A:  MOVS            R5, #0
49B30C:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49B310:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49B31C)
49B312:  MOV.W           R1, #0x7D0; unsigned int
49B316:  STR             R1, [R4,#0x60]
49B318:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49B31A:  STRH.W          R5, [R4,#0x6C]
49B31E:  STRD.W          R5, R5, [R4,#0x64]
49B322:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed ...
49B324:  ADDS            R0, #8
49B326:  STR             R0, [R4]
49B328:  B               loc_49B3D2
49B32A:  MOVS            R0, #dword_40; this
49B32C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B330:  MOV             R4, R0
49B332:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
49B336:  LDRB.W          R0, [R5,#0x48]
49B33A:  LSLS            R0, R0, #0x1E
49B33C:  BPL             loc_49B366
49B33E:  MOVS            R0, #word_28; this
49B340:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B344:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x49B34E)
49B346:  MOV             R6, R0
49B348:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49B350)
49B34A:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
49B34C:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
49B34E:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49B350:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49B352:  LDR             R1, [R5,#0xC]; CEntity *
49B354:  LDR             R3, [R3]; float
49B356:  LDR             R2, [R0]; float
49B358:  MOV             R0, R6; this
49B35A:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
49B35E:  MOV             R0, R4; this
49B360:  MOV             R1, R6; CTask *
49B362:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
49B366:  MOVS            R0, #dword_20; this
49B368:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B36C:  MOV             R5, R0
49B36E:  MOV.W           R0, #0x41000000
49B372:  STR             R0, [SP,#0x38+var_38]; float
49B374:  MOV             R0, R5; this
49B376:  MOVS            R1, #0x64 ; 'd'; int
49B378:  MOVS            R2, #0; bool
49B37A:  MOVS            R3, #0; bool
49B37C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49B380:  MOV             R0, R4; this
49B382:  MOV             R1, R5; CTask *
49B384:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
49B388:  B               loc_49B3D2
49B38A:  MOVS            R0, #dword_60; this
49B38C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49B390:  ADD.W           R9, SP, #0x38+var_24
49B394:  LDR             R2, [R5,#0xC]; CEntity *
49B396:  MOV             R4, R0
49B398:  ADD.W           R0, R5, #0x40 ; '@'; this
49B39C:  MOV             R1, R6; CPed *
49B39E:  MOV             R3, R9; CVector *
49B3A0:  LDR.W           R8, [R5,#0x44]
49B3A4:  BLX             j__ZNK37CEntitySeekPosCalculatorEntitySurface20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorEntitySurface::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49B3A8:  LDR             R3, [R5,#0x18]; float
49B3AA:  MOVS            R0, #1
49B3AC:  VLDR            S0, [R5,#0x1C]
49B3B0:  MOV.W           R1, #0xFFFFFFFF
49B3B4:  VLDR            S2, [R5,#0x24]
49B3B8:  MOVS            R2, #0
49B3BA:  STRD.W          R2, R1, [SP,#0x38+var_30]; bool
49B3BE:  MOV             R1, R8; int
49B3C0:  STR             R0, [SP,#0x38+var_28]; bool
49B3C2:  MOV             R0, R4; this
49B3C4:  MOV             R2, R9; CVector *
49B3C6:  VSTR            S0, [SP,#0x38+var_38]
49B3CA:  VSTR            S2, [SP,#0x38+var_34]
49B3CE:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
49B3D2:  MOV             R0, R4
49B3D4:  ADD             SP, SP, #0x20 ; ' '
49B3D6:  POP.W           {R8,R9,R11}
49B3DA:  POP             {R4-R7,PC}
