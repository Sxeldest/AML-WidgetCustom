; =========================================================
; Game Engine Function: _ZNK22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE13CreateSubTaskEiP4CPed
; Address            : 0x3349FC - 0x334C04
; =========================================================

3349FC:  PUSH            {R4-R7,LR}
3349FE:  ADD             R7, SP, #0xC
334A00:  PUSH.W          {R11}
334A04:  SUB             SP, SP, #0x28; float
334A06:  MOV             R5, R0
334A08:  MOVW            R0, #0x2CE
334A0C:  MOV             R6, R2
334A0E:  MOVS            R4, #0
334A10:  CMP             R1, R0
334A12:  BGT             loc_334A34
334A14:  CMP             R1, #0xF3
334A16:  BGT             loc_334AA2
334A18:  CMP             R1, #0xCB
334A1A:  BEQ             loc_334B00
334A1C:  CMP             R1, #0xDB
334A1E:  BNE.W           loc_334BFA
334A22:  MOVS            R0, #dword_1C; this
334A24:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334A28:  MOV.W           R1, #0x3E8; int
334A2C:  MOV             R4, R0
334A2E:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
334A32:  B               loc_334BFA
334A34:  MOVW            R0, #0x389
334A38:  CMP             R1, R0
334A3A:  BGT             loc_334ACE
334A3C:  MOVW            R0, #0x2CF
334A40:  CMP             R1, R0
334A42:  BEQ             loc_334B1E
334A44:  MOVW            R0, #0x387
334A48:  CMP             R1, R0
334A4A:  BNE.W           loc_334BFA
334A4E:  MOVS            R0, #word_28; this
334A50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334A54:  MOV             R4, R0
334A56:  LDR             R0, [R5,#0xC]
334A58:  LDR             R1, [R5,#0x44]; int
334A5A:  LDR             R2, [R0,#0x14]
334A5C:  ADD.W           R3, R2, #0x30 ; '0'
334A60:  CMP             R2, #0
334A62:  IT EQ
334A64:  ADDEQ           R3, R0, #4
334A66:  ADD             R2, SP, #0x38+var_20; CVector *
334A68:  VLDR            D16, [R3]
334A6C:  LDR             R0, [R3,#8]
334A6E:  STR             R0, [SP,#0x38+var_18]
334A70:  MOVS            R0, #0
334A72:  VSTR            D16, [SP,#0x38+var_20]
334A76:  LDR             R3, [R5,#0x18]; float
334A78:  VLDR            S0, [R5,#0x1C]
334A7C:  STRD.W          R0, R0, [SP,#0x38+var_34]; bool
334A80:  MOV             R0, R4; this
334A82:  VSTR            S0, [SP,#0x38+var_38]
334A86:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
334A8A:  LDRB.W          R0, [R5,#0x48]
334A8E:  LDRB.W          R1, [R4,#0x24]
334A92:  AND.W           R0, R0, #8
334A96:  AND.W           R1, R1, #0xF7; unsigned int
334A9A:  ORRS            R0, R1
334A9C:  STRB.W          R0, [R4,#0x24]
334AA0:  B               loc_334BFA
334AA2:  CMP             R1, #0xF4
334AA4:  BEQ             loc_334B4E
334AA6:  CMP.W           R1, #0x2C0
334AAA:  BNE.W           loc_334BFA
334AAE:  MOVS            R0, #dword_34; this
334AB0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334AB4:  LDR.W           R1, [R6,#0x590]; CVehicle *
334AB8:  MOV             R4, R0
334ABA:  MOVS            R0, #0
334ABC:  MOVS            R2, #1
334ABE:  STRD.W          R2, R0, [SP,#0x38+var_38]; bool
334AC2:  MOV             R0, R4; this
334AC4:  MOVS            R2, #0; int
334AC6:  MOVS            R3, #0; int
334AC8:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
334ACC:  B               loc_334BFA
334ACE:  MOVW            R0, #0x38A
334AD2:  CMP             R1, R0
334AD4:  BEQ             loc_334BAE
334AD6:  CMP.W           R1, #0x398
334ADA:  BNE.W           loc_334BFA
334ADE:  MOVS            R0, #word_28; this
334AE0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334AE4:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x334AEE)
334AE6:  MOV             R4, R0
334AE8:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x334AF0)
334AEA:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
334AEC:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
334AEE:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
334AF0:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
334AF2:  LDR             R1, [R5,#0xC]; CEntity *
334AF4:  LDR             R3, [R3]; float
334AF6:  LDR             R2, [R0]; float
334AF8:  MOV             R0, R4; this
334AFA:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
334AFE:  B               loc_334BFA
334B00:  MOVS            R0, #dword_20; this
334B02:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334B06:  MOV             R4, R0
334B08:  MOV.W           R0, #0x41000000
334B0C:  STR             R0, [SP,#0x38+var_38]; float
334B0E:  MOV             R0, R4; this
334B10:  MOV.W           R1, #0x7D0; int
334B14:  MOVS            R2, #0; bool
334B16:  MOVS            R3, #0; bool
334B18:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
334B1C:  B               loc_334BFA
334B1E:  MOVS            R0, #dword_70; this
334B20:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334B24:  LDR.W           R1, [R6,#0x590]; CVehicle *
334B28:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
334B2A:  MOVS            R3, #0; bool
334B2C:  MOV             R4, R0
334B2E:  MOVS            R5, #0
334B30:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
334B34:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x334B40)
334B36:  MOV.W           R1, #0x7D0; unsigned int
334B3A:  STR             R1, [R4,#0x60]
334B3C:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
334B3E:  STRH.W          R5, [R4,#0x6C]
334B42:  STRD.W          R5, R5, [R4,#0x64]
334B46:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed ...
334B48:  ADDS            R0, #8
334B4A:  STR             R0, [R4]
334B4C:  B               loc_334BFA
334B4E:  MOVS            R0, #dword_40; this
334B50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334B54:  MOV             R4, R0
334B56:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
334B5A:  LDRB.W          R0, [R5,#0x48]
334B5E:  LSLS            R0, R0, #0x1E
334B60:  BPL             loc_334B8A
334B62:  MOVS            R0, #word_28; this
334B64:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334B68:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x334B72)
334B6A:  MOV             R6, R0
334B6C:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x334B74)
334B6E:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
334B70:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
334B72:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
334B74:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
334B76:  LDR             R1, [R5,#0xC]; CEntity *
334B78:  LDR             R3, [R3]; float
334B7A:  LDR             R2, [R0]; float
334B7C:  MOV             R0, R6; this
334B7E:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
334B82:  MOV             R0, R4; this
334B84:  MOV             R1, R6; CTask *
334B86:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
334B8A:  MOVS            R0, #dword_20; this
334B8C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334B90:  MOV             R5, R0
334B92:  MOV.W           R0, #0x41000000
334B96:  STR             R0, [SP,#0x38+var_38]; float
334B98:  MOV             R0, R5; this
334B9A:  MOVS            R1, #0x64 ; 'd'; int
334B9C:  MOVS            R2, #0; bool
334B9E:  MOVS            R3, #0; bool
334BA0:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
334BA4:  MOV             R0, R4; this
334BA6:  MOV             R1, R5; CTask *
334BA8:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
334BAC:  B               loc_334BFA
334BAE:  MOVS            R0, #dword_60; this
334BB0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
334BB4:  MOV             R4, R0
334BB6:  LDR             R0, [R5,#0xC]
334BB8:  LDR             R1, [R5,#0x44]; int
334BBA:  MOVS            R6, #0
334BBC:  LDR             R2, [R0,#0x14]
334BBE:  ADD.W           R3, R2, #0x30 ; '0'
334BC2:  CMP             R2, #0
334BC4:  IT EQ
334BC6:  ADDEQ           R3, R0, #4
334BC8:  MOV.W           R2, #0xFFFFFFFF
334BCC:  VLDR            D16, [R3]
334BD0:  LDR             R0, [R3,#8]
334BD2:  STR             R0, [SP,#0x38+var_18]
334BD4:  MOVS            R0, #1
334BD6:  VSTR            D16, [SP,#0x38+var_20]
334BDA:  LDR             R3, [R5,#0x18]; float
334BDC:  VLDR            S0, [R5,#0x1C]
334BE0:  VLDR            S2, [R5,#0x24]
334BE4:  STRD.W          R6, R2, [SP,#0x38+var_30]; bool
334BE8:  ADD             R2, SP, #0x38+var_20; CVector *
334BEA:  STR             R0, [SP,#0x38+var_28]; bool
334BEC:  MOV             R0, R4; this
334BEE:  VSTR            S0, [SP,#0x38+var_38]
334BF2:  VSTR            S2, [SP,#0x38+var_34]
334BF6:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
334BFA:  MOV             R0, R4
334BFC:  ADD             SP, SP, #0x28 ; '('
334BFE:  POP.W           {R11}
334C02:  POP             {R4-R7,PC}
