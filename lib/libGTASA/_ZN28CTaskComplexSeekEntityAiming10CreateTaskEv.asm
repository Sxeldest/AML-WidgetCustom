; =========================================================
; Game Engine Function: _ZN28CTaskComplexSeekEntityAiming10CreateTaskEv
; Address            : 0x4962D4 - 0x496410
; =========================================================

4962D4:  PUSH            {R4-R7,LR}
4962D6:  ADD             R7, SP, #0xC
4962D8:  PUSH.W          {R11}
4962DC:  SUB             SP, SP, #0x10
4962DE:  LDR             R0, =(UseDataFence_ptr - 0x4962E4)
4962E0:  ADD             R0, PC; UseDataFence_ptr
4962E2:  LDR             R0, [R0]; UseDataFence
4962E4:  LDRB            R4, [R0]
4962E6:  CBZ             R4, loc_4962FC
4962E8:  LDR             R0, =(UseDataFence_ptr - 0x4962F0)
4962EA:  MOVS            R1, #(stderr+2); void *
4962EC:  ADD             R0, PC; UseDataFence_ptr
4962EE:  LDR             R5, [R0]; UseDataFence
4962F0:  MOVS            R0, #0
4962F2:  STRB            R0, [R5]
4962F4:  ADD             R0, SP, #0x20+var_14; this
4962F6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4962FA:  STRB            R4, [R5]
4962FC:  ADD             R0, SP, #0x20+var_14; this
4962FE:  MOVS            R1, #byte_4; void *
496300:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496304:  LDR             R0, [SP,#0x20+var_14]
496306:  CMP             R0, #2
496308:  BEQ             loc_496344
49630A:  CMP             R0, #4
49630C:  BEQ             loc_496376
49630E:  CMP             R0, #3
496310:  BNE             loc_4963AA
496312:  LDR             R0, =(UseDataFence_ptr - 0x496318)
496314:  ADD             R0, PC; UseDataFence_ptr
496316:  LDR             R0, [R0]; UseDataFence
496318:  LDRB            R4, [R0]
49631A:  CBZ             R4, loc_496330
49631C:  LDR             R0, =(UseDataFence_ptr - 0x496324)
49631E:  MOVS            R1, #(stderr+2); void *
496320:  ADD             R0, PC; UseDataFence_ptr
496322:  LDR             R5, [R0]; UseDataFence
496324:  MOVS            R0, #0
496326:  STRB            R0, [R5]
496328:  ADD             R0, SP, #0x20+var_18; this
49632A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49632E:  STRB            R4, [R5]
496330:  ADD             R0, SP, #0x20+var_18; this
496332:  MOVS            R1, #byte_4; void *
496334:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496338:  LDR             R0, [SP,#0x20+var_18]; this
49633A:  ADDS            R1, R0, #1; int
49633C:  BEQ             loc_4963AA
49633E:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
496342:  B               loc_4963A6
496344:  LDR             R0, =(UseDataFence_ptr - 0x49634A)
496346:  ADD             R0, PC; UseDataFence_ptr
496348:  LDR             R0, [R0]; UseDataFence
49634A:  LDRB            R4, [R0]
49634C:  CBZ             R4, loc_496362
49634E:  LDR             R0, =(UseDataFence_ptr - 0x496356)
496350:  MOVS            R1, #(stderr+2); void *
496352:  ADD             R0, PC; UseDataFence_ptr
496354:  LDR             R5, [R0]; UseDataFence
496356:  MOVS            R0, #0
496358:  STRB            R0, [R5]
49635A:  ADD             R0, SP, #0x20+var_18; this
49635C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496360:  STRB            R4, [R5]
496362:  ADD             R0, SP, #0x20+var_18; this
496364:  MOVS            R1, #byte_4; void *
496366:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49636A:  LDR             R0, [SP,#0x20+var_18]; this
49636C:  ADDS            R1, R0, #1; int
49636E:  BEQ             loc_4963AA
496370:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
496374:  B               loc_4963A6
496376:  LDR             R0, =(UseDataFence_ptr - 0x49637C)
496378:  ADD             R0, PC; UseDataFence_ptr
49637A:  LDR             R0, [R0]; UseDataFence
49637C:  LDRB            R4, [R0]
49637E:  CBZ             R4, loc_496394
496380:  LDR             R0, =(UseDataFence_ptr - 0x496388)
496382:  MOVS            R1, #(stderr+2); void *
496384:  ADD             R0, PC; UseDataFence_ptr
496386:  LDR             R5, [R0]; UseDataFence
496388:  MOVS            R0, #0
49638A:  STRB            R0, [R5]
49638C:  ADD             R0, SP, #0x20+var_18; this
49638E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496392:  STRB            R4, [R5]
496394:  ADD             R0, SP, #0x20+var_18; this
496396:  MOVS            R1, #byte_4; void *
496398:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49639C:  LDR             R0, [SP,#0x20+var_18]; this
49639E:  ADDS            R1, R0, #1; int
4963A0:  BEQ             loc_4963AA
4963A2:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
4963A6:  MOV             R4, R0
4963A8:  B               loc_4963AC
4963AA:  MOVS            R4, #0
4963AC:  LDR             R0, =(UseDataFence_ptr - 0x4963B2)
4963AE:  ADD             R0, PC; UseDataFence_ptr
4963B0:  LDR             R0, [R0]; UseDataFence
4963B2:  LDRB            R5, [R0]
4963B4:  CBZ             R5, loc_4963CA
4963B6:  LDR             R0, =(UseDataFence_ptr - 0x4963BE)
4963B8:  MOVS            R1, #(stderr+2); void *
4963BA:  ADD             R0, PC; UseDataFence_ptr
4963BC:  LDR             R6, [R0]; UseDataFence
4963BE:  MOVS            R0, #0
4963C0:  STRB            R0, [R6]
4963C2:  ADD             R0, SP, #0x20+var_18; this
4963C4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4963C8:  STRB            R5, [R6]
4963CA:  ADD             R0, SP, #0x20+var_18; this
4963CC:  MOVS            R1, #byte_4; void *
4963CE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4963D2:  LDR             R0, =(UseDataFence_ptr - 0x4963D8)
4963D4:  ADD             R0, PC; UseDataFence_ptr
4963D6:  LDR             R0, [R0]; UseDataFence
4963D8:  LDRB            R5, [R0]
4963DA:  CBZ             R5, loc_4963F0
4963DC:  LDR             R0, =(UseDataFence_ptr - 0x4963E4)
4963DE:  MOVS            R1, #(stderr+2); void *
4963E0:  ADD             R0, PC; UseDataFence_ptr
4963E2:  LDR             R6, [R0]; UseDataFence
4963E4:  MOVS            R0, #0
4963E6:  STRB            R0, [R6]
4963E8:  ADD             R0, SP, #0x20+var_1C; this
4963EA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4963EE:  STRB            R5, [R6]
4963F0:  ADD             R0, SP, #0x20+var_1C; this
4963F2:  MOVS            R1, #byte_4; void *
4963F4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4963F8:  MOVS            R0, #off_18; this
4963FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4963FE:  LDRD.W          R3, R2, [SP,#0x20+var_1C]; float
496402:  MOV             R1, R4; CEntity *
496404:  BLX             j__ZN28CTaskComplexSeekEntityAimingC2EP7CEntityff; CTaskComplexSeekEntityAiming::CTaskComplexSeekEntityAiming(CEntity *,float,float)
496408:  ADD             SP, SP, #0x10
49640A:  POP.W           {R11}
49640E:  POP             {R4-R7,PC}
