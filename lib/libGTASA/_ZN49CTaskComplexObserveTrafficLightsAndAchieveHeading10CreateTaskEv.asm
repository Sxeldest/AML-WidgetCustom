; =========================================================
; Game Engine Function: _ZN49CTaskComplexObserveTrafficLightsAndAchieveHeading10CreateTaskEv
; Address            : 0x4913B8 - 0x49141E
; =========================================================

4913B8:  PUSH            {R4,R5,R7,LR}
4913BA:  ADD             R7, SP, #8
4913BC:  SUB             SP, SP, #0x10
4913BE:  LDR             R0, =(UseDataFence_ptr - 0x4913C4)
4913C0:  ADD             R0, PC; UseDataFence_ptr
4913C2:  LDR             R0, [R0]; UseDataFence
4913C4:  LDRB            R4, [R0]
4913C6:  CBZ             R4, loc_4913DC
4913C8:  LDR             R0, =(UseDataFence_ptr - 0x4913D0)
4913CA:  MOVS            R1, #(stderr+2); void *
4913CC:  ADD             R0, PC; UseDataFence_ptr
4913CE:  LDR             R5, [R0]; UseDataFence
4913D0:  MOVS            R0, #0
4913D2:  STRB            R0, [R5]
4913D4:  ADD             R0, SP, #0x18+var_C; this
4913D6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4913DA:  STRB            R4, [R5]
4913DC:  ADD             R0, SP, #0x18+var_10; this
4913DE:  MOVS            R1, #byte_4; void *
4913E0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4913E4:  LDR             R0, =(UseDataFence_ptr - 0x4913EA)
4913E6:  ADD             R0, PC; UseDataFence_ptr
4913E8:  LDR             R0, [R0]; UseDataFence
4913EA:  LDRB            R4, [R0]
4913EC:  CBZ             R4, loc_491404
4913EE:  LDR             R0, =(UseDataFence_ptr - 0x4913F6)
4913F0:  MOVS            R1, #(stderr+2); void *
4913F2:  ADD             R0, PC; UseDataFence_ptr
4913F4:  LDR             R5, [R0]; UseDataFence
4913F6:  MOVS            R0, #0
4913F8:  STRB            R0, [R5]
4913FA:  SUB.W           R0, R7, #-var_A; this
4913FE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491402:  STRB            R4, [R5]
491404:  ADD             R0, SP, #0x18+var_14; this
491406:  MOVS            R1, #byte_4; void *
491408:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49140C:  MOVS            R0, #dword_14; this
49140E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491412:  LDRD.W          R2, R1, [SP,#0x18+var_14]; float
491416:  BLX             j__ZN49CTaskComplexObserveTrafficLightsAndAchieveHeadingC2Eif; CTaskComplexObserveTrafficLightsAndAchieveHeading::CTaskComplexObserveTrafficLightsAndAchieveHeading(int,float)
49141A:  ADD             SP, SP, #0x10
49141C:  POP             {R4,R5,R7,PC}
