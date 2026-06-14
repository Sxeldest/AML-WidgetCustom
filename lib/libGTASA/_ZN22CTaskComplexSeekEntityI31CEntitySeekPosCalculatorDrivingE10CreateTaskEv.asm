; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE10CreateTaskEv
; Address            : 0x4954F0 - 0x495644
; =========================================================

4954F0:  PUSH            {R4,R5,R7,LR}
4954F2:  ADD             R7, SP, #8
4954F4:  SUB             SP, SP, #8
4954F6:  LDR             R0, =(UseDataFence_ptr - 0x4954FC)
4954F8:  ADD             R0, PC; UseDataFence_ptr
4954FA:  LDR             R0, [R0]; UseDataFence
4954FC:  LDRB            R4, [R0]
4954FE:  CBZ             R4, loc_495514
495500:  LDR             R0, =(UseDataFence_ptr - 0x495508)
495502:  MOVS            R1, #(stderr+2); void *
495504:  ADD             R0, PC; UseDataFence_ptr
495506:  LDR             R5, [R0]; UseDataFence
495508:  MOVS            R0, #0
49550A:  STRB            R0, [R5]
49550C:  ADD             R0, SP, #0x10+var_C; this
49550E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495512:  STRB            R4, [R5]
495514:  ADD             R0, SP, #0x10+var_C; this
495516:  MOVS            R1, #byte_4; void *
495518:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49551C:  LDR             R0, [SP,#0x10+var_C]
49551E:  CMP             R0, #2
495520:  BEQ             loc_49555C
495522:  CMP             R0, #4
495524:  BEQ             loc_49558E
495526:  CMP             R0, #3
495528:  BNE             loc_4955C2
49552A:  LDR             R0, =(UseDataFence_ptr - 0x495530)
49552C:  ADD             R0, PC; UseDataFence_ptr
49552E:  LDR             R0, [R0]; UseDataFence
495530:  LDRB            R4, [R0]
495532:  CBZ             R4, loc_495548
495534:  LDR             R0, =(UseDataFence_ptr - 0x49553C)
495536:  MOVS            R1, #(stderr+2); void *
495538:  ADD             R0, PC; UseDataFence_ptr
49553A:  LDR             R5, [R0]; UseDataFence
49553C:  MOVS            R0, #0
49553E:  STRB            R0, [R5]
495540:  MOV             R0, SP; this
495542:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495546:  STRB            R4, [R5]
495548:  MOV             R0, SP; this
49554A:  MOVS            R1, #byte_4; void *
49554C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495550:  LDR             R0, [SP,#0x10+var_10]; this
495552:  ADDS            R1, R0, #1; int
495554:  BEQ             loc_4955C2
495556:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
49555A:  B               loc_4955BE
49555C:  LDR             R0, =(UseDataFence_ptr - 0x495562)
49555E:  ADD             R0, PC; UseDataFence_ptr
495560:  LDR             R0, [R0]; UseDataFence
495562:  LDRB            R4, [R0]
495564:  CBZ             R4, loc_49557A
495566:  LDR             R0, =(UseDataFence_ptr - 0x49556E)
495568:  MOVS            R1, #(stderr+2); void *
49556A:  ADD             R0, PC; UseDataFence_ptr
49556C:  LDR             R5, [R0]; UseDataFence
49556E:  MOVS            R0, #0
495570:  STRB            R0, [R5]
495572:  MOV             R0, SP; this
495574:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495578:  STRB            R4, [R5]
49557A:  MOV             R0, SP; this
49557C:  MOVS            R1, #byte_4; void *
49557E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495582:  LDR             R0, [SP,#0x10+var_10]; this
495584:  ADDS            R1, R0, #1; int
495586:  BEQ             loc_4955C2
495588:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49558C:  B               loc_4955BE
49558E:  LDR             R0, =(UseDataFence_ptr - 0x495594)
495590:  ADD             R0, PC; UseDataFence_ptr
495592:  LDR             R0, [R0]; UseDataFence
495594:  LDRB            R4, [R0]
495596:  CBZ             R4, loc_4955AC
495598:  LDR             R0, =(UseDataFence_ptr - 0x4955A0)
49559A:  MOVS            R1, #(stderr+2); void *
49559C:  ADD             R0, PC; UseDataFence_ptr
49559E:  LDR             R5, [R0]; UseDataFence
4955A0:  MOVS            R0, #0
4955A2:  STRB            R0, [R5]
4955A4:  MOV             R0, SP; this
4955A6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4955AA:  STRB            R4, [R5]
4955AC:  MOV             R0, SP; this
4955AE:  MOVS            R1, #byte_4; void *
4955B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4955B4:  LDR             R0, [SP,#0x10+var_10]; this
4955B6:  ADDS            R1, R0, #1; int
4955B8:  BEQ             loc_4955C2
4955BA:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
4955BE:  MOV             R4, R0
4955C0:  B               loc_4955C4
4955C2:  MOVS            R4, #0
4955C4:  MOVS            R0, #dword_58; this
4955C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4955CA:  MOV             R5, R0
4955CC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4955D0:  ADR             R2, dword_495650
4955D2:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE_ptr - 0x4955E0)
4955D4:  VLD1.64         {D16-D17}, [R2@128]
4955D8:  ADD.W           R2, R5, #0x18
4955DC:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI31CEntitySeekPosCalculatorDrivingE_ptr
4955DE:  MOV.W           R3, #0x3E8
4955E2:  LDR             R1, =(_ZTV31CEntitySeekPosCalculatorDriving_ptr - 0x4955F2)
4955E4:  CMP             R4, #0
4955E6:  VST1.32         {D16-D17}, [R2]
4955EA:  MOVW            R2, #0xC350
4955EE:  ADD             R1, PC; _ZTV31CEntitySeekPosCalculatorDriving_ptr
4955F0:  STRD.W          R2, R3, [R5,#0x10]
4955F4:  MOV.W           R2, #0
4955F8:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorDriving> ...
4955FA:  STRH            R2, [R5,#0x30]
4955FC:  STRH            R2, [R5,#0x3C]
4955FE:  ADD.W           R0, R0, #8
495602:  STRD.W          R2, R2, [R5,#0x28]
495606:  STRD.W          R2, R2, [R5,#0x34]
49560A:  STRD.W          R2, R2, [R5,#0x44]
49560E:  STR             R2, [R5,#0x4C]
495610:  MOV.W           R2, #6
495614:  STR             R2, [R5,#0x50]
495616:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorDriving ...
495618:  LDRB.W          R2, [R5,#0x54]
49561C:  STR             R0, [R5]
49561E:  ADD.W           R0, R1, #8
495622:  STR             R0, [R5,#0x40]
495624:  AND.W           R0, R2, #0xF0
495628:  MOV             R1, R5
49562A:  ORR.W           R0, R0, #3
49562E:  STRB.W          R0, [R5,#0x54]
495632:  STR.W           R4, [R1,#0xC]!; CEntity **
495636:  ITT NE
495638:  MOVNE           R0, R4; this
49563A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
49563E:  MOV             R0, R5
495640:  ADD             SP, SP, #8
495642:  POP             {R4,R5,R7,PC}
