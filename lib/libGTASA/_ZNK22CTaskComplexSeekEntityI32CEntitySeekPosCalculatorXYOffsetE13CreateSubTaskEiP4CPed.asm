; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE13CreateSubTaskEiP4CPed
; Address            : 0x49A184 - 0x49A384
; =========================================================

49A184:  PUSH            {R4-R7,LR}
49A186:  ADD             R7, SP, #0xC
49A188:  PUSH.W          {R8,R9,R11}
49A18C:  SUB             SP, SP, #0x20; float
49A18E:  MOV             R5, R0
49A190:  MOVW            R0, #0x2CE
49A194:  MOV             R6, R2
49A196:  MOVS            R4, #0
49A198:  CMP             R1, R0
49A19A:  BGT             loc_49A1BC
49A19C:  CMP             R1, #0xF3
49A19E:  BGT             loc_49A226
49A1A0:  CMP             R1, #0xCB
49A1A2:  BEQ             loc_49A284
49A1A4:  CMP             R1, #0xDB
49A1A6:  BNE.W           loc_49A37A
49A1AA:  MOVS            R0, #dword_1C; this
49A1AC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A1B0:  MOV.W           R1, #0x3E8; int
49A1B4:  MOV             R4, R0
49A1B6:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
49A1BA:  B               loc_49A37A
49A1BC:  MOVW            R0, #0x389
49A1C0:  CMP             R1, R0
49A1C2:  BGT             loc_49A252
49A1C4:  MOVW            R0, #0x2CF
49A1C8:  CMP             R1, R0
49A1CA:  BEQ             loc_49A2A2
49A1CC:  MOVW            R0, #0x387
49A1D0:  CMP             R1, R0
49A1D2:  BNE.W           loc_49A37A
49A1D6:  MOVS            R0, #word_28; this
49A1D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A1DC:  ADD.W           R9, SP, #0x38+var_24
49A1E0:  LDR             R2, [R5,#0xC]; CEntity *
49A1E2:  MOV             R4, R0
49A1E4:  ADD.W           R0, R5, #0x40 ; '@'; this
49A1E8:  MOV             R1, R6; CPed *
49A1EA:  MOV             R3, R9; CVector *
49A1EC:  LDR.W           R8, [R5,#0x50]
49A1F0:  BLX             j__ZNK32CEntitySeekPosCalculatorXYOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorXYOffset::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49A1F4:  LDR             R3, [R5,#0x18]; float
49A1F6:  MOVS            R0, #0
49A1F8:  VLDR            S0, [R5,#0x1C]
49A1FC:  MOV             R1, R8; int
49A1FE:  STRD.W          R0, R0, [SP,#0x38+var_34]; bool
49A202:  MOV             R0, R4; this
49A204:  MOV             R2, R9; CVector *
49A206:  VSTR            S0, [SP,#0x38+var_38]
49A20A:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
49A20E:  LDRB.W          R0, [R5,#0x54]
49A212:  LDRB.W          R1, [R4,#0x24]
49A216:  AND.W           R0, R0, #8
49A21A:  AND.W           R1, R1, #0xF7; unsigned int
49A21E:  ORRS            R0, R1
49A220:  STRB.W          R0, [R4,#0x24]
49A224:  B               loc_49A37A
49A226:  CMP             R1, #0xF4
49A228:  BEQ             loc_49A2D2
49A22A:  CMP.W           R1, #0x2C0
49A22E:  BNE.W           loc_49A37A
49A232:  MOVS            R0, #dword_34; this
49A234:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A238:  LDR.W           R1, [R6,#0x590]; CVehicle *
49A23C:  MOV             R4, R0
49A23E:  MOVS            R0, #0
49A240:  MOVS            R2, #1
49A242:  STRD.W          R2, R0, [SP,#0x38+var_38]; bool
49A246:  MOV             R0, R4; this
49A248:  MOVS            R2, #0; int
49A24A:  MOVS            R3, #0; int
49A24C:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
49A250:  B               loc_49A37A
49A252:  MOVW            R0, #0x38A
49A256:  CMP             R1, R0
49A258:  BEQ             loc_49A332
49A25A:  CMP.W           R1, #0x398
49A25E:  BNE.W           loc_49A37A
49A262:  MOVS            R0, #word_28; this
49A264:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A268:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x49A272)
49A26A:  MOV             R4, R0
49A26C:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49A274)
49A26E:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
49A270:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
49A272:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49A274:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49A276:  LDR             R1, [R5,#0xC]; CEntity *
49A278:  LDR             R3, [R3]; float
49A27A:  LDR             R2, [R0]; float
49A27C:  MOV             R0, R4; this
49A27E:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
49A282:  B               loc_49A37A
49A284:  MOVS            R0, #dword_20; this
49A286:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A28A:  MOV             R4, R0
49A28C:  MOV.W           R0, #0x41000000
49A290:  STR             R0, [SP,#0x38+var_38]; float
49A292:  MOV             R0, R4; this
49A294:  MOV.W           R1, #0x7D0; int
49A298:  MOVS            R2, #0; bool
49A29A:  MOVS            R3, #0; bool
49A29C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49A2A0:  B               loc_49A37A
49A2A2:  MOVS            R0, #dword_70; this
49A2A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A2A8:  LDR.W           R1, [R6,#0x590]; CVehicle *
49A2AC:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
49A2AE:  MOVS            R3, #0; bool
49A2B0:  MOV             R4, R0
49A2B2:  MOVS            R5, #0
49A2B4:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49A2B8:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x49A2C4)
49A2BA:  MOV.W           R1, #0x7D0; unsigned int
49A2BE:  STR             R1, [R4,#0x60]
49A2C0:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
49A2C2:  STRH.W          R5, [R4,#0x6C]
49A2C6:  STRD.W          R5, R5, [R4,#0x64]
49A2CA:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed ...
49A2CC:  ADDS            R0, #8
49A2CE:  STR             R0, [R4]
49A2D0:  B               loc_49A37A
49A2D2:  MOVS            R0, #dword_40; this
49A2D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A2D8:  MOV             R4, R0
49A2DA:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
49A2DE:  LDRB.W          R0, [R5,#0x54]
49A2E2:  LSLS            R0, R0, #0x1E
49A2E4:  BPL             loc_49A30E
49A2E6:  MOVS            R0, #word_28; this
49A2E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A2EC:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x49A2F6)
49A2EE:  MOV             R6, R0
49A2F0:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49A2F8)
49A2F2:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
49A2F4:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
49A2F6:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49A2F8:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49A2FA:  LDR             R1, [R5,#0xC]; CEntity *
49A2FC:  LDR             R3, [R3]; float
49A2FE:  LDR             R2, [R0]; float
49A300:  MOV             R0, R6; this
49A302:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
49A306:  MOV             R0, R4; this
49A308:  MOV             R1, R6; CTask *
49A30A:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
49A30E:  MOVS            R0, #dword_20; this
49A310:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A314:  MOV             R5, R0
49A316:  MOV.W           R0, #0x41000000
49A31A:  STR             R0, [SP,#0x38+var_38]; float
49A31C:  MOV             R0, R5; this
49A31E:  MOVS            R1, #0x64 ; 'd'; int
49A320:  MOVS            R2, #0; bool
49A322:  MOVS            R3, #0; bool
49A324:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49A328:  MOV             R0, R4; this
49A32A:  MOV             R1, R5; CTask *
49A32C:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
49A330:  B               loc_49A37A
49A332:  MOVS            R0, #dword_60; this
49A334:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49A338:  ADD.W           R9, SP, #0x38+var_24
49A33C:  LDR             R2, [R5,#0xC]; CEntity *
49A33E:  MOV             R4, R0
49A340:  ADD.W           R0, R5, #0x40 ; '@'; this
49A344:  MOV             R1, R6; CPed *
49A346:  MOV             R3, R9; CVector *
49A348:  LDR.W           R8, [R5,#0x50]
49A34C:  BLX             j__ZNK32CEntitySeekPosCalculatorXYOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector; CEntitySeekPosCalculatorXYOffset::ComputeEntitySeekPos(CPed const&,CEntity const&,CVector &)
49A350:  LDR             R3, [R5,#0x18]; float
49A352:  MOVS            R0, #1
49A354:  VLDR            S0, [R5,#0x1C]
49A358:  MOV.W           R1, #0xFFFFFFFF
49A35C:  VLDR            S2, [R5,#0x24]
49A360:  MOVS            R2, #0
49A362:  STRD.W          R2, R1, [SP,#0x38+var_30]; bool
49A366:  MOV             R1, R8; int
49A368:  STR             R0, [SP,#0x38+var_28]; bool
49A36A:  MOV             R0, R4; this
49A36C:  MOV             R2, R9; CVector *
49A36E:  VSTR            S0, [SP,#0x38+var_38]
49A372:  VSTR            S2, [SP,#0x38+var_34]
49A376:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
49A37A:  MOV             R0, R4
49A37C:  ADD             SP, SP, #0x20 ; ' '
49A37E:  POP.W           {R8,R9,R11}
49A382:  POP             {R4-R7,PC}
