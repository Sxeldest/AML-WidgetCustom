; =========================================================
; Game Engine Function: _ZN23CTaskComplexLeaveAnyCar10CreateTaskEv
; Address            : 0x4937A0 - 0x493850
; =========================================================

4937A0:  PUSH            {R4-R7,LR}
4937A2:  ADD             R7, SP, #0xC
4937A4:  PUSH.W          {R11}
4937A8:  SUB             SP, SP, #0x10
4937AA:  LDR             R0, =(UseDataFence_ptr - 0x4937B0)
4937AC:  ADD             R0, PC; UseDataFence_ptr
4937AE:  LDR             R0, [R0]; UseDataFence
4937B0:  LDRB            R4, [R0]
4937B2:  CBZ             R4, loc_4937CA
4937B4:  LDR             R0, =(UseDataFence_ptr - 0x4937BC)
4937B6:  MOVS            R1, #(stderr+2); void *
4937B8:  ADD             R0, PC; UseDataFence_ptr
4937BA:  LDR             R5, [R0]; UseDataFence
4937BC:  MOVS            R0, #0
4937BE:  STRB            R0, [R5]
4937C0:  SUB.W           R0, R7, #-var_16; this
4937C4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4937C8:  STRB            R4, [R5]
4937CA:  ADD             R0, SP, #0x20+var_1C; this
4937CC:  MOVS            R1, #byte_4; void *
4937CE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4937D2:  LDR             R0, =(UseDataFence_ptr - 0x4937D8)
4937D4:  ADD             R0, PC; UseDataFence_ptr
4937D6:  LDR             R0, [R0]; UseDataFence
4937D8:  LDRB            R4, [R0]
4937DA:  CBZ             R4, loc_4937F0
4937DC:  LDR             R0, =(UseDataFence_ptr - 0x4937E4)
4937DE:  MOVS            R1, #(stderr+2); void *
4937E0:  ADD             R0, PC; UseDataFence_ptr
4937E2:  LDR             R5, [R0]; UseDataFence
4937E4:  MOVS            R0, #0
4937E6:  STRB            R0, [R5]
4937E8:  ADD             R0, SP, #0x20+var_14; this
4937EA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4937EE:  STRB            R4, [R5]
4937F0:  SUB.W           R0, R7, #-var_1D; this
4937F4:  MOVS            R1, #(stderr+1); void *
4937F6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4937FA:  LDR             R0, =(UseDataFence_ptr - 0x493800)
4937FC:  ADD             R0, PC; UseDataFence_ptr
4937FE:  LDR             R0, [R0]; UseDataFence
493800:  LDRB            R4, [R0]
493802:  CBZ             R4, loc_49381A
493804:  LDR             R0, =(UseDataFence_ptr - 0x49380C)
493806:  MOVS            R1, #(stderr+2); void *
493808:  ADD             R0, PC; UseDataFence_ptr
49380A:  LDR             R5, [R0]; UseDataFence
49380C:  MOVS            R0, #0
49380E:  STRB            R0, [R5]
493810:  SUB.W           R0, R7, #-var_12; this
493814:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493818:  STRB            R4, [R5]
49381A:  SUB.W           R0, R7, #-var_1E; this
49381E:  MOVS            R1, #(stderr+1); void *
493820:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493824:  MOVS            R0, #dword_14; this
493826:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49382A:  LDRB.W          R4, [R7,#var_1E]
49382E:  LDRB.W          R5, [R7,#var_1D]
493832:  LDR             R6, [SP,#0x20+var_1C]
493834:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
493838:  LDR             R1, =(_ZTV23CTaskComplexLeaveAnyCar_ptr - 0x493840)
49383A:  STR             R6, [R0,#0xC]
49383C:  ADD             R1, PC; _ZTV23CTaskComplexLeaveAnyCar_ptr
49383E:  LDR             R1, [R1]; `vtable for'CTaskComplexLeaveAnyCar ...
493840:  ADDS            R1, #8
493842:  STR             R1, [R0]
493844:  STRB            R5, [R0,#0x10]
493846:  STRB            R4, [R0,#0x11]
493848:  ADD             SP, SP, #0x10
49384A:  POP.W           {R11}
49384E:  POP             {R4-R7,PC}
