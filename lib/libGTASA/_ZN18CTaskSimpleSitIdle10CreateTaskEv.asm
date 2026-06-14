; =========================================================
; Game Engine Function: _ZN18CTaskSimpleSitIdle10CreateTaskEv
; Address            : 0x49128C - 0x4912F6
; =========================================================

49128C:  PUSH            {R4,R5,R7,LR}
49128E:  ADD             R7, SP, #8
491290:  SUB             SP, SP, #0x10
491292:  LDR             R0, =(UseDataFence_ptr - 0x491298)
491294:  ADD             R0, PC; UseDataFence_ptr
491296:  LDR             R0, [R0]; UseDataFence
491298:  LDRB            R4, [R0]
49129A:  CBZ             R4, loc_4912B0
49129C:  LDR             R0, =(UseDataFence_ptr - 0x4912A4)
49129E:  MOVS            R1, #(stderr+2); void *
4912A0:  ADD             R0, PC; UseDataFence_ptr
4912A2:  LDR             R5, [R0]; UseDataFence
4912A4:  MOVS            R0, #0
4912A6:  STRB            R0, [R5]
4912A8:  ADD             R0, SP, #0x18+var_C; this
4912AA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4912AE:  STRB            R4, [R5]
4912B0:  ADD             R0, SP, #0x18+var_10; this
4912B2:  MOVS            R1, #byte_4; void *
4912B4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4912B8:  LDR             R0, =(UseDataFence_ptr - 0x4912BE)
4912BA:  ADD             R0, PC; UseDataFence_ptr
4912BC:  LDR             R0, [R0]; UseDataFence
4912BE:  LDRB            R4, [R0]
4912C0:  CBZ             R4, loc_4912D8
4912C2:  LDR             R0, =(UseDataFence_ptr - 0x4912CA)
4912C4:  MOVS            R1, #(stderr+2); void *
4912C6:  ADD             R0, PC; UseDataFence_ptr
4912C8:  LDR             R5, [R0]; UseDataFence
4912CA:  MOVS            R0, #0
4912CC:  STRB            R0, [R5]
4912CE:  SUB.W           R0, R7, #-var_A; this
4912D2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4912D6:  STRB            R4, [R5]
4912D8:  SUB.W           R0, R7, #-var_11; this
4912DC:  MOVS            R1, #(stderr+1); void *
4912DE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4912E2:  MOVS            R0, #dword_20; this
4912E4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4912E8:  LDR             R1, [SP,#0x18+var_10]; int
4912EA:  LDRB.W          R2, [R7,#var_11]; unsigned __int8
4912EE:  BLX             j__ZN18CTaskSimpleSitIdleC2Eih; CTaskSimpleSitIdle::CTaskSimpleSitIdle(int,uchar)
4912F2:  ADD             SP, SP, #0x10
4912F4:  POP             {R4,R5,R7,PC}
