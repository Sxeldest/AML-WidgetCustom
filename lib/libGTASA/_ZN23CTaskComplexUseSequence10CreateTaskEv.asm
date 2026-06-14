; =========================================================
; Game Engine Function: _ZN23CTaskComplexUseSequence10CreateTaskEv
; Address            : 0x491B4C - 0x491BDC
; =========================================================

491B4C:  PUSH            {R4,R5,R7,LR}
491B4E:  ADD             R7, SP, #8
491B50:  SUB             SP, SP, #0x10
491B52:  LDR             R0, =(UseDataFence_ptr - 0x491B58)
491B54:  ADD             R0, PC; UseDataFence_ptr
491B56:  LDR             R0, [R0]; UseDataFence
491B58:  LDRB            R4, [R0]
491B5A:  CBZ             R4, loc_491B70
491B5C:  LDR             R0, =(UseDataFence_ptr - 0x491B64)
491B5E:  MOVS            R1, #(stderr+2); void *
491B60:  ADD             R0, PC; UseDataFence_ptr
491B62:  LDR             R5, [R0]; UseDataFence
491B64:  MOVS            R0, #0
491B66:  STRB            R0, [R5]
491B68:  ADD             R0, SP, #0x18+var_C; this
491B6A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491B6E:  STRB            R4, [R5]
491B70:  ADD             R0, SP, #0x18+var_C; this
491B72:  MOVS            R1, #byte_4; void *
491B74:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491B78:  LDR             R0, =(UseDataFence_ptr - 0x491B7E)
491B7A:  ADD             R0, PC; UseDataFence_ptr
491B7C:  LDR             R0, [R0]; UseDataFence
491B7E:  LDRB            R4, [R0]
491B80:  CBZ             R4, loc_491B96
491B82:  LDR             R0, =(UseDataFence_ptr - 0x491B8A)
491B84:  MOVS            R1, #(stderr+2); void *
491B86:  ADD             R0, PC; UseDataFence_ptr
491B88:  LDR             R5, [R0]; UseDataFence
491B8A:  MOVS            R0, #0
491B8C:  STRB            R0, [R5]
491B8E:  ADD             R0, SP, #0x18+var_10; this
491B90:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491B94:  STRB            R4, [R5]
491B96:  ADD             R0, SP, #0x18+var_10; this
491B98:  MOVS            R1, #byte_4; void *
491B9A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491B9E:  LDR             R0, =(UseDataFence_ptr - 0x491BA4)
491BA0:  ADD             R0, PC; UseDataFence_ptr
491BA2:  LDR             R0, [R0]; UseDataFence
491BA4:  LDRB            R4, [R0]
491BA6:  CBZ             R4, loc_491BBC
491BA8:  LDR             R0, =(UseDataFence_ptr - 0x491BB0)
491BAA:  MOVS            R1, #(stderr+2); void *
491BAC:  ADD             R0, PC; UseDataFence_ptr
491BAE:  LDR             R5, [R0]; UseDataFence
491BB0:  MOVS            R0, #0
491BB2:  STRB            R0, [R5]
491BB4:  ADD             R0, SP, #0x18+var_14; this
491BB6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491BBA:  STRB            R4, [R5]
491BBC:  ADD             R0, SP, #0x18+var_14; this
491BBE:  MOVS            R1, #byte_4; void *
491BC0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491BC4:  MOVS            R0, #dword_1C; this
491BC6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491BCA:  LDR             R1, [SP,#0x18+var_C]; int
491BCC:  BLX             j__ZN23CTaskComplexUseSequenceC2Ei; CTaskComplexUseSequence::CTaskComplexUseSequence(int)
491BD0:  LDRD.W          R2, R1, [SP,#0x18+var_14]
491BD4:  STRD.W          R1, R2, [R0,#0x10]
491BD8:  ADD             SP, SP, #0x10
491BDA:  POP             {R4,R5,R7,PC}
