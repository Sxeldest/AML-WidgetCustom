; =========================================================
; Game Engine Function: _ZN16CTaskSimpleInAir10CreateTaskEv
; Address            : 0x491534 - 0x4915E0
; =========================================================

491534:  PUSH            {R4,R5,R7,LR}
491536:  ADD             R7, SP, #8
491538:  SUB             SP, SP, #0x10
49153A:  LDR             R0, =(UseDataFence_ptr - 0x491540)
49153C:  ADD             R0, PC; UseDataFence_ptr
49153E:  LDR             R0, [R0]; UseDataFence
491540:  LDRB            R4, [R0]
491542:  CBZ             R4, loc_49155A
491544:  LDR             R0, =(UseDataFence_ptr - 0x49154C)
491546:  MOVS            R1, #(stderr+2); void *
491548:  ADD             R0, PC; UseDataFence_ptr
49154A:  LDR             R5, [R0]; UseDataFence
49154C:  MOVS            R0, #0
49154E:  STRB            R0, [R5]
491550:  SUB.W           R0, R7, #-var_E; this
491554:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491558:  STRB            R4, [R5]
49155A:  SUB.W           R0, R7, #-var_F; this
49155E:  MOVS            R1, #(stderr+1); void *
491560:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491564:  LDR             R0, =(UseDataFence_ptr - 0x49156A)
491566:  ADD             R0, PC; UseDataFence_ptr
491568:  LDR             R0, [R0]; UseDataFence
49156A:  LDRB            R4, [R0]
49156C:  CBZ             R4, loc_491582
49156E:  LDR             R0, =(UseDataFence_ptr - 0x491576)
491570:  MOVS            R1, #(stderr+2); void *
491572:  ADD             R0, PC; UseDataFence_ptr
491574:  LDR             R5, [R0]; UseDataFence
491576:  MOVS            R0, #0
491578:  STRB            R0, [R5]
49157A:  ADD             R0, SP, #0x18+var_C; this
49157C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491580:  STRB            R4, [R5]
491582:  ADD             R0, SP, #0x18+var_10; this
491584:  MOVS            R1, #(stderr+1); void *
491586:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49158A:  LDR             R0, =(UseDataFence_ptr - 0x491590)
49158C:  ADD             R0, PC; UseDataFence_ptr
49158E:  LDR             R0, [R0]; UseDataFence
491590:  LDRB            R4, [R0]
491592:  CBZ             R4, loc_4915AA
491594:  LDR             R0, =(UseDataFence_ptr - 0x49159C)
491596:  MOVS            R1, #(stderr+2); void *
491598:  ADD             R0, PC; UseDataFence_ptr
49159A:  LDR             R5, [R0]; UseDataFence
49159C:  MOVS            R0, #0
49159E:  STRB            R0, [R5]
4915A0:  SUB.W           R0, R7, #-var_A; this
4915A4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4915A8:  STRB            R4, [R5]
4915AA:  SUB.W           R0, R7, #-var_11; this
4915AE:  MOVS            R1, #(stderr+1); void *
4915B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4915B4:  MOVS            R0, #off_3C; this
4915B6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4915BA:  LDRB.W          R1, [R7,#var_F]
4915BE:  LDRB.W          R2, [SP,#0x18+var_10]
4915C2:  LDRB.W          R3, [R7,#var_11]
4915C6:  CMP             R1, #0
4915C8:  IT NE
4915CA:  MOVNE           R1, #1; bool
4915CC:  CMP             R2, #0
4915CE:  IT NE
4915D0:  MOVNE           R2, #1; bool
4915D2:  CMP             R3, #0
4915D4:  IT NE
4915D6:  MOVNE           R3, #1; bool
4915D8:  BLX             j__ZN16CTaskSimpleInAirC2Ebbb; CTaskSimpleInAir::CTaskSimpleInAir(bool,bool,bool)
4915DC:  ADD             SP, SP, #0x10
4915DE:  POP             {R4,R5,R7,PC}
