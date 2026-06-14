; =========================================================
; Game Engine Function: _ZN33CTaskSimpleTogglePedThreatScanner10CreateTaskEv
; Address            : 0x496C90 - 0x496D42
; =========================================================

496C90:  PUSH            {R4-R7,LR}
496C92:  ADD             R7, SP, #0xC
496C94:  PUSH.W          {R11}
496C98:  SUB             SP, SP, #0x10
496C9A:  LDR             R0, =(UseDataFence_ptr - 0x496CA0)
496C9C:  ADD             R0, PC; UseDataFence_ptr
496C9E:  LDR             R0, [R0]; UseDataFence
496CA0:  LDRB            R4, [R0]
496CA2:  CBZ             R4, loc_496CBA
496CA4:  LDR             R0, =(UseDataFence_ptr - 0x496CAC)
496CA6:  MOVS            R1, #(stderr+2); void *
496CA8:  ADD             R0, PC; UseDataFence_ptr
496CAA:  LDR             R5, [R0]; UseDataFence
496CAC:  MOVS            R0, #0
496CAE:  STRB            R0, [R5]
496CB0:  SUB.W           R0, R7, #-var_16; this
496CB4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496CB8:  STRB            R4, [R5]
496CBA:  SUB.W           R0, R7, #-var_17; this
496CBE:  MOVS            R1, #(stderr+1); void *
496CC0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496CC4:  LDR             R0, =(UseDataFence_ptr - 0x496CCA)
496CC6:  ADD             R0, PC; UseDataFence_ptr
496CC8:  LDR             R0, [R0]; UseDataFence
496CCA:  LDRB            R4, [R0]
496CCC:  CBZ             R4, loc_496CE2
496CCE:  LDR             R0, =(UseDataFence_ptr - 0x496CD6)
496CD0:  MOVS            R1, #(stderr+2); void *
496CD2:  ADD             R0, PC; UseDataFence_ptr
496CD4:  LDR             R5, [R0]; UseDataFence
496CD6:  MOVS            R0, #0
496CD8:  STRB            R0, [R5]
496CDA:  ADD             R0, SP, #0x20+var_14; this
496CDC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496CE0:  STRB            R4, [R5]
496CE2:  ADD             R0, SP, #0x20+var_18; this
496CE4:  MOVS            R1, #(stderr+1); void *
496CE6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496CEA:  LDR             R0, =(UseDataFence_ptr - 0x496CF0)
496CEC:  ADD             R0, PC; UseDataFence_ptr
496CEE:  LDR             R0, [R0]; UseDataFence
496CF0:  LDRB            R4, [R0]
496CF2:  CBZ             R4, loc_496D0A
496CF4:  LDR             R0, =(UseDataFence_ptr - 0x496CFC)
496CF6:  MOVS            R1, #(stderr+2); void *
496CF8:  ADD             R0, PC; UseDataFence_ptr
496CFA:  LDR             R5, [R0]; UseDataFence
496CFC:  MOVS            R0, #0
496CFE:  STRB            R0, [R5]
496D00:  SUB.W           R0, R7, #-var_12; this
496D04:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496D08:  STRB            R4, [R5]
496D0A:  SUB.W           R0, R7, #-var_19; this
496D0E:  MOVS            R1, #(stderr+1); void *
496D10:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496D14:  MOVS            R0, #(byte_9+3); this
496D16:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496D1A:  LDRB.W          R4, [R7,#var_19]
496D1E:  LDRB.W          R5, [SP,#0x20+var_18]
496D22:  LDRB.W          R6, [R7,#var_17]
496D26:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
496D2A:  LDR             R1, =(_ZTV33CTaskSimpleTogglePedThreatScanner_ptr - 0x496D32)
496D2C:  STRB            R6, [R0,#8]
496D2E:  ADD             R1, PC; _ZTV33CTaskSimpleTogglePedThreatScanner_ptr
496D30:  LDR             R1, [R1]; `vtable for'CTaskSimpleTogglePedThreatScanner ...
496D32:  ADDS            R1, #8
496D34:  STR             R1, [R0]
496D36:  STRB            R5, [R0,#9]
496D38:  STRB            R4, [R0,#0xA]
496D3A:  ADD             SP, SP, #0x10
496D3C:  POP.W           {R11}
496D40:  POP             {R4-R7,PC}
