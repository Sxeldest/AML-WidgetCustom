; =========================================================
; Game Engine Function: _ZN13CEventHandler47ComputeVehiclePotentialPassiveCollisionResponseEP6CEventP5CTaskS3_
; Address            : 0x380170 - 0x3801F2
; =========================================================

380170:  PUSH            {R4-R7,LR}
380172:  ADD             R7, SP, #0xC
380174:  PUSH.W          {R8-R10}
380178:  SUB             SP, SP, #8
38017A:  MOV             R4, R1
38017C:  MOV             R6, R3
38017E:  LDR             R5, [R4,#0x10]
380180:  MOV             R9, R0
380182:  CMP             R5, #0
380184:  IT NE
380186:  CMPNE           R6, #0
380188:  BEQ             loc_3801EA
38018A:  LDR.W           R0, [R9]
38018E:  LDR.W           R0, [R0,#0x484]
380192:  ANDS.W          R0, R0, #0x100
380196:  BNE             loc_3801EA
380198:  MOV             R0, R6; this
38019A:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
38019E:  CMP             R0, #0
3801A0:  ITT NE
3801A2:  LDRNE.W         R8, [R4,#0x14]
3801A6:  CMPNE.W         R8, #1
3801AA:  BEQ             loc_3801EA
3801AC:  LDR.W           R0, [R9]; this
3801B0:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
3801B4:  MOV             R10, R0
3801B6:  LDR.W           R0, [R9]
3801BA:  LDR.W           R0, [R0,#0x440]; this
3801BE:  BLX             j__ZN16CPedIntelligence20IsPedGoingForCarDoorEv; CPedIntelligence::IsPedGoingForCarDoor(void)
3801C2:  MOV             R4, R0
3801C4:  MOVS            R0, #dword_58; this
3801C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3801CA:  MOVS            R1, #0
3801CC:  CMP.W           R10, #0
3801D0:  STRD.W          R4, R1, [SP,#0x20+var_20]; bool
3801D4:  IT NE
3801D6:  MOVNE.W         R8, #6
3801DA:  ADD.W           R2, R6, #0xC; CVector *
3801DE:  MOV             R1, R8; int
3801E0:  MOV             R3, R5; CVehicle *
3801E2:  BLX             j__ZN24CTaskComplexWalkRoundCarC2EiRK7CVectorPK8CVehiclebi; CTaskComplexWalkRoundCar::CTaskComplexWalkRoundCar(int,CVector const&,CVehicle const*,bool,int)
3801E6:  STR.W           R0, [R9,#0x24]
3801EA:  ADD             SP, SP, #8
3801EC:  POP.W           {R8-R10}
3801F0:  POP             {R4-R7,PC}
