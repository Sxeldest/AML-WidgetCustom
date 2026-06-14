; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE10CreateTaskEv
; Address            : 0x495030 - 0x495184
; =========================================================

495030:  PUSH            {R4,R5,R7,LR}
495032:  ADD             R7, SP, #8
495034:  SUB             SP, SP, #8
495036:  LDR             R0, =(UseDataFence_ptr - 0x49503C)
495038:  ADD             R0, PC; UseDataFence_ptr
49503A:  LDR             R0, [R0]; UseDataFence
49503C:  LDRB            R4, [R0]
49503E:  CBZ             R4, loc_495054
495040:  LDR             R0, =(UseDataFence_ptr - 0x495048)
495042:  MOVS            R1, #(stderr+2); void *
495044:  ADD             R0, PC; UseDataFence_ptr
495046:  LDR             R5, [R0]; UseDataFence
495048:  MOVS            R0, #0
49504A:  STRB            R0, [R5]
49504C:  ADD             R0, SP, #0x10+var_C; this
49504E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495052:  STRB            R4, [R5]
495054:  ADD             R0, SP, #0x10+var_C; this
495056:  MOVS            R1, #byte_4; void *
495058:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49505C:  LDR             R0, [SP,#0x10+var_C]
49505E:  CMP             R0, #2
495060:  BEQ             loc_49509C
495062:  CMP             R0, #4
495064:  BEQ             loc_4950CE
495066:  CMP             R0, #3
495068:  BNE             loc_495102
49506A:  LDR             R0, =(UseDataFence_ptr - 0x495070)
49506C:  ADD             R0, PC; UseDataFence_ptr
49506E:  LDR             R0, [R0]; UseDataFence
495070:  LDRB            R4, [R0]
495072:  CBZ             R4, loc_495088
495074:  LDR             R0, =(UseDataFence_ptr - 0x49507C)
495076:  MOVS            R1, #(stderr+2); void *
495078:  ADD             R0, PC; UseDataFence_ptr
49507A:  LDR             R5, [R0]; UseDataFence
49507C:  MOVS            R0, #0
49507E:  STRB            R0, [R5]
495080:  MOV             R0, SP; this
495082:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495086:  STRB            R4, [R5]
495088:  MOV             R0, SP; this
49508A:  MOVS            R1, #byte_4; void *
49508C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495090:  LDR             R0, [SP,#0x10+var_10]; this
495092:  ADDS            R1, R0, #1; int
495094:  BEQ             loc_495102
495096:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
49509A:  B               loc_4950FE
49509C:  LDR             R0, =(UseDataFence_ptr - 0x4950A2)
49509E:  ADD             R0, PC; UseDataFence_ptr
4950A0:  LDR             R0, [R0]; UseDataFence
4950A2:  LDRB            R4, [R0]
4950A4:  CBZ             R4, loc_4950BA
4950A6:  LDR             R0, =(UseDataFence_ptr - 0x4950AE)
4950A8:  MOVS            R1, #(stderr+2); void *
4950AA:  ADD             R0, PC; UseDataFence_ptr
4950AC:  LDR             R5, [R0]; UseDataFence
4950AE:  MOVS            R0, #0
4950B0:  STRB            R0, [R5]
4950B2:  MOV             R0, SP; this
4950B4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4950B8:  STRB            R4, [R5]
4950BA:  MOV             R0, SP; this
4950BC:  MOVS            R1, #byte_4; void *
4950BE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4950C2:  LDR             R0, [SP,#0x10+var_10]; this
4950C4:  ADDS            R1, R0, #1; int
4950C6:  BEQ             loc_495102
4950C8:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4950CC:  B               loc_4950FE
4950CE:  LDR             R0, =(UseDataFence_ptr - 0x4950D4)
4950D0:  ADD             R0, PC; UseDataFence_ptr
4950D2:  LDR             R0, [R0]; UseDataFence
4950D4:  LDRB            R4, [R0]
4950D6:  CBZ             R4, loc_4950EC
4950D8:  LDR             R0, =(UseDataFence_ptr - 0x4950E0)
4950DA:  MOVS            R1, #(stderr+2); void *
4950DC:  ADD             R0, PC; UseDataFence_ptr
4950DE:  LDR             R5, [R0]; UseDataFence
4950E0:  MOVS            R0, #0
4950E2:  STRB            R0, [R5]
4950E4:  MOV             R0, SP; this
4950E6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4950EA:  STRB            R4, [R5]
4950EC:  MOV             R0, SP; this
4950EE:  MOVS            R1, #byte_4; void *
4950F0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4950F4:  LDR             R0, [SP,#0x10+var_10]; this
4950F6:  ADDS            R1, R0, #1; int
4950F8:  BEQ             loc_495102
4950FA:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
4950FE:  MOV             R4, R0
495100:  B               loc_495104
495102:  MOVS            R4, #0
495104:  MOVS            R0, #dword_58; this
495106:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49510A:  MOV             R5, R0
49510C:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
495110:  ADR             R2, dword_495190
495112:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x495120)
495114:  VLD1.64         {D16-D17}, [R2@128]
495118:  ADD.W           R2, R5, #0x18
49511C:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
49511E:  MOV.W           R3, #0x3E8
495122:  LDR             R1, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x495132)
495124:  CMP             R4, #0
495126:  VST1.32         {D16-D17}, [R2]
49512A:  MOVW            R2, #0xC350
49512E:  ADD             R1, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
495130:  STRD.W          R2, R3, [R5,#0x10]
495134:  MOV.W           R2, #0
495138:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
49513A:  STRH            R2, [R5,#0x30]
49513C:  STRH            R2, [R5,#0x3C]
49513E:  ADD.W           R0, R0, #8
495142:  STRD.W          R2, R2, [R5,#0x28]
495146:  STRD.W          R2, R2, [R5,#0x34]
49514A:  STRD.W          R2, R2, [R5,#0x44]
49514E:  STR             R2, [R5,#0x4C]
495150:  MOV.W           R2, #6
495154:  STR             R2, [R5,#0x50]
495156:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
495158:  LDRB.W          R2, [R5,#0x54]
49515C:  STR             R0, [R5]
49515E:  ADD.W           R0, R1, #8
495162:  STR             R0, [R5,#0x40]
495164:  AND.W           R0, R2, #0xF0
495168:  MOV             R1, R5
49516A:  ORR.W           R0, R0, #3
49516E:  STRB.W          R0, [R5,#0x54]
495172:  STR.W           R4, [R1,#0xC]!; CEntity **
495176:  ITT NE
495178:  MOVNE           R0, R4; this
49517A:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
49517E:  MOV             R0, R5
495180:  ADD             SP, SP, #8
495182:  POP             {R4,R5,R7,PC}
