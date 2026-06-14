; =========================================================
; Game Engine Function: _ZN26CTaskComplexDragPedFromCar10CreateTaskEv
; Address            : 0x492FB4 - 0x493032
; =========================================================

492FB4:  PUSH            {R4-R7,LR}
492FB6:  ADD             R7, SP, #0xC
492FB8:  PUSH.W          {R11}
492FBC:  SUB             SP, SP, #0x10
492FBE:  LDR             R0, =(UseDataFence_ptr - 0x492FC4)
492FC0:  ADD             R0, PC; UseDataFence_ptr
492FC2:  LDR             R0, [R0]; UseDataFence
492FC4:  LDRB            R4, [R0]
492FC6:  CBZ             R4, loc_492FDC
492FC8:  LDR             R0, =(UseDataFence_ptr - 0x492FD0)
492FCA:  MOVS            R1, #(stderr+2); void *
492FCC:  ADD             R0, PC; UseDataFence_ptr
492FCE:  LDR             R5, [R0]; UseDataFence
492FD0:  MOVS            R0, #0
492FD2:  STRB            R0, [R5]
492FD4:  ADD             R0, SP, #0x20+var_14; this
492FD6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492FDA:  STRB            R4, [R5]
492FDC:  ADD             R0, SP, #0x20+var_18; this
492FDE:  MOVS            R1, #byte_4; void *
492FE0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492FE4:  LDR             R0, [SP,#0x20+var_18]; this
492FE6:  ADDS            R1, R0, #1; int
492FE8:  BEQ             loc_492FF2
492FEA:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
492FEE:  MOV             R4, R0
492FF0:  B               loc_492FF4
492FF2:  MOVS            R4, #0
492FF4:  LDR             R0, =(UseDataFence_ptr - 0x492FFA)
492FF6:  ADD             R0, PC; UseDataFence_ptr
492FF8:  LDR             R0, [R0]; UseDataFence
492FFA:  LDRB            R5, [R0]
492FFC:  CBZ             R5, loc_493014
492FFE:  LDR             R0, =(UseDataFence_ptr - 0x493006)
493000:  MOVS            R1, #(stderr+2); void *
493002:  ADD             R0, PC; UseDataFence_ptr
493004:  LDR             R6, [R0]; UseDataFence
493006:  MOVS            R0, #0
493008:  STRB            R0, [R6]
49300A:  SUB.W           R0, R7, #-var_12; this
49300E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493012:  STRB            R5, [R6]
493014:  ADD             R0, SP, #0x20+var_1C; this
493016:  MOVS            R1, #byte_4; void *
493018:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49301C:  MOVS            R0, #dword_54; this
49301E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493022:  LDR             R2, [SP,#0x20+var_1C]; int
493024:  MOV             R1, R4; CPed *
493026:  BLX             j__ZN26CTaskComplexDragPedFromCarC2EP4CPedi; CTaskComplexDragPedFromCar::CTaskComplexDragPedFromCar(CPed *,int)
49302A:  ADD             SP, SP, #0x10
49302C:  POP.W           {R11}
493030:  POP             {R4-R7,PC}
