; =========================================================
; Game Engine Function: _ZN7CRemote29GivePlayerRemoteControlledCarEfffft
; Address            : 0x32445C - 0x3245F2
; =========================================================

32445C:  PUSH            {R4-R7,LR}
32445E:  ADD             R7, SP, #0xC
324460:  PUSH.W          {R8,R9,R11}
324464:  VPUSH           {D8-D10}
324468:  SUB             SP, SP, #8
32446A:  LDR.W           R9, [R7,#arg_0]
32446E:  MOV             R5, R0
324470:  MOV             R6, R1
324472:  MOV             R8, R3
324474:  VMOV            S20, R2
324478:  MOV             R0, R9; this
32447A:  VMOV            S16, R6
32447E:  VMOV            S18, R5
324482:  BLX             j__ZN10CModelInfo11IsHeliModelEi; CModelInfo::IsHeliModel(int)
324486:  CBZ             R0, loc_32449C
324488:  MOVW            R0, #(elf_hash_bucket+0x930); this
32448C:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
324490:  MOV             R1, R9; int
324492:  MOVS            R2, #2; unsigned __int8
324494:  MOV             R4, R0
324496:  BLX             j__ZN5CHeliC2Eih; CHeli::CHeli(int,uchar)
32449A:  B               loc_3244CC
32449C:  MOV             R0, R9; this
32449E:  BLX             j__ZN10CModelInfo12IsPlaneModelEi; CModelInfo::IsPlaneModel(int)
3244A2:  CBZ             R0, loc_3244B8
3244A4:  MOVW            R0, #(elf_hash_bucket+0x91C); this
3244A8:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
3244AC:  MOV             R1, R9; int
3244AE:  MOVS            R2, #2; unsigned __int8
3244B0:  MOV             R4, R0
3244B2:  BLX             j__ZN6CPlaneC2Eih; CPlane::CPlane(int,uchar)
3244B6:  B               loc_3244CC
3244B8:  MOVW            R0, #(elf_hash_bucket+0x8A0); this
3244BC:  BLX             j__ZN8CVehiclenwEj; CVehicle::operator new(uint)
3244C0:  MOV             R1, R9; int
3244C2:  MOVS            R2, #2; unsigned __int8
3244C4:  MOVS            R3, #1; unsigned __int8
3244C6:  MOV             R4, R0
3244C8:  BLX             j__ZN11CAutomobileC2Eihh; CAutomobile::CAutomobile(int,uchar,uchar)
3244CC:  VMOV.F32        S0, #2.0
3244D0:  MOVS            R0, #0
3244D2:  SUB.W           R3, R7, #-var_31; float
3244D6:  STR             R0, [SP,#0x38+var_38]; bool *
3244D8:  MOV             R0, R5; this
3244DA:  MOV             R1, R6; float
3244DC:  VADD.F32        S0, S20, S0
3244E0:  VMOV            R2, S0; float
3244E4:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
3244E8:  MOV             R5, R0
3244EA:  MOV             R0, R4; this
3244EC:  BLX             j__ZN7CEntity40GetDistanceFromCentreOfMassToBaseOfModelEv; CEntity::GetDistanceFromCentreOfMassToBaseOfModel(void)
3244F0:  MOV             R6, R0
3244F2:  LDR             R0, [R4,#0x14]; this
3244F4:  MOV             R1, R8; x
3244F6:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
3244FA:  VMOV            S0, R5
3244FE:  LDR             R0, [R4,#0x14]
324500:  VMOV            S2, R6
324504:  CMP             R0, #0
324506:  VADD.F32        S0, S0, S2
32450A:  BEQ             loc_32451C
32450C:  VSTR            S18, [R0,#0x30]
324510:  LDR             R0, [R4,#0x14]
324512:  VSTR            S16, [R0,#0x34]
324516:  LDR             R0, [R4,#0x14]
324518:  ADDS            R0, #0x38 ; '8'
32451A:  B               loc_324528
32451C:  ADD.W           R0, R4, #0xC
324520:  VSTR            S18, [R4,#4]
324524:  VSTR            S16, [R4,#8]
324528:  VSTR            S0, [R0]
32452C:  LDR.W           R0, [R4,#0x42C]
324530:  LDRB.W          R1, [R4,#0x3A]
324534:  ORR.W           R0, R0, #8
324538:  STR.W           R0, [R4,#0x42C]
32453C:  MOVS            R0, #8
32453E:  BFI.W           R1, R0, #3, #0x1D; CVehicle *
324542:  MOV             R0, R4; this
324544:  STRB.W          R1, [R4,#0x3A]
324548:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
32454C:  MOVS            R3, #0
32454E:  LDR.W           R2, [R4,#0x430]
324552:  LDR.W           R1, [R4,#0x42C]; CEntity *
324556:  MOVS            R0, #0
324558:  MOVT            R3, #0x4110
32455C:  MOVS            R5, #9
32455E:  STRB.W          R0, [R4,#0x3BF]
324562:  TST.W           R2, #0x200
324566:  STR.W           R3, [R4,#0x3CC]
32456A:  STRB.W          R5, [R4,#0x3D4]
32456E:  STR.W           R0, [R4,#0x3BB]
324572:  BIC.W           R0, R1, #0x10
324576:  IT EQ
324578:  ORREQ.W         R0, R1, #0x10
32457C:  STR.W           R0, [R4,#0x42C]
324580:  MOV             R0, R4; this
324582:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
324586:  MOV.W           R0, #0xFFFFFFFF; int
32458A:  MOVS            R1, #0; bool
32458C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
324590:  CBZ             R0, loc_3245A8
324592:  MOV.W           R0, #0xFFFFFFFF; int
324596:  MOVS            R1, #0; bool
324598:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
32459C:  LDRB.W          R1, [R0,#0x3A]
3245A0:  BFI.W           R1, R5, #3, #0x1D
3245A4:  STRB.W          R1, [R0,#0x3A]
3245A8:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3245B4)
3245AA:  MOV.W           R2, #0x194
3245AE:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x3245B6)
3245B0:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3245B2:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3245B4:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3245B6:  LDR             R1, [R1]; CWorld::Players ...
3245B8:  LDR             R0, [R0]; CWorld::PlayerInFocus
3245BA:  SMLABB.W        R1, R0, R2, R1
3245BE:  MOV             R0, R4; this
3245C0:  STR.W           R4, [R1,#0xB0]!; CEntity **
3245C4:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3245C8:  LDR             R0, =(TheCamera_ptr - 0x3245D4)
3245CA:  MOVS            R1, #1
3245CC:  STR             R1, [SP,#0x38+var_38]; int
3245CE:  MOV             R1, R4; CEntity *
3245D0:  ADD             R0, PC; TheCamera_ptr
3245D2:  MOVS            R2, #0x12; __int16
3245D4:  MOVS            R3, #1; __int16
3245D6:  LDR             R5, [R0]; TheCamera
3245D8:  MOV             R0, R5; this
3245DA:  BLX             j__ZN7CCamera11TakeControlEP7CEntityssi; CCamera::TakeControl(CEntity *,short,short,int)
3245DE:  MOV             R0, R5; this
3245E0:  MOVS            R1, #1; __int16
3245E2:  BLX             j__ZN7CCamera27SetZoomValueCamStringScriptEs; CCamera::SetZoomValueCamStringScript(short)
3245E6:  ADD             SP, SP, #8
3245E8:  VPOP            {D8-D10}
3245EC:  POP.W           {R8,R9,R11}
3245F0:  POP             {R4-R7,PC}
