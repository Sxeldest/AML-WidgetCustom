; =========================================================
; Game Engine Function: _ZN15CTaskSimpleDead10CreateTaskEv
; Address            : 0x49120C - 0x49127C
; =========================================================

49120C:  PUSH            {R4,R5,R7,LR}
49120E:  ADD             R7, SP, #8
491210:  SUB             SP, SP, #0x10
491212:  LDR             R0, =(UseDataFence_ptr - 0x491218)
491214:  ADD             R0, PC; UseDataFence_ptr
491216:  LDR             R0, [R0]; UseDataFence
491218:  LDRB            R4, [R0]
49121A:  CBZ             R4, loc_491230
49121C:  LDR             R0, =(UseDataFence_ptr - 0x491224)
49121E:  MOVS            R1, #(stderr+2); void *
491220:  ADD             R0, PC; UseDataFence_ptr
491222:  LDR             R5, [R0]; UseDataFence
491224:  MOVS            R0, #0
491226:  STRB            R0, [R5]
491228:  ADD             R0, SP, #0x18+var_C; this
49122A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49122E:  STRB            R4, [R5]
491230:  ADD             R0, SP, #0x18+var_10; this
491232:  MOVS            R1, #byte_4; void *
491234:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491238:  LDR             R0, =(UseDataFence_ptr - 0x49123E)
49123A:  ADD             R0, PC; UseDataFence_ptr
49123C:  LDR             R0, [R0]; UseDataFence
49123E:  LDRB            R4, [R0]
491240:  CBZ             R4, loc_491258
491242:  LDR             R0, =(UseDataFence_ptr - 0x49124A)
491244:  MOVS            R1, #(stderr+2); void *
491246:  ADD             R0, PC; UseDataFence_ptr
491248:  LDR             R5, [R0]; UseDataFence
49124A:  MOVS            R0, #0
49124C:  STRB            R0, [R5]
49124E:  SUB.W           R0, R7, #-var_A; this
491252:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491256:  STRB            R4, [R5]
491258:  SUB.W           R0, R7, #-var_11; this
49125C:  MOVS            R1, #(stderr+1); void *
49125E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491262:  MOVS            R0, #word_10; this
491264:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491268:  LDRB.W          R2, [R7,#var_11]
49126C:  LDR             R1, [SP,#0x18+var_10]; int
49126E:  CMP             R2, #0
491270:  IT NE
491272:  MOVNE           R2, #1; bool
491274:  BLX             j__ZN15CTaskSimpleDeadC2Eib; CTaskSimpleDead::CTaskSimpleDead(int,bool)
491278:  ADD             SP, SP, #0x10
49127A:  POP             {R4,R5,R7,PC}
