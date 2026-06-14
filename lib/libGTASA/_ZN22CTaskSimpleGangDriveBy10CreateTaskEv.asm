; =========================================================
; Game Engine Function: _ZN22CTaskSimpleGangDriveBy10CreateTaskEv
; Address            : 0x4968C0 - 0x496A54
; =========================================================

4968C0:  PUSH            {R4-R7,LR}
4968C2:  ADD             R7, SP, #0xC
4968C4:  PUSH.W          {R11}
4968C8:  SUB             SP, SP, #0x28; signed __int8
4968CA:  LDR             R0, =(UseDataFence_ptr - 0x4968D0)
4968CC:  ADD             R0, PC; UseDataFence_ptr
4968CE:  LDR             R0, [R0]; UseDataFence
4968D0:  LDRB            R4, [R0]
4968D2:  CBZ             R4, loc_4968E8
4968D4:  LDR             R0, =(UseDataFence_ptr - 0x4968DC)
4968D6:  MOVS            R1, #(stderr+2); void *
4968D8:  ADD             R0, PC; UseDataFence_ptr
4968DA:  LDR             R5, [R0]; UseDataFence
4968DC:  MOVS            R0, #0
4968DE:  STRB            R0, [R5]
4968E0:  ADD             R0, SP, #0x38+var_24; this
4968E2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4968E6:  STRB            R4, [R5]
4968E8:  ADD             R0, SP, #0x38+var_18; this
4968EA:  MOVS            R1, #byte_4; void *
4968EC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4968F0:  LDR             R0, [SP,#0x38+var_18]
4968F2:  CMP             R0, #2
4968F4:  BEQ             loc_49692C
4968F6:  CMP             R0, #3
4968F8:  BNE             loc_496960
4968FA:  LDR             R0, =(UseDataFence_ptr - 0x496900)
4968FC:  ADD             R0, PC; UseDataFence_ptr
4968FE:  LDR             R0, [R0]; UseDataFence
496900:  LDRB            R4, [R0]
496902:  CBZ             R4, loc_496918
496904:  LDR             R0, =(UseDataFence_ptr - 0x49690C)
496906:  MOVS            R1, #(stderr+2); void *
496908:  ADD             R0, PC; UseDataFence_ptr
49690A:  LDR             R5, [R0]; UseDataFence
49690C:  MOVS            R0, #0
49690E:  STRB            R0, [R5]
496910:  ADD             R0, SP, #0x38+var_24; this
496912:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496916:  STRB            R4, [R5]
496918:  ADD             R0, SP, #0x38+var_24; this
49691A:  MOVS            R1, #byte_4; void *
49691C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496920:  LDR             R0, [SP,#0x38+var_24]; this
496922:  ADDS            R1, R0, #1; int
496924:  BEQ             loc_496960
496926:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
49692A:  B               loc_49695C
49692C:  LDR             R0, =(UseDataFence_ptr - 0x496932)
49692E:  ADD             R0, PC; UseDataFence_ptr
496930:  LDR             R0, [R0]; UseDataFence
496932:  LDRB            R4, [R0]
496934:  CBZ             R4, loc_49694A
496936:  LDR             R0, =(UseDataFence_ptr - 0x49693E)
496938:  MOVS            R1, #(stderr+2); void *
49693A:  ADD             R0, PC; UseDataFence_ptr
49693C:  LDR             R5, [R0]; UseDataFence
49693E:  MOVS            R0, #0
496940:  STRB            R0, [R5]
496942:  ADD             R0, SP, #0x38+var_24; this
496944:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496948:  STRB            R4, [R5]
49694A:  ADD             R0, SP, #0x38+var_24; this
49694C:  MOVS            R1, #byte_4; void *
49694E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496952:  LDR             R0, [SP,#0x38+var_24]; this
496954:  ADDS            R1, R0, #1; int
496956:  BEQ             loc_496960
496958:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49695C:  MOV             R4, R0
49695E:  B               loc_496962
496960:  MOVS            R4, #0
496962:  LDR             R0, =(UseDataFence_ptr - 0x496968)
496964:  ADD             R0, PC; UseDataFence_ptr
496966:  LDR             R0, [R0]; UseDataFence
496968:  LDRB            R5, [R0]
49696A:  CBZ             R5, loc_496980
49696C:  LDR             R0, =(UseDataFence_ptr - 0x496974)
49696E:  MOVS            R1, #(stderr+2); void *
496970:  ADD             R0, PC; UseDataFence_ptr
496972:  LDR             R6, [R0]; UseDataFence
496974:  MOVS            R0, #0
496976:  STRB            R0, [R6]
496978:  ADD             R0, SP, #0x38+var_24; this
49697A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49697E:  STRB            R5, [R6]
496980:  ADD             R0, SP, #0x38+var_24; this
496982:  MOVS            R1, #(byte_9+3); void *
496984:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496988:  LDR             R0, =(UseDataFence_ptr - 0x49698E)
49698A:  ADD             R0, PC; UseDataFence_ptr
49698C:  LDR             R0, [R0]; UseDataFence
49698E:  LDRB            R5, [R0]
496990:  CBZ             R5, loc_4969A6
496992:  LDR             R0, =(UseDataFence_ptr - 0x49699A)
496994:  MOVS            R1, #(stderr+2); void *
496996:  ADD             R0, PC; UseDataFence_ptr
496998:  LDR             R6, [R0]; UseDataFence
49699A:  MOVS            R0, #0
49699C:  STRB            R0, [R6]
49699E:  ADD             R0, SP, #0x38+var_28; this
4969A0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4969A4:  STRB            R5, [R6]
4969A6:  ADD             R0, SP, #0x38+var_28; this
4969A8:  MOVS            R1, #byte_4; void *
4969AA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4969AE:  LDR             R0, =(UseDataFence_ptr - 0x4969B4)
4969B0:  ADD             R0, PC; UseDataFence_ptr
4969B2:  LDR             R0, [R0]; UseDataFence
4969B4:  LDRB            R5, [R0]
4969B6:  CBZ             R5, loc_4969CE
4969B8:  LDR             R0, =(UseDataFence_ptr - 0x4969C0)
4969BA:  MOVS            R1, #(stderr+2); void *
4969BC:  ADD             R0, PC; UseDataFence_ptr
4969BE:  LDR             R6, [R0]; UseDataFence
4969C0:  MOVS            R0, #0
4969C2:  STRB            R0, [R6]
4969C4:  SUB.W           R0, R7, #-var_12; this
4969C8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4969CC:  STRB            R5, [R6]
4969CE:  SUB.W           R0, R7, #-var_29; this
4969D2:  MOVS            R1, #(stderr+1); void *
4969D4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4969D8:  LDR             R0, =(UseDataFence_ptr - 0x4969DE)
4969DA:  ADD             R0, PC; UseDataFence_ptr
4969DC:  LDR             R0, [R0]; UseDataFence
4969DE:  LDRB            R5, [R0]
4969E0:  CBZ             R5, loc_4969F8
4969E2:  LDR             R0, =(UseDataFence_ptr - 0x4969EA)
4969E4:  MOVS            R1, #(stderr+2); void *
4969E6:  ADD             R0, PC; UseDataFence_ptr
4969E8:  LDR             R6, [R0]; UseDataFence
4969EA:  MOVS            R0, #0
4969EC:  STRB            R0, [R6]
4969EE:  SUB.W           R0, R7, #-var_12; this
4969F2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4969F6:  STRB            R5, [R6]
4969F8:  SUB.W           R0, R7, #-var_2A; this
4969FC:  MOVS            R1, #(stderr+1); void *
4969FE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496A02:  LDR             R0, =(UseDataFence_ptr - 0x496A08)
496A04:  ADD             R0, PC; UseDataFence_ptr
496A06:  LDR             R0, [R0]; UseDataFence
496A08:  LDRB            R5, [R0]
496A0A:  CBZ             R5, loc_496A22
496A0C:  LDR             R0, =(UseDataFence_ptr - 0x496A14)
496A0E:  MOVS            R1, #(stderr+2); void *
496A10:  ADD             R0, PC; UseDataFence_ptr
496A12:  LDR             R6, [R0]; UseDataFence
496A14:  MOVS            R0, #0
496A16:  STRB            R0, [R6]
496A18:  SUB.W           R0, R7, #-var_12; this
496A1C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496A20:  STRB            R5, [R6]
496A22:  SUB.W           R0, R7, #-var_12; this
496A26:  MOVS            R1, #(stderr+1); void *
496A28:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496A2C:  MOVS            R0, #dword_44; this
496A2E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496A32:  LDRSB.W         R1, [R7,#var_29]
496A36:  LDR             R3, [SP,#0x38+var_28]; float
496A38:  LDRSB.W         R2, [R7,#var_2A]
496A3C:  LDRB.W          R6, [R7,#var_12]
496A40:  STMEA.W         SP, {R1,R2,R6}
496A44:  ADD             R2, SP, #0x38+var_24; CVector *
496A46:  MOV             R1, R4; CEntity *
496A48:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
496A4C:  ADD             SP, SP, #0x28 ; '('
496A4E:  POP.W           {R11}
496A52:  POP             {R4-R7,PC}
