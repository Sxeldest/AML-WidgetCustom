; =========================================================
; Game Engine Function: _ZN16CTaskSimpleClimb10CreateTaskEv
; Address            : 0x4916A4 - 0x49186E
; =========================================================

4916A4:  PUSH            {R4-R7,LR}
4916A6:  ADD             R7, SP, #0xC
4916A8:  PUSH.W          {R11}
4916AC:  SUB             SP, SP, #0x28; unsigned __int8
4916AE:  LDR             R0, =(UseDataFence_ptr - 0x4916B4)
4916B0:  ADD             R0, PC; UseDataFence_ptr
4916B2:  LDR             R0, [R0]; UseDataFence
4916B4:  LDRB            R4, [R0]
4916B6:  CBZ             R4, loc_4916CC
4916B8:  LDR             R0, =(UseDataFence_ptr - 0x4916C0)
4916BA:  MOVS            R1, #(stderr+2); void *
4916BC:  ADD             R0, PC; UseDataFence_ptr
4916BE:  LDR             R5, [R0]; UseDataFence
4916C0:  MOVS            R0, #0
4916C2:  STRB            R0, [R5]
4916C4:  ADD             R0, SP, #0x38+var_24; this
4916C6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4916CA:  STRB            R4, [R5]
4916CC:  ADD             R0, SP, #0x38+var_18; this
4916CE:  MOVS            R1, #byte_4; void *
4916D0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4916D4:  LDR             R0, [SP,#0x38+var_18]
4916D6:  CMP             R0, #2
4916D8:  BEQ             loc_491714
4916DA:  CMP             R0, #4
4916DC:  BEQ             loc_491746
4916DE:  CMP             R0, #3
4916E0:  BNE             loc_49177A
4916E2:  LDR             R0, =(UseDataFence_ptr - 0x4916E8)
4916E4:  ADD             R0, PC; UseDataFence_ptr
4916E6:  LDR             R0, [R0]; UseDataFence
4916E8:  LDRB            R4, [R0]
4916EA:  CBZ             R4, loc_491700
4916EC:  LDR             R0, =(UseDataFence_ptr - 0x4916F4)
4916EE:  MOVS            R1, #(stderr+2); void *
4916F0:  ADD             R0, PC; UseDataFence_ptr
4916F2:  LDR             R5, [R0]; UseDataFence
4916F4:  MOVS            R0, #0
4916F6:  STRB            R0, [R5]
4916F8:  ADD             R0, SP, #0x38+var_24; this
4916FA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4916FE:  STRB            R4, [R5]
491700:  ADD             R0, SP, #0x38+var_24; this
491702:  MOVS            R1, #byte_4; void *
491704:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491708:  LDR             R0, [SP,#0x38+var_24]; this
49170A:  ADDS            R1, R0, #1; int
49170C:  BEQ             loc_49177A
49170E:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
491712:  B               loc_491776
491714:  LDR             R0, =(UseDataFence_ptr - 0x49171A)
491716:  ADD             R0, PC; UseDataFence_ptr
491718:  LDR             R0, [R0]; UseDataFence
49171A:  LDRB            R4, [R0]
49171C:  CBZ             R4, loc_491732
49171E:  LDR             R0, =(UseDataFence_ptr - 0x491726)
491720:  MOVS            R1, #(stderr+2); void *
491722:  ADD             R0, PC; UseDataFence_ptr
491724:  LDR             R5, [R0]; UseDataFence
491726:  MOVS            R0, #0
491728:  STRB            R0, [R5]
49172A:  ADD             R0, SP, #0x38+var_24; this
49172C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491730:  STRB            R4, [R5]
491732:  ADD             R0, SP, #0x38+var_24; this
491734:  MOVS            R1, #byte_4; void *
491736:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49173A:  LDR             R0, [SP,#0x38+var_24]; this
49173C:  ADDS            R1, R0, #1; int
49173E:  BEQ             loc_49177A
491740:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
491744:  B               loc_491776
491746:  LDR             R0, =(UseDataFence_ptr - 0x49174C)
491748:  ADD             R0, PC; UseDataFence_ptr
49174A:  LDR             R0, [R0]; UseDataFence
49174C:  LDRB            R4, [R0]
49174E:  CBZ             R4, loc_491764
491750:  LDR             R0, =(UseDataFence_ptr - 0x491758)
491752:  MOVS            R1, #(stderr+2); void *
491754:  ADD             R0, PC; UseDataFence_ptr
491756:  LDR             R5, [R0]; UseDataFence
491758:  MOVS            R0, #0
49175A:  STRB            R0, [R5]
49175C:  ADD             R0, SP, #0x38+var_24; this
49175E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491762:  STRB            R4, [R5]
491764:  ADD             R0, SP, #0x38+var_24; this
491766:  MOVS            R1, #byte_4; void *
491768:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49176C:  LDR             R0, [SP,#0x38+var_24]; this
49176E:  ADDS            R1, R0, #1; int
491770:  BEQ             loc_49177A
491772:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
491776:  MOV             R4, R0
491778:  B               loc_49177C
49177A:  MOVS            R4, #0
49177C:  LDR             R0, =(UseDataFence_ptr - 0x491782)
49177E:  ADD             R0, PC; UseDataFence_ptr
491780:  LDR             R0, [R0]; UseDataFence
491782:  LDRB            R5, [R0]
491784:  CBZ             R5, loc_49179A
491786:  LDR             R0, =(UseDataFence_ptr - 0x49178E)
491788:  MOVS            R1, #(stderr+2); void *
49178A:  ADD             R0, PC; UseDataFence_ptr
49178C:  LDR             R6, [R0]; UseDataFence
49178E:  MOVS            R0, #0
491790:  STRB            R0, [R6]
491792:  ADD             R0, SP, #0x38+var_24; this
491794:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491798:  STRB            R5, [R6]
49179A:  ADD             R0, SP, #0x38+var_24; this
49179C:  MOVS            R1, #(byte_9+3); void *
49179E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4917A2:  LDR             R0, =(UseDataFence_ptr - 0x4917A8)
4917A4:  ADD             R0, PC; UseDataFence_ptr
4917A6:  LDR             R0, [R0]; UseDataFence
4917A8:  LDRB            R5, [R0]
4917AA:  CBZ             R5, loc_4917C0
4917AC:  LDR             R0, =(UseDataFence_ptr - 0x4917B4)
4917AE:  MOVS            R1, #(stderr+2); void *
4917B0:  ADD             R0, PC; UseDataFence_ptr
4917B2:  LDR             R6, [R0]; UseDataFence
4917B4:  MOVS            R0, #0
4917B6:  STRB            R0, [R6]
4917B8:  ADD             R0, SP, #0x38+var_28; this
4917BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4917BE:  STRB            R5, [R6]
4917C0:  ADD             R0, SP, #0x38+var_28; this
4917C2:  MOVS            R1, #byte_4; void *
4917C4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4917C8:  LDR             R0, =(UseDataFence_ptr - 0x4917CE)
4917CA:  ADD             R0, PC; UseDataFence_ptr
4917CC:  LDR             R0, [R0]; UseDataFence
4917CE:  LDRB            R5, [R0]
4917D0:  CBZ             R5, loc_4917E8
4917D2:  LDR             R0, =(UseDataFence_ptr - 0x4917DA)
4917D4:  MOVS            R1, #(stderr+2); void *
4917D6:  ADD             R0, PC; UseDataFence_ptr
4917D8:  LDR             R6, [R0]; UseDataFence
4917DA:  MOVS            R0, #0
4917DC:  STRB            R0, [R6]
4917DE:  SUB.W           R0, R7, #-var_12; this
4917E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4917E6:  STRB            R5, [R6]
4917E8:  SUB.W           R0, R7, #-var_29; this
4917EC:  MOVS            R1, #(stderr+1); void *
4917EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4917F2:  LDR             R0, =(UseDataFence_ptr - 0x4917F8)
4917F4:  ADD             R0, PC; UseDataFence_ptr
4917F6:  LDR             R0, [R0]; UseDataFence
4917F8:  LDRB            R5, [R0]
4917FA:  CBZ             R5, loc_491812
4917FC:  LDR             R0, =(UseDataFence_ptr - 0x491804)
4917FE:  MOVS            R1, #(stderr+2); void *
491800:  ADD             R0, PC; UseDataFence_ptr
491802:  LDR             R6, [R0]; UseDataFence
491804:  MOVS            R0, #0
491806:  STRB            R0, [R6]
491808:  SUB.W           R0, R7, #-var_12; this
49180C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491810:  STRB            R5, [R6]
491812:  SUB.W           R0, R7, #-var_2A; this
491816:  MOVS            R1, #(stderr+1); void *
491818:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49181C:  LDR             R0, =(UseDataFence_ptr - 0x491822)
49181E:  ADD             R0, PC; UseDataFence_ptr
491820:  LDR             R0, [R0]; UseDataFence
491822:  LDRB            R5, [R0]
491824:  CBZ             R5, loc_49183C
491826:  LDR             R0, =(UseDataFence_ptr - 0x49182E)
491828:  MOVS            R1, #(stderr+2); void *
49182A:  ADD             R0, PC; UseDataFence_ptr
49182C:  LDR             R6, [R0]; UseDataFence
49182E:  MOVS            R0, #0
491830:  STRB            R0, [R6]
491832:  SUB.W           R0, R7, #-var_12; this
491836:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49183A:  STRB            R5, [R6]
49183C:  SUB.W           R0, R7, #-var_12; this
491840:  MOVS            R1, #(stderr+1); void *
491842:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491846:  MOVS            R0, #word_30; this
491848:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49184C:  LDRB.W          R1, [R7,#var_29]
491850:  LDR             R3, [SP,#0x38+var_28]; float
491852:  LDRSB.W         R2, [R7,#var_2A]
491856:  LDRB.W          R6, [R7,#var_12]
49185A:  STMEA.W         SP, {R1,R2,R6}
49185E:  ADD             R2, SP, #0x38+var_24; CVector *
491860:  MOV             R1, R4; CEntity *
491862:  BLX             j__ZN16CTaskSimpleClimbC2EP7CEntityRK7CVectorfhab; CTaskSimpleClimb::CTaskSimpleClimb(CEntity *,CVector const&,float,uchar,signed char,bool)
491866:  ADD             SP, SP, #0x28 ; '('
491868:  POP.W           {R11}
49186C:  POP             {R4-R7,PC}
