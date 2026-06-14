; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering10CreateTaskEv
; Address            : 0x495970 - 0x495A16
; =========================================================

495970:  PUSH            {R4-R7,LR}
495972:  ADD             R7, SP, #0xC
495974:  PUSH.W          {R11}
495978:  SUB             SP, SP, #0x18
49597A:  LDR             R0, =(UseDataFence_ptr - 0x495980)
49597C:  ADD             R0, PC; UseDataFence_ptr
49597E:  LDR             R0, [R0]; UseDataFence
495980:  LDRB            R4, [R0]
495982:  CBZ             R4, loc_495998
495984:  LDR             R0, =(UseDataFence_ptr - 0x49598C)
495986:  MOVS            R1, #(stderr+2); void *
495988:  ADD             R0, PC; UseDataFence_ptr
49598A:  LDR             R5, [R0]; UseDataFence
49598C:  MOVS            R0, #0
49598E:  STRB            R0, [R5]
495990:  ADD             R0, SP, #0x28+var_24; this
495992:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495996:  STRB            R4, [R5]
495998:  ADD             R0, SP, #0x28+var_14; this
49599A:  MOVS            R1, #byte_4; void *
49599C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4959A0:  LDR             R0, [SP,#0x28+var_14]; this
4959A2:  ADDS            R1, R0, #1; int
4959A4:  BEQ             loc_4959AE
4959A6:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
4959AA:  MOV             R4, R0
4959AC:  B               loc_4959B0
4959AE:  MOVS            R4, #0
4959B0:  LDR             R0, =(UseDataFence_ptr - 0x4959B6)
4959B2:  ADD             R0, PC; UseDataFence_ptr
4959B4:  LDR             R0, [R0]; UseDataFence
4959B6:  LDRB            R5, [R0]
4959B8:  CBZ             R5, loc_4959CE
4959BA:  LDR             R0, =(UseDataFence_ptr - 0x4959C2)
4959BC:  MOVS            R1, #(stderr+2); void *
4959BE:  ADD             R0, PC; UseDataFence_ptr
4959C0:  LDR             R6, [R0]; UseDataFence
4959C2:  MOVS            R0, #0
4959C4:  STRB            R0, [R6]
4959C6:  ADD             R0, SP, #0x28+var_24; this
4959C8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4959CC:  STRB            R5, [R6]
4959CE:  ADD             R0, SP, #0x28+var_18; this
4959D0:  MOVS            R1, #byte_4; void *
4959D2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4959D6:  LDR             R0, =(UseDataFence_ptr - 0x4959DC)
4959D8:  ADD             R0, PC; UseDataFence_ptr
4959DA:  LDR             R0, [R0]; UseDataFence
4959DC:  LDRB            R5, [R0]
4959DE:  CBZ             R5, loc_4959F4
4959E0:  LDR             R0, =(UseDataFence_ptr - 0x4959E8)
4959E2:  MOVS            R1, #(stderr+2); void *
4959E4:  ADD             R0, PC; UseDataFence_ptr
4959E6:  LDR             R6, [R0]; UseDataFence
4959E8:  MOVS            R0, #0
4959EA:  STRB            R0, [R6]
4959EC:  ADD             R0, SP, #0x28+var_24; this
4959EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4959F2:  STRB            R5, [R6]
4959F4:  ADD             R5, SP, #0x28+var_24
4959F6:  MOVS            R1, #(byte_9+3); void *
4959F8:  MOV             R0, R5; this
4959FA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4959FE:  MOVS            R0, #dword_60; this
495A00:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
495A04:  LDR             R3, [SP,#0x28+var_18]; int
495A06:  MOV             R1, R4; CPed *
495A08:  MOV             R2, R5; CVector *
495A0A:  BLX             j__ZN39CTaskComplexAvoidOtherPedWhileWanderingC2EP4CPedRK7CVectori; CTaskComplexAvoidOtherPedWhileWandering::CTaskComplexAvoidOtherPedWhileWandering(CPed *,CVector const&,int)
495A0E:  ADD             SP, SP, #0x18
495A10:  POP.W           {R11}
495A14:  POP             {R4-R7,PC}
