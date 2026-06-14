; =========================================================
; Game Engine Function: _ZN22CTaskComplexDestroyCar9SerializeEv
; Address            : 0x4EA36C - 0x4EA4B0
; =========================================================

4EA36C:  PUSH            {R4-R7,LR}
4EA36E:  ADD             R7, SP, #0xC
4EA370:  PUSH.W          {R11}
4EA374:  MOV             R4, R0
4EA376:  LDR             R0, [R4]
4EA378:  LDR             R1, [R0,#0x14]
4EA37A:  MOV             R0, R4
4EA37C:  BLX             R1
4EA37E:  MOV             R5, R0
4EA380:  LDR             R0, =(UseDataFence_ptr - 0x4EA386)
4EA382:  ADD             R0, PC; UseDataFence_ptr
4EA384:  LDR             R0, [R0]; UseDataFence
4EA386:  LDRB            R0, [R0]
4EA388:  CMP             R0, #0
4EA38A:  IT NE
4EA38C:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA390:  MOVS            R0, #4; byte_count
4EA392:  BLX             malloc
4EA396:  MOV             R6, R0
4EA398:  MOVS            R1, #byte_4; void *
4EA39A:  STR             R5, [R6]
4EA39C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA3A0:  MOV             R0, R6; p
4EA3A2:  BLX             free
4EA3A6:  LDR             R0, [R4]
4EA3A8:  LDR             R1, [R0,#0x14]
4EA3AA:  MOV             R0, R4
4EA3AC:  BLX             R1
4EA3AE:  MOVW            R1, #0x3EB
4EA3B2:  CMP             R0, R1
4EA3B4:  BNE             loc_4EA3E4
4EA3B6:  LDR             R0, [R4,#0x10]; CVehicle *
4EA3B8:  CBZ             R0, loc_4EA3FE
4EA3BA:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4EA3BE:  MOV             R5, R0
4EA3C0:  LDR             R0, =(UseDataFence_ptr - 0x4EA3C6)
4EA3C2:  ADD             R0, PC; UseDataFence_ptr
4EA3C4:  LDR             R0, [R0]; UseDataFence
4EA3C6:  LDRB            R0, [R0]
4EA3C8:  CMP             R0, #0
4EA3CA:  IT NE
4EA3CC:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA3D0:  MOVS            R0, #4; byte_count
4EA3D2:  BLX             malloc
4EA3D6:  MOV             R6, R0
4EA3D8:  MOVS            R1, #byte_4; void *
4EA3DA:  STR             R5, [R6]
4EA3DC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA3E0:  MOV             R0, R6
4EA3E2:  B               loc_4EA426
4EA3E4:  LDR             R0, [R4]
4EA3E6:  LDR             R1, [R0,#0x14]
4EA3E8:  MOV             R0, R4
4EA3EA:  BLX             R1
4EA3EC:  MOV             R1, R0; int
4EA3EE:  MOVW            R0, #0x3EB; int
4EA3F2:  POP.W           {R11}
4EA3F6:  POP.W           {R4-R7,LR}
4EA3FA:  B.W             sub_1941D4
4EA3FE:  LDR             R0, =(UseDataFence_ptr - 0x4EA404)
4EA400:  ADD             R0, PC; UseDataFence_ptr
4EA402:  LDR             R0, [R0]; UseDataFence
4EA404:  LDRB            R0, [R0]
4EA406:  CMP             R0, #0
4EA408:  IT NE
4EA40A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA40E:  MOVS            R0, #4; byte_count
4EA410:  BLX             malloc
4EA414:  MOV             R5, R0
4EA416:  MOV.W           R0, #0xFFFFFFFF
4EA41A:  STR             R0, [R5]
4EA41C:  MOV             R0, R5; this
4EA41E:  MOVS            R1, #byte_4; void *
4EA420:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA424:  MOV             R0, R5; p
4EA426:  BLX             free
4EA42A:  LDR             R0, =(UseDataFence_ptr - 0x4EA430)
4EA42C:  ADD             R0, PC; UseDataFence_ptr
4EA42E:  LDR             R0, [R0]; UseDataFence
4EA430:  LDRB            R0, [R0]
4EA432:  CMP             R0, #0
4EA434:  IT NE
4EA436:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA43A:  MOVS            R0, #4; byte_count
4EA43C:  BLX             malloc
4EA440:  MOV             R5, R0
4EA442:  LDR             R0, [R4,#0x14]
4EA444:  STR             R0, [R5]
4EA446:  MOV             R0, R5; this
4EA448:  MOVS            R1, #byte_4; void *
4EA44A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA44E:  MOV             R0, R5; p
4EA450:  BLX             free
4EA454:  LDR             R0, =(UseDataFence_ptr - 0x4EA45A)
4EA456:  ADD             R0, PC; UseDataFence_ptr
4EA458:  LDR             R0, [R0]; UseDataFence
4EA45A:  LDRB            R0, [R0]
4EA45C:  CMP             R0, #0
4EA45E:  IT NE
4EA460:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA464:  MOVS            R0, #4; byte_count
4EA466:  BLX             malloc
4EA46A:  MOV             R5, R0
4EA46C:  LDR             R0, [R4,#0x18]
4EA46E:  STR             R0, [R5]
4EA470:  MOV             R0, R5; this
4EA472:  MOVS            R1, #byte_4; void *
4EA474:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA478:  MOV             R0, R5; p
4EA47A:  BLX             free
4EA47E:  LDR             R0, =(UseDataFence_ptr - 0x4EA484)
4EA480:  ADD             R0, PC; UseDataFence_ptr
4EA482:  LDR             R0, [R0]; UseDataFence
4EA484:  LDRB            R0, [R0]
4EA486:  CMP             R0, #0
4EA488:  IT NE
4EA48A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4EA48E:  MOVS            R0, #4; byte_count
4EA490:  BLX             malloc
4EA494:  MOV             R5, R0
4EA496:  LDR             R0, [R4,#0x1C]
4EA498:  STR             R0, [R5]
4EA49A:  MOV             R0, R5; this
4EA49C:  MOVS            R1, #byte_4; void *
4EA49E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4EA4A2:  MOV             R0, R5; p
4EA4A4:  POP.W           {R11}
4EA4A8:  POP.W           {R4-R7,LR}
4EA4AC:  B.W             j_free
