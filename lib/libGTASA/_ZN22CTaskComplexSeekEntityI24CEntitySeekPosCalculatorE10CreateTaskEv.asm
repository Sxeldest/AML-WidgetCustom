; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE10CreateTaskEv
; Address            : 0x494B70 - 0x494CBE
; =========================================================

494B70:  PUSH            {R4,R5,R7,LR}
494B72:  ADD             R7, SP, #8
494B74:  SUB             SP, SP, #8
494B76:  LDR             R0, =(UseDataFence_ptr - 0x494B7C)
494B78:  ADD             R0, PC; UseDataFence_ptr
494B7A:  LDR             R0, [R0]; UseDataFence
494B7C:  LDRB            R4, [R0]
494B7E:  CBZ             R4, loc_494B94
494B80:  LDR             R0, =(UseDataFence_ptr - 0x494B88)
494B82:  MOVS            R1, #(stderr+2); void *
494B84:  ADD             R0, PC; UseDataFence_ptr
494B86:  LDR             R5, [R0]; UseDataFence
494B88:  MOVS            R0, #0
494B8A:  STRB            R0, [R5]
494B8C:  ADD             R0, SP, #0x10+var_C; this
494B8E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494B92:  STRB            R4, [R5]
494B94:  ADD             R0, SP, #0x10+var_C; this
494B96:  MOVS            R1, #byte_4; void *
494B98:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494B9C:  LDR             R0, [SP,#0x10+var_C]
494B9E:  CMP             R0, #2
494BA0:  BEQ             loc_494BDC
494BA2:  CMP             R0, #4
494BA4:  BEQ             loc_494C0E
494BA6:  CMP             R0, #3
494BA8:  BNE             loc_494C42
494BAA:  LDR             R0, =(UseDataFence_ptr - 0x494BB0)
494BAC:  ADD             R0, PC; UseDataFence_ptr
494BAE:  LDR             R0, [R0]; UseDataFence
494BB0:  LDRB            R4, [R0]
494BB2:  CBZ             R4, loc_494BC8
494BB4:  LDR             R0, =(UseDataFence_ptr - 0x494BBC)
494BB6:  MOVS            R1, #(stderr+2); void *
494BB8:  ADD             R0, PC; UseDataFence_ptr
494BBA:  LDR             R5, [R0]; UseDataFence
494BBC:  MOVS            R0, #0
494BBE:  STRB            R0, [R5]
494BC0:  MOV             R0, SP; this
494BC2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494BC6:  STRB            R4, [R5]
494BC8:  MOV             R0, SP; this
494BCA:  MOVS            R1, #byte_4; void *
494BCC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494BD0:  LDR             R0, [SP,#0x10+var_10]; this
494BD2:  ADDS            R1, R0, #1; int
494BD4:  BEQ             loc_494C42
494BD6:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
494BDA:  B               loc_494C3E
494BDC:  LDR             R0, =(UseDataFence_ptr - 0x494BE2)
494BDE:  ADD             R0, PC; UseDataFence_ptr
494BE0:  LDR             R0, [R0]; UseDataFence
494BE2:  LDRB            R4, [R0]
494BE4:  CBZ             R4, loc_494BFA
494BE6:  LDR             R0, =(UseDataFence_ptr - 0x494BEE)
494BE8:  MOVS            R1, #(stderr+2); void *
494BEA:  ADD             R0, PC; UseDataFence_ptr
494BEC:  LDR             R5, [R0]; UseDataFence
494BEE:  MOVS            R0, #0
494BF0:  STRB            R0, [R5]
494BF2:  MOV             R0, SP; this
494BF4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494BF8:  STRB            R4, [R5]
494BFA:  MOV             R0, SP; this
494BFC:  MOVS            R1, #byte_4; void *
494BFE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494C02:  LDR             R0, [SP,#0x10+var_10]; this
494C04:  ADDS            R1, R0, #1; int
494C06:  BEQ             loc_494C42
494C08:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
494C0C:  B               loc_494C3E
494C0E:  LDR             R0, =(UseDataFence_ptr - 0x494C14)
494C10:  ADD             R0, PC; UseDataFence_ptr
494C12:  LDR             R0, [R0]; UseDataFence
494C14:  LDRB            R4, [R0]
494C16:  CBZ             R4, loc_494C2C
494C18:  LDR             R0, =(UseDataFence_ptr - 0x494C20)
494C1A:  MOVS            R1, #(stderr+2); void *
494C1C:  ADD             R0, PC; UseDataFence_ptr
494C1E:  LDR             R5, [R0]; UseDataFence
494C20:  MOVS            R0, #0
494C22:  STRB            R0, [R5]
494C24:  MOV             R0, SP; this
494C26:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494C2A:  STRB            R4, [R5]
494C2C:  MOV             R0, SP; this
494C2E:  MOVS            R1, #byte_4; void *
494C30:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494C34:  LDR             R0, [SP,#0x10+var_10]; this
494C36:  ADDS            R1, R0, #1; int
494C38:  BEQ             loc_494C42
494C3A:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
494C3E:  MOV             R4, R0
494C40:  B               loc_494C44
494C42:  MOVS            R4, #0
494C44:  MOVS            R0, #dword_4C; this
494C46:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494C4A:  MOV             R5, R0
494C4C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
494C50:  ADR             R2, dword_494CC0
494C52:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE_ptr - 0x494C60)
494C54:  VLD1.64         {D16-D17}, [R2@128]
494C58:  ADD.W           R2, R5, #0x18
494C5C:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI24CEntitySeekPosCalculatorE_ptr
494C5E:  MOV.W           R3, #0x3E8
494C62:  LDR             R1, =(_ZTV24CEntitySeekPosCalculator_ptr - 0x494C72)
494C64:  CMP             R4, #0
494C66:  VST1.32         {D16-D17}, [R2]
494C6A:  MOVW            R2, #0xC350
494C6E:  ADD             R1, PC; _ZTV24CEntitySeekPosCalculator_ptr
494C70:  STRD.W          R2, R3, [R5,#0x10]
494C74:  MOV.W           R2, #0
494C78:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculator> ...
494C7A:  STRH            R2, [R5,#0x30]
494C7C:  STRH            R2, [R5,#0x3C]
494C7E:  ADD.W           R0, R0, #8
494C82:  STRD.W          R2, R2, [R5,#0x28]
494C86:  STRD.W          R2, R2, [R5,#0x34]
494C8A:  MOV.W           R2, #6
494C8E:  STR             R2, [R5,#0x44]
494C90:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculator ...
494C92:  LDRB.W          R2, [R5,#0x48]
494C96:  STR             R0, [R5]
494C98:  ADD.W           R0, R1, #8
494C9C:  STR             R0, [R5,#0x40]
494C9E:  AND.W           R0, R2, #0xF0
494CA2:  MOV             R1, R5
494CA4:  ORR.W           R0, R0, #3
494CA8:  STRB.W          R0, [R5,#0x48]
494CAC:  STR.W           R4, [R1,#0xC]!; CEntity **
494CB0:  ITT NE
494CB2:  MOVNE           R0, R4; this
494CB4:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
494CB8:  MOV             R0, R5
494CBA:  ADD             SP, SP, #8
494CBC:  POP             {R4,R5,R7,PC}
