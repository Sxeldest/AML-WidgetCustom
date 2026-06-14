; =========================================================
; Game Engine Function: _ZN24CTaskComplexWalkRoundCar10CreateTaskEv
; Address            : 0x4927EC - 0x4928C8
; =========================================================

4927EC:  PUSH            {R4-R7,LR}
4927EE:  ADD             R7, SP, #0xC
4927F0:  PUSH.W          {R11}
4927F4:  SUB             SP, SP, #0x20
4927F6:  LDR             R0, =(UseDataFence_ptr - 0x4927FC)
4927F8:  ADD             R0, PC; UseDataFence_ptr
4927FA:  LDR             R0, [R0]; UseDataFence
4927FC:  LDRB            R4, [R0]
4927FE:  CBZ             R4, loc_492814
492800:  LDR             R0, =(UseDataFence_ptr - 0x492808)
492802:  MOVS            R1, #(stderr+2); void *
492804:  ADD             R0, PC; UseDataFence_ptr
492806:  LDR             R5, [R0]; UseDataFence
492808:  MOVS            R0, #0
49280A:  STRB            R0, [R5]
49280C:  ADD             R0, SP, #0x30+var_24; this
49280E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492812:  STRB            R4, [R5]
492814:  ADD             R0, SP, #0x30+var_15+1; this
492816:  MOVS            R1, #byte_4; void *
492818:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49281C:  LDR             R0, [SP,#0x30+var_15+1]; this
49281E:  ADDS            R1, R0, #1; int
492820:  BEQ             loc_49282A
492822:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
492826:  MOV             R4, R0
492828:  B               loc_49282C
49282A:  MOVS            R4, #0
49282C:  LDR             R0, =(UseDataFence_ptr - 0x492832)
49282E:  ADD             R0, PC; UseDataFence_ptr
492830:  LDR             R0, [R0]; UseDataFence
492832:  LDRB            R5, [R0]
492834:  CBZ             R5, loc_49284A
492836:  LDR             R0, =(UseDataFence_ptr - 0x49283E)
492838:  MOVS            R1, #(stderr+2); void *
49283A:  ADD             R0, PC; UseDataFence_ptr
49283C:  LDR             R6, [R0]; UseDataFence
49283E:  MOVS            R0, #0
492840:  STRB            R0, [R6]
492842:  ADD             R0, SP, #0x30+var_24; this
492844:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492848:  STRB            R5, [R6]
49284A:  SUB.W           R0, R7, #-var_15; this
49284E:  MOVS            R1, #(stderr+1); void *
492850:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492854:  LDR             R0, =(UseDataFence_ptr - 0x49285A)
492856:  ADD             R0, PC; UseDataFence_ptr
492858:  LDR             R0, [R0]; UseDataFence
49285A:  LDRB            R5, [R0]
49285C:  CBZ             R5, loc_492872
49285E:  LDR             R0, =(UseDataFence_ptr - 0x492866)
492860:  MOVS            R1, #(stderr+2); void *
492862:  ADD             R0, PC; UseDataFence_ptr
492864:  LDR             R6, [R0]; UseDataFence
492866:  MOVS            R0, #0
492868:  STRB            R0, [R6]
49286A:  ADD             R0, SP, #0x30+var_24; this
49286C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492870:  STRB            R5, [R6]
492872:  ADD             R0, SP, #0x30+var_24; this
492874:  MOVS            R1, #(byte_9+3); void *
492876:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49287A:  LDR             R0, =(UseDataFence_ptr - 0x492880)
49287C:  ADD             R0, PC; UseDataFence_ptr
49287E:  LDR             R0, [R0]; UseDataFence
492880:  LDRB            R5, [R0]
492882:  CBZ             R5, loc_492898
492884:  LDR             R0, =(UseDataFence_ptr - 0x49288C)
492886:  MOVS            R1, #(stderr+2); void *
492888:  ADD             R0, PC; UseDataFence_ptr
49288A:  LDR             R6, [R0]; UseDataFence
49288C:  MOVS            R0, #0
49288E:  STRB            R0, [R6]
492890:  ADD             R0, SP, #0x30+var_28; this
492892:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492896:  STRB            R5, [R6]
492898:  ADD             R0, SP, #0x30+var_28; this
49289A:  MOVS            R1, #byte_4; void *
49289C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4928A0:  MOVS            R0, #dword_58; this
4928A2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4928A6:  LDR             R2, [SP,#0x30+var_28]
4928A8:  MOVS            R3, #0
4928AA:  LDRSB.W         R1, [R7,#var_15]; int
4928AE:  CMP             R2, #0
4928B0:  IT NE
4928B2:  MOVNE           R2, #1
4928B4:  STRD.W          R2, R3, [SP,#0x30+var_30]; bool
4928B8:  ADD             R2, SP, #0x30+var_24; CVector *
4928BA:  MOV             R3, R4; CVehicle *
4928BC:  BLX             j__ZN24CTaskComplexWalkRoundCarC2EiRK7CVectorPK8CVehiclebi; CTaskComplexWalkRoundCar::CTaskComplexWalkRoundCar(int,CVector const&,CVehicle const*,bool,int)
4928C0:  ADD             SP, SP, #0x20 ; ' '
4928C2:  POP.W           {R11}
4928C6:  POP             {R4-R7,PC}
