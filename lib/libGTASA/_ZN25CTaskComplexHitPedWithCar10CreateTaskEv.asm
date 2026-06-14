; =========================================================
; Game Engine Function: _ZN25CTaskComplexHitPedWithCar10CreateTaskEv
; Address            : 0x49263C - 0x4926BA
; =========================================================

49263C:  PUSH            {R4-R7,LR}
49263E:  ADD             R7, SP, #0xC
492640:  PUSH.W          {R11}
492644:  SUB             SP, SP, #0x10
492646:  LDR             R0, =(UseDataFence_ptr - 0x49264C)
492648:  ADD             R0, PC; UseDataFence_ptr
49264A:  LDR             R0, [R0]; UseDataFence
49264C:  LDRB            R4, [R0]
49264E:  CBZ             R4, loc_492664
492650:  LDR             R0, =(UseDataFence_ptr - 0x492658)
492652:  MOVS            R1, #(stderr+2); void *
492654:  ADD             R0, PC; UseDataFence_ptr
492656:  LDR             R5, [R0]; UseDataFence
492658:  MOVS            R0, #0
49265A:  STRB            R0, [R5]
49265C:  ADD             R0, SP, #0x20+var_14; this
49265E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492662:  STRB            R4, [R5]
492664:  ADD             R0, SP, #0x20+var_18; this
492666:  MOVS            R1, #byte_4; void *
492668:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49266C:  LDR             R0, [SP,#0x20+var_18]; this
49266E:  ADDS            R1, R0, #1; int
492670:  BEQ             loc_49267A
492672:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
492676:  MOV             R4, R0
492678:  B               loc_49267C
49267A:  MOVS            R4, #0
49267C:  LDR             R0, =(UseDataFence_ptr - 0x492682)
49267E:  ADD             R0, PC; UseDataFence_ptr
492680:  LDR             R0, [R0]; UseDataFence
492682:  LDRB            R5, [R0]
492684:  CBZ             R5, loc_49269C
492686:  LDR             R0, =(UseDataFence_ptr - 0x49268E)
492688:  MOVS            R1, #(stderr+2); void *
49268A:  ADD             R0, PC; UseDataFence_ptr
49268C:  LDR             R6, [R0]; UseDataFence
49268E:  MOVS            R0, #0
492690:  STRB            R0, [R6]
492692:  SUB.W           R0, R7, #-var_12; this
492696:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49269A:  STRB            R5, [R6]
49269C:  ADD             R0, SP, #0x20+var_1C; this
49269E:  MOVS            R1, #byte_4; void *
4926A0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4926A4:  MOVS            R0, #word_28; this
4926A6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4926AA:  LDR             R2, [SP,#0x20+var_1C]; float
4926AC:  MOV             R1, R4; CVehicle *
4926AE:  BLX             j__ZN25CTaskComplexHitPedWithCarC2EP8CVehiclef; CTaskComplexHitPedWithCar::CTaskComplexHitPedWithCar(CVehicle *,float)
4926B2:  ADD             SP, SP, #0x10
4926B4:  POP.W           {R11}
4926B8:  POP             {R4-R7,PC}
