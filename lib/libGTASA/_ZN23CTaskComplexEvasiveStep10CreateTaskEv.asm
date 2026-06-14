; =========================================================
; Game Engine Function: _ZN23CTaskComplexEvasiveStep10CreateTaskEv
; Address            : 0x492408 - 0x49251E
; =========================================================

492408:  PUSH            {R4-R7,LR}
49240A:  ADD             R7, SP, #0xC
49240C:  PUSH.W          {R11}
492410:  SUB             SP, SP, #0x10
492412:  LDR             R0, =(UseDataFence_ptr - 0x492418)
492414:  ADD             R0, PC; UseDataFence_ptr
492416:  LDR             R0, [R0]; UseDataFence
492418:  LDRB            R4, [R0]
49241A:  CBZ             R4, loc_492430
49241C:  LDR             R0, =(UseDataFence_ptr - 0x492424)
49241E:  MOVS            R1, #(stderr+2); void *
492420:  ADD             R0, PC; UseDataFence_ptr
492422:  LDR             R5, [R0]; UseDataFence
492424:  MOVS            R0, #0
492426:  STRB            R0, [R5]
492428:  MOV             R0, SP; this
49242A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49242E:  STRB            R4, [R5]
492430:  ADD             R0, SP, #0x20+var_14; this
492432:  MOVS            R1, #byte_4; void *
492434:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492438:  LDR             R0, [SP,#0x20+var_14]
49243A:  CMP             R0, #2
49243C:  BEQ             loc_492478
49243E:  CMP             R0, #4
492440:  BEQ             loc_4924AA
492442:  CMP             R0, #3
492444:  BNE             loc_4924DE
492446:  LDR             R0, =(UseDataFence_ptr - 0x49244C)
492448:  ADD             R0, PC; UseDataFence_ptr
49244A:  LDR             R0, [R0]; UseDataFence
49244C:  LDRB            R4, [R0]
49244E:  CBZ             R4, loc_492464
492450:  LDR             R0, =(UseDataFence_ptr - 0x492458)
492452:  MOVS            R1, #(stderr+2); void *
492454:  ADD             R0, PC; UseDataFence_ptr
492456:  LDR             R5, [R0]; UseDataFence
492458:  MOVS            R0, #0
49245A:  STRB            R0, [R5]
49245C:  MOV             R0, SP; this
49245E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492462:  STRB            R4, [R5]
492464:  MOV             R0, SP; this
492466:  MOVS            R1, #byte_4; void *
492468:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49246C:  LDR             R0, [SP,#0x20+var_20]; this
49246E:  ADDS            R1, R0, #1; int
492470:  BEQ             loc_4924DE
492472:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
492476:  B               loc_4924DA
492478:  LDR             R0, =(UseDataFence_ptr - 0x49247E)
49247A:  ADD             R0, PC; UseDataFence_ptr
49247C:  LDR             R0, [R0]; UseDataFence
49247E:  LDRB            R4, [R0]
492480:  CBZ             R4, loc_492496
492482:  LDR             R0, =(UseDataFence_ptr - 0x49248A)
492484:  MOVS            R1, #(stderr+2); void *
492486:  ADD             R0, PC; UseDataFence_ptr
492488:  LDR             R5, [R0]; UseDataFence
49248A:  MOVS            R0, #0
49248C:  STRB            R0, [R5]
49248E:  MOV             R0, SP; this
492490:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492494:  STRB            R4, [R5]
492496:  MOV             R0, SP; this
492498:  MOVS            R1, #byte_4; void *
49249A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49249E:  LDR             R0, [SP,#0x20+var_20]; this
4924A0:  ADDS            R1, R0, #1; int
4924A2:  BEQ             loc_4924DE
4924A4:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4924A8:  B               loc_4924DA
4924AA:  LDR             R0, =(UseDataFence_ptr - 0x4924B0)
4924AC:  ADD             R0, PC; UseDataFence_ptr
4924AE:  LDR             R0, [R0]; UseDataFence
4924B0:  LDRB            R4, [R0]
4924B2:  CBZ             R4, loc_4924C8
4924B4:  LDR             R0, =(UseDataFence_ptr - 0x4924BC)
4924B6:  MOVS            R1, #(stderr+2); void *
4924B8:  ADD             R0, PC; UseDataFence_ptr
4924BA:  LDR             R5, [R0]; UseDataFence
4924BC:  MOVS            R0, #0
4924BE:  STRB            R0, [R5]
4924C0:  MOV             R0, SP; this
4924C2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4924C6:  STRB            R4, [R5]
4924C8:  MOV             R0, SP; this
4924CA:  MOVS            R1, #byte_4; void *
4924CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4924D0:  LDR             R0, [SP,#0x20+var_20]; this
4924D2:  ADDS            R1, R0, #1; int
4924D4:  BEQ             loc_4924DE
4924D6:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
4924DA:  MOV             R4, R0
4924DC:  B               loc_4924E0
4924DE:  MOVS            R4, #0
4924E0:  LDR             R0, =(UseDataFence_ptr - 0x4924E6)
4924E2:  ADD             R0, PC; UseDataFence_ptr
4924E4:  LDR             R0, [R0]; UseDataFence
4924E6:  LDRB            R5, [R0]
4924E8:  CBZ             R5, loc_4924FE
4924EA:  LDR             R0, =(UseDataFence_ptr - 0x4924F2)
4924EC:  MOVS            R1, #(stderr+2); void *
4924EE:  ADD             R0, PC; UseDataFence_ptr
4924F0:  LDR             R6, [R0]; UseDataFence
4924F2:  MOVS            R0, #0
4924F4:  STRB            R0, [R6]
4924F6:  MOV             R0, SP; this
4924F8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4924FC:  STRB            R5, [R6]
4924FE:  MOV             R5, SP
492500:  MOVS            R1, #(byte_9+3); void *
492502:  MOV             R0, R5; this
492504:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492508:  MOVS            R0, #dword_1C; this
49250A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49250E:  MOV             R1, R4; CEntity *
492510:  MOV             R2, R5; CVector *
492512:  BLX             j__ZN23CTaskComplexEvasiveStepC2EP7CEntityRK7CVector; CTaskComplexEvasiveStep::CTaskComplexEvasiveStep(CEntity *,CVector const&)
492516:  ADD             SP, SP, #0x10
492518:  POP.W           {R11}
49251C:  POP             {R4-R7,PC}
