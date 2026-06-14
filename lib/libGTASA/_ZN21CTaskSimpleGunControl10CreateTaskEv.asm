; =========================================================
; Game Engine Function: _ZN21CTaskSimpleGunControl10CreateTaskEv
; Address            : 0x496784 - 0x496898
; =========================================================

496784:  PUSH            {R4-R7,LR}
496786:  ADD             R7, SP, #0xC
496788:  PUSH.W          {R11}
49678C:  SUB             SP, SP, #0x28
49678E:  LDR             R0, =(UseDataFence_ptr - 0x496794)
496790:  ADD             R0, PC; UseDataFence_ptr
496792:  LDR             R0, [R0]; UseDataFence
496794:  LDRB            R4, [R0]
496796:  CBZ             R4, loc_4967AC
496798:  LDR             R0, =(UseDataFence_ptr - 0x4967A0)
49679A:  MOVS            R1, #(stderr+2); void *
49679C:  ADD             R0, PC; UseDataFence_ptr
49679E:  LDR             R5, [R0]; UseDataFence
4967A0:  MOVS            R0, #0
4967A2:  STRB            R0, [R5]
4967A4:  ADD             R0, SP, #0x38+var_20; this
4967A6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4967AA:  STRB            R4, [R5]
4967AC:  ADD             R0, SP, #0x38+var_14; this
4967AE:  MOVS            R1, #byte_4; void *
4967B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4967B4:  LDR             R0, [SP,#0x38+var_14]
4967B6:  CMP             R0, #2
4967B8:  BEQ             loc_4967F0
4967BA:  CMP             R0, #3
4967BC:  BNE             loc_496824
4967BE:  LDR             R0, =(UseDataFence_ptr - 0x4967C4)
4967C0:  ADD             R0, PC; UseDataFence_ptr
4967C2:  LDR             R0, [R0]; UseDataFence
4967C4:  LDRB            R4, [R0]
4967C6:  CBZ             R4, loc_4967DC
4967C8:  LDR             R0, =(UseDataFence_ptr - 0x4967D0)
4967CA:  MOVS            R1, #(stderr+2); void *
4967CC:  ADD             R0, PC; UseDataFence_ptr
4967CE:  LDR             R5, [R0]; UseDataFence
4967D0:  MOVS            R0, #0
4967D2:  STRB            R0, [R5]
4967D4:  ADD             R0, SP, #0x38+var_20; this
4967D6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4967DA:  STRB            R4, [R5]
4967DC:  ADD             R0, SP, #0x38+var_20; this
4967DE:  MOVS            R1, #byte_4; void *
4967E0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4967E4:  LDR             R0, [SP,#0x38+var_20]; this
4967E6:  ADDS            R1, R0, #1; int
4967E8:  BEQ             loc_496824
4967EA:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
4967EE:  B               loc_496820
4967F0:  LDR             R0, =(UseDataFence_ptr - 0x4967F6)
4967F2:  ADD             R0, PC; UseDataFence_ptr
4967F4:  LDR             R0, [R0]; UseDataFence
4967F6:  LDRB            R4, [R0]
4967F8:  CBZ             R4, loc_49680E
4967FA:  LDR             R0, =(UseDataFence_ptr - 0x496802)
4967FC:  MOVS            R1, #(stderr+2); void *
4967FE:  ADD             R0, PC; UseDataFence_ptr
496800:  LDR             R5, [R0]; UseDataFence
496802:  MOVS            R0, #0
496804:  STRB            R0, [R5]
496806:  ADD             R0, SP, #0x38+var_20; this
496808:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49680C:  STRB            R4, [R5]
49680E:  ADD             R0, SP, #0x38+var_20; this
496810:  MOVS            R1, #byte_4; void *
496812:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496816:  LDR             R0, [SP,#0x38+var_20]; this
496818:  ADDS            R1, R0, #1; int
49681A:  BEQ             loc_496824
49681C:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
496820:  MOV             R4, R0
496822:  B               loc_496826
496824:  MOVS            R4, #0
496826:  LDR             R0, =(UseDataFence_ptr - 0x49682C)
496828:  ADD             R0, PC; UseDataFence_ptr
49682A:  LDR             R0, [R0]; UseDataFence
49682C:  LDRB            R5, [R0]
49682E:  CBZ             R5, loc_496844
496830:  LDR             R0, =(UseDataFence_ptr - 0x496838)
496832:  MOVS            R1, #(stderr+2); void *
496834:  ADD             R0, PC; UseDataFence_ptr
496836:  LDR             R6, [R0]; UseDataFence
496838:  MOVS            R0, #0
49683A:  STRB            R0, [R6]
49683C:  ADD             R0, SP, #0x38+var_20; this
49683E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496842:  STRB            R5, [R6]
496844:  ADD             R0, SP, #0x38+var_20; this
496846:  MOVS            R1, #(byte_9+3); void *
496848:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49684C:  LDR             R0, =(UseDataFence_ptr - 0x496852)
49684E:  ADD             R0, PC; UseDataFence_ptr
496850:  LDR             R0, [R0]; UseDataFence
496852:  LDRB            R5, [R0]
496854:  CBZ             R5, loc_49686A
496856:  LDR             R0, =(UseDataFence_ptr - 0x49685E)
496858:  MOVS            R1, #(stderr+2); void *
49685A:  ADD             R0, PC; UseDataFence_ptr
49685C:  LDR             R6, [R0]; UseDataFence
49685E:  MOVS            R0, #0
496860:  STRB            R0, [R6]
496862:  ADD             R0, SP, #0x38+var_2C; this
496864:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496868:  STRB            R5, [R6]
49686A:  ADD             R5, SP, #0x38+var_2C
49686C:  MOVS            R1, #(byte_9+3); void *
49686E:  MOV             R0, R5; this
496870:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496874:  MOVS            R0, #off_3C; this
496876:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49687A:  MOVS            R2, #1
49687C:  MOV.W           R1, #0xFFFFFFFF
496880:  STRD.W          R2, R2, [SP,#0x38+var_38]; signed __int8
496884:  ADD             R2, SP, #0x38+var_20; CVector *
496886:  STR             R1, [SP,#0x38+var_30]; int
496888:  MOV             R1, R4; CEntity *
49688A:  MOV             R3, R5; CVector *
49688C:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
496890:  ADD             SP, SP, #0x28 ; '('
496892:  POP.W           {R11}
496896:  POP             {R4-R7,PC}
