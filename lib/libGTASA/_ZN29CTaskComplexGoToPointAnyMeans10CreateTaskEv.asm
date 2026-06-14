; =========================================================
; Game Engine Function: _ZN29CTaskComplexGoToPointAnyMeans10CreateTaskEv
; Address            : 0x495A30 - 0x495B3E
; =========================================================

495A30:  PUSH            {R4-R7,LR}
495A32:  ADD             R7, SP, #0xC
495A34:  PUSH.W          {R11}
495A38:  SUB             SP, SP, #0x28; float
495A3A:  LDR             R0, =(UseDataFence_ptr - 0x495A40)
495A3C:  ADD             R0, PC; UseDataFence_ptr
495A3E:  LDR             R0, [R0]; UseDataFence
495A40:  LDRB            R4, [R0]
495A42:  CBZ             R4, loc_495A58
495A44:  LDR             R0, =(UseDataFence_ptr - 0x495A4C)
495A46:  MOVS            R1, #(stderr+2); void *
495A48:  ADD             R0, PC; UseDataFence_ptr
495A4A:  LDR             R5, [R0]; UseDataFence
495A4C:  MOVS            R0, #0
495A4E:  STRB            R0, [R5]
495A50:  ADD             R0, SP, #0x38+var_1C; this
495A52:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495A56:  STRB            R4, [R5]
495A58:  ADD             R0, SP, #0x38+var_1C; this
495A5A:  MOVS            R1, #(byte_9+3); void *
495A5C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495A60:  LDR             R0, =(UseDataFence_ptr - 0x495A66)
495A62:  ADD             R0, PC; UseDataFence_ptr
495A64:  LDR             R0, [R0]; UseDataFence
495A66:  LDRB            R4, [R0]
495A68:  CBZ             R4, loc_495A7E
495A6A:  LDR             R0, =(UseDataFence_ptr - 0x495A72)
495A6C:  MOVS            R1, #(stderr+2); void *
495A6E:  ADD             R0, PC; UseDataFence_ptr
495A70:  LDR             R5, [R0]; UseDataFence
495A72:  MOVS            R0, #0
495A74:  STRB            R0, [R5]
495A76:  ADD             R0, SP, #0x38+var_20; this
495A78:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495A7C:  STRB            R4, [R5]
495A7E:  ADD             R0, SP, #0x38+var_20; this
495A80:  MOVS            R1, #byte_4; void *
495A82:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495A86:  LDR             R0, =(UseDataFence_ptr - 0x495A8C)
495A88:  ADD             R0, PC; UseDataFence_ptr
495A8A:  LDR             R0, [R0]; UseDataFence
495A8C:  LDRB            R4, [R0]
495A8E:  CBZ             R4, loc_495AA4
495A90:  LDR             R0, =(UseDataFence_ptr - 0x495A98)
495A92:  MOVS            R1, #(stderr+2); void *
495A94:  ADD             R0, PC; UseDataFence_ptr
495A96:  LDR             R5, [R0]; UseDataFence
495A98:  MOVS            R0, #0
495A9A:  STRB            R0, [R5]
495A9C:  ADD             R0, SP, #0x38+var_24; this
495A9E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495AA2:  STRB            R4, [R5]
495AA4:  ADD             R0, SP, #0x38+var_24; this
495AA6:  MOVS            R1, #byte_4; void *
495AA8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495AAC:  LDR             R0, =(UseDataFence_ptr - 0x495AB2)
495AAE:  ADD             R0, PC; UseDataFence_ptr
495AB0:  LDR             R0, [R0]; UseDataFence
495AB2:  LDRB            R4, [R0]
495AB4:  CBZ             R4, loc_495ACA
495AB6:  LDR             R0, =(UseDataFence_ptr - 0x495ABE)
495AB8:  MOVS            R1, #(stderr+2); void *
495ABA:  ADD             R0, PC; UseDataFence_ptr
495ABC:  LDR             R5, [R0]; UseDataFence
495ABE:  MOVS            R0, #0
495AC0:  STRB            R0, [R5]
495AC2:  ADD             R0, SP, #0x38+var_28; this
495AC4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495AC8:  STRB            R4, [R5]
495ACA:  ADD             R0, SP, #0x38+var_28; this
495ACC:  MOVS            R1, #byte_4; void *
495ACE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495AD2:  LDR             R0, [SP,#0x38+var_28]; this
495AD4:  ADDS            R1, R0, #1; int
495AD6:  BEQ             loc_495AE0
495AD8:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
495ADC:  MOV             R4, R0
495ADE:  B               loc_495AE2
495AE0:  MOVS            R4, #0
495AE2:  LDR             R0, =(UseDataFence_ptr - 0x495AE8)
495AE4:  ADD             R0, PC; UseDataFence_ptr
495AE6:  LDR             R0, [R0]; UseDataFence
495AE8:  LDRB            R5, [R0]
495AEA:  CBZ             R5, loc_495B00
495AEC:  LDR             R0, =(UseDataFence_ptr - 0x495AF4)
495AEE:  MOVS            R1, #(stderr+2); void *
495AF0:  ADD             R0, PC; UseDataFence_ptr
495AF2:  LDR             R6, [R0]; UseDataFence
495AF4:  MOVS            R0, #0
495AF6:  STRB            R0, [R6]
495AF8:  ADD             R0, SP, #0x38+var_2C; this
495AFA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495AFE:  STRB            R5, [R6]
495B00:  ADD             R0, SP, #0x38+var_2C; this
495B02:  MOVS            R1, #byte_4; void *
495B04:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495B08:  MOVS            R0, #dword_34; this
495B0A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
495B0E:  LDR             R2, [SP,#0x38+var_2C]
495B10:  CMP             R4, #0
495B12:  LDR             R1, [SP,#0x38+var_20]; int
495B14:  VLDR            S0, [SP,#0x38+var_24]
495B18:  BEQ             loc_495B2A
495B1A:  STR             R2, [SP,#0x38+var_34]; int
495B1C:  ADD             R2, SP, #0x38+var_1C; CVector *
495B1E:  MOV             R3, R4; CVehicle *
495B20:  VSTR            S0, [SP,#0x38+var_38]
495B24:  BLX             j__ZN29CTaskComplexGoToPointAnyMeansC2EiRK7CVectorP8CVehiclefi; CTaskComplexGoToPointAnyMeans::CTaskComplexGoToPointAnyMeans(int,CVector const&,CVehicle *,float,int)
495B28:  B               loc_495B36
495B2A:  VMOV            R3, S0; float
495B2E:  STR             R2, [SP,#0x38+var_38]; int
495B30:  ADD             R2, SP, #0x38+var_1C; CVector *
495B32:  BLX             j__ZN29CTaskComplexGoToPointAnyMeansC2EiRK7CVectorfi; CTaskComplexGoToPointAnyMeans::CTaskComplexGoToPointAnyMeans(int,CVector const&,float,int)
495B36:  ADD             SP, SP, #0x28 ; '('
495B38:  POP.W           {R11}
495B3C:  POP             {R4-R7,PC}
