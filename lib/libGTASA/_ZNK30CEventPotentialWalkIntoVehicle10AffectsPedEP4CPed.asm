; =========================================================
; Game Engine Function: _ZNK30CEventPotentialWalkIntoVehicle10AffectsPedEP4CPed
; Address            : 0x373FBC - 0x374100
; =========================================================

373FBC:  PUSH            {R4-R7,LR}
373FBE:  ADD             R7, SP, #0xC
373FC0:  PUSH.W          {R8}
373FC4:  SUB             SP, SP, #0x20
373FC6:  MOV             R5, R1
373FC8:  MOV             R8, R0
373FCA:  LDR.W           R0, [R5,#0x440]
373FCE:  MOVW            R1, #0x2BD; int
373FD2:  ADDS            R0, #4; this
373FD4:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
373FD8:  MOV             R6, R0
373FDA:  LDR.W           R0, [R5,#0x440]
373FDE:  ADDS            R0, #4; this
373FE0:  BLX             j__ZNK12CTaskManager21GetSimplestActiveTaskEv; CTaskManager::GetSimplestActiveTask(void)
373FE4:  MOV             R4, R0
373FE6:  MOV             R0, R5; this
373FE8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
373FEC:  CBNZ            R6, loc_373FFA
373FEE:  CBZ             R0, loc_373FFA
373FF0:  MOV             R0, R4; this
373FF2:  BLX             j__ZN5CTask10IsGoToTaskEPKS_; CTask::IsGoToTask(CTask const*)
373FF6:  CMP             R0, #0
373FF8:  BEQ             loc_37407A
373FFA:  MOV             R0, R5; this
373FFC:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
374000:  CMP             R0, #1
374002:  BNE             loc_37407A
374004:  LDRB.W          R0, [R5,#0x485]
374008:  LSLS            R0, R0, #0x1F
37400A:  BNE             loc_37407A
37400C:  LDR.W           R0, [R8,#0x14]
374010:  CMP             R0, #1
374012:  BEQ             loc_37407A
374014:  LDR.W           R0, [R5,#0x440]
374018:  MOV.W           R1, #0x1FC; int
37401C:  ADDS            R0, #4; this
37401E:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
374022:  MOV             R3, R0
374024:  CBZ             R3, loc_374056
374026:  LDR.W           R1, [R8,#0x10]; CVehicle *
37402A:  LDR             R2, [R3,#0x1C]
37402C:  CMP             R2, R1
37402E:  BEQ             loc_37407A
374030:  LDR.W           R0, [R1,#0x4D4]
374034:  CBZ             R0, loc_37403A
374036:  CMP             R0, R2
374038:  BEQ             loc_374046
37403A:  LDR.W           R6, [R1,#0x4D0]
37403E:  MOVS            R0, #0
374040:  CBZ             R6, loc_37407C
374042:  CMP             R6, R2
374044:  BNE             loc_37407C
374046:  LDRB            R0, [R3,#0xD]
374048:  LSLS            R0, R0, #2
37404A:  SXTB            R0, R0
37404C:  ASRS            R2, R0, #4; int
37404E:  MOV             R0, R3; this
374050:  BLX             j__ZN24CTaskComplexWalkRoundCar13SetNewVehicleEP8CVehiclei; CTaskComplexWalkRoundCar::SetNewVehicle(CVehicle *,int)
374054:  B               loc_37407A
374056:  LDR.W           R0, [R5,#0x100]
37405A:  CBNZ            R0, loc_37407A
37405C:  LDR.W           R0, [R8,#0x10]
374060:  CBZ             R0, loc_37407A
374062:  LDR.W           R0, [R0,#0x5A4]
374066:  ADDS            R0, #1
374068:  CMP             R0, #9
37406A:  BHI             loc_374084
37406C:  MOVS            R1, #1
37406E:  LSL.W           R0, R1, R0
374072:  MOVW            R1, #0x301
374076:  TST             R0, R1
374078:  BEQ             loc_374084
37407A:  MOVS            R0, #0
37407C:  ADD             SP, SP, #0x20 ; ' '
37407E:  POP.W           {R8}
374082:  POP             {R4-R7,PC}
374084:  LDR             R0, [R4]
374086:  LDR             R1, [R0,#0x14]
374088:  MOV             R0, R4
37408A:  BLX             R1
37408C:  CMP.W           R0, #0x384
374090:  BNE             loc_3740CA
374092:  VLDR            D16, [R4,#0xC]
374096:  LDR             R0, [R4,#0x14]
374098:  STR             R0, [SP,#0x30+var_18]
37409A:  MOVS            R0, #1
37409C:  VSTR            D16, [SP,#0x30+var_20]
3740A0:  CBZ             R6, loc_3740D0
3740A2:  LDR.W           R0, [R8,#0x10]
3740A6:  LDR             R1, [R6,#0xC]
3740A8:  CMP             R0, R1
3740AA:  ITT EQ
3740AC:  LDREQ.W         R0, [R0,#0x5A4]
3740B0:  CMPEQ           R0, #4
3740B2:  BEQ             loc_37407A
3740B4:  MOV             R0, SP; this
3740B6:  MOV             R1, R6
3740B8:  BLX             j__ZN20CTaskComplexEnterCar12GetTargetPosEv; CTaskComplexEnterCar::GetTargetPos(void)
3740BC:  VLDR            D16, [SP,#0x30+var_30]
3740C0:  LDR             R0, [SP,#0x30+var_28]
3740C2:  STR             R0, [SP,#0x30+var_18]
3740C4:  VSTR            D16, [SP,#0x30+var_20]
3740C8:  B               loc_3740D4
3740CA:  MOVS            R0, #0
3740CC:  CMP             R6, #0
3740CE:  BNE             loc_3740A2
3740D0:  CMP             R0, #1
3740D2:  BNE             loc_3740FC
3740D4:  LDR.W           R1, [R8,#0x10]; CPed *
3740D8:  MOV             R4, SP
3740DA:  MOV             R0, R5; this
3740DC:  MOV             R2, R4; CEntity *
3740DE:  BLX             j__ZN20CPedGeometryAnalyser26ComputeClosestSurfacePointERK4CPedR7CEntityR7CVector; CPedGeometryAnalyser::ComputeClosestSurfacePoint(CPed const&,CEntity &,CVector &)
3740E2:  LDR.W           R1, [R8,#0x10]; CVector *
3740E6:  MOV             R0, R4; this
3740E8:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
3740EC:  LDR.W           R1, [R8,#0x10]; CVector *
3740F0:  MOV             R4, R0
3740F2:  ADD             R0, SP, #0x30+var_20; this
3740F4:  BLX             j__ZN20CPedGeometryAnalyser20ComputeEntityHitSideERK7CVectorR7CEntity; CPedGeometryAnalyser::ComputeEntityHitSide(CVector const&,CEntity &)
3740F8:  CMP             R4, R0
3740FA:  BEQ             loc_37407A
3740FC:  MOVS            R0, #1
3740FE:  B               loc_37407C
