; =========================================================
; Game Engine Function: _ZN20CTaskComplexLeaveCar9SerializeEv
; Address            : 0x4FE3B8 - 0x4FE4D8
; =========================================================

4FE3B8:  PUSH            {R4-R7,LR}
4FE3BA:  ADD             R7, SP, #0xC
4FE3BC:  PUSH.W          {R11}
4FE3C0:  MOV             R4, R0
4FE3C2:  LDR             R0, [R4]
4FE3C4:  LDR             R1, [R0,#0x14]
4FE3C6:  MOV             R0, R4
4FE3C8:  BLX             R1
4FE3CA:  MOV             R5, R0
4FE3CC:  LDR             R0, =(UseDataFence_ptr - 0x4FE3D2)
4FE3CE:  ADD             R0, PC; UseDataFence_ptr
4FE3D0:  LDR             R0, [R0]; UseDataFence
4FE3D2:  LDRB            R0, [R0]
4FE3D4:  CMP             R0, #0
4FE3D6:  IT NE
4FE3D8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE3DC:  MOVS            R0, #4; byte_count
4FE3DE:  BLX             malloc
4FE3E2:  MOV             R6, R0
4FE3E4:  MOVS            R1, #byte_4; void *
4FE3E6:  STR             R5, [R6]
4FE3E8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE3EC:  MOV             R0, R6; p
4FE3EE:  BLX             free
4FE3F2:  LDR             R0, [R4]
4FE3F4:  LDR             R1, [R0,#0x14]
4FE3F6:  MOV             R0, R4
4FE3F8:  BLX             R1
4FE3FA:  CMP.W           R0, #0x2C0
4FE3FE:  BNE             loc_4FE4BE
4FE400:  LDR             R0, [R4,#0xC]; CVehicle *
4FE402:  BLX             j__Z18GettPoolVehicleRefP8CVehicle; GettPoolVehicleRef(CVehicle *)
4FE406:  MOV             R5, R0
4FE408:  LDR             R0, =(UseDataFence_ptr - 0x4FE40E)
4FE40A:  ADD             R0, PC; UseDataFence_ptr
4FE40C:  LDR             R0, [R0]; UseDataFence
4FE40E:  LDRB            R0, [R0]
4FE410:  CMP             R0, #0
4FE412:  IT NE
4FE414:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE418:  MOVS            R0, #4; byte_count
4FE41A:  BLX             malloc
4FE41E:  MOV             R6, R0
4FE420:  MOVS            R1, #byte_4; void *
4FE422:  STR             R5, [R6]
4FE424:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE428:  MOV             R0, R6; p
4FE42A:  BLX             free
4FE42E:  LDR             R0, =(UseDataFence_ptr - 0x4FE434)
4FE430:  ADD             R0, PC; UseDataFence_ptr
4FE432:  LDR             R0, [R0]; UseDataFence
4FE434:  LDRB            R0, [R0]
4FE436:  CMP             R0, #0
4FE438:  IT NE
4FE43A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE43E:  MOVS            R0, #4; byte_count
4FE440:  BLX             malloc
4FE444:  MOV             R5, R0
4FE446:  LDR             R0, [R4,#0x10]
4FE448:  STR             R0, [R5]
4FE44A:  MOV             R0, R5; this
4FE44C:  MOVS            R1, #byte_4; void *
4FE44E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE452:  MOV             R0, R5; p
4FE454:  BLX             free
4FE458:  LDR             R0, =(UseDataFence_ptr - 0x4FE45E)
4FE45A:  ADD             R0, PC; UseDataFence_ptr
4FE45C:  LDR             R0, [R0]; UseDataFence
4FE45E:  LDRB            R0, [R0]
4FE460:  CMP             R0, #0
4FE462:  IT NE
4FE464:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE468:  MOVS            R0, #4; byte_count
4FE46A:  BLX             malloc
4FE46E:  MOV             R5, R0
4FE470:  LDR             R0, [R4,#0x14]
4FE472:  STR             R0, [R5]
4FE474:  MOV             R0, R5; this
4FE476:  MOVS            R1, #byte_4; void *
4FE478:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE47C:  MOV             R0, R5; p
4FE47E:  BLX             free
4FE482:  LDR             R0, =(UseDataFence_ptr - 0x4FE488)
4FE484:  ADD             R0, PC; UseDataFence_ptr
4FE486:  LDR             R0, [R0]; UseDataFence
4FE488:  LDRB            R0, [R0]
4FE48A:  CMP             R0, #0
4FE48C:  IT NE
4FE48E:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE492:  ADD.W           R0, R4, #0x18; this
4FE496:  MOVS            R1, #(stderr+1); void *
4FE498:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4FE49C:  LDR             R0, =(UseDataFence_ptr - 0x4FE4A2)
4FE49E:  ADD             R0, PC; UseDataFence_ptr
4FE4A0:  LDR             R0, [R0]; UseDataFence
4FE4A2:  LDRB            R0, [R0]
4FE4A4:  CMP             R0, #0
4FE4A6:  IT NE
4FE4A8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
4FE4AC:  ADD.W           R0, R4, #0x19; this
4FE4B0:  MOVS            R1, #(stderr+1); void *
4FE4B2:  POP.W           {R11}
4FE4B6:  POP.W           {R4-R7,LR}
4FE4BA:  B.W             sub_19EA3C
4FE4BE:  LDR             R0, [R4]
4FE4C0:  LDR             R1, [R0,#0x14]
4FE4C2:  MOV             R0, R4
4FE4C4:  BLX             R1
4FE4C6:  MOV             R1, R0; int
4FE4C8:  MOV.W           R0, #0x2C0; int
4FE4CC:  POP.W           {R11}
4FE4D0:  POP.W           {R4-R7,LR}
4FE4D4:  B.W             sub_1941D4
