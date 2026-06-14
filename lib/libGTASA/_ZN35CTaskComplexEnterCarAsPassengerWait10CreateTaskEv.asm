; =========================================================
; Game Engine Function: _ZN35CTaskComplexEnterCarAsPassengerWait10CreateTaskEv
; Address            : 0x4938FC - 0x4939E0
; =========================================================

4938FC:  PUSH            {R4-R7,LR}
4938FE:  ADD             R7, SP, #0xC
493900:  PUSH.W          {R8}
493904:  SUB             SP, SP, #0x10
493906:  LDR             R0, =(UseDataFence_ptr - 0x49390C)
493908:  ADD             R0, PC; UseDataFence_ptr
49390A:  LDR             R0, [R0]; UseDataFence
49390C:  LDRB            R4, [R0]
49390E:  CBZ             R4, loc_493924
493910:  LDR             R0, =(UseDataFence_ptr - 0x493918)
493912:  MOVS            R1, #(stderr+2); void *
493914:  ADD             R0, PC; UseDataFence_ptr
493916:  LDR             R5, [R0]; UseDataFence
493918:  MOVS            R0, #0
49391A:  STRB            R0, [R5]
49391C:  ADD             R0, SP, #0x20+var_14; this
49391E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493922:  STRB            R4, [R5]
493924:  ADD             R0, SP, #0x20+var_14; this
493926:  MOVS            R1, #byte_4; void *
493928:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49392C:  LDR             R0, [SP,#0x20+var_14]; this
49392E:  ADDS            R1, R0, #1; int
493930:  BEQ             loc_49393A
493932:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493936:  MOV             R8, R0
493938:  B               loc_49393E
49393A:  MOV.W           R8, #0
49393E:  LDR             R0, =(UseDataFence_ptr - 0x493944)
493940:  ADD             R0, PC; UseDataFence_ptr
493942:  LDR             R0, [R0]; UseDataFence
493944:  LDRB            R5, [R0]
493946:  CBZ             R5, loc_49395C
493948:  LDR             R0, =(UseDataFence_ptr - 0x493950)
49394A:  MOVS            R1, #(stderr+2); void *
49394C:  ADD             R0, PC; UseDataFence_ptr
49394E:  LDR             R6, [R0]; UseDataFence
493950:  MOVS            R0, #0
493952:  STRB            R0, [R6]
493954:  ADD             R0, SP, #0x20+var_18; this
493956:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49395A:  STRB            R5, [R6]
49395C:  ADD             R0, SP, #0x20+var_18; this
49395E:  MOVS            R1, #byte_4; void *
493960:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493964:  LDR             R0, [SP,#0x20+var_18]; this
493966:  ADDS            R1, R0, #1; int
493968:  BEQ             loc_493972
49396A:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
49396E:  MOV             R5, R0
493970:  B               loc_493974
493972:  MOVS            R5, #0
493974:  LDR             R0, =(UseDataFence_ptr - 0x49397A)
493976:  ADD             R0, PC; UseDataFence_ptr
493978:  LDR             R0, [R0]; UseDataFence
49397A:  LDRB            R6, [R0]
49397C:  CBZ             R6, loc_493992
49397E:  LDR             R0, =(UseDataFence_ptr - 0x493986)
493980:  MOVS            R1, #(stderr+2); void *
493982:  ADD             R0, PC; UseDataFence_ptr
493984:  LDR             R4, [R0]; UseDataFence
493986:  MOVS            R0, #0
493988:  STRB            R0, [R4]
49398A:  ADD             R0, SP, #0x20+var_18; this
49398C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493990:  STRB            R6, [R4]
493992:  SUB.W           R0, R7, #-var_19; this
493996:  MOVS            R1, #(stderr+1); void *
493998:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49399C:  LDR             R0, =(UseDataFence_ptr - 0x4939A2)
49399E:  ADD             R0, PC; UseDataFence_ptr
4939A0:  LDR             R0, [R0]; UseDataFence
4939A2:  LDRB            R6, [R0]
4939A4:  CBZ             R6, loc_4939BA
4939A6:  LDR             R0, =(UseDataFence_ptr - 0x4939AE)
4939A8:  MOVS            R1, #(stderr+2); void *
4939AA:  ADD             R0, PC; UseDataFence_ptr
4939AC:  LDR             R4, [R0]; UseDataFence
4939AE:  MOVS            R0, #0
4939B0:  STRB            R0, [R4]
4939B2:  ADD             R0, SP, #0x20+var_18; this
4939B4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4939B8:  STRB            R6, [R4]
4939BA:  ADD             R0, SP, #0x20+var_18; this
4939BC:  MOVS            R1, #byte_4; void *
4939BE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4939C2:  MOVS            R0, #dword_24; this
4939C4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4939C8:  LDRB.W          R3, [R7,#var_19]; bool
4939CC:  MOV             R2, R5; CPed *
4939CE:  LDR             R1, [SP,#0x20+var_18]
4939D0:  STR             R1, [SP,#0x20+var_20]; int
4939D2:  MOV             R1, R8; CVehicle *
4939D4:  BLX             j__ZN35CTaskComplexEnterCarAsPassengerWaitC2EP8CVehicleP4CPedbi; CTaskComplexEnterCarAsPassengerWait::CTaskComplexEnterCarAsPassengerWait(CVehicle *,CPed *,bool,int)
4939D8:  ADD             SP, SP, #0x10
4939DA:  POP.W           {R8}
4939DE:  POP             {R4-R7,PC}
