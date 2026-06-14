; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE13CreateSubTaskEiP4CPed
; Address            : 0x49913C - 0x499310
; =========================================================

49913C:  PUSH            {R4-R7,LR}
49913E:  ADD             R7, SP, #0xC
499140:  PUSH.W          {R11}
499144:  SUB             SP, SP, #0x20; float
499146:  MOV             R5, R0
499148:  MOVW            R0, #0x2CE
49914C:  MOV             R6, R2
49914E:  MOVS            R4, #0
499150:  CMP             R1, R0
499152:  BGT             loc_499174
499154:  CMP             R1, #0xF3
499156:  BGT             loc_4991C8
499158:  CMP             R1, #0xCB
49915A:  BEQ             loc_499226
49915C:  CMP             R1, #0xDB
49915E:  BNE.W           loc_499306
499162:  MOVS            R0, #dword_1C; this
499164:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
499168:  MOV.W           R1, #0x3E8; int
49916C:  MOV             R4, R0
49916E:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
499172:  B               loc_499306
499174:  MOVW            R0, #0x389
499178:  CMP             R1, R0
49917A:  BGT             loc_4991F4
49917C:  MOVW            R0, #0x2CF
499180:  CMP             R1, R0
499182:  BEQ             loc_499244
499184:  MOVW            R0, #0x387
499188:  CMP             R1, R0
49918A:  BNE.W           loc_499306
49918E:  MOVS            R0, #word_28; this
499190:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
499194:  LDR             R1, [R5,#0x44]; int
499196:  MOV             R4, R0
499198:  LDR             R3, [R5,#0x18]; float
49919A:  MOVS            R0, #0
49919C:  VLDR            S0, [R5,#0x1C]
4991A0:  ADD             R2, SP, #0x30+var_1C; CVector *
4991A2:  STRD.W          R0, R0, [SP,#0x30+var_2C]; bool
4991A6:  MOV             R0, R4; this
4991A8:  VSTR            S0, [SP,#0x30+var_30]
4991AC:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
4991B0:  LDRB.W          R0, [R5,#0x48]
4991B4:  LDRB.W          R1, [R4,#0x24]
4991B8:  AND.W           R0, R0, #8
4991BC:  AND.W           R1, R1, #0xF7; unsigned int
4991C0:  ORRS            R0, R1
4991C2:  STRB.W          R0, [R4,#0x24]
4991C6:  B               loc_499306
4991C8:  CMP             R1, #0xF4
4991CA:  BEQ             loc_499274
4991CC:  CMP.W           R1, #0x2C0
4991D0:  BNE.W           loc_499306
4991D4:  MOVS            R0, #dword_34; this
4991D6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4991DA:  LDR.W           R1, [R6,#0x590]; CVehicle *
4991DE:  MOV             R4, R0
4991E0:  MOVS            R0, #0
4991E2:  MOVS            R2, #1
4991E4:  STRD.W          R2, R0, [SP,#0x30+var_30]; bool
4991E8:  MOV             R0, R4; this
4991EA:  MOVS            R2, #0; int
4991EC:  MOVS            R3, #0; int
4991EE:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
4991F2:  B               loc_499306
4991F4:  MOVW            R0, #0x38A
4991F8:  CMP             R1, R0
4991FA:  BEQ             loc_4992D4
4991FC:  CMP.W           R1, #0x398
499200:  BNE.W           loc_499306
499204:  MOVS            R0, #word_28; this
499206:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49920A:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x499214)
49920C:  MOV             R4, R0
49920E:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x499216)
499210:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
499212:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
499214:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
499216:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
499218:  LDR             R1, [R5,#0xC]; CEntity *
49921A:  LDR             R3, [R3]; float
49921C:  LDR             R2, [R0]; float
49921E:  MOV             R0, R4; this
499220:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
499224:  B               loc_499306
499226:  MOVS            R0, #dword_20; this
499228:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49922C:  MOV             R4, R0
49922E:  MOV.W           R0, #0x41000000
499232:  STR             R0, [SP,#0x30+var_30]; float
499234:  MOV             R0, R4; this
499236:  MOV.W           R1, #0x7D0; int
49923A:  MOVS            R2, #0; bool
49923C:  MOVS            R3, #0; bool
49923E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
499242:  B               loc_499306
499244:  MOVS            R0, #dword_70; this
499246:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49924A:  LDR.W           R1, [R6,#0x590]; CVehicle *
49924E:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
499250:  MOVS            R3, #0; bool
499252:  MOV             R4, R0
499254:  MOVS            R5, #0
499256:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
49925A:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x499266)
49925C:  MOV.W           R1, #0x7D0; unsigned int
499260:  STR             R1, [R4,#0x60]
499262:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
499264:  STRH.W          R5, [R4,#0x6C]
499268:  STRD.W          R5, R5, [R4,#0x64]
49926C:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed ...
49926E:  ADDS            R0, #8
499270:  STR             R0, [R4]
499272:  B               loc_499306
499274:  MOVS            R0, #dword_40; this
499276:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49927A:  MOV             R4, R0
49927C:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
499280:  LDRB.W          R0, [R5,#0x48]
499284:  LSLS            R0, R0, #0x1E
499286:  BPL             loc_4992B0
499288:  MOVS            R0, #word_28; this
49928A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49928E:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x499298)
499290:  MOV             R6, R0
499292:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x49929A)
499294:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
499296:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
499298:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
49929A:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
49929C:  LDR             R1, [R5,#0xC]; CEntity *
49929E:  LDR             R3, [R3]; float
4992A0:  LDR             R2, [R0]; float
4992A2:  MOV             R0, R6; this
4992A4:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
4992A8:  MOV             R0, R4; this
4992AA:  MOV             R1, R6; CTask *
4992AC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4992B0:  MOVS            R0, #dword_20; this
4992B2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4992B6:  MOV             R5, R0
4992B8:  MOV.W           R0, #0x41000000
4992BC:  STR             R0, [SP,#0x30+var_30]; float
4992BE:  MOV             R0, R5; this
4992C0:  MOVS            R1, #0x64 ; 'd'; int
4992C2:  MOVS            R2, #0; bool
4992C4:  MOVS            R3, #0; bool
4992C6:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4992CA:  MOV             R0, R4; this
4992CC:  MOV             R1, R5; CTask *
4992CE:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
4992D2:  B               loc_499306
4992D4:  MOVS            R0, #dword_60; this
4992D6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4992DA:  LDR             R1, [R5,#0x44]; int
4992DC:  MOV.W           R2, #0xFFFFFFFF
4992E0:  LDR             R3, [R5,#0x18]; float
4992E2:  MOVS            R6, #0
4992E4:  MOV             R4, R0
4992E6:  VLDR            S0, [R5,#0x1C]
4992EA:  VLDR            S2, [R5,#0x24]
4992EE:  MOVS            R0, #1
4992F0:  STRD.W          R6, R2, [SP,#0x30+var_28]; bool
4992F4:  ADD             R2, SP, #0x30+var_1C; CVector *
4992F6:  STR             R0, [SP,#0x30+var_20]; bool
4992F8:  MOV             R0, R4; this
4992FA:  VSTR            S0, [SP,#0x30+var_30]
4992FE:  VSTR            S2, [SP,#0x30+var_2C]
499302:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
499306:  MOV             R0, R4
499308:  ADD             SP, SP, #0x20 ; ' '
49930A:  POP.W           {R11}
49930E:  POP             {R4-R7,PC}
