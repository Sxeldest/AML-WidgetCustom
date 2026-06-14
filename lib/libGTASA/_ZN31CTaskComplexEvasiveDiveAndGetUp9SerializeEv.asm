; =========================================================
; Game Engine Function: _ZN31CTaskComplexEvasiveDiveAndGetUp9SerializeEv
; Address            : 0x50F294 - 0x50F3D2
; =========================================================

50F294:  PUSH            {R4-R7,LR}
50F296:  ADD             R7, SP, #0xC
50F298:  PUSH.W          {R11}
50F29C:  MOV             R4, R0
50F29E:  LDR             R0, [R4]
50F2A0:  LDR             R1, [R0,#0x14]
50F2A2:  MOV             R0, R4
50F2A4:  BLX             R1
50F2A6:  MOV             R5, R0
50F2A8:  LDR             R0, =(UseDataFence_ptr - 0x50F2AE)
50F2AA:  ADD             R0, PC; UseDataFence_ptr
50F2AC:  LDR             R0, [R0]; UseDataFence
50F2AE:  LDRB            R0, [R0]
50F2B0:  CMP             R0, #0
50F2B2:  IT NE
50F2B4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F2B8:  MOVS            R0, #4; byte_count
50F2BA:  BLX             malloc
50F2BE:  MOV             R6, R0
50F2C0:  MOVS            R1, #byte_4; void *
50F2C2:  STR             R5, [R6]
50F2C4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F2C8:  MOV             R0, R6; p
50F2CA:  BLX             free
50F2CE:  LDR             R0, [R4]
50F2D0:  LDR             R1, [R0,#0x14]
50F2D2:  MOV             R0, R4
50F2D4:  BLX             R1
50F2D6:  CMP.W           R0, #0x1F8
50F2DA:  BNE             loc_50F30A
50F2DC:  LDR             R0, [R4,#0xC]; CVehicle *
50F2DE:  CBZ             R0, loc_50F324
50F2E0:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
50F2E4:  MOV             R5, R0
50F2E6:  LDR             R0, =(UseDataFence_ptr - 0x50F2EC)
50F2E8:  ADD             R0, PC; UseDataFence_ptr
50F2EA:  LDR             R0, [R0]; UseDataFence
50F2EC:  LDRB            R0, [R0]
50F2EE:  CMP             R0, #0
50F2F0:  IT NE
50F2F2:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F2F6:  MOVS            R0, #4; byte_count
50F2F8:  BLX             malloc
50F2FC:  MOV             R6, R0
50F2FE:  MOVS            R1, #byte_4; void *
50F300:  STR             R5, [R6]
50F302:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F306:  MOV             R0, R6
50F308:  B               loc_50F34C
50F30A:  LDR             R0, [R4]
50F30C:  LDR             R1, [R0,#0x14]
50F30E:  MOV             R0, R4
50F310:  BLX             R1
50F312:  MOV             R1, R0; int
50F314:  MOV.W           R0, #0x1F8; int
50F318:  POP.W           {R11}
50F31C:  POP.W           {R4-R7,LR}
50F320:  B.W             sub_1941D4
50F324:  LDR             R0, =(UseDataFence_ptr - 0x50F32A)
50F326:  ADD             R0, PC; UseDataFence_ptr
50F328:  LDR             R0, [R0]; UseDataFence
50F32A:  LDRB            R0, [R0]
50F32C:  CMP             R0, #0
50F32E:  IT NE
50F330:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F334:  MOVS            R0, #4; byte_count
50F336:  BLX             malloc
50F33A:  MOV             R5, R0
50F33C:  MOV.W           R0, #0xFFFFFFFF
50F340:  STR             R0, [R5]
50F342:  MOV             R0, R5; this
50F344:  MOVS            R1, #byte_4; void *
50F346:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F34A:  MOV             R0, R5; p
50F34C:  BLX             free
50F350:  LDR             R0, =(UseDataFence_ptr - 0x50F356)
50F352:  ADD             R0, PC; UseDataFence_ptr
50F354:  LDR             R0, [R0]; UseDataFence
50F356:  LDRB            R0, [R0]
50F358:  CMP             R0, #0
50F35A:  IT NE
50F35C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F360:  MOVS            R0, #4; byte_count
50F362:  BLX             malloc
50F366:  MOV             R5, R0
50F368:  LDR             R0, [R4,#0x10]
50F36A:  STR             R0, [R5]
50F36C:  MOV             R0, R5; this
50F36E:  MOVS            R1, #byte_4; void *
50F370:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F374:  MOV             R0, R5; p
50F376:  BLX             free
50F37A:  LDR             R0, =(UseDataFence_ptr - 0x50F380)
50F37C:  ADD             R0, PC; UseDataFence_ptr
50F37E:  LDR             R0, [R0]; UseDataFence
50F380:  LDRB            R0, [R0]
50F382:  CMP             R0, #0
50F384:  IT NE
50F386:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F38A:  MOVS            R0, #0xC; byte_count
50F38C:  BLX             malloc
50F390:  ADD.W           R1, R4, #0x14
50F394:  MOV             R5, R0
50F396:  LDR             R0, [R4,#0x1C]
50F398:  VLD1.8          {D16}, [R1]
50F39C:  MOVS            R1, #(byte_9+3); void *
50F39E:  STR             R0, [R5,#8]
50F3A0:  MOV             R0, R5; this
50F3A2:  VST1.8          {D16}, [R5]
50F3A6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50F3AA:  MOV             R0, R5; p
50F3AC:  BLX             free
50F3B0:  LDR             R0, =(UseDataFence_ptr - 0x50F3B6)
50F3B2:  ADD             R0, PC; UseDataFence_ptr
50F3B4:  LDR             R0, [R0]; UseDataFence
50F3B6:  LDRB            R0, [R0]
50F3B8:  CMP             R0, #0
50F3BA:  IT NE
50F3BC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50F3C0:  ADD.W           R0, R4, #0x20 ; ' '; this
50F3C4:  MOVS            R1, #(stderr+1); void *
50F3C6:  POP.W           {R11}
50F3CA:  POP.W           {R4-R7,LR}
50F3CE:  B.W             sub_19EA3C
