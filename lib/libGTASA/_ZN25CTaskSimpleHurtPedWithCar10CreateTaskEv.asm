; =========================================================
; Game Engine Function: _ZN25CTaskSimpleHurtPedWithCar10CreateTaskEv
; Address            : 0x49275C - 0x4927DA
; =========================================================

49275C:  PUSH            {R4-R7,LR}
49275E:  ADD             R7, SP, #0xC
492760:  PUSH.W          {R11}
492764:  SUB             SP, SP, #0x10
492766:  LDR             R0, =(UseDataFence_ptr - 0x49276C)
492768:  ADD             R0, PC; UseDataFence_ptr
49276A:  LDR             R0, [R0]; UseDataFence
49276C:  LDRB            R4, [R0]
49276E:  CBZ             R4, loc_492784
492770:  LDR             R0, =(UseDataFence_ptr - 0x492778)
492772:  MOVS            R1, #(stderr+2); void *
492774:  ADD             R0, PC; UseDataFence_ptr
492776:  LDR             R5, [R0]; UseDataFence
492778:  MOVS            R0, #0
49277A:  STRB            R0, [R5]
49277C:  ADD             R0, SP, #0x20+var_14; this
49277E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492782:  STRB            R4, [R5]
492784:  ADD             R0, SP, #0x20+var_18; this
492786:  MOVS            R1, #byte_4; void *
492788:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49278C:  LDR             R0, [SP,#0x20+var_18]; this
49278E:  ADDS            R1, R0, #1; int
492790:  BEQ             loc_49279A
492792:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
492796:  MOV             R4, R0
492798:  B               loc_49279C
49279A:  MOVS            R4, #0
49279C:  LDR             R0, =(UseDataFence_ptr - 0x4927A2)
49279E:  ADD             R0, PC; UseDataFence_ptr
4927A0:  LDR             R0, [R0]; UseDataFence
4927A2:  LDRB            R5, [R0]
4927A4:  CBZ             R5, loc_4927BC
4927A6:  LDR             R0, =(UseDataFence_ptr - 0x4927AE)
4927A8:  MOVS            R1, #(stderr+2); void *
4927AA:  ADD             R0, PC; UseDataFence_ptr
4927AC:  LDR             R6, [R0]; UseDataFence
4927AE:  MOVS            R0, #0
4927B0:  STRB            R0, [R6]
4927B2:  SUB.W           R0, R7, #-var_12; this
4927B6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4927BA:  STRB            R5, [R6]
4927BC:  ADD             R0, SP, #0x20+var_1C; this
4927BE:  MOVS            R1, #byte_4; void *
4927C0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4927C4:  MOVS            R0, #dword_14; this
4927C6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4927CA:  LDR             R2, [SP,#0x20+var_1C]; float
4927CC:  MOV             R1, R4; CVehicle *
4927CE:  BLX             j__ZN25CTaskSimpleHurtPedWithCarC2EP8CVehiclef; CTaskSimpleHurtPedWithCar::CTaskSimpleHurtPedWithCar(CVehicle *,float)
4927D2:  ADD             SP, SP, #0x10
4927D4:  POP.W           {R11}
4927D8:  POP             {R4-R7,PC}
