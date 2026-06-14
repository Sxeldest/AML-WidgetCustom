; =========================================================
; Game Engine Function: _ZNK32CTaskComplexFollowLeaderAnyMeans13CreateSubTaskEiPK4CPed
; Address            : 0x545370 - 0x5454B2
; =========================================================

545370:  PUSH            {R4-R7,LR}
545372:  ADD             R7, SP, #0xC
545374:  PUSH.W          {R8}
545378:  SUB             SP, SP, #8
54537A:  MOV             R6, R2
54537C:  MOV             R5, R0
54537E:  MOVS            R4, #0
545380:  CMP.W           R1, #0x390
545384:  BGT             loc_5453C4
545386:  CMP             R1, #0xCB
545388:  BEQ             loc_545440
54538A:  MOVW            R0, #0x2CF
54538E:  CMP             R1, R0
545390:  BNE.W           loc_5454A8
545394:  MOVS            R0, #dword_70; this
545396:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54539A:  LDR.W           R1, [R6,#0x590]; CVehicle *
54539E:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
5453A0:  MOVS            R3, #0; bool
5453A2:  MOV             R4, R0
5453A4:  MOVS            R5, #0
5453A6:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
5453AA:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x5453B6)
5453AC:  MOV.W           R1, #0x7D0; unsigned int
5453B0:  STR             R1, [R4,#0x60]
5453B2:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
5453B4:  STRH.W          R5, [R4,#0x6C]
5453B8:  STRD.W          R5, R5, [R4,#0x64]
5453BC:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed ...
5453BE:  ADDS            R0, #8
5453C0:  STR             R0, [R4]
5453C2:  B               loc_5454A8
5453C4:  MOVW            R0, #0x391
5453C8:  CMP             R1, R0
5453CA:  BEQ             loc_54545E
5453CC:  MOVW            R0, #0x39A
5453D0:  CMP             R1, R0
5453D2:  BNE             loc_5454A8
5453D4:  MOVS            R0, #dword_34; this
5453D6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5453DA:  MOV             R4, R0
5453DC:  LDR.W           R8, [R5,#0x10]
5453E0:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
5453E4:  LDR             R1, =(_ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x5453F2)
5453E6:  MOV.W           R2, #0x3E8
5453EA:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x5453F6)
5453EC:  MOV             R6, R4
5453EE:  ADD             R1, PC; _ZTV30CTaskComplexSeekEntityAnyMeansI32CEntitySeekPosCalculatorXYOffsetE_ptr
5453F0:  STR             R2, [R4,#0x10]
5453F2:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
5453F4:  MOV.W           R2, #0x41000000
5453F8:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntityAnyMeans<CEntitySeekPosCalculatorXYOffset> ...
5453FA:  CMP.W           R8, #0
5453FE:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
545400:  STR             R2, [R4,#0x14]
545402:  MOV.W           R2, #0
545406:  ADD.W           R1, R1, #8
54540A:  STRH            R2, [R4,#0x20]
54540C:  STRD.W          R2, R2, [R4,#0x2C]
545410:  ADD.W           R0, R0, #8
545414:  STRD.W          R2, R2, [R4,#0x18]
545418:  STR             R1, [R4]
54541A:  MOV             R1, R4
54541C:  STR             R0, [R4,#0x24]
54541E:  STR.W           R2, [R6,#0x28]!
545422:  STR.W           R8, [R1,#0xC]!; CEntity **
545426:  ITT NE
545428:  MOVNE           R0, R8; this
54542A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54542E:  VLDR            D16, [R5,#0x14]
545432:  LDR             R0, [R5,#0x1C]
545434:  STR             R0, [R6,#8]
545436:  MOVS            R0, #7
545438:  VSTR            D16, [R6]
54543C:  STR             R0, [R4,#0x50]
54543E:  B               loc_5454A8
545440:  MOVS            R0, #dword_20; this
545442:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545446:  MOV             R4, R0
545448:  MOV.W           R0, #0x41000000
54544C:  STR             R0, [SP,#0x18+var_18]; float
54544E:  MOV             R0, R4; this
545450:  MOV.W           R1, #0x7D0; int
545454:  MOVS            R2, #0; bool
545456:  MOVS            R3, #0; bool
545458:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
54545C:  B               loc_5454A8
54545E:  MOVS            R0, #word_28; this
545460:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
545464:  MOV             R4, R0
545466:  LDRD.W          R8, R6, [R5,#0xC]
54546A:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
54546E:  LDR             R0, =(_ZTV35CTaskComplexFollowLeaderInFormation_ptr - 0x54547C)
545470:  MOV             R1, R4
545472:  STR.W           R8, [R4,#0xC]
545476:  MOVS            R3, #0
545478:  ADD             R0, PC; _ZTV35CTaskComplexFollowLeaderInFormation_ptr
54547A:  MOVS            R2, #4
54547C:  MOVT            R3, #0xBF80
545480:  ADD.W           R12, R4, #0x1C
545484:  LDR             R0, [R0]; `vtable for'CTaskComplexFollowLeaderInFormation ...
545486:  CMP             R6, #0
545488:  ADD.W           R0, R0, #8
54548C:  STR             R0, [R4]
54548E:  STR.W           R6, [R1,#0x10]!; CEntity **
545492:  VLDR            D16, [R5,#0x14]
545496:  LDR             R0, [R5,#0x1C]
545498:  STM.W           R12, {R0,R2,R3}
54549C:  VSTR            D16, [R4,#0x14]
5454A0:  ITT NE
5454A2:  MOVNE           R0, R6; this
5454A4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5454A8:  MOV             R0, R4
5454AA:  ADD             SP, SP, #8
5454AC:  POP.W           {R8}
5454B0:  POP             {R4-R7,PC}
