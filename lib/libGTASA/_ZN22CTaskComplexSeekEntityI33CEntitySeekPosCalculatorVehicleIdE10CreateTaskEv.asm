; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE10CreateTaskEv
; Address            : 0x495360 - 0x4954B0
; =========================================================

495360:  PUSH            {R4,R5,R7,LR}
495362:  ADD             R7, SP, #8
495364:  SUB             SP, SP, #8
495366:  LDR             R0, =(UseDataFence_ptr - 0x49536C)
495368:  ADD             R0, PC; UseDataFence_ptr
49536A:  LDR             R0, [R0]; UseDataFence
49536C:  LDRB            R4, [R0]
49536E:  CBZ             R4, loc_495384
495370:  LDR             R0, =(UseDataFence_ptr - 0x495378)
495372:  MOVS            R1, #(stderr+2); void *
495374:  ADD             R0, PC; UseDataFence_ptr
495376:  LDR             R5, [R0]; UseDataFence
495378:  MOVS            R0, #0
49537A:  STRB            R0, [R5]
49537C:  ADD             R0, SP, #0x10+var_C; this
49537E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495382:  STRB            R4, [R5]
495384:  ADD             R0, SP, #0x10+var_C; this
495386:  MOVS            R1, #byte_4; void *
495388:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49538C:  LDR             R0, [SP,#0x10+var_C]
49538E:  CMP             R0, #2
495390:  BEQ             loc_4953CC
495392:  CMP             R0, #4
495394:  BEQ             loc_4953FE
495396:  CMP             R0, #3
495398:  BNE             loc_495432
49539A:  LDR             R0, =(UseDataFence_ptr - 0x4953A0)
49539C:  ADD             R0, PC; UseDataFence_ptr
49539E:  LDR             R0, [R0]; UseDataFence
4953A0:  LDRB            R4, [R0]
4953A2:  CBZ             R4, loc_4953B8
4953A4:  LDR             R0, =(UseDataFence_ptr - 0x4953AC)
4953A6:  MOVS            R1, #(stderr+2); void *
4953A8:  ADD             R0, PC; UseDataFence_ptr
4953AA:  LDR             R5, [R0]; UseDataFence
4953AC:  MOVS            R0, #0
4953AE:  STRB            R0, [R5]
4953B0:  MOV             R0, SP; this
4953B2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4953B6:  STRB            R4, [R5]
4953B8:  MOV             R0, SP; this
4953BA:  MOVS            R1, #byte_4; void *
4953BC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4953C0:  LDR             R0, [SP,#0x10+var_10]; this
4953C2:  ADDS            R1, R0, #1; int
4953C4:  BEQ             loc_495432
4953C6:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
4953CA:  B               loc_49542E
4953CC:  LDR             R0, =(UseDataFence_ptr - 0x4953D2)
4953CE:  ADD             R0, PC; UseDataFence_ptr
4953D0:  LDR             R0, [R0]; UseDataFence
4953D2:  LDRB            R4, [R0]
4953D4:  CBZ             R4, loc_4953EA
4953D6:  LDR             R0, =(UseDataFence_ptr - 0x4953DE)
4953D8:  MOVS            R1, #(stderr+2); void *
4953DA:  ADD             R0, PC; UseDataFence_ptr
4953DC:  LDR             R5, [R0]; UseDataFence
4953DE:  MOVS            R0, #0
4953E0:  STRB            R0, [R5]
4953E2:  MOV             R0, SP; this
4953E4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4953E8:  STRB            R4, [R5]
4953EA:  MOV             R0, SP; this
4953EC:  MOVS            R1, #byte_4; void *
4953EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4953F2:  LDR             R0, [SP,#0x10+var_10]; this
4953F4:  ADDS            R1, R0, #1; int
4953F6:  BEQ             loc_495432
4953F8:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4953FC:  B               loc_49542E
4953FE:  LDR             R0, =(UseDataFence_ptr - 0x495404)
495400:  ADD             R0, PC; UseDataFence_ptr
495402:  LDR             R0, [R0]; UseDataFence
495404:  LDRB            R4, [R0]
495406:  CBZ             R4, loc_49541C
495408:  LDR             R0, =(UseDataFence_ptr - 0x495410)
49540A:  MOVS            R1, #(stderr+2); void *
49540C:  ADD             R0, PC; UseDataFence_ptr
49540E:  LDR             R5, [R0]; UseDataFence
495410:  MOVS            R0, #0
495412:  STRB            R0, [R5]
495414:  MOV             R0, SP; this
495416:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49541A:  STRB            R4, [R5]
49541C:  MOV             R0, SP; this
49541E:  MOVS            R1, #byte_4; void *
495420:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495424:  LDR             R0, [SP,#0x10+var_10]; this
495426:  ADDS            R1, R0, #1; int
495428:  BEQ             loc_495432
49542A:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
49542E:  MOV             R4, R0
495430:  B               loc_495434
495432:  MOVS            R4, #0
495434:  MOVS            R0, #dword_50; this
495436:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49543A:  MOV             R5, R0
49543C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
495440:  ADR             R2, dword_4954B0
495442:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE_ptr - 0x495450)
495444:  VLD1.64         {D16-D17}, [R2@128]
495448:  ADD.W           R2, R5, #0x18
49544C:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI33CEntitySeekPosCalculatorVehicleIdE_ptr
49544E:  MOV.W           R3, #0x3E8
495452:  LDR             R1, =(_ZTV33CEntitySeekPosCalculatorVehicleId_ptr - 0x495462)
495454:  CMP             R4, #0
495456:  VST1.32         {D16-D17}, [R2]
49545A:  MOVW            R2, #0xC350
49545E:  ADD             R1, PC; _ZTV33CEntitySeekPosCalculatorVehicleId_ptr
495460:  STRD.W          R2, R3, [R5,#0x10]
495464:  MOV.W           R2, #0
495468:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorVehicleId> ...
49546A:  STRH            R2, [R5,#0x30]
49546C:  STRH            R2, [R5,#0x3C]
49546E:  ADD.W           R0, R0, #8
495472:  STRD.W          R2, R2, [R5,#0x28]
495476:  STRD.W          R2, R2, [R5,#0x34]
49547A:  STR             R2, [R5,#0x44]
49547C:  MOV.W           R2, #6
495480:  STR             R2, [R5,#0x48]
495482:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorVehicleId ...
495484:  LDRB.W          R2, [R5,#0x4C]
495488:  STR             R0, [R5]
49548A:  ADD.W           R0, R1, #8
49548E:  STR             R0, [R5,#0x40]
495490:  AND.W           R0, R2, #0xF0
495494:  MOV             R1, R5
495496:  ORR.W           R0, R0, #3
49549A:  STRB.W          R0, [R5,#0x4C]
49549E:  STR.W           R4, [R1,#0xC]!; CEntity **
4954A2:  ITT NE
4954A4:  MOVNE           R0, R4; this
4954A6:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4954AA:  MOV             R0, R5
4954AC:  ADD             SP, SP, #8
4954AE:  POP             {R4,R5,R7,PC}
