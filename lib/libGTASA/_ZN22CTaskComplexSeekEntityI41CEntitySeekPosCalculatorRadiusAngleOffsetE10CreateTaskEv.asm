; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE10CreateTaskEv
; Address            : 0x494E90 - 0x494FE2
; =========================================================

494E90:  PUSH            {R4,R5,R7,LR}
494E92:  ADD             R7, SP, #8
494E94:  SUB             SP, SP, #8
494E96:  LDR             R0, =(UseDataFence_ptr - 0x494E9C)
494E98:  ADD             R0, PC; UseDataFence_ptr
494E9A:  LDR             R0, [R0]; UseDataFence
494E9C:  LDRB            R4, [R0]
494E9E:  CBZ             R4, loc_494EB4
494EA0:  LDR             R0, =(UseDataFence_ptr - 0x494EA8)
494EA2:  MOVS            R1, #(stderr+2); void *
494EA4:  ADD             R0, PC; UseDataFence_ptr
494EA6:  LDR             R5, [R0]; UseDataFence
494EA8:  MOVS            R0, #0
494EAA:  STRB            R0, [R5]
494EAC:  ADD             R0, SP, #0x10+var_C; this
494EAE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494EB2:  STRB            R4, [R5]
494EB4:  ADD             R0, SP, #0x10+var_C; this
494EB6:  MOVS            R1, #byte_4; void *
494EB8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494EBC:  LDR             R0, [SP,#0x10+var_C]
494EBE:  CMP             R0, #2
494EC0:  BEQ             loc_494EFC
494EC2:  CMP             R0, #4
494EC4:  BEQ             loc_494F2E
494EC6:  CMP             R0, #3
494EC8:  BNE             loc_494F62
494ECA:  LDR             R0, =(UseDataFence_ptr - 0x494ED0)
494ECC:  ADD             R0, PC; UseDataFence_ptr
494ECE:  LDR             R0, [R0]; UseDataFence
494ED0:  LDRB            R4, [R0]
494ED2:  CBZ             R4, loc_494EE8
494ED4:  LDR             R0, =(UseDataFence_ptr - 0x494EDC)
494ED6:  MOVS            R1, #(stderr+2); void *
494ED8:  ADD             R0, PC; UseDataFence_ptr
494EDA:  LDR             R5, [R0]; UseDataFence
494EDC:  MOVS            R0, #0
494EDE:  STRB            R0, [R5]
494EE0:  MOV             R0, SP; this
494EE2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494EE6:  STRB            R4, [R5]
494EE8:  MOV             R0, SP; this
494EEA:  MOVS            R1, #byte_4; void *
494EEC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494EF0:  LDR             R0, [SP,#0x10+var_10]; this
494EF2:  ADDS            R1, R0, #1; int
494EF4:  BEQ             loc_494F62
494EF6:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
494EFA:  B               loc_494F5E
494EFC:  LDR             R0, =(UseDataFence_ptr - 0x494F02)
494EFE:  ADD             R0, PC; UseDataFence_ptr
494F00:  LDR             R0, [R0]; UseDataFence
494F02:  LDRB            R4, [R0]
494F04:  CBZ             R4, loc_494F1A
494F06:  LDR             R0, =(UseDataFence_ptr - 0x494F0E)
494F08:  MOVS            R1, #(stderr+2); void *
494F0A:  ADD             R0, PC; UseDataFence_ptr
494F0C:  LDR             R5, [R0]; UseDataFence
494F0E:  MOVS            R0, #0
494F10:  STRB            R0, [R5]
494F12:  MOV             R0, SP; this
494F14:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494F18:  STRB            R4, [R5]
494F1A:  MOV             R0, SP; this
494F1C:  MOVS            R1, #byte_4; void *
494F1E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494F22:  LDR             R0, [SP,#0x10+var_10]; this
494F24:  ADDS            R1, R0, #1; int
494F26:  BEQ             loc_494F62
494F28:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
494F2C:  B               loc_494F5E
494F2E:  LDR             R0, =(UseDataFence_ptr - 0x494F34)
494F30:  ADD             R0, PC; UseDataFence_ptr
494F32:  LDR             R0, [R0]; UseDataFence
494F34:  LDRB            R4, [R0]
494F36:  CBZ             R4, loc_494F4C
494F38:  LDR             R0, =(UseDataFence_ptr - 0x494F40)
494F3A:  MOVS            R1, #(stderr+2); void *
494F3C:  ADD             R0, PC; UseDataFence_ptr
494F3E:  LDR             R5, [R0]; UseDataFence
494F40:  MOVS            R0, #0
494F42:  STRB            R0, [R5]
494F44:  MOV             R0, SP; this
494F46:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494F4A:  STRB            R4, [R5]
494F4C:  MOV             R0, SP; this
494F4E:  MOVS            R1, #byte_4; void *
494F50:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494F54:  LDR             R0, [SP,#0x10+var_10]; this
494F56:  ADDS            R1, R0, #1; int
494F58:  BEQ             loc_494F62
494F5A:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
494F5E:  MOV             R4, R0
494F60:  B               loc_494F64
494F62:  MOVS            R4, #0
494F64:  MOVS            R0, #dword_54; this
494F66:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494F6A:  MOV             R5, R0
494F6C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
494F70:  ADR             R2, dword_494FF0
494F72:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE_ptr - 0x494F80)
494F74:  VLD1.64         {D16-D17}, [R2@128]
494F78:  ADD.W           R2, R5, #0x18
494F7C:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI41CEntitySeekPosCalculatorRadiusAngleOffsetE_ptr
494F7E:  MOV.W           R3, #0x3E8
494F82:  LDR             R1, =(_ZTV41CEntitySeekPosCalculatorRadiusAngleOffset_ptr - 0x494F92)
494F84:  CMP             R4, #0
494F86:  VST1.32         {D16-D17}, [R2]
494F8A:  MOVW            R2, #0xC350
494F8E:  ADD             R1, PC; _ZTV41CEntitySeekPosCalculatorRadiusAngleOffset_ptr
494F90:  STRD.W          R2, R3, [R5,#0x10]
494F94:  MOV.W           R2, #0
494F98:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorRadiusAngleOffset> ...
494F9A:  STRH            R2, [R5,#0x30]
494F9C:  STRH            R2, [R5,#0x3C]
494F9E:  ADD.W           R0, R0, #8
494FA2:  STRD.W          R2, R2, [R5,#0x28]
494FA6:  STRD.W          R2, R2, [R5,#0x34]
494FAA:  STRD.W          R2, R2, [R5,#0x44]
494FAE:  MOV.W           R2, #6
494FB2:  STR             R2, [R5,#0x4C]
494FB4:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorRadiusAngleOffset ...
494FB6:  LDRB.W          R2, [R5,#0x50]
494FBA:  STR             R0, [R5]
494FBC:  ADD.W           R0, R1, #8
494FC0:  STR             R0, [R5,#0x40]
494FC2:  AND.W           R0, R2, #0xF0
494FC6:  MOV             R1, R5
494FC8:  ORR.W           R0, R0, #3
494FCC:  STRB.W          R0, [R5,#0x50]
494FD0:  STR.W           R4, [R1,#0xC]!; CEntity **
494FD4:  ITT NE
494FD6:  MOVNE           R0, R4; this
494FD8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
494FDC:  MOV             R0, R5
494FDE:  ADD             SP, SP, #8
494FE0:  POP             {R4,R5,R7,PC}
