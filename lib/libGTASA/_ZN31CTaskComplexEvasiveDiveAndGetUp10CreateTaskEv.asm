; =========================================================
; Game Engine Function: _ZN31CTaskComplexEvasiveDiveAndGetUp10CreateTaskEv
; Address            : 0x492548 - 0x49261C
; =========================================================

492548:  PUSH            {R4-R7,LR}
49254A:  ADD             R7, SP, #0xC
49254C:  PUSH.W          {R11}
492550:  SUB             SP, SP, #0x20
492552:  LDR             R0, =(UseDataFence_ptr - 0x492558)
492554:  ADD             R0, PC; UseDataFence_ptr
492556:  LDR             R0, [R0]; UseDataFence
492558:  LDRB            R4, [R0]
49255A:  CBZ             R4, loc_492570
49255C:  LDR             R0, =(UseDataFence_ptr - 0x492564)
49255E:  MOVS            R1, #(stderr+2); void *
492560:  ADD             R0, PC; UseDataFence_ptr
492562:  LDR             R5, [R0]; UseDataFence
492564:  MOVS            R0, #0
492566:  STRB            R0, [R5]
492568:  ADD             R0, SP, #0x30+var_28; this
49256A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49256E:  STRB            R4, [R5]
492570:  ADD             R0, SP, #0x30+var_18; this
492572:  MOVS            R1, #byte_4; void *
492574:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492578:  LDR             R0, [SP,#0x30+var_18]; this
49257A:  ADDS            R1, R0, #1; int
49257C:  BEQ             loc_492586
49257E:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
492582:  MOV             R4, R0
492584:  B               loc_492588
492586:  MOVS            R4, #0
492588:  LDR             R0, =(UseDataFence_ptr - 0x49258E)
49258A:  ADD             R0, PC; UseDataFence_ptr
49258C:  LDR             R0, [R0]; UseDataFence
49258E:  LDRB            R5, [R0]
492590:  CBZ             R5, loc_4925A6
492592:  LDR             R0, =(UseDataFence_ptr - 0x49259A)
492594:  MOVS            R1, #(stderr+2); void *
492596:  ADD             R0, PC; UseDataFence_ptr
492598:  LDR             R6, [R0]; UseDataFence
49259A:  MOVS            R0, #0
49259C:  STRB            R0, [R6]
49259E:  ADD             R0, SP, #0x30+var_28; this
4925A0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4925A4:  STRB            R5, [R6]
4925A6:  ADD             R0, SP, #0x30+var_1C; this
4925A8:  MOVS            R1, #byte_4; void *
4925AA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4925AE:  LDR             R0, =(UseDataFence_ptr - 0x4925B4)
4925B0:  ADD             R0, PC; UseDataFence_ptr
4925B2:  LDR             R0, [R0]; UseDataFence
4925B4:  LDRB            R5, [R0]
4925B6:  CBZ             R5, loc_4925CC
4925B8:  LDR             R0, =(UseDataFence_ptr - 0x4925C0)
4925BA:  MOVS            R1, #(stderr+2); void *
4925BC:  ADD             R0, PC; UseDataFence_ptr
4925BE:  LDR             R6, [R0]; UseDataFence
4925C0:  MOVS            R0, #0
4925C2:  STRB            R0, [R6]
4925C4:  ADD             R0, SP, #0x30+var_28; this
4925C6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4925CA:  STRB            R5, [R6]
4925CC:  ADD             R0, SP, #0x30+var_28; this
4925CE:  MOVS            R1, #(byte_9+3); void *
4925D0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4925D4:  LDR             R0, =(UseDataFence_ptr - 0x4925DA)
4925D6:  ADD             R0, PC; UseDataFence_ptr
4925D8:  LDR             R0, [R0]; UseDataFence
4925DA:  LDRB            R5, [R0]
4925DC:  CBZ             R5, loc_4925F4
4925DE:  LDR             R0, =(UseDataFence_ptr - 0x4925E6)
4925E0:  MOVS            R1, #(stderr+2); void *
4925E2:  ADD             R0, PC; UseDataFence_ptr
4925E4:  LDR             R6, [R0]; UseDataFence
4925E6:  MOVS            R0, #0
4925E8:  STRB            R0, [R6]
4925EA:  SUB.W           R0, R7, #-var_12; this
4925EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4925F2:  STRB            R5, [R6]
4925F4:  SUB.W           R0, R7, #-var_12; this
4925F8:  MOVS            R1, #(stderr+1); void *
4925FA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4925FE:  MOVS            R0, #dword_24; this
492600:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492604:  LDR             R2, [SP,#0x30+var_1C]; int
492606:  ADD             R3, SP, #0x30+var_28; CVector *
492608:  LDRB.W          R1, [R7,#var_12]
49260C:  STR             R1, [SP,#0x30+var_30]; bool
49260E:  MOV             R1, R4; CVehicle *
492610:  BLX             j__ZN31CTaskComplexEvasiveDiveAndGetUpC2EP8CVehicleiRK7CVectorb; CTaskComplexEvasiveDiveAndGetUp::CTaskComplexEvasiveDiveAndGetUp(CVehicle *,int,CVector const&,bool)
492614:  ADD             SP, SP, #0x20 ; ' '
492616:  POP.W           {R11}
49261A:  POP             {R4-R7,PC}
