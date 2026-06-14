; =========================================================
; Game Engine Function: _ZN27CTaskComplexFallAndStayDown10CreateTaskEv
; Address            : 0x490FD4 - 0x49103A
; =========================================================

490FD4:  PUSH            {R4,R5,R7,LR}
490FD6:  ADD             R7, SP, #8
490FD8:  SUB             SP, SP, #0x10
490FDA:  LDR             R0, =(UseDataFence_ptr - 0x490FE0)
490FDC:  ADD             R0, PC; UseDataFence_ptr
490FDE:  LDR             R0, [R0]; UseDataFence
490FE0:  LDRB            R4, [R0]
490FE2:  CBZ             R4, loc_490FF8
490FE4:  LDR             R0, =(UseDataFence_ptr - 0x490FEC)
490FE6:  MOVS            R1, #(stderr+2); void *
490FE8:  ADD             R0, PC; UseDataFence_ptr
490FEA:  LDR             R5, [R0]; UseDataFence
490FEC:  MOVS            R0, #0
490FEE:  STRB            R0, [R5]
490FF0:  ADD             R0, SP, #0x18+var_C; this
490FF2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
490FF6:  STRB            R4, [R5]
490FF8:  ADD             R0, SP, #0x18+var_10; this
490FFA:  MOVS            R1, #byte_4; void *
490FFC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491000:  LDR             R0, =(UseDataFence_ptr - 0x491006)
491002:  ADD             R0, PC; UseDataFence_ptr
491004:  LDR             R0, [R0]; UseDataFence
491006:  LDRB            R4, [R0]
491008:  CBZ             R4, loc_491020
49100A:  LDR             R0, =(UseDataFence_ptr - 0x491012)
49100C:  MOVS            R1, #(stderr+2); void *
49100E:  ADD             R0, PC; UseDataFence_ptr
491010:  LDR             R5, [R0]; UseDataFence
491012:  MOVS            R0, #0
491014:  STRB            R0, [R5]
491016:  SUB.W           R0, R7, #-var_A; this
49101A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49101E:  STRB            R4, [R5]
491020:  ADD             R0, SP, #0x18+var_14; this
491022:  MOVS            R1, #byte_4; void *
491024:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491028:  MOVS            R0, #dword_14; this
49102A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49102E:  LDRD.W          R2, R1, [SP,#0x18+var_14]
491032:  BLX             j__ZN27CTaskComplexFallAndStayDownC2E11AnimationId12AssocGroupId; CTaskComplexFallAndStayDown::CTaskComplexFallAndStayDown(AnimationId,AssocGroupId)
491036:  ADD             SP, SP, #0x10
491038:  POP             {R4,R5,R7,PC}
