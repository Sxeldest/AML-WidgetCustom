; =========================================================
; Game Engine Function: _ZN26CTaskComplexCarDriveWander10CreateTaskEv
; Address            : 0x493670 - 0x49371E
; =========================================================

493670:  PUSH            {R4-R7,LR}
493672:  ADD             R7, SP, #0xC
493674:  PUSH.W          {R11}
493678:  SUB             SP, SP, #0x10
49367A:  LDR             R0, =(UseDataFence_ptr - 0x493680)
49367C:  ADD             R0, PC; UseDataFence_ptr
49367E:  LDR             R0, [R0]; UseDataFence
493680:  LDRB            R4, [R0]
493682:  CBZ             R4, loc_493698
493684:  LDR             R0, =(UseDataFence_ptr - 0x49368C)
493686:  MOVS            R1, #(stderr+2); void *
493688:  ADD             R0, PC; UseDataFence_ptr
49368A:  LDR             R5, [R0]; UseDataFence
49368C:  MOVS            R0, #0
49368E:  STRB            R0, [R5]
493690:  ADD             R0, SP, #0x20+var_14; this
493692:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493696:  STRB            R4, [R5]
493698:  ADD             R0, SP, #0x20+var_14; this
49369A:  MOVS            R1, #byte_4; void *
49369C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4936A0:  LDR             R0, [SP,#0x20+var_14]; this
4936A2:  ADDS            R1, R0, #1; int
4936A4:  BEQ             loc_4936AE
4936A6:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4936AA:  MOV             R4, R0
4936AC:  B               loc_4936B0
4936AE:  MOVS            R4, #0
4936B0:  LDR             R0, =(UseDataFence_ptr - 0x4936B6)
4936B2:  ADD             R0, PC; UseDataFence_ptr
4936B4:  LDR             R0, [R0]; UseDataFence
4936B6:  LDRB            R5, [R0]
4936B8:  CBZ             R5, loc_4936CE
4936BA:  LDR             R0, =(UseDataFence_ptr - 0x4936C2)
4936BC:  MOVS            R1, #(stderr+2); void *
4936BE:  ADD             R0, PC; UseDataFence_ptr
4936C0:  LDR             R6, [R0]; UseDataFence
4936C2:  MOVS            R0, #0
4936C4:  STRB            R0, [R6]
4936C6:  ADD             R0, SP, #0x20+var_18; this
4936C8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4936CC:  STRB            R5, [R6]
4936CE:  ADD             R0, SP, #0x20+var_18; this
4936D0:  MOVS            R1, #byte_4; void *
4936D2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4936D6:  LDR             R0, =(UseDataFence_ptr - 0x4936DC)
4936D8:  ADD             R0, PC; UseDataFence_ptr
4936DA:  LDR             R0, [R0]; UseDataFence
4936DC:  LDRB            R5, [R0]
4936DE:  CBZ             R5, loc_4936F4
4936E0:  LDR             R0, =(UseDataFence_ptr - 0x4936E8)
4936E2:  MOVS            R1, #(stderr+2); void *
4936E4:  ADD             R0, PC; UseDataFence_ptr
4936E6:  LDR             R6, [R0]; UseDataFence
4936E8:  MOVS            R0, #0
4936EA:  STRB            R0, [R6]
4936EC:  ADD             R0, SP, #0x20+var_1C; this
4936EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4936F2:  STRB            R5, [R6]
4936F4:  ADD             R0, SP, #0x20+var_1C; this
4936F6:  MOVS            R1, #byte_4; void *
4936F8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4936FC:  MOVS            R0, #dword_24; this
4936FE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493702:  LDR             R2, [SP,#0x20+var_18]
493704:  MOV             R1, R4; CVehicle *
493706:  VMOV            S0, R2; int
49370A:  VCVT.F32.S32    S0, S0
49370E:  VMOV            R3, S0; float
493712:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
493716:  ADD             SP, SP, #0x10
493718:  POP.W           {R11}
49371C:  POP             {R4-R7,PC}
