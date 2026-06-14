; =========================================================
; Game Engine Function: _ZN24CTaskComplexDriveToPoint9SerializeEv
; Address            : 0x4FF258 - 0x4FF3F8
; =========================================================

4FF258:  PUSH            {R4-R7,LR}
4FF25A:  ADD             R7, SP, #0xC
4FF25C:  PUSH.W          {R11}
4FF260:  MOV             R4, R0
4FF262:  LDR             R0, [R4]
4FF264:  LDR             R1, [R0,#0x14]
4FF266:  MOV             R0, R4
4FF268:  BLX             R1
4FF26A:  MOV             R5, R0
4FF26C:  LDR             R0, =(UseDataFence_ptr - 0x4FF272)
4FF26E:  ADD             R0, PC; UseDataFence_ptr
4FF270:  LDR             R0, [R0]; UseDataFence
4FF272:  LDRB            R0, [R0]
4FF274:  CMP             R0, #0
4FF276:  IT NE
4FF278:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF27C:  MOVS            R0, #4; byte_count
4FF27E:  BLX             malloc
4FF282:  MOV             R6, R0
4FF284:  MOVS            R1, #byte_4; void *
4FF286:  STR             R5, [R6]
4FF288:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF28C:  MOV             R0, R6; p
4FF28E:  BLX             free
4FF292:  LDR             R0, [R4]
4FF294:  LDR             R1, [R0,#0x14]
4FF296:  MOV             R0, R4
4FF298:  BLX             R1
4FF29A:  MOVW            R1, #0x2C6
4FF29E:  CMP             R0, R1
4FF2A0:  BNE.W           loc_4FF3DE
4FF2A4:  LDR             R0, [R4,#0xC]; CVehicle *
4FF2A6:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FF2AA:  MOV             R5, R0
4FF2AC:  LDR             R0, =(UseDataFence_ptr - 0x4FF2B2)
4FF2AE:  ADD             R0, PC; UseDataFence_ptr
4FF2B0:  LDR             R0, [R0]; UseDataFence
4FF2B2:  LDRB            R0, [R0]
4FF2B4:  CMP             R0, #0
4FF2B6:  IT NE
4FF2B8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF2BC:  MOVS            R0, #4; byte_count
4FF2BE:  BLX             malloc
4FF2C2:  MOV             R6, R0
4FF2C4:  MOVS            R1, #byte_4; void *
4FF2C6:  STR             R5, [R6]
4FF2C8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF2CC:  MOV             R0, R6; p
4FF2CE:  BLX             free
4FF2D2:  LDR             R0, =(UseDataFence_ptr - 0x4FF2D8)
4FF2D4:  ADD             R0, PC; UseDataFence_ptr
4FF2D6:  LDR             R0, [R0]; UseDataFence
4FF2D8:  LDRB            R0, [R0]
4FF2DA:  CMP             R0, #0
4FF2DC:  IT NE
4FF2DE:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF2E2:  MOVS            R0, #0xC; byte_count
4FF2E4:  BLX             malloc
4FF2E8:  ADD.W           R1, R4, #0x24 ; '$'
4FF2EC:  MOV             R5, R0
4FF2EE:  LDR             R0, [R4,#0x2C]
4FF2F0:  VLD1.8          {D16}, [R1]
4FF2F4:  MOVS            R1, #(byte_9+3); void *
4FF2F6:  STR             R0, [R5,#8]
4FF2F8:  MOV             R0, R5; this
4FF2FA:  VST1.8          {D16}, [R5]
4FF2FE:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF302:  MOV             R0, R5; p
4FF304:  BLX             free
4FF308:  LDR             R0, =(UseDataFence_ptr - 0x4FF310)
4FF30A:  LDR             R6, [R4,#0x10]
4FF30C:  ADD             R0, PC; UseDataFence_ptr
4FF30E:  LDR             R0, [R0]; UseDataFence
4FF310:  LDRB            R0, [R0]
4FF312:  CMP             R0, #0
4FF314:  IT NE
4FF316:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF31A:  MOVS            R0, #4; byte_count
4FF31C:  BLX             malloc
4FF320:  MOV             R5, R0
4FF322:  MOVS            R1, #byte_4; void *
4FF324:  STR             R6, [R5]
4FF326:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF32A:  MOV             R0, R5; p
4FF32C:  BLX             free
4FF330:  LDR             R0, =(UseDataFence_ptr - 0x4FF336)
4FF332:  ADD             R0, PC; UseDataFence_ptr
4FF334:  LDR             R0, [R0]; UseDataFence
4FF336:  LDRB            R0, [R0]
4FF338:  CMP             R0, #0
4FF33A:  IT NE
4FF33C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF340:  MOVS            R0, #4; byte_count
4FF342:  BLX             malloc
4FF346:  MOV             R5, R0
4FF348:  LDR             R0, [R4,#0x30]
4FF34A:  STR             R0, [R5]
4FF34C:  MOV             R0, R5; this
4FF34E:  MOVS            R1, #byte_4; void *
4FF350:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF354:  MOV             R0, R5; p
4FF356:  BLX             free
4FF35A:  LDR             R0, =(UseDataFence_ptr - 0x4FF360)
4FF35C:  ADD             R0, PC; UseDataFence_ptr
4FF35E:  LDR             R0, [R0]; UseDataFence
4FF360:  LDRB            R0, [R0]
4FF362:  CMP             R0, #0
4FF364:  IT NE
4FF366:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF36A:  MOVS            R0, #4; byte_count
4FF36C:  BLX             malloc
4FF370:  MOV             R5, R0
4FF372:  LDR             R0, [R4,#0x14]
4FF374:  STR             R0, [R5]
4FF376:  MOV             R0, R5; this
4FF378:  MOVS            R1, #byte_4; void *
4FF37A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF37E:  MOV             R0, R5; p
4FF380:  BLX             free
4FF384:  LDR             R0, =(UseDataFence_ptr - 0x4FF38C)
4FF386:  LDR             R6, [R4,#0x34]
4FF388:  ADD             R0, PC; UseDataFence_ptr
4FF38A:  LDR             R0, [R0]; UseDataFence
4FF38C:  LDRB            R0, [R0]
4FF38E:  CMP             R0, #0
4FF390:  IT NE
4FF392:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF396:  MOVS            R0, #4; byte_count
4FF398:  BLX             malloc
4FF39C:  MOV             R5, R0
4FF39E:  MOVS            R1, #byte_4; void *
4FF3A0:  STR             R6, [R5]
4FF3A2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF3A6:  MOV             R0, R5; p
4FF3A8:  BLX             free
4FF3AC:  LDR             R0, =(UseDataFence_ptr - 0x4FF3B2)
4FF3AE:  ADD             R0, PC; UseDataFence_ptr
4FF3B0:  LDR             R0, [R0]; UseDataFence
4FF3B2:  LDRB            R0, [R0]
4FF3B4:  CMP             R0, #0
4FF3B6:  IT NE
4FF3B8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FF3BC:  MOVS            R0, #4; byte_count
4FF3BE:  BLX             malloc
4FF3C2:  MOV             R5, R0
4FF3C4:  LDR             R0, [R4,#0x18]
4FF3C6:  STR             R0, [R5]
4FF3C8:  MOV             R0, R5; this
4FF3CA:  MOVS            R1, #byte_4; void *
4FF3CC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FF3D0:  MOV             R0, R5; p
4FF3D2:  POP.W           {R11}
4FF3D6:  POP.W           {R4-R7,LR}
4FF3DA:  B.W             j_free
4FF3DE:  LDR             R0, [R4]
4FF3E0:  LDR             R1, [R0,#0x14]
4FF3E2:  MOV             R0, R4
4FF3E4:  BLX             R1
4FF3E6:  MOV             R1, R0; int
4FF3E8:  MOVW            R0, #0x2C6; int
4FF3EC:  POP.W           {R11}
4FF3F0:  POP.W           {R4-R7,LR}
4FF3F4:  B.W             sub_1941D4
