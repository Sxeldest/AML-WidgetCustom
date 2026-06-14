; =========================================================
; Game Engine Function: _ZN22CTaskComplexDestroyCar10CreateTaskEv
; Address            : 0x4964A8 - 0x496576
; =========================================================

4964A8:  PUSH            {R4-R7,LR}
4964AA:  ADD             R7, SP, #0xC
4964AC:  PUSH.W          {R11}
4964B0:  SUB             SP, SP, #0x18
4964B2:  LDR             R0, =(UseDataFence_ptr - 0x4964B8)
4964B4:  ADD             R0, PC; UseDataFence_ptr
4964B6:  LDR             R0, [R0]; UseDataFence
4964B8:  LDRB            R4, [R0]
4964BA:  CBZ             R4, loc_4964D0
4964BC:  LDR             R0, =(UseDataFence_ptr - 0x4964C4)
4964BE:  MOVS            R1, #(stderr+2); void *
4964C0:  ADD             R0, PC; UseDataFence_ptr
4964C2:  LDR             R5, [R0]; UseDataFence
4964C4:  MOVS            R0, #0
4964C6:  STRB            R0, [R5]
4964C8:  ADD             R0, SP, #0x28+var_14; this
4964CA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4964CE:  STRB            R4, [R5]
4964D0:  ADD             R0, SP, #0x28+var_14; this
4964D2:  MOVS            R1, #byte_4; void *
4964D4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4964D8:  LDR             R0, [SP,#0x28+var_14]; this
4964DA:  ADDS            R1, R0, #1; int
4964DC:  BEQ             loc_4964E6
4964DE:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4964E2:  MOV             R4, R0
4964E4:  B               loc_4964E8
4964E6:  MOVS            R4, #0
4964E8:  LDR             R0, =(UseDataFence_ptr - 0x4964EE)
4964EA:  ADD             R0, PC; UseDataFence_ptr
4964EC:  LDR             R0, [R0]; UseDataFence
4964EE:  LDRB            R5, [R0]
4964F0:  CBZ             R5, loc_496506
4964F2:  LDR             R0, =(UseDataFence_ptr - 0x4964FA)
4964F4:  MOVS            R1, #(stderr+2); void *
4964F6:  ADD             R0, PC; UseDataFence_ptr
4964F8:  LDR             R6, [R0]; UseDataFence
4964FA:  MOVS            R0, #0
4964FC:  STRB            R0, [R6]
4964FE:  ADD             R0, SP, #0x28+var_18; this
496500:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496504:  STRB            R5, [R6]
496506:  ADD             R0, SP, #0x28+var_18; this
496508:  MOVS            R1, #byte_4; void *
49650A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49650E:  LDR             R0, =(UseDataFence_ptr - 0x496514)
496510:  ADD             R0, PC; UseDataFence_ptr
496512:  LDR             R0, [R0]; UseDataFence
496514:  LDRB            R5, [R0]
496516:  CBZ             R5, loc_49652C
496518:  LDR             R0, =(UseDataFence_ptr - 0x496520)
49651A:  MOVS            R1, #(stderr+2); void *
49651C:  ADD             R0, PC; UseDataFence_ptr
49651E:  LDR             R6, [R0]; UseDataFence
496520:  MOVS            R0, #0
496522:  STRB            R0, [R6]
496524:  ADD             R0, SP, #0x28+var_1C; this
496526:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49652A:  STRB            R5, [R6]
49652C:  ADD             R0, SP, #0x28+var_1C; this
49652E:  MOVS            R1, #byte_4; void *
496530:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496534:  LDR             R0, =(UseDataFence_ptr - 0x49653A)
496536:  ADD             R0, PC; UseDataFence_ptr
496538:  LDR             R0, [R0]; UseDataFence
49653A:  LDRB            R5, [R0]
49653C:  CBZ             R5, loc_496552
49653E:  LDR             R0, =(UseDataFence_ptr - 0x496546)
496540:  MOVS            R1, #(stderr+2); void *
496542:  ADD             R0, PC; UseDataFence_ptr
496544:  LDR             R6, [R0]; UseDataFence
496546:  MOVS            R0, #0
496548:  STRB            R0, [R6]
49654A:  ADD             R0, SP, #0x28+var_20; this
49654C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496550:  STRB            R5, [R6]
496552:  ADD             R0, SP, #0x28+var_20; this
496554:  MOVS            R1, #byte_4; void *
496556:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49655A:  MOVS            R0, #dword_20; this
49655C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496560:  LDR             R2, [SP,#0x28+var_18]; unsigned int
496562:  LDRD.W          R1, R3, [SP,#0x28+var_20]; unsigned int
496566:  STR             R1, [SP,#0x28+var_28]; unsigned int
496568:  MOV             R1, R4; CVehicle *
49656A:  BLX             j__ZN22CTaskComplexDestroyCarC2EP8CVehiclejjj; CTaskComplexDestroyCar::CTaskComplexDestroyCar(CVehicle *,uint,uint,uint)
49656E:  ADD             SP, SP, #0x18
496570:  POP.W           {R11}
496574:  POP             {R4-R7,PC}
