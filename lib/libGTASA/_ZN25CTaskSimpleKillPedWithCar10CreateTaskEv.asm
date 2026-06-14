; =========================================================
; Game Engine Function: _ZN25CTaskSimpleKillPedWithCar10CreateTaskEv
; Address            : 0x4926CC - 0x49274A
; =========================================================

4926CC:  PUSH            {R4-R7,LR}
4926CE:  ADD             R7, SP, #0xC
4926D0:  PUSH.W          {R11}
4926D4:  SUB             SP, SP, #0x10
4926D6:  LDR             R0, =(UseDataFence_ptr - 0x4926DC)
4926D8:  ADD             R0, PC; UseDataFence_ptr
4926DA:  LDR             R0, [R0]; UseDataFence
4926DC:  LDRB            R4, [R0]
4926DE:  CBZ             R4, loc_4926F4
4926E0:  LDR             R0, =(UseDataFence_ptr - 0x4926E8)
4926E2:  MOVS            R1, #(stderr+2); void *
4926E4:  ADD             R0, PC; UseDataFence_ptr
4926E6:  LDR             R5, [R0]; UseDataFence
4926E8:  MOVS            R0, #0
4926EA:  STRB            R0, [R5]
4926EC:  ADD             R0, SP, #0x20+var_14; this
4926EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4926F2:  STRB            R4, [R5]
4926F4:  ADD             R0, SP, #0x20+var_18; this
4926F6:  MOVS            R1, #byte_4; void *
4926F8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4926FC:  LDR             R0, [SP,#0x20+var_18]; this
4926FE:  ADDS            R1, R0, #1; int
492700:  BEQ             loc_49270A
492702:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
492706:  MOV             R4, R0
492708:  B               loc_49270C
49270A:  MOVS            R4, #0
49270C:  LDR             R0, =(UseDataFence_ptr - 0x492712)
49270E:  ADD             R0, PC; UseDataFence_ptr
492710:  LDR             R0, [R0]; UseDataFence
492712:  LDRB            R5, [R0]
492714:  CBZ             R5, loc_49272C
492716:  LDR             R0, =(UseDataFence_ptr - 0x49271E)
492718:  MOVS            R1, #(stderr+2); void *
49271A:  ADD             R0, PC; UseDataFence_ptr
49271C:  LDR             R6, [R0]; UseDataFence
49271E:  MOVS            R0, #0
492720:  STRB            R0, [R6]
492722:  SUB.W           R0, R7, #-var_12; this
492726:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49272A:  STRB            R5, [R6]
49272C:  ADD             R0, SP, #0x20+var_1C; this
49272E:  MOVS            R1, #byte_4; void *
492730:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492734:  MOVS            R0, #word_10; this
492736:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49273A:  LDR             R2, [SP,#0x20+var_1C]; float
49273C:  MOV             R1, R4; CVehicle *
49273E:  BLX             j__ZN25CTaskSimpleKillPedWithCarC2EP8CVehiclef; CTaskSimpleKillPedWithCar::CTaskSimpleKillPedWithCar(CVehicle *,float)
492742:  ADD             SP, SP, #0x10
492744:  POP.W           {R11}
492748:  POP             {R4-R7,PC}
