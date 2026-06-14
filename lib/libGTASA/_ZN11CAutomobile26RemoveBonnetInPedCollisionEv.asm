; =========================================================
; Game Engine Function: _ZN11CAutomobile26RemoveBonnetInPedCollisionEv
; Address            : 0x559408 - 0x559492
; =========================================================

559408:  PUSH            {R4-R7,LR}
55940A:  ADD             R7, SP, #0xC
55940C:  PUSH.W          {R11}
559410:  MOV             R5, R0
559412:  LDR.W           R0, [R5,#0x69C]
559416:  CBZ             R0, loc_559488
559418:  ADDW            R4, R5, #0x5B4
55941C:  MOVS            R1, #0
55941E:  MOV             R0, R4
559420:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
559424:  CMP             R0, #1
559426:  BEQ             loc_559436
559428:  MOV             R0, R4
55942A:  MOVS            R1, #0
55942C:  MOVS            R6, #0
55942E:  BLX             j__ZNK14CDamageManager13GetDoorStatusE6eDoors; CDamageManager::GetDoorStatus(eDoors)
559432:  CMP             R0, #3
559434:  BNE             loc_55948A
559436:  ADDW            R0, R5, #0x5CC
55943A:  VLDR            S0, =0.4
55943E:  VLDR            S2, [R0]
559442:  ADD.W           R0, R5, #0x5D8
559446:  VMUL.F32        S0, S2, S0
55944A:  VLDR            S2, [R0]
55944E:  VCMPE.F32       S2, S0
559452:  VMRS            APSR_nzcv, FPSCR
559456:  BLE             loc_559488
559458:  MOV             R0, R5; this
55945A:  MOVS            R1, #0x10; int
55945C:  MOVS            R2, #2; unsigned int
55945E:  BLX             j__ZN11CAutomobile20SpawnFlyingComponentEij; CAutomobile::SpawnFlyingComponent(int,uint)
559462:  MOV             R6, R0
559464:  ADD.W           R0, R5, #0x13C; this
559468:  MOVS            R1, #0x5D ; ']'; int
55946A:  MOV             R2, R6; CEntity *
55946C:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEiP7CEntity; CAEVehicleAudioEntity::AddAudioEvent(int,CEntity *)
559470:  LDR.W           R1, [R5,#0x69C]
559474:  MOV             R0, R5
559476:  MOVS            R2, #0
559478:  BLX             j__ZN8CVehicle22SetComponentVisibilityEP7RwFramej; CVehicle::SetComponentVisibility(RwFrame *,uint)
55947C:  MOV             R0, R4
55947E:  MOVS            R1, #0
559480:  MOVS            R2, #4
559482:  BLX             j__ZN14CDamageManager13SetDoorStatusE6eDoorsj; CDamageManager::SetDoorStatus(eDoors,uint)
559486:  B               loc_55948A
559488:  MOVS            R6, #0
55948A:  MOV             R0, R6
55948C:  POP.W           {R11}
559490:  POP             {R4-R7,PC}
