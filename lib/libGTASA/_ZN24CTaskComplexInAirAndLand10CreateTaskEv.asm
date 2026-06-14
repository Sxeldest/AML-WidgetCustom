; =========================================================
; Game Engine Function: _ZN24CTaskComplexInAirAndLand10CreateTaskEv
; Address            : 0x4914A8 - 0x491522
; =========================================================

4914A8:  PUSH            {R4,R5,R7,LR}
4914AA:  ADD             R7, SP, #8
4914AC:  SUB             SP, SP, #8
4914AE:  LDR             R0, =(UseDataFence_ptr - 0x4914B4)
4914B0:  ADD             R0, PC; UseDataFence_ptr
4914B2:  LDR             R0, [R0]; UseDataFence
4914B4:  LDRB            R4, [R0]
4914B6:  CBZ             R4, loc_4914CC
4914B8:  LDR             R0, =(UseDataFence_ptr - 0x4914C0)
4914BA:  MOVS            R1, #(stderr+2); void *
4914BC:  ADD             R0, PC; UseDataFence_ptr
4914BE:  LDR             R5, [R0]; UseDataFence
4914C0:  MOVS            R0, #0
4914C2:  STRB            R0, [R5]
4914C4:  ADD             R0, SP, #0x10+var_C; this
4914C6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4914CA:  STRB            R4, [R5]
4914CC:  SUB.W           R0, R7, #-var_D; this
4914D0:  MOVS            R1, #(stderr+1); void *
4914D2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4914D6:  LDR             R0, =(UseDataFence_ptr - 0x4914DC)
4914D8:  ADD             R0, PC; UseDataFence_ptr
4914DA:  LDR             R0, [R0]; UseDataFence
4914DC:  LDRB            R4, [R0]
4914DE:  CBZ             R4, loc_4914F6
4914E0:  LDR             R0, =(UseDataFence_ptr - 0x4914E8)
4914E2:  MOVS            R1, #(stderr+2); void *
4914E4:  ADD             R0, PC; UseDataFence_ptr
4914E6:  LDR             R5, [R0]; UseDataFence
4914E8:  MOVS            R0, #0
4914EA:  STRB            R0, [R5]
4914EC:  SUB.W           R0, R7, #-var_A; this
4914F0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4914F4:  STRB            R4, [R5]
4914F6:  SUB.W           R0, R7, #-var_E; this
4914FA:  MOVS            R1, #(stderr+1); void *
4914FC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491500:  MOVS            R0, #word_10; this
491502:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491506:  LDRB.W          R1, [R7,#var_D]
49150A:  LDRB.W          R2, [R7,#var_E]
49150E:  CMP             R1, #0
491510:  IT NE
491512:  MOVNE           R1, #1; bool
491514:  CMP             R2, #0
491516:  IT NE
491518:  MOVNE           R2, #1; bool
49151A:  BLX             j__ZN24CTaskComplexInAirAndLandC2Ebb; CTaskComplexInAirAndLand::CTaskComplexInAirAndLand(bool,bool)
49151E:  ADD             SP, SP, #8
491520:  POP             {R4,R5,R7,PC}
