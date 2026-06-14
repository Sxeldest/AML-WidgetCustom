; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttempt10CreateTaskEv
; Address            : 0x4928E8 - 0x492A62
; =========================================================

4928E8:  PUSH            {R4-R7,LR}
4928EA:  ADD             R7, SP, #0xC
4928EC:  PUSH.W          {R8,R9,R11}
4928F0:  SUB             SP, SP, #0x48
4928F2:  LDR             R0, =(UseDataFence_ptr - 0x4928F8)
4928F4:  ADD             R0, PC; UseDataFence_ptr
4928F6:  LDR             R0, [R0]; UseDataFence
4928F8:  LDRB            R4, [R0]
4928FA:  CBZ             R4, loc_492910
4928FC:  LDR             R0, =(UseDataFence_ptr - 0x492904)
4928FE:  MOVS            R1, #(stderr+2); void *
492900:  ADD             R0, PC; UseDataFence_ptr
492902:  LDR             R5, [R0]; UseDataFence
492904:  MOVS            R0, #0
492906:  STRB            R0, [R5]
492908:  ADD             R0, SP, #0x60+var_30; this
49290A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49290E:  STRB            R4, [R5]
492910:  ADD             R0, SP, #0x60+var_21+1; this
492912:  MOVS            R1, #byte_4; void *
492914:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492918:  LDR             R0, [SP,#0x60+var_21+1]; this
49291A:  ADDS            R1, R0, #1; int
49291C:  BEQ             loc_492926
49291E:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
492922:  MOV             R9, R0
492924:  B               loc_49292A
492926:  MOV.W           R9, #0
49292A:  LDR             R0, =(UseDataFence_ptr - 0x492930)
49292C:  ADD             R0, PC; UseDataFence_ptr
49292E:  LDR             R0, [R0]; UseDataFence
492930:  LDRB            R5, [R0]
492932:  CBZ             R5, loc_492948
492934:  LDR             R0, =(UseDataFence_ptr - 0x49293C)
492936:  MOVS            R1, #(stderr+2); void *
492938:  ADD             R0, PC; UseDataFence_ptr
49293A:  LDR             R6, [R0]; UseDataFence
49293C:  MOVS            R0, #0
49293E:  STRB            R0, [R6]
492940:  ADD             R0, SP, #0x60+var_30; this
492942:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492946:  STRB            R5, [R6]
492948:  SUB.W           R0, R7, #-var_21; this
49294C:  MOVS            R1, #(stderr+1); void *
49294E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492952:  LDR             R0, =(UseDataFence_ptr - 0x492958)
492954:  ADD             R0, PC; UseDataFence_ptr
492956:  LDR             R0, [R0]; UseDataFence
492958:  LDRB            R5, [R0]
49295A:  CBZ             R5, loc_492970
49295C:  LDR             R0, =(UseDataFence_ptr - 0x492964)
49295E:  MOVS            R1, #(stderr+2); void *
492960:  ADD             R0, PC; UseDataFence_ptr
492962:  LDR             R6, [R0]; UseDataFence
492964:  MOVS            R0, #0
492966:  STRB            R0, [R6]
492968:  ADD             R0, SP, #0x60+var_30; this
49296A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49296E:  STRB            R5, [R6]
492970:  ADD             R0, SP, #0x60+var_30; this
492972:  MOVS            R1, #(byte_9+3); void *
492974:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492978:  LDR             R0, =(UseDataFence_ptr - 0x49297E)
49297A:  ADD             R0, PC; UseDataFence_ptr
49297C:  LDR             R0, [R0]; UseDataFence
49297E:  LDRB            R5, [R0]
492980:  CBZ             R5, loc_492996
492982:  LDR             R0, =(UseDataFence_ptr - 0x49298A)
492984:  MOVS            R1, #(stderr+2); void *
492986:  ADD             R0, PC; UseDataFence_ptr
492988:  LDR             R6, [R0]; UseDataFence
49298A:  MOVS            R0, #0
49298C:  STRB            R0, [R6]
49298E:  ADD             R0, SP, #0x60+var_3C; this
492990:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492994:  STRB            R5, [R6]
492996:  ADD.W           R8, SP, #0x60+var_3C
49299A:  MOVS            R1, #(byte_9+3); void *
49299C:  MOV             R0, R8; this
49299E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4929A2:  LDR             R0, =(UseDataFence_ptr - 0x4929A8)
4929A4:  ADD             R0, PC; UseDataFence_ptr
4929A6:  LDR             R0, [R0]; UseDataFence
4929A8:  LDRB            R6, [R0]
4929AA:  CBZ             R6, loc_4929C0
4929AC:  LDR             R0, =(UseDataFence_ptr - 0x4929B4)
4929AE:  MOVS            R1, #(stderr+2); void *
4929B0:  ADD             R0, PC; UseDataFence_ptr
4929B2:  LDR             R5, [R0]; UseDataFence
4929B4:  MOVS            R0, #0
4929B6:  STRB            R0, [R5]
4929B8:  ADD             R0, SP, #0x60+var_48; this
4929BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4929BE:  STRB            R6, [R5]
4929C0:  ADD             R6, SP, #0x60+var_48
4929C2:  MOVS            R1, #(byte_9+3); void *
4929C4:  MOV             R0, R6; this
4929C6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4929CA:  LDR             R0, =(UseDataFence_ptr - 0x4929D0)
4929CC:  ADD             R0, PC; UseDataFence_ptr
4929CE:  LDR             R0, [R0]; UseDataFence
4929D0:  LDRB            R5, [R0]
4929D2:  CBZ             R5, loc_4929E8
4929D4:  LDR             R0, =(UseDataFence_ptr - 0x4929DC)
4929D6:  MOVS            R1, #(stderr+2); void *
4929D8:  ADD             R0, PC; UseDataFence_ptr
4929DA:  LDR             R4, [R0]; UseDataFence
4929DC:  MOVS            R0, #0
4929DE:  STRB            R0, [R4]
4929E0:  ADD             R0, SP, #0x60+var_54; this
4929E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4929E6:  STRB            R5, [R4]
4929E8:  ADD             R0, SP, #0x60+var_54; this
4929EA:  MOVS            R1, #(byte_9+3); void *
4929EC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4929F0:  LDR             R0, =(UseDataFence_ptr - 0x4929F6)
4929F2:  ADD             R0, PC; UseDataFence_ptr
4929F4:  LDR             R0, [R0]; UseDataFence
4929F6:  LDRB            R5, [R0]
4929F8:  CBZ             R5, loc_492A10
4929FA:  LDR             R0, =(UseDataFence_ptr - 0x492A02)
4929FC:  MOVS            R1, #(stderr+2); void *
4929FE:  ADD             R0, PC; UseDataFence_ptr
492A00:  LDR             R4, [R0]; UseDataFence
492A02:  MOVS            R0, #0
492A04:  STRB            R0, [R4]
492A06:  SUB.W           R0, R7, #-var_1A; this
492A0A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492A0E:  STRB            R5, [R4]
492A10:  SUB.W           R0, R7, #-var_1A; this
492A14:  MOVS            R1, #(stderr+1); void *
492A16:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492A1A:  MOVS            R0, #dword_4C; this
492A1C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492A20:  LDRSB.W         R1, [R7,#var_21]; int
492A24:  CMP.W           R9, #0
492A28:  BEQ             loc_492A44
492A2A:  LDRB.W          R2, [R7,#var_1A]
492A2E:  ADD             R3, SP, #0x60+var_54; CVector *
492A30:  CMP             R2, #0
492A32:  IT NE
492A34:  MOVNE           R2, #1
492A36:  STRD.W          R8, R6, [SP,#0x60+var_60]; CVector *
492A3A:  STR             R2, [SP,#0x60+var_58]; bool
492A3C:  MOV             R2, R9; CEntity *
492A3E:  BLX             j__ZN36CTaskComplexWalkRoundBuildingAttemptC2EiP7CEntityRK7CVectorS4_S4_b; CTaskComplexWalkRoundBuildingAttempt::CTaskComplexWalkRoundBuildingAttempt(int,CEntity *,CVector const&,CVector const&,CVector const&,bool)
492A42:  B               loc_492A5A
492A44:  LDRB.W          R2, [R7,#var_1A]
492A48:  ADD             R3, SP, #0x60+var_3C; CVector *
492A4A:  CMP             R2, #0
492A4C:  IT NE
492A4E:  MOVNE           R2, #1
492A50:  STRD.W          R6, R2, [SP,#0x60+var_60]; CVector *
492A54:  ADD             R2, SP, #0x60+var_30; CVector *
492A56:  BLX             j__ZN36CTaskComplexWalkRoundBuildingAttemptC2EiRK7CVectorS2_S2_b; CTaskComplexWalkRoundBuildingAttempt::CTaskComplexWalkRoundBuildingAttempt(int,CVector const&,CVector const&,CVector const&,bool)
492A5A:  ADD             SP, SP, #0x48 ; 'H'
492A5C:  POP.W           {R8,R9,R11}
492A60:  POP             {R4-R7,PC}
