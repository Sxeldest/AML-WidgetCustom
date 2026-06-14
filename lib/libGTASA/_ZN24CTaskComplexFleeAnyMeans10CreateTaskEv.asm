; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeAnyMeans10CreateTaskEv
; Address            : 0x495E94 - 0x49610C
; =========================================================

495E94:  PUSH            {R4-R7,LR}
495E96:  ADD             R7, SP, #0xC
495E98:  PUSH.W          {R11}
495E9C:  SUB             SP, SP, #0x40
495E9E:  LDR             R0, =(UseDataFence_ptr - 0x495EA4)
495EA0:  ADD             R0, PC; UseDataFence_ptr
495EA2:  LDR             R0, [R0]; UseDataFence
495EA4:  LDRB            R4, [R0]
495EA6:  CBZ             R4, loc_495EBC
495EA8:  LDR             R0, =(UseDataFence_ptr - 0x495EB0)
495EAA:  MOVS            R1, #(stderr+2); void *
495EAC:  ADD             R0, PC; UseDataFence_ptr
495EAE:  LDR             R5, [R0]; UseDataFence
495EB0:  MOVS            R0, #0
495EB2:  STRB            R0, [R5]
495EB4:  ADD             R0, SP, #0x50+var_14; this
495EB6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495EBA:  STRB            R4, [R5]
495EBC:  ADD             R0, SP, #0x50+var_14; this
495EBE:  MOVS            R1, #byte_4; void *
495EC0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495EC4:  LDR             R0, [SP,#0x50+var_14]
495EC6:  CMP             R0, #2
495EC8:  BEQ             loc_495F04
495ECA:  CMP             R0, #4
495ECC:  BEQ             loc_495F36
495ECE:  CMP             R0, #3
495ED0:  BNE             loc_495F6A
495ED2:  LDR             R0, =(UseDataFence_ptr - 0x495ED8)
495ED4:  ADD             R0, PC; UseDataFence_ptr
495ED6:  LDR             R0, [R0]; UseDataFence
495ED8:  LDRB            R4, [R0]
495EDA:  CBZ             R4, loc_495EF0
495EDC:  LDR             R0, =(UseDataFence_ptr - 0x495EE4)
495EDE:  MOVS            R1, #(stderr+2); void *
495EE0:  ADD             R0, PC; UseDataFence_ptr
495EE2:  LDR             R5, [R0]; UseDataFence
495EE4:  MOVS            R0, #0
495EE6:  STRB            R0, [R5]
495EE8:  ADD             R0, SP, #0x50+var_18; this
495EEA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495EEE:  STRB            R4, [R5]
495EF0:  ADD             R0, SP, #0x50+var_18; this
495EF2:  MOVS            R1, #byte_4; void *
495EF4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495EF8:  LDR             R0, [SP,#0x50+var_18]; this
495EFA:  ADDS            R1, R0, #1; int
495EFC:  BEQ             loc_495F6A
495EFE:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
495F02:  B               loc_495F66
495F04:  LDR             R0, =(UseDataFence_ptr - 0x495F0A)
495F06:  ADD             R0, PC; UseDataFence_ptr
495F08:  LDR             R0, [R0]; UseDataFence
495F0A:  LDRB            R4, [R0]
495F0C:  CBZ             R4, loc_495F22
495F0E:  LDR             R0, =(UseDataFence_ptr - 0x495F16)
495F10:  MOVS            R1, #(stderr+2); void *
495F12:  ADD             R0, PC; UseDataFence_ptr
495F14:  LDR             R5, [R0]; UseDataFence
495F16:  MOVS            R0, #0
495F18:  STRB            R0, [R5]
495F1A:  ADD             R0, SP, #0x50+var_18; this
495F1C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495F20:  STRB            R4, [R5]
495F22:  ADD             R0, SP, #0x50+var_18; this
495F24:  MOVS            R1, #byte_4; void *
495F26:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495F2A:  LDR             R0, [SP,#0x50+var_18]; this
495F2C:  ADDS            R1, R0, #1; int
495F2E:  BEQ             loc_495F6A
495F30:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
495F34:  B               loc_495F66
495F36:  LDR             R0, =(UseDataFence_ptr - 0x495F3C)
495F38:  ADD             R0, PC; UseDataFence_ptr
495F3A:  LDR             R0, [R0]; UseDataFence
495F3C:  LDRB            R4, [R0]
495F3E:  CBZ             R4, loc_495F54
495F40:  LDR             R0, =(UseDataFence_ptr - 0x495F48)
495F42:  MOVS            R1, #(stderr+2); void *
495F44:  ADD             R0, PC; UseDataFence_ptr
495F46:  LDR             R5, [R0]; UseDataFence
495F48:  MOVS            R0, #0
495F4A:  STRB            R0, [R5]
495F4C:  ADD             R0, SP, #0x50+var_18; this
495F4E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495F52:  STRB            R4, [R5]
495F54:  ADD             R0, SP, #0x50+var_18; this
495F56:  MOVS            R1, #byte_4; void *
495F58:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495F5C:  LDR             R0, [SP,#0x50+var_18]; this
495F5E:  ADDS            R1, R0, #1; int
495F60:  BEQ             loc_495F6A
495F62:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
495F66:  MOV             R4, R0
495F68:  B               loc_495F6C
495F6A:  MOVS            R4, #0
495F6C:  LDR             R0, =(UseDataFence_ptr - 0x495F72)
495F6E:  ADD             R0, PC; UseDataFence_ptr
495F70:  LDR             R0, [R0]; UseDataFence
495F72:  LDRB            R5, [R0]
495F74:  CBZ             R5, loc_495F8A
495F76:  LDR             R0, =(UseDataFence_ptr - 0x495F7E)
495F78:  MOVS            R1, #(stderr+2); void *
495F7A:  ADD             R0, PC; UseDataFence_ptr
495F7C:  LDR             R6, [R0]; UseDataFence
495F7E:  MOVS            R0, #0
495F80:  STRB            R0, [R6]
495F82:  ADD             R0, SP, #0x50+var_18; this
495F84:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495F88:  STRB            R5, [R6]
495F8A:  SUB.W           R0, R7, #-var_19; this
495F8E:  MOVS            R1, #(stderr+1); void *
495F90:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495F94:  LDR             R0, =(UseDataFence_ptr - 0x495F9A)
495F96:  ADD             R0, PC; UseDataFence_ptr
495F98:  LDR             R0, [R0]; UseDataFence
495F9A:  LDRB            R5, [R0]
495F9C:  CBZ             R5, loc_495FB2
495F9E:  LDR             R0, =(UseDataFence_ptr - 0x495FA6)
495FA0:  MOVS            R1, #(stderr+2); void *
495FA2:  ADD             R0, PC; UseDataFence_ptr
495FA4:  LDR             R6, [R0]; UseDataFence
495FA6:  MOVS            R0, #0
495FA8:  STRB            R0, [R6]
495FAA:  ADD             R0, SP, #0x50+var_18; this
495FAC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495FB0:  STRB            R5, [R6]
495FB2:  ADD             R0, SP, #0x50+var_18; this
495FB4:  MOVS            R1, #byte_4; void *
495FB6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495FBA:  LDR             R0, =(UseDataFence_ptr - 0x495FC0)
495FBC:  ADD             R0, PC; UseDataFence_ptr
495FBE:  LDR             R0, [R0]; UseDataFence
495FC0:  LDRB            R5, [R0]
495FC2:  CBZ             R5, loc_495FD8
495FC4:  LDR             R0, =(UseDataFence_ptr - 0x495FCC)
495FC6:  MOVS            R1, #(stderr+2); void *
495FC8:  ADD             R0, PC; UseDataFence_ptr
495FCA:  LDR             R6, [R0]; UseDataFence
495FCC:  MOVS            R0, #0
495FCE:  STRB            R0, [R6]
495FD0:  ADD             R0, SP, #0x50+var_20; this
495FD2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495FD6:  STRB            R5, [R6]
495FD8:  ADD             R0, SP, #0x50+var_20; this
495FDA:  MOVS            R1, #byte_4; void *
495FDC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495FE0:  LDR             R0, =(UseDataFence_ptr - 0x495FE6)
495FE2:  ADD             R0, PC; UseDataFence_ptr
495FE4:  LDR             R0, [R0]; UseDataFence
495FE6:  LDRB            R5, [R0]
495FE8:  CBZ             R5, loc_495FFE
495FEA:  LDR             R0, =(UseDataFence_ptr - 0x495FF2)
495FEC:  MOVS            R1, #(stderr+2); void *
495FEE:  ADD             R0, PC; UseDataFence_ptr
495FF0:  LDR             R6, [R0]; UseDataFence
495FF2:  MOVS            R0, #0
495FF4:  STRB            R0, [R6]
495FF6:  ADD             R0, SP, #0x50+var_24; this
495FF8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495FFC:  STRB            R5, [R6]
495FFE:  ADD             R0, SP, #0x50+var_24; this
496000:  MOVS            R1, #byte_4; void *
496002:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496006:  LDR             R0, =(UseDataFence_ptr - 0x49600C)
496008:  ADD             R0, PC; UseDataFence_ptr
49600A:  LDR             R0, [R0]; UseDataFence
49600C:  LDRB            R5, [R0]
49600E:  CBZ             R5, loc_496024
496010:  LDR             R0, =(UseDataFence_ptr - 0x496018)
496012:  MOVS            R1, #(stderr+2); void *
496014:  ADD             R0, PC; UseDataFence_ptr
496016:  LDR             R6, [R0]; UseDataFence
496018:  MOVS            R0, #0
49601A:  STRB            R0, [R6]
49601C:  ADD             R0, SP, #0x50+var_28; this
49601E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496022:  STRB            R5, [R6]
496024:  ADD             R0, SP, #0x50+var_28; this
496026:  MOVS            R1, #byte_4; void *
496028:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49602C:  LDR             R0, =(UseDataFence_ptr - 0x496032)
49602E:  ADD             R0, PC; UseDataFence_ptr
496030:  LDR             R0, [R0]; UseDataFence
496032:  LDRB            R5, [R0]
496034:  CBZ             R5, loc_49604A
496036:  LDR             R0, =(UseDataFence_ptr - 0x49603E)
496038:  MOVS            R1, #(stderr+2); void *
49603A:  ADD             R0, PC; UseDataFence_ptr
49603C:  LDR             R6, [R0]; UseDataFence
49603E:  MOVS            R0, #0
496040:  STRB            R0, [R6]
496042:  ADD             R0, SP, #0x50+var_2C; this
496044:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496048:  STRB            R5, [R6]
49604A:  ADD             R0, SP, #0x50+var_2C; this
49604C:  MOVS            R1, #byte_4; void *
49604E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496052:  LDR             R0, =(UseDataFence_ptr - 0x496058)
496054:  ADD             R0, PC; UseDataFence_ptr
496056:  LDR             R0, [R0]; UseDataFence
496058:  LDRB            R5, [R0]
49605A:  CBZ             R5, loc_496070
49605C:  LDR             R0, =(UseDataFence_ptr - 0x496064)
49605E:  MOVS            R1, #(stderr+2); void *
496060:  ADD             R0, PC; UseDataFence_ptr
496062:  LDR             R6, [R0]; UseDataFence
496064:  MOVS            R0, #0
496066:  STRB            R0, [R6]
496068:  ADD             R0, SP, #0x50+var_30; this
49606A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49606E:  STRB            R5, [R6]
496070:  ADD             R0, SP, #0x50+var_30; this
496072:  MOVS            R1, #byte_4; void *
496074:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496078:  LDR             R0, =(UseDataFence_ptr - 0x49607E)
49607A:  ADD             R0, PC; UseDataFence_ptr
49607C:  LDR             R0, [R0]; UseDataFence
49607E:  LDRB            R5, [R0]
496080:  CBZ             R5, loc_496096
496082:  LDR             R0, =(UseDataFence_ptr - 0x49608A)
496084:  MOVS            R1, #(stderr+2); void *
496086:  ADD             R0, PC; UseDataFence_ptr
496088:  LDR             R6, [R0]; UseDataFence
49608A:  MOVS            R0, #0
49608C:  STRB            R0, [R6]
49608E:  ADD             R0, SP, #0x50+var_34; this
496090:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496094:  STRB            R5, [R6]
496096:  ADD             R0, SP, #0x50+var_34; this
496098:  MOVS            R1, #byte_4; void *
49609A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49609E:  MOVS            R0, #dword_54; this
4960A0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4960A4:  VLDR            S0, [SP,#0x50+var_20]
4960A8:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x4960B6)
4960AA:  VCVT.F32.S32    S0, S0
4960AE:  VLDR            S2, [SP,#0x50+var_18]
4960B2:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
4960B4:  VCMP.F32        S2, #0.0
4960B8:  VMRS            APSR_nzcv, FPSCR
4960BC:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
4960BE:  VLDR            S8, [R1]
4960C2:  MOV             R1, R4; CEntity *
4960C4:  VMOV            R3, S0; float
4960C8:  VLDR            S0, [SP,#0x50+var_30]
4960CC:  LDRD.W          R6, R2, [SP,#0x50+var_28]
4960D0:  VLDR            S4, [SP,#0x50+var_2C]
4960D4:  VLDR            S6, [SP,#0x50+var_34]
4960D8:  VCVT.F32.S32    S0, S0
4960DC:  VCVT.S32.F32    S6, S6
4960E0:  VCVT.S32.F32    S4, S4
4960E4:  VSTR            S8, [SP,#0x50+var_3C]
4960E8:  STRD.W          R2, R6, [SP,#0x50+var_50]; int
4960EC:  MOV.W           R2, #0
4960F0:  VSTR            S0, [SP,#0x50+var_44]
4960F4:  VSTR            S6, [SP,#0x50+var_40]
4960F8:  VSTR            S4, [SP,#0x50+var_48]
4960FC:  IT NE
4960FE:  MOVNE           R2, #1; bool
496100:  BLX             j__ZN24CTaskComplexFleeAnyMeansC2EP7CEntitybfiiifif; CTaskComplexFleeAnyMeans::CTaskComplexFleeAnyMeans(CEntity *,bool,float,int,int,int,float,int,float)
496104:  ADD             SP, SP, #0x40 ; '@'
496106:  POP.W           {R11}
49610A:  POP             {R4-R7,PC}
