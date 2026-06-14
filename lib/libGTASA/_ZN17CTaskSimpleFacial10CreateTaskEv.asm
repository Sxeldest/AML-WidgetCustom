; =========================================================
; Game Engine Function: _ZN17CTaskSimpleFacial10CreateTaskEv
; Address            : 0x491DE8 - 0x491E4E
; =========================================================

491DE8:  PUSH            {R4,R5,R7,LR}
491DEA:  ADD             R7, SP, #8
491DEC:  SUB             SP, SP, #0x10
491DEE:  LDR             R0, =(UseDataFence_ptr - 0x491DF4)
491DF0:  ADD             R0, PC; UseDataFence_ptr
491DF2:  LDR             R0, [R0]; UseDataFence
491DF4:  LDRB            R4, [R0]
491DF6:  CBZ             R4, loc_491E0C
491DF8:  LDR             R0, =(UseDataFence_ptr - 0x491E00)
491DFA:  MOVS            R1, #(stderr+2); void *
491DFC:  ADD             R0, PC; UseDataFence_ptr
491DFE:  LDR             R5, [R0]; UseDataFence
491E00:  MOVS            R0, #0
491E02:  STRB            R0, [R5]
491E04:  ADD             R0, SP, #0x18+var_C; this
491E06:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491E0A:  STRB            R4, [R5]
491E0C:  ADD             R0, SP, #0x18+var_10; this
491E0E:  MOVS            R1, #byte_4; void *
491E10:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491E14:  LDR             R0, =(UseDataFence_ptr - 0x491E1A)
491E16:  ADD             R0, PC; UseDataFence_ptr
491E18:  LDR             R0, [R0]; UseDataFence
491E1A:  LDRB            R4, [R0]
491E1C:  CBZ             R4, loc_491E34
491E1E:  LDR             R0, =(UseDataFence_ptr - 0x491E26)
491E20:  MOVS            R1, #(stderr+2); void *
491E22:  ADD             R0, PC; UseDataFence_ptr
491E24:  LDR             R5, [R0]; UseDataFence
491E26:  MOVS            R0, #0
491E28:  STRB            R0, [R5]
491E2A:  SUB.W           R0, R7, #-var_A; this
491E2E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491E32:  STRB            R4, [R5]
491E34:  ADD             R0, SP, #0x18+var_14; this
491E36:  MOVS            R1, #byte_4; void *
491E38:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491E3C:  MOVS            R0, #dword_1C; this
491E3E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491E42:  LDRD.W          R2, R1, [SP,#0x18+var_14]; int
491E46:  BLX             j__ZN17CTaskSimpleFacialC2Eii; CTaskSimpleFacial::CTaskSimpleFacial(int,int)
491E4A:  ADD             SP, SP, #0x10
491E4C:  POP             {R4,R5,R7,PC}
