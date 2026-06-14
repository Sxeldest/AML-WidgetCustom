; =========================================================
; Game Engine Function: _ZN30CTaskComplexPlayHandSignalAnim10CreateTaskEv
; Address            : 0x49228C - 0x4922F2
; =========================================================

49228C:  PUSH            {R4,R5,R7,LR}
49228E:  ADD             R7, SP, #8
492290:  SUB             SP, SP, #0x10
492292:  LDR             R0, =(UseDataFence_ptr - 0x492298)
492294:  ADD             R0, PC; UseDataFence_ptr
492296:  LDR             R0, [R0]; UseDataFence
492298:  LDRB            R4, [R0]
49229A:  CBZ             R4, loc_4922B0
49229C:  LDR             R0, =(UseDataFence_ptr - 0x4922A4)
49229E:  MOVS            R1, #(stderr+2); void *
4922A0:  ADD             R0, PC; UseDataFence_ptr
4922A2:  LDR             R5, [R0]; UseDataFence
4922A4:  MOVS            R0, #0
4922A6:  STRB            R0, [R5]
4922A8:  ADD             R0, SP, #0x18+var_C; this
4922AA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4922AE:  STRB            R4, [R5]
4922B0:  ADD             R0, SP, #0x18+var_10; this
4922B2:  MOVS            R1, #byte_4; void *
4922B4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4922B8:  LDR             R0, =(UseDataFence_ptr - 0x4922BE)
4922BA:  ADD             R0, PC; UseDataFence_ptr
4922BC:  LDR             R0, [R0]; UseDataFence
4922BE:  LDRB            R4, [R0]
4922C0:  CBZ             R4, loc_4922D8
4922C2:  LDR             R0, =(UseDataFence_ptr - 0x4922CA)
4922C4:  MOVS            R1, #(stderr+2); void *
4922C6:  ADD             R0, PC; UseDataFence_ptr
4922C8:  LDR             R5, [R0]; UseDataFence
4922CA:  MOVS            R0, #0
4922CC:  STRB            R0, [R5]
4922CE:  SUB.W           R0, R7, #-var_A; this
4922D2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4922D6:  STRB            R4, [R5]
4922D8:  ADD             R0, SP, #0x18+var_14; this
4922DA:  MOVS            R1, #byte_4; void *
4922DC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4922E0:  MOVS            R0, #off_18; this
4922E2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4922E6:  LDRD.W          R2, R1, [SP,#0x18+var_14]
4922EA:  BLX             j__ZN30CTaskComplexPlayHandSignalAnimC2E11AnimationIdf; CTaskComplexPlayHandSignalAnim::CTaskComplexPlayHandSignalAnim(AnimationId,float)
4922EE:  ADD             SP, SP, #0x10
4922F0:  POP             {R4,R5,R7,PC}
