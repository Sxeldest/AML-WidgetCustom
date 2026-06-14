; =========================================================
; Game Engine Function: _ZN24CTaskComplexDriveToPoint10CreateTaskEv
; Address            : 0x4934F0 - 0x493638
; =========================================================

4934F0:  PUSH            {R4,R5,R7,LR}
4934F2:  ADD             R7, SP, #8
4934F4:  SUB             SP, SP, #0x38
4934F6:  LDR             R0, =(UseDataFence_ptr - 0x4934FC)
4934F8:  ADD             R0, PC; UseDataFence_ptr
4934FA:  LDR             R0, [R0]; UseDataFence
4934FC:  LDRB            R4, [R0]
4934FE:  CBZ             R4, loc_493514
493500:  LDR             R0, =(UseDataFence_ptr - 0x493508)
493502:  MOVS            R1, #(stderr+2); void *
493504:  ADD             R0, PC; UseDataFence_ptr
493506:  LDR             R5, [R0]; UseDataFence
493508:  MOVS            R0, #0
49350A:  STRB            R0, [R5]
49350C:  ADD             R0, SP, #0x40+var_18; this
49350E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493512:  STRB            R4, [R5]
493514:  ADD             R0, SP, #0x40+var_C; this
493516:  MOVS            R1, #byte_4; void *
493518:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49351C:  LDR             R0, =(UseDataFence_ptr - 0x493522)
49351E:  ADD             R0, PC; UseDataFence_ptr
493520:  LDR             R0, [R0]; UseDataFence
493522:  LDRB            R4, [R0]
493524:  CBZ             R4, loc_49353A
493526:  LDR             R0, =(UseDataFence_ptr - 0x49352E)
493528:  MOVS            R1, #(stderr+2); void *
49352A:  ADD             R0, PC; UseDataFence_ptr
49352C:  LDR             R5, [R0]; UseDataFence
49352E:  MOVS            R0, #0
493530:  STRB            R0, [R5]
493532:  ADD             R0, SP, #0x40+var_18; this
493534:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493538:  STRB            R4, [R5]
49353A:  ADD             R0, SP, #0x40+var_18; this
49353C:  MOVS            R1, #(byte_9+3); void *
49353E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493542:  LDR             R0, =(UseDataFence_ptr - 0x493548)
493544:  ADD             R0, PC; UseDataFence_ptr
493546:  LDR             R0, [R0]; UseDataFence
493548:  LDRB            R4, [R0]
49354A:  CBZ             R4, loc_493560
49354C:  LDR             R0, =(UseDataFence_ptr - 0x493554)
49354E:  MOVS            R1, #(stderr+2); void *
493550:  ADD             R0, PC; UseDataFence_ptr
493552:  LDR             R5, [R0]; UseDataFence
493554:  MOVS            R0, #0
493556:  STRB            R0, [R5]
493558:  ADD             R0, SP, #0x40+var_1C; this
49355A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49355E:  STRB            R4, [R5]
493560:  ADD             R0, SP, #0x40+var_1C; this
493562:  MOVS            R1, #byte_4; void *
493564:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493568:  LDR             R0, =(UseDataFence_ptr - 0x49356E)
49356A:  ADD             R0, PC; UseDataFence_ptr
49356C:  LDR             R0, [R0]; UseDataFence
49356E:  LDRB            R4, [R0]
493570:  CBZ             R4, loc_493586
493572:  LDR             R0, =(UseDataFence_ptr - 0x49357A)
493574:  MOVS            R1, #(stderr+2); void *
493576:  ADD             R0, PC; UseDataFence_ptr
493578:  LDR             R5, [R0]; UseDataFence
49357A:  MOVS            R0, #0
49357C:  STRB            R0, [R5]
49357E:  ADD             R0, SP, #0x40+var_20; this
493580:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493584:  STRB            R4, [R5]
493586:  ADD             R0, SP, #0x40+var_20; this
493588:  MOVS            R1, #byte_4; void *
49358A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49358E:  LDR             R0, =(UseDataFence_ptr - 0x493594)
493590:  ADD             R0, PC; UseDataFence_ptr
493592:  LDR             R0, [R0]; UseDataFence
493594:  LDRB            R4, [R0]
493596:  CBZ             R4, loc_4935AC
493598:  LDR             R0, =(UseDataFence_ptr - 0x4935A0)
49359A:  MOVS            R1, #(stderr+2); void *
49359C:  ADD             R0, PC; UseDataFence_ptr
49359E:  LDR             R5, [R0]; UseDataFence
4935A0:  MOVS            R0, #0
4935A2:  STRB            R0, [R5]
4935A4:  ADD             R0, SP, #0x40+var_24; this
4935A6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4935AA:  STRB            R4, [R5]
4935AC:  ADD             R0, SP, #0x40+var_24; this
4935AE:  MOVS            R1, #byte_4; void *
4935B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4935B4:  LDR             R0, =(UseDataFence_ptr - 0x4935BA)
4935B6:  ADD             R0, PC; UseDataFence_ptr
4935B8:  LDR             R0, [R0]; UseDataFence
4935BA:  LDRB            R4, [R0]
4935BC:  CBZ             R4, loc_4935D2
4935BE:  LDR             R0, =(UseDataFence_ptr - 0x4935C6)
4935C0:  MOVS            R1, #(stderr+2); void *
4935C2:  ADD             R0, PC; UseDataFence_ptr
4935C4:  LDR             R5, [R0]; UseDataFence
4935C6:  MOVS            R0, #0
4935C8:  STRB            R0, [R5]
4935CA:  ADD             R0, SP, #0x40+var_28; this
4935CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4935D0:  STRB            R4, [R5]
4935D2:  ADD             R0, SP, #0x40+var_28; this
4935D4:  MOVS            R1, #byte_4; void *
4935D6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4935DA:  LDR             R0, =(UseDataFence_ptr - 0x4935E0)
4935DC:  ADD             R0, PC; UseDataFence_ptr
4935DE:  LDR             R0, [R0]; UseDataFence
4935E0:  LDRB            R4, [R0]
4935E2:  CBZ             R4, loc_4935F8
4935E4:  LDR             R0, =(UseDataFence_ptr - 0x4935EC)
4935E6:  MOVS            R1, #(stderr+2); void *
4935E8:  ADD             R0, PC; UseDataFence_ptr
4935EA:  LDR             R5, [R0]; UseDataFence
4935EC:  MOVS            R0, #0
4935EE:  STRB            R0, [R5]
4935F0:  ADD             R0, SP, #0x40+var_2C; this
4935F2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4935F6:  STRB            R4, [R5]
4935F8:  ADD             R0, SP, #0x40+var_2C; this
4935FA:  MOVS            R1, #byte_4; void *
4935FC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493600:  LDR             R0, [SP,#0x40+var_C]; this
493602:  ADDS            R1, R0, #1; unsigned int
493604:  BEQ             loc_49360E
493606:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49360A:  MOV             R4, R0
49360C:  B               loc_493610
49360E:  MOVS            R4, #0
493610:  MOVS            R0, #off_3C; this
493612:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493616:  LDR             R3, [SP,#0x40+var_1C]; float
493618:  LDRD.W          R2, R1, [SP,#0x40+var_24]
49361C:  VLDR            S0, [SP,#0x40+var_28]
493620:  LDR             R5, [SP,#0x40+var_2C]
493622:  STR             R5, [SP,#0x40+var_34]; int
493624:  VSTR            S0, [SP,#0x40+var_38]
493628:  STRD.W          R1, R2, [SP,#0x40+var_40]; int
49362C:  ADD             R2, SP, #0x40+var_18; CVector *
49362E:  MOV             R1, R4; CVehicle *
493630:  BLX             j__ZN24CTaskComplexDriveToPointC2EP8CVehicleRK7CVectorfiifi; CTaskComplexDriveToPoint::CTaskComplexDriveToPoint(CVehicle *,CVector const&,float,int,int,float,int)
493634:  ADD             SP, SP, #0x38 ; '8'
493636:  POP             {R4,R5,R7,PC}
