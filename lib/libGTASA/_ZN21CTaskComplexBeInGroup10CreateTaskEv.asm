; =========================================================
; Game Engine Function: _ZN21CTaskComplexBeInGroup10CreateTaskEv
; Address            : 0x4915F8 - 0x49168A
; =========================================================

4915F8:  PUSH            {R4,R5,R7,LR}
4915FA:  ADD             R7, SP, #8
4915FC:  SUB             SP, SP, #0x18
4915FE:  LDR             R0, =(UseDataFence_ptr - 0x491604)
491600:  ADD             R0, PC; UseDataFence_ptr
491602:  LDR             R0, [R0]; UseDataFence
491604:  LDRB            R4, [R0]
491606:  CBZ             R4, loc_49161E
491608:  LDR             R0, =(UseDataFence_ptr - 0x491610)
49160A:  MOVS            R1, #(stderr+2); void *
49160C:  ADD             R0, PC; UseDataFence_ptr
49160E:  LDR             R5, [R0]; UseDataFence
491610:  MOVS            R0, #0
491612:  STRB            R0, [R5]
491614:  SUB.W           R0, R7, #-var_E; this
491618:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49161C:  STRB            R4, [R5]
49161E:  ADD             R0, SP, #0x20+var_14; this
491620:  MOVS            R1, #byte_4; void *
491622:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491626:  LDR             R0, =(UseDataFence_ptr - 0x49162C)
491628:  ADD             R0, PC; UseDataFence_ptr
49162A:  LDR             R0, [R0]; UseDataFence
49162C:  LDRB            R4, [R0]
49162E:  CBZ             R4, loc_491644
491630:  LDR             R0, =(UseDataFence_ptr - 0x491638)
491632:  MOVS            R1, #(stderr+2); void *
491634:  ADD             R0, PC; UseDataFence_ptr
491636:  LDR             R5, [R0]; UseDataFence
491638:  MOVS            R0, #0
49163A:  STRB            R0, [R5]
49163C:  ADD             R0, SP, #0x20+var_C; this
49163E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491642:  STRB            R4, [R5]
491644:  ADD             R0, SP, #0x20+var_18; this
491646:  MOVS            R1, #byte_4; void *
491648:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49164C:  LDR             R0, =(UseDataFence_ptr - 0x491652)
49164E:  ADD             R0, PC; UseDataFence_ptr
491650:  LDR             R0, [R0]; UseDataFence
491652:  LDRB            R4, [R0]
491654:  CBZ             R4, loc_49166C
491656:  LDR             R0, =(UseDataFence_ptr - 0x49165E)
491658:  MOVS            R1, #(stderr+2); void *
49165A:  ADD             R0, PC; UseDataFence_ptr
49165C:  LDR             R5, [R0]; UseDataFence
49165E:  MOVS            R0, #0
491660:  STRB            R0, [R5]
491662:  SUB.W           R0, R7, #-var_A; this
491666:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49166A:  STRB            R4, [R5]
49166C:  SUB.W           R0, R7, #-var_19; this
491670:  MOVS            R1, #(stderr+1); void *
491672:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491676:  MOVS            R0, #word_28; this
491678:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49167C:  LDR             R1, [SP,#0x20+var_18]; int
49167E:  LDRB.W          R2, [R7,#var_19]; bool
491682:  BLX             j__ZN21CTaskComplexBeInGroupC2Eib; CTaskComplexBeInGroup::CTaskComplexBeInGroup(int,bool)
491686:  ADD             SP, SP, #0x18
491688:  POP             {R4,R5,R7,PC}
