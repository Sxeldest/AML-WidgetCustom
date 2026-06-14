; =========================================================
; Game Engine Function: _ZN25CTaskComplexWalkRoundFire10CreateTaskEv
; Address            : 0x492D40 - 0x492DF6
; =========================================================

492D40:  PUSH            {R4,R5,R7,LR}
492D42:  ADD             R7, SP, #8
492D44:  SUB             SP, SP, #0x28
492D46:  LDR             R0, =(UseDataFence_ptr - 0x492D4C)
492D48:  ADD             R0, PC; UseDataFence_ptr
492D4A:  LDR             R0, [R0]; UseDataFence
492D4C:  LDRB            R4, [R0]
492D4E:  CBZ             R4, loc_492D64
492D50:  LDR             R0, =(UseDataFence_ptr - 0x492D58)
492D52:  MOVS            R1, #(stderr+2); void *
492D54:  ADD             R0, PC; UseDataFence_ptr
492D56:  LDR             R5, [R0]; UseDataFence
492D58:  MOVS            R0, #0
492D5A:  STRB            R0, [R5]
492D5C:  ADD             R0, SP, #0x30+var_18; this
492D5E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492D62:  STRB            R4, [R5]
492D64:  ADD             R0, SP, #0x30+var_C; this
492D66:  MOVS            R1, #byte_4; void *
492D68:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492D6C:  LDR             R0, =(UseDataFence_ptr - 0x492D72)
492D6E:  ADD             R0, PC; UseDataFence_ptr
492D70:  LDR             R0, [R0]; UseDataFence
492D72:  LDRB            R4, [R0]
492D74:  CBZ             R4, loc_492D8A
492D76:  LDR             R0, =(UseDataFence_ptr - 0x492D7E)
492D78:  MOVS            R1, #(stderr+2); void *
492D7A:  ADD             R0, PC; UseDataFence_ptr
492D7C:  LDR             R5, [R0]; UseDataFence
492D7E:  MOVS            R0, #0
492D80:  STRB            R0, [R5]
492D82:  ADD             R0, SP, #0x30+var_18; this
492D84:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492D88:  STRB            R4, [R5]
492D8A:  ADD             R0, SP, #0x30+var_18; this
492D8C:  MOVS            R1, #(byte_9+3); void *
492D8E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492D92:  LDR             R0, =(UseDataFence_ptr - 0x492D98)
492D94:  ADD             R0, PC; UseDataFence_ptr
492D96:  LDR             R0, [R0]; UseDataFence
492D98:  LDRB            R4, [R0]
492D9A:  CBZ             R4, loc_492DB0
492D9C:  LDR             R0, =(UseDataFence_ptr - 0x492DA4)
492D9E:  MOVS            R1, #(stderr+2); void *
492DA0:  ADD             R0, PC; UseDataFence_ptr
492DA2:  LDR             R5, [R0]; UseDataFence
492DA4:  MOVS            R0, #0
492DA6:  STRB            R0, [R5]
492DA8:  ADD             R0, SP, #0x30+var_28; this
492DAA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492DAE:  STRB            R4, [R5]
492DB0:  ADD             R0, SP, #0x30+var_1C; this
492DB2:  MOVS            R1, #byte_4; void *
492DB4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492DB8:  LDR             R0, =(UseDataFence_ptr - 0x492DBE)
492DBA:  ADD             R0, PC; UseDataFence_ptr
492DBC:  LDR             R0, [R0]; UseDataFence
492DBE:  LDRB            R4, [R0]
492DC0:  CBZ             R4, loc_492DD6
492DC2:  LDR             R0, =(UseDataFence_ptr - 0x492DCA)
492DC4:  MOVS            R1, #(stderr+2); void *
492DC6:  ADD             R0, PC; UseDataFence_ptr
492DC8:  LDR             R5, [R0]; UseDataFence
492DCA:  MOVS            R0, #0
492DCC:  STRB            R0, [R5]
492DCE:  ADD             R0, SP, #0x30+var_28; this
492DD0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492DD4:  STRB            R4, [R5]
492DD6:  ADD             R4, SP, #0x30+var_28
492DD8:  MOVS            R1, #(byte_9+3); void *
492DDA:  MOV             R0, R4; this
492DDC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492DE0:  MOVS            R0, #dword_38; this
492DE2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492DE6:  LDR             R1, [SP,#0x30+var_C]; int
492DE8:  ADD             R2, SP, #0x30+var_18; CVector *
492DEA:  LDR             R3, [SP,#0x30+var_1C]; float
492DEC:  STR             R4, [SP,#0x30+var_30]; CVector *
492DEE:  BLX             j__ZN25CTaskComplexWalkRoundFireC2EiRK7CVectorfS2_; CTaskComplexWalkRoundFire::CTaskComplexWalkRoundFire(int,CVector const&,float,CVector const&)
492DF2:  ADD             SP, SP, #0x28 ; '('
492DF4:  POP             {R4,R5,R7,PC}
