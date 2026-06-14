; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE10CreateTaskEv
; Address            : 0x4951D0 - 0x49531E
; =========================================================

4951D0:  PUSH            {R4,R5,R7,LR}
4951D2:  ADD             R7, SP, #8
4951D4:  SUB             SP, SP, #8
4951D6:  LDR             R0, =(UseDataFence_ptr - 0x4951DC)
4951D8:  ADD             R0, PC; UseDataFence_ptr
4951DA:  LDR             R0, [R0]; UseDataFence
4951DC:  LDRB            R4, [R0]
4951DE:  CBZ             R4, loc_4951F4
4951E0:  LDR             R0, =(UseDataFence_ptr - 0x4951E8)
4951E2:  MOVS            R1, #(stderr+2); void *
4951E4:  ADD             R0, PC; UseDataFence_ptr
4951E6:  LDR             R5, [R0]; UseDataFence
4951E8:  MOVS            R0, #0
4951EA:  STRB            R0, [R5]
4951EC:  ADD             R0, SP, #0x10+var_C; this
4951EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4951F2:  STRB            R4, [R5]
4951F4:  ADD             R0, SP, #0x10+var_C; this
4951F6:  MOVS            R1, #byte_4; void *
4951F8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4951FC:  LDR             R0, [SP,#0x10+var_C]
4951FE:  CMP             R0, #2
495200:  BEQ             loc_49523C
495202:  CMP             R0, #4
495204:  BEQ             loc_49526E
495206:  CMP             R0, #3
495208:  BNE             loc_4952A2
49520A:  LDR             R0, =(UseDataFence_ptr - 0x495210)
49520C:  ADD             R0, PC; UseDataFence_ptr
49520E:  LDR             R0, [R0]; UseDataFence
495210:  LDRB            R4, [R0]
495212:  CBZ             R4, loc_495228
495214:  LDR             R0, =(UseDataFence_ptr - 0x49521C)
495216:  MOVS            R1, #(stderr+2); void *
495218:  ADD             R0, PC; UseDataFence_ptr
49521A:  LDR             R5, [R0]; UseDataFence
49521C:  MOVS            R0, #0
49521E:  STRB            R0, [R5]
495220:  MOV             R0, SP; this
495222:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495226:  STRB            R4, [R5]
495228:  MOV             R0, SP; this
49522A:  MOVS            R1, #byte_4; void *
49522C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495230:  LDR             R0, [SP,#0x10+var_10]; this
495232:  ADDS            R1, R0, #1; int
495234:  BEQ             loc_4952A2
495236:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
49523A:  B               loc_49529E
49523C:  LDR             R0, =(UseDataFence_ptr - 0x495242)
49523E:  ADD             R0, PC; UseDataFence_ptr
495240:  LDR             R0, [R0]; UseDataFence
495242:  LDRB            R4, [R0]
495244:  CBZ             R4, loc_49525A
495246:  LDR             R0, =(UseDataFence_ptr - 0x49524E)
495248:  MOVS            R1, #(stderr+2); void *
49524A:  ADD             R0, PC; UseDataFence_ptr
49524C:  LDR             R5, [R0]; UseDataFence
49524E:  MOVS            R0, #0
495250:  STRB            R0, [R5]
495252:  MOV             R0, SP; this
495254:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495258:  STRB            R4, [R5]
49525A:  MOV             R0, SP; this
49525C:  MOVS            R1, #byte_4; void *
49525E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495262:  LDR             R0, [SP,#0x10+var_10]; this
495264:  ADDS            R1, R0, #1; int
495266:  BEQ             loc_4952A2
495268:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49526C:  B               loc_49529E
49526E:  LDR             R0, =(UseDataFence_ptr - 0x495274)
495270:  ADD             R0, PC; UseDataFence_ptr
495272:  LDR             R0, [R0]; UseDataFence
495274:  LDRB            R4, [R0]
495276:  CBZ             R4, loc_49528C
495278:  LDR             R0, =(UseDataFence_ptr - 0x495280)
49527A:  MOVS            R1, #(stderr+2); void *
49527C:  ADD             R0, PC; UseDataFence_ptr
49527E:  LDR             R5, [R0]; UseDataFence
495280:  MOVS            R0, #0
495282:  STRB            R0, [R5]
495284:  MOV             R0, SP; this
495286:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49528A:  STRB            R4, [R5]
49528C:  MOV             R0, SP; this
49528E:  MOVS            R1, #byte_4; void *
495290:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
495294:  LDR             R0, [SP,#0x10+var_10]; this
495296:  ADDS            R1, R0, #1; int
495298:  BEQ             loc_4952A2
49529A:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
49529E:  MOV             R4, R0
4952A0:  B               loc_4952A4
4952A2:  MOVS            R4, #0
4952A4:  MOVS            R0, #dword_4C; this
4952A6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4952AA:  MOV             R5, R0
4952AC:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
4952B0:  ADR             R2, dword_495320
4952B2:  LDR             R0, =(_ZTV22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE_ptr - 0x4952C0)
4952B4:  VLD1.64         {D16-D17}, [R2@128]
4952B8:  ADD.W           R2, R5, #0x18
4952BC:  ADD             R0, PC; _ZTV22CTaskComplexSeekEntityI37CEntitySeekPosCalculatorEntitySurfaceE_ptr
4952BE:  MOV.W           R3, #0x3E8
4952C2:  LDR             R1, =(_ZTV37CEntitySeekPosCalculatorEntitySurface_ptr - 0x4952D2)
4952C4:  CMP             R4, #0
4952C6:  VST1.32         {D16-D17}, [R2]
4952CA:  MOVW            R2, #0xC350
4952CE:  ADD             R1, PC; _ZTV37CEntitySeekPosCalculatorEntitySurface_ptr
4952D0:  STRD.W          R2, R3, [R5,#0x10]
4952D4:  MOV.W           R2, #0
4952D8:  LDR             R0, [R0]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorEntitySurface> ...
4952DA:  STRH            R2, [R5,#0x30]
4952DC:  STRH            R2, [R5,#0x3C]
4952DE:  ADD.W           R0, R0, #8
4952E2:  STRD.W          R2, R2, [R5,#0x28]
4952E6:  STRD.W          R2, R2, [R5,#0x34]
4952EA:  MOV.W           R2, #6
4952EE:  STR             R2, [R5,#0x44]
4952F0:  LDR             R1, [R1]; `vtable for'CEntitySeekPosCalculatorEntitySurface ...
4952F2:  LDRB.W          R2, [R5,#0x48]
4952F6:  STR             R0, [R5]
4952F8:  ADD.W           R0, R1, #8
4952FC:  STR             R0, [R5,#0x40]
4952FE:  AND.W           R0, R2, #0xF0
495302:  MOV             R1, R5
495304:  ORR.W           R0, R0, #3
495308:  STRB.W          R0, [R5,#0x48]
49530C:  STR.W           R4, [R1,#0xC]!; CEntity **
495310:  ITT NE
495312:  MOVNE           R0, R4; this
495314:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
495318:  MOV             R0, R5
49531A:  ADD             SP, SP, #8
49531C:  POP             {R4,R5,R7,PC}
