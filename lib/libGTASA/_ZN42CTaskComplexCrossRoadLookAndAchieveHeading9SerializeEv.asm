; =========================================================
; Game Engine Function: _ZN42CTaskComplexCrossRoadLookAndAchieveHeading9SerializeEv
; Address            : 0x4F3284 - 0x4F333E
; =========================================================

4F3284:  PUSH            {R4-R7,LR}
4F3286:  ADD             R7, SP, #0xC
4F3288:  PUSH.W          {R11}
4F328C:  MOV             R4, R0
4F328E:  LDR             R0, [R4]
4F3290:  LDR             R1, [R0,#0x14]
4F3292:  MOV             R0, R4
4F3294:  BLX             R1
4F3296:  MOV             R5, R0
4F3298:  LDR             R0, =(UseDataFence_ptr - 0x4F329E)
4F329A:  ADD             R0, PC; UseDataFence_ptr
4F329C:  LDR             R0, [R0]; UseDataFence
4F329E:  LDRB            R0, [R0]
4F32A0:  CMP             R0, #0
4F32A2:  IT NE
4F32A4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F32A8:  MOVS            R0, #4; byte_count
4F32AA:  BLX             malloc
4F32AE:  MOV             R6, R0
4F32B0:  MOVS            R1, #byte_4; void *
4F32B2:  STR             R5, [R6]
4F32B4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F32B8:  MOV             R0, R6; p
4F32BA:  BLX             free
4F32BE:  LDR             R0, [R4]
4F32C0:  LDR             R1, [R0,#0x14]
4F32C2:  MOV             R0, R4
4F32C4:  BLX             R1
4F32C6:  CMP             R0, #0xE3
4F32C8:  BNE             loc_4F3326
4F32CA:  LDR             R0, =(UseDataFence_ptr - 0x4F32D0)
4F32CC:  ADD             R0, PC; UseDataFence_ptr
4F32CE:  LDR             R0, [R0]; UseDataFence
4F32D0:  LDRB            R0, [R0]
4F32D2:  CMP             R0, #0
4F32D4:  IT NE
4F32D6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F32DA:  MOVS            R0, #4; byte_count
4F32DC:  BLX             malloc
4F32E0:  MOV             R5, R0
4F32E2:  LDR             R0, [R4,#0xC]
4F32E4:  STR             R0, [R5]
4F32E6:  MOV             R0, R5; this
4F32E8:  MOVS            R1, #byte_4; void *
4F32EA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F32EE:  MOV             R0, R5; p
4F32F0:  BLX             free
4F32F4:  LDR             R0, =(UseDataFence_ptr - 0x4F32FA)
4F32F6:  ADD             R0, PC; UseDataFence_ptr
4F32F8:  LDR             R0, [R0]; UseDataFence
4F32FA:  LDRB            R0, [R0]
4F32FC:  CMP             R0, #0
4F32FE:  IT NE
4F3300:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4F3304:  MOVS            R0, #4; byte_count
4F3306:  BLX             malloc
4F330A:  MOV             R5, R0
4F330C:  LDR             R0, [R4,#0x10]
4F330E:  STR             R0, [R5]
4F3310:  MOV             R0, R5; this
4F3312:  MOVS            R1, #byte_4; void *
4F3314:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4F3318:  MOV             R0, R5; p
4F331A:  POP.W           {R11}
4F331E:  POP.W           {R4-R7,LR}
4F3322:  B.W             j_free
4F3326:  LDR             R0, [R4]
4F3328:  LDR             R1, [R0,#0x14]
4F332A:  MOV             R0, R4
4F332C:  BLX             R1
4F332E:  MOV             R1, R0; int
4F3330:  MOVS            R0, #0xE3; int
4F3332:  POP.W           {R11}
4F3336:  POP.W           {R4-R7,LR}
4F333A:  B.W             sub_1941D4
