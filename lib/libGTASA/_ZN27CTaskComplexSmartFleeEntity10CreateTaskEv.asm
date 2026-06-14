; =========================================================
; Game Engine Function: _ZN27CTaskComplexSmartFleeEntity10CreateTaskEv
; Address            : 0x495828 - 0x495940
; =========================================================

495828:  PUSH            {R4-R7,LR}
49582A:  ADD             R7, SP, #0xC
49582C:  PUSH.W          {R11}
495830:  SUB             SP, SP, #0x18
495832:  LDR             R0, =(UseDataFence_ptr - 0x495838)
495834:  ADD             R0, PC; UseDataFence_ptr
495836:  LDR             R0, [R0]; UseDataFence
495838:  LDRB            R4, [R0]
49583A:  CBZ             R4, loc_495850
49583C:  LDR             R0, =(UseDataFence_ptr - 0x495844)
49583E:  MOVS            R1, #(stderr+2); void *
495840:  ADD             R0, PC; UseDataFence_ptr
495842:  LDR             R5, [R0]; UseDataFence
495844:  MOVS            R0, #0
495846:  STRB            R0, [R5]
495848:  ADD             R0, SP, #0x28+var_14; this
49584A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49584E:  STRB            R4, [R5]
495850:  ADD             R0, SP, #0x28+var_14; this
495852:  MOVS            R1, #byte_4; void *
495854:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495858:  LDR             R0, [SP,#0x28+var_14]
49585A:  CMP             R0, #2
49585C:  BEQ             loc_495898
49585E:  CMP             R0, #4
495860:  BEQ             loc_4958CA
495862:  CMP             R0, #3
495864:  BNE             loc_4958FE
495866:  LDR             R0, =(UseDataFence_ptr - 0x49586C)
495868:  ADD             R0, PC; UseDataFence_ptr
49586A:  LDR             R0, [R0]; UseDataFence
49586C:  LDRB            R4, [R0]
49586E:  CBZ             R4, loc_495884
495870:  LDR             R0, =(UseDataFence_ptr - 0x495878)
495872:  MOVS            R1, #(stderr+2); void *
495874:  ADD             R0, PC; UseDataFence_ptr
495876:  LDR             R5, [R0]; UseDataFence
495878:  MOVS            R0, #0
49587A:  STRB            R0, [R5]
49587C:  ADD             R0, SP, #0x28+var_18; this
49587E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495882:  STRB            R4, [R5]
495884:  ADD             R0, SP, #0x28+var_18; this
495886:  MOVS            R1, #byte_4; void *
495888:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49588C:  LDR             R0, [SP,#0x28+var_18]; this
49588E:  ADDS            R1, R0, #1; int
495890:  BEQ             loc_4958FE
495892:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
495896:  B               loc_4958FA
495898:  LDR             R0, =(UseDataFence_ptr - 0x49589E)
49589A:  ADD             R0, PC; UseDataFence_ptr
49589C:  LDR             R0, [R0]; UseDataFence
49589E:  LDRB            R4, [R0]
4958A0:  CBZ             R4, loc_4958B6
4958A2:  LDR             R0, =(UseDataFence_ptr - 0x4958AA)
4958A4:  MOVS            R1, #(stderr+2); void *
4958A6:  ADD             R0, PC; UseDataFence_ptr
4958A8:  LDR             R5, [R0]; UseDataFence
4958AA:  MOVS            R0, #0
4958AC:  STRB            R0, [R5]
4958AE:  ADD             R0, SP, #0x28+var_18; this
4958B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4958B4:  STRB            R4, [R5]
4958B6:  ADD             R0, SP, #0x28+var_18; this
4958B8:  MOVS            R1, #byte_4; void *
4958BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4958BE:  LDR             R0, [SP,#0x28+var_18]; this
4958C0:  ADDS            R1, R0, #1; int
4958C2:  BEQ             loc_4958FE
4958C4:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4958C8:  B               loc_4958FA
4958CA:  LDR             R0, =(UseDataFence_ptr - 0x4958D0)
4958CC:  ADD             R0, PC; UseDataFence_ptr
4958CE:  LDR             R0, [R0]; UseDataFence
4958D0:  LDRB            R4, [R0]
4958D2:  CBZ             R4, loc_4958E8
4958D4:  LDR             R0, =(UseDataFence_ptr - 0x4958DC)
4958D6:  MOVS            R1, #(stderr+2); void *
4958D8:  ADD             R0, PC; UseDataFence_ptr
4958DA:  LDR             R5, [R0]; UseDataFence
4958DC:  MOVS            R0, #0
4958DE:  STRB            R0, [R5]
4958E0:  ADD             R0, SP, #0x28+var_18; this
4958E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4958E6:  STRB            R4, [R5]
4958E8:  ADD             R0, SP, #0x28+var_18; this
4958EA:  MOVS            R1, #byte_4; void *
4958EC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4958F0:  LDR             R0, [SP,#0x28+var_18]; this
4958F2:  ADDS            R1, R0, #1; int
4958F4:  BEQ             loc_4958FE
4958F6:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
4958FA:  MOV             R6, R0
4958FC:  B               loc_495900
4958FE:  MOVS            R6, #0
495900:  MOVS            R0, #dword_40; this
495902:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
495906:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x495910)
495908:  LDR             R5, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x495914)
49590A:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x495916)
49590C:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
49590E:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x49591A)
495910:  ADD             R5, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
495912:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
495914:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
495916:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
495918:  LDR             R5, [R5]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
49591A:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
49591C:  LDR             R4, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
49591E:  VLDR            S0, [R2]
495922:  LDR             R2, [R5]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
495924:  LDR             R3, [R1]; float
495926:  LDR             R1, [R4]; CTaskComplexSmartFleeEntity::ms_iFleeTime
495928:  STRD.W          R1, R2, [SP,#0x28+var_28]; int
49592C:  MOV             R1, R6; CEntity *
49592E:  MOVS            R2, #0; bool
495930:  VSTR            S0, [SP,#0x28+var_20]
495934:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
495938:  ADD             SP, SP, #0x18
49593A:  POP.W           {R11}
49593E:  POP             {R4-R7,PC}
