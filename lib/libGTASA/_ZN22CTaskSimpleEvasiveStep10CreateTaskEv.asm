; =========================================================
; Game Engine Function: _ZN22CTaskSimpleEvasiveStep10CreateTaskEv
; Address            : 0x492304 - 0x4923E8
; =========================================================

492304:  PUSH            {R4,R5,R7,LR}
492306:  ADD             R7, SP, #8
492308:  SUB             SP, SP, #8
49230A:  LDR             R0, =(UseDataFence_ptr - 0x492310)
49230C:  ADD             R0, PC; UseDataFence_ptr
49230E:  LDR             R0, [R0]; UseDataFence
492310:  LDRB            R4, [R0]
492312:  CBZ             R4, loc_492328
492314:  LDR             R0, =(UseDataFence_ptr - 0x49231C)
492316:  MOVS            R1, #(stderr+2); void *
492318:  ADD             R0, PC; UseDataFence_ptr
49231A:  LDR             R5, [R0]; UseDataFence
49231C:  MOVS            R0, #0
49231E:  STRB            R0, [R5]
492320:  ADD             R0, SP, #0x10+var_C; this
492322:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492326:  STRB            R4, [R5]
492328:  ADD             R0, SP, #0x10+var_C; this
49232A:  MOVS            R1, #byte_4; void *
49232C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492330:  LDR             R0, [SP,#0x10+var_C]
492332:  CMP             R0, #2
492334:  BEQ             loc_492370
492336:  CMP             R0, #4
492338:  BEQ             loc_4923A2
49233A:  CMP             R0, #3
49233C:  BNE             loc_4923D6
49233E:  LDR             R0, =(UseDataFence_ptr - 0x492344)
492340:  ADD             R0, PC; UseDataFence_ptr
492342:  LDR             R0, [R0]; UseDataFence
492344:  LDRB            R4, [R0]
492346:  CBZ             R4, loc_49235C
492348:  LDR             R0, =(UseDataFence_ptr - 0x492350)
49234A:  MOVS            R1, #(stderr+2); void *
49234C:  ADD             R0, PC; UseDataFence_ptr
49234E:  LDR             R5, [R0]; UseDataFence
492350:  MOVS            R0, #0
492352:  STRB            R0, [R5]
492354:  MOV             R0, SP; this
492356:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49235A:  STRB            R4, [R5]
49235C:  MOV             R0, SP; this
49235E:  MOVS            R1, #byte_4; void *
492360:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492364:  LDR             R0, [SP,#0x10+var_10]; this
492366:  ADDS            R1, R0, #1; int
492368:  BEQ             loc_4923D6
49236A:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
49236E:  B               loc_4923D2
492370:  LDR             R0, =(UseDataFence_ptr - 0x492376)
492372:  ADD             R0, PC; UseDataFence_ptr
492374:  LDR             R0, [R0]; UseDataFence
492376:  LDRB            R4, [R0]
492378:  CBZ             R4, loc_49238E
49237A:  LDR             R0, =(UseDataFence_ptr - 0x492382)
49237C:  MOVS            R1, #(stderr+2); void *
49237E:  ADD             R0, PC; UseDataFence_ptr
492380:  LDR             R5, [R0]; UseDataFence
492382:  MOVS            R0, #0
492384:  STRB            R0, [R5]
492386:  MOV             R0, SP; this
492388:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49238C:  STRB            R4, [R5]
49238E:  MOV             R0, SP; this
492390:  MOVS            R1, #byte_4; void *
492392:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492396:  LDR             R0, [SP,#0x10+var_10]; this
492398:  ADDS            R1, R0, #1; int
49239A:  BEQ             loc_4923D6
49239C:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4923A0:  B               loc_4923D2
4923A2:  LDR             R0, =(UseDataFence_ptr - 0x4923A8)
4923A4:  ADD             R0, PC; UseDataFence_ptr
4923A6:  LDR             R0, [R0]; UseDataFence
4923A8:  LDRB            R4, [R0]
4923AA:  CBZ             R4, loc_4923C0
4923AC:  LDR             R0, =(UseDataFence_ptr - 0x4923B4)
4923AE:  MOVS            R1, #(stderr+2); void *
4923B0:  ADD             R0, PC; UseDataFence_ptr
4923B2:  LDR             R5, [R0]; UseDataFence
4923B4:  MOVS            R0, #0
4923B6:  STRB            R0, [R5]
4923B8:  MOV             R0, SP; this
4923BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4923BE:  STRB            R4, [R5]
4923C0:  MOV             R0, SP; this
4923C2:  MOVS            R1, #byte_4; void *
4923C4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4923C8:  LDR             R0, [SP,#0x10+var_10]; this
4923CA:  ADDS            R1, R0, #1; int
4923CC:  BEQ             loc_4923D6
4923CE:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
4923D2:  MOV             R4, R0
4923D4:  B               loc_4923D8
4923D6:  MOVS            R4, #0
4923D8:  MOVS            R0, #dword_14; this
4923DA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4923DE:  MOV             R1, R4; CEntity *
4923E0:  BLX             j__ZN22CTaskSimpleEvasiveStepC2EP7CEntity; CTaskSimpleEvasiveStep::CTaskSimpleEvasiveStep(CEntity *)
4923E4:  ADD             SP, SP, #8
4923E6:  POP             {R4,R5,R7,PC}
