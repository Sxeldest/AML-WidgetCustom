; =========================================================
; Game Engine Function: _ZN14CTaskSimpleSay10CreateTaskEv
; Address            : 0x491D58 - 0x491DD4
; =========================================================

491D58:  PUSH            {R4,R5,R7,LR}
491D5A:  ADD             R7, SP, #8
491D5C:  SUB             SP, SP, #0x10
491D5E:  LDR             R0, =(UseDataFence_ptr - 0x491D64)
491D60:  ADD             R0, PC; UseDataFence_ptr
491D62:  LDR             R0, [R0]; UseDataFence
491D64:  LDRB            R4, [R0]
491D66:  CBZ             R4, loc_491D7C
491D68:  LDR             R0, =(UseDataFence_ptr - 0x491D70)
491D6A:  MOVS            R1, #(stderr+2); void *
491D6C:  ADD             R0, PC; UseDataFence_ptr
491D6E:  LDR             R5, [R0]; UseDataFence
491D70:  MOVS            R0, #0
491D72:  STRB            R0, [R5]
491D74:  ADD             R0, SP, #0x18+var_C; this
491D76:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491D7A:  STRB            R4, [R5]
491D7C:  ADD             R0, SP, #0x18+var_10; this
491D7E:  MOVS            R1, #byte_4; void *
491D80:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491D84:  LDR             R0, =(UseDataFence_ptr - 0x491D8A)
491D86:  ADD             R0, PC; UseDataFence_ptr
491D88:  LDR             R0, [R0]; UseDataFence
491D8A:  LDRB            R4, [R0]
491D8C:  CBZ             R4, loc_491DA4
491D8E:  LDR             R0, =(UseDataFence_ptr - 0x491D96)
491D90:  MOVS            R1, #(stderr+2); void *
491D92:  ADD             R0, PC; UseDataFence_ptr
491D94:  LDR             R5, [R0]; UseDataFence
491D96:  MOVS            R0, #0
491D98:  STRB            R0, [R5]
491D9A:  SUB.W           R0, R7, #-var_A; this
491D9E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491DA2:  STRB            R4, [R5]
491DA4:  ADD             R0, SP, #0x18+var_14; this
491DA6:  MOVS            R1, #byte_4; void *
491DA8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491DAC:  MOVS            R0, #dword_1C; this
491DAE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491DB2:  LDRD.W          R4, R5, [SP,#0x18+var_14]
491DB6:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
491DBA:  LDR             R1, =(_ZTV14CTaskSimpleSay_ptr - 0x491DC2)
491DBC:  STR             R5, [R0,#8]
491DBE:  ADD             R1, PC; _ZTV14CTaskSimpleSay_ptr
491DC0:  LDR             R1, [R1]; `vtable for'CTaskSimpleSay ...
491DC2:  ADDS            R1, #8
491DC4:  STR             R1, [R0]
491DC6:  MOVS            R1, #0
491DC8:  STR             R4, [R0,#0xC]
491DCA:  STRH            R1, [R0,#0x18]
491DCC:  STRD.W          R1, R1, [R0,#0x10]
491DD0:  ADD             SP, SP, #0x10
491DD2:  POP             {R4,R5,R7,PC}
