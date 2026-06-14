; =========================================================
; Game Engine Function: _ZN35CTaskComplexTurnToFaceEntityOrCoord10CreateTaskEv
; Address            : 0x495B68 - 0x495C94
; =========================================================

495B68:  PUSH            {R4-R7,LR}
495B6A:  ADD             R7, SP, #0xC
495B6C:  PUSH.W          {R11}
495B70:  SUB             SP, SP, #0x18
495B72:  LDR             R0, =(UseDataFence_ptr - 0x495B78)
495B74:  ADD             R0, PC; UseDataFence_ptr
495B76:  LDR             R0, [R0]; UseDataFence
495B78:  LDRB            R4, [R0]
495B7A:  CBZ             R4, loc_495B90
495B7C:  LDR             R0, =(UseDataFence_ptr - 0x495B84)
495B7E:  MOVS            R1, #(stderr+2); void *
495B80:  ADD             R0, PC; UseDataFence_ptr
495B82:  LDR             R5, [R0]; UseDataFence
495B84:  MOVS            R0, #0
495B86:  STRB            R0, [R5]
495B88:  ADD             R0, SP, #0x28+var_24; this
495B8A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495B8E:  STRB            R4, [R5]
495B90:  ADD             R0, SP, #0x28+var_14; this
495B92:  MOVS            R1, #byte_4; void *
495B94:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495B98:  LDR             R0, [SP,#0x28+var_14]
495B9A:  CMP             R0, #2
495B9C:  BEQ             loc_495BD4
495B9E:  CMP             R0, #3
495BA0:  BNE             loc_495C08
495BA2:  LDR             R0, =(UseDataFence_ptr - 0x495BA8)
495BA4:  ADD             R0, PC; UseDataFence_ptr
495BA6:  LDR             R0, [R0]; UseDataFence
495BA8:  LDRB            R4, [R0]
495BAA:  CBZ             R4, loc_495BC0
495BAC:  LDR             R0, =(UseDataFence_ptr - 0x495BB4)
495BAE:  MOVS            R1, #(stderr+2); void *
495BB0:  ADD             R0, PC; UseDataFence_ptr
495BB2:  LDR             R5, [R0]; UseDataFence
495BB4:  MOVS            R0, #0
495BB6:  STRB            R0, [R5]
495BB8:  ADD             R0, SP, #0x28+var_24; this
495BBA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495BBE:  STRB            R4, [R5]
495BC0:  ADD             R0, SP, #0x28+var_24; this
495BC2:  MOVS            R1, #byte_4; void *
495BC4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495BC8:  LDR             R0, [SP,#0x28+var_24]; this
495BCA:  ADDS            R1, R0, #1; int
495BCC:  BEQ             loc_495C08
495BCE:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
495BD2:  B               loc_495C04
495BD4:  LDR             R0, =(UseDataFence_ptr - 0x495BDA)
495BD6:  ADD             R0, PC; UseDataFence_ptr
495BD8:  LDR             R0, [R0]; UseDataFence
495BDA:  LDRB            R4, [R0]
495BDC:  CBZ             R4, loc_495BF2
495BDE:  LDR             R0, =(UseDataFence_ptr - 0x495BE6)
495BE0:  MOVS            R1, #(stderr+2); void *
495BE2:  ADD             R0, PC; UseDataFence_ptr
495BE4:  LDR             R5, [R0]; UseDataFence
495BE6:  MOVS            R0, #0
495BE8:  STRB            R0, [R5]
495BEA:  ADD             R0, SP, #0x28+var_24; this
495BEC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495BF0:  STRB            R4, [R5]
495BF2:  ADD             R0, SP, #0x28+var_24; this
495BF4:  MOVS            R1, #byte_4; void *
495BF6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495BFA:  LDR             R0, [SP,#0x28+var_24]; this
495BFC:  ADDS            R1, R0, #1; int
495BFE:  BEQ             loc_495C08
495C00:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
495C04:  MOV             R4, R0
495C06:  B               loc_495C0A
495C08:  MOVS            R4, #0
495C0A:  LDR             R0, =(UseDataFence_ptr - 0x495C10)
495C0C:  ADD             R0, PC; UseDataFence_ptr
495C0E:  LDR             R0, [R0]; UseDataFence
495C10:  LDRB            R5, [R0]
495C12:  CBZ             R5, loc_495C28
495C14:  LDR             R0, =(UseDataFence_ptr - 0x495C1C)
495C16:  MOVS            R1, #(stderr+2); void *
495C18:  ADD             R0, PC; UseDataFence_ptr
495C1A:  LDR             R6, [R0]; UseDataFence
495C1C:  MOVS            R0, #0
495C1E:  STRB            R0, [R6]
495C20:  ADD             R0, SP, #0x28+var_24; this
495C22:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495C26:  STRB            R5, [R6]
495C28:  SUB.W           R0, R7, #-var_15; this
495C2C:  MOVS            R1, #(stderr+1); void *
495C2E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495C32:  LDR             R0, =(UseDataFence_ptr - 0x495C38)
495C34:  ADD             R0, PC; UseDataFence_ptr
495C36:  LDR             R0, [R0]; UseDataFence
495C38:  LDRB            R5, [R0]
495C3A:  CBZ             R5, loc_495C50
495C3C:  LDR             R0, =(UseDataFence_ptr - 0x495C44)
495C3E:  MOVS            R1, #(stderr+2); void *
495C40:  ADD             R0, PC; UseDataFence_ptr
495C42:  LDR             R6, [R0]; UseDataFence
495C44:  MOVS            R0, #0
495C46:  STRB            R0, [R6]
495C48:  ADD             R0, SP, #0x28+var_24; this
495C4A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495C4E:  STRB            R5, [R6]
495C50:  ADD             R0, SP, #0x28+var_24; this
495C52:  MOVS            R1, #(byte_9+3); void *
495C54:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495C58:  MOVS            R0, #word_28; this
495C5A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
495C5E:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x495C68)
495C60:  CMP             R4, #0
495C62:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x495C6A)
495C64:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
495C66:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
495C68:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
495C6A:  LDR             R2, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
495C6C:  VLDR            S0, [R1]
495C70:  VLDR            S2, [R2]
495C74:  VMOV            R3, S0; float
495C78:  VMOV            R2, S2; float
495C7C:  BEQ             loc_495C86
495C7E:  MOV             R1, R4; CEntity *
495C80:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2EP7CEntityff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CEntity *,float,float)
495C84:  B               loc_495C8C
495C86:  ADD             R1, SP, #0x28+var_24; CVector *
495C88:  BLX             j__ZN35CTaskComplexTurnToFaceEntityOrCoordC2ERK7CVectorff; CTaskComplexTurnToFaceEntityOrCoord::CTaskComplexTurnToFaceEntityOrCoord(CVector const&,float,float)
495C8C:  ADD             SP, SP, #0x18
495C8E:  POP.W           {R11}
495C92:  POP             {R4-R7,PC}
