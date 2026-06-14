; =========================================================
; Game Engine Function: _ZN8CCarCtrl24GetAIPlaneToAttackPlayerEP11CAutomobile
; Address            : 0x2F6464 - 0x2F654C
; =========================================================

2F6464:  PUSH            {R4,R6,R7,LR}
2F6466:  ADD             R7, SP, #8
2F6468:  VPUSH           {D8-D10}
2F646C:  SUB             SP, SP, #0x10
2F646E:  MOV             R4, R0
2F6470:  ADD             R0, SP, #0x30+var_2C; int
2F6472:  MOV.W           R1, #0xFFFFFFFF
2F6476:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2F647A:  MOV.W           R0, #0xFFFFFFFF; int
2F647E:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
2F6482:  VLDR            S16, =50.0
2F6486:  VLDR            S0, [R0]
2F648A:  VLDR            S2, [R0,#4]
2F648E:  VMUL.F32        S0, S0, S16
2F6492:  VLDR            S4, [SP,#0x30+var_2C]
2F6496:  VMUL.F32        S2, S2, S16
2F649A:  VLDR            S6, [SP,#0x30+var_28]
2F649E:  VLDR            S18, [R0,#8]
2F64A2:  LDR             R0, [R4,#0x14]
2F64A4:  VLDR            S20, [SP,#0x30+var_24]
2F64A8:  ADD.W           R1, R0, #0x30 ; '0'
2F64AC:  CMP             R0, #0
2F64AE:  IT EQ
2F64B0:  ADDEQ           R1, R4, #4
2F64B2:  VADD.F32        S0, S0, S4
2F64B6:  VLDR            S4, [R1]
2F64BA:  VADD.F32        S2, S2, S6
2F64BE:  VLDR            S6, [R1,#4]
2F64C2:  VSUB.F32        S0, S0, S4
2F64C6:  VSUB.F32        S2, S2, S6
2F64CA:  VMOV            R0, S0; this
2F64CE:  VMOV            R1, S2; float
2F64D2:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F64D6:  VMUL.F32        S0, S18, S16
2F64DA:  STR.W           R0, [R4,#0x9C8]
2F64DE:  ADDW            R0, R4, #0x9BC
2F64E2:  VADD.F32        S0, S0, S20
2F64E6:  VSTR            S0, [R0]
2F64EA:  MOV             R0, R4; this
2F64EC:  BLX             j__ZN8CCarCtrl28FlyAIPlaneInCertainDirectionEP6CPlane; CCarCtrl::FlyAIPlaneInCertainDirection(CPlane *)
2F64F0:  MOV.W           R0, #0xFFFFFFFF; int
2F64F4:  MOVS            R1, #0; bool
2F64F6:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2F64FA:  CBZ             R0, loc_2F6520
2F64FC:  MOV.W           R0, #0xFFFFFFFF; int
2F6500:  MOVS            R1, #0; bool
2F6502:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2F6506:  BLX             j__ZNK8CVehicle20GetVehicleAppearanceEv; CVehicle::GetVehicleAppearance(void)
2F650A:  CMP             R0, #5
2F650C:  BNE             loc_2F6520
2F650E:  MOV.W           R0, #0xFFFFFFFF; int
2F6512:  MOVS            R1, #0; bool
2F6514:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2F6518:  MOV             R1, R0; CVehicle *
2F651A:  MOV             R0, R4; this
2F651C:  BLX             j__ZN8CCarCtrl20TriggerDogFightMovesEP8CVehicleS1_; CCarCtrl::TriggerDogFightMoves(CVehicle *,CVehicle *)
2F6520:  MOV.W           R0, #0xFFFFFFFF; int
2F6524:  MOVS            R1, #0; bool
2F6526:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2F652A:  MOV             R1, R0; CVehicle *
2F652C:  MOV             R0, R4; this
2F652E:  BLX             j__ZN8CCarCtrl26TestWhetherToFirePlaneGunsEP8CVehicleP7CEntity; CCarCtrl::TestWhetherToFirePlaneGuns(CVehicle *,CEntity *)
2F6532:  MOV.W           R0, #0xFFFFFFFF; int
2F6536:  MOVS            R1, #0; bool
2F6538:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2F653C:  MOV             R1, R0; CVehicle *
2F653E:  MOV             R0, R4; this
2F6540:  BLX             j__ZN8CCarCtrl21PossiblyFireHSMissileEP8CVehicleP7CEntity; CCarCtrl::PossiblyFireHSMissile(CVehicle *,CEntity *)
2F6544:  ADD             SP, SP, #0x10
2F6546:  VPOP            {D8-D10}
2F654A:  POP             {R4,R6,R7,PC}
