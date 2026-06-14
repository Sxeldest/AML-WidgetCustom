; =========================================================
; Game Engine Function: _ZN23CTaskComplexFallToDeath10CreateTaskEv
; Address            : 0x491BF4 - 0x491CC6
; =========================================================

491BF4:  PUSH            {R4,R5,R7,LR}
491BF6:  ADD             R7, SP, #8
491BF8:  SUB             SP, SP, #0x18
491BFA:  LDR             R0, =(UseDataFence_ptr - 0x491C00)
491BFC:  ADD             R0, PC; UseDataFence_ptr
491BFE:  LDR             R0, [R0]; UseDataFence
491C00:  LDRB            R4, [R0]
491C02:  CBZ             R4, loc_491C18
491C04:  LDR             R0, =(UseDataFence_ptr - 0x491C0C)
491C06:  MOVS            R1, #(stderr+2); void *
491C08:  ADD             R0, PC; UseDataFence_ptr
491C0A:  LDR             R5, [R0]; UseDataFence
491C0C:  MOVS            R0, #0
491C0E:  STRB            R0, [R5]
491C10:  ADD             R0, SP, #0x20+var_18; this
491C12:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491C16:  STRB            R4, [R5]
491C18:  SUB.W           R0, R7, #-var_B; this
491C1C:  MOVS            R1, #(stderr+1); void *
491C1E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491C22:  LDR             R0, =(UseDataFence_ptr - 0x491C28)
491C24:  ADD             R0, PC; UseDataFence_ptr
491C26:  LDR             R0, [R0]; UseDataFence
491C28:  LDRB            R4, [R0]
491C2A:  CBZ             R4, loc_491C40
491C2C:  LDR             R0, =(UseDataFence_ptr - 0x491C34)
491C2E:  MOVS            R1, #(stderr+2); void *
491C30:  ADD             R0, PC; UseDataFence_ptr
491C32:  LDR             R5, [R0]; UseDataFence
491C34:  MOVS            R0, #0
491C36:  STRB            R0, [R5]
491C38:  ADD             R0, SP, #0x20+var_18; this
491C3A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491C3E:  STRB            R4, [R5]
491C40:  ADD             R0, SP, #0x20+var_18; this
491C42:  MOVS            R1, #(byte_9+3); void *
491C44:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491C48:  LDR             R0, =(UseDataFence_ptr - 0x491C4E)
491C4A:  ADD             R0, PC; UseDataFence_ptr
491C4C:  LDR             R0, [R0]; UseDataFence
491C4E:  LDRB            R4, [R0]
491C50:  CBZ             R4, loc_491C68
491C52:  LDR             R0, =(UseDataFence_ptr - 0x491C5A)
491C54:  MOVS            R1, #(stderr+2); void *
491C56:  ADD             R0, PC; UseDataFence_ptr
491C58:  LDR             R5, [R0]; UseDataFence
491C5A:  MOVS            R0, #0
491C5C:  STRB            R0, [R5]
491C5E:  SUB.W           R0, R7, #-(var_B+1); this
491C62:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491C66:  STRB            R4, [R5]
491C68:  SUB.W           R0, R7, #-var_19; this
491C6C:  MOVS            R1, #(stderr+1); void *
491C6E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491C72:  LDR             R0, =(UseDataFence_ptr - 0x491C78)
491C74:  ADD             R0, PC; UseDataFence_ptr
491C76:  LDR             R0, [R0]; UseDataFence
491C78:  LDRB            R4, [R0]
491C7A:  CBZ             R4, loc_491C92
491C7C:  LDR             R0, =(UseDataFence_ptr - 0x491C84)
491C7E:  MOVS            R1, #(stderr+2); void *
491C80:  ADD             R0, PC; UseDataFence_ptr
491C82:  LDR             R5, [R0]; UseDataFence
491C84:  MOVS            R0, #0
491C86:  STRB            R0, [R5]
491C88:  SUB.W           R0, R7, #-(var_B+1); this
491C8C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491C90:  STRB            R4, [R5]
491C92:  SUB.W           R0, R7, #-(var_B+1); this
491C96:  MOVS            R1, #(stderr+1); void *
491C98:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491C9C:  MOVS            R0, #dword_24; this
491C9E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491CA2:  LDRB.W          R2, [R7,#var_B+1]
491CA6:  LDRB.W          R3, [R7,#var_19]
491CAA:  CMP             R2, #0
491CAC:  LDRB.W          R1, [R7,#var_B]; int
491CB0:  IT NE
491CB2:  MOVNE           R2, #1
491CB4:  CMP             R3, #0
491CB6:  STR             R2, [SP,#0x20+var_20]; bool
491CB8:  ADD             R2, SP, #0x20+var_18; CVector *
491CBA:  IT NE
491CBC:  MOVNE           R3, #1; bool
491CBE:  BLX             j__ZN23CTaskComplexFallToDeathC2EiRK7CVectorbb; CTaskComplexFallToDeath::CTaskComplexFallToDeath(int,CVector const&,bool,bool)
491CC2:  ADD             SP, SP, #0x18
491CC4:  POP             {R4,R5,R7,PC}
