; =========================================================
; Game Engine Function: _ZN27CTaskSimpleCarSetTempAction10CreateTaskEv
; Address            : 0x493C38 - 0x493CDC
; =========================================================

493C38:  PUSH            {R4-R7,LR}
493C3A:  ADD             R7, SP, #0xC
493C3C:  PUSH.W          {R11}
493C40:  SUB             SP, SP, #0x10
493C42:  LDR             R0, =(UseDataFence_ptr - 0x493C48)
493C44:  ADD             R0, PC; UseDataFence_ptr
493C46:  LDR             R0, [R0]; UseDataFence
493C48:  LDRB            R4, [R0]
493C4A:  CBZ             R4, loc_493C60
493C4C:  LDR             R0, =(UseDataFence_ptr - 0x493C54)
493C4E:  MOVS            R1, #(stderr+2); void *
493C50:  ADD             R0, PC; UseDataFence_ptr
493C52:  LDR             R5, [R0]; UseDataFence
493C54:  MOVS            R0, #0
493C56:  STRB            R0, [R5]
493C58:  ADD             R0, SP, #0x20+var_14; this
493C5A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493C5E:  STRB            R4, [R5]
493C60:  ADD             R0, SP, #0x20+var_14; this
493C62:  MOVS            R1, #byte_4; void *
493C64:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493C68:  LDR             R0, [SP,#0x20+var_14]; this
493C6A:  ADDS            R1, R0, #1; int
493C6C:  BEQ             loc_493C76
493C6E:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493C72:  MOV             R4, R0
493C74:  B               loc_493C78
493C76:  MOVS            R4, #0
493C78:  LDR             R0, =(UseDataFence_ptr - 0x493C7E)
493C7A:  ADD             R0, PC; UseDataFence_ptr
493C7C:  LDR             R0, [R0]; UseDataFence
493C7E:  LDRB            R5, [R0]
493C80:  CBZ             R5, loc_493C96
493C82:  LDR             R0, =(UseDataFence_ptr - 0x493C8A)
493C84:  MOVS            R1, #(stderr+2); void *
493C86:  ADD             R0, PC; UseDataFence_ptr
493C88:  LDR             R6, [R0]; UseDataFence
493C8A:  MOVS            R0, #0
493C8C:  STRB            R0, [R6]
493C8E:  ADD             R0, SP, #0x20+var_18; this
493C90:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493C94:  STRB            R5, [R6]
493C96:  ADD             R0, SP, #0x20+var_18; this
493C98:  MOVS            R1, #byte_4; void *
493C9A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493C9E:  LDR             R0, =(UseDataFence_ptr - 0x493CA4)
493CA0:  ADD             R0, PC; UseDataFence_ptr
493CA2:  LDR             R0, [R0]; UseDataFence
493CA4:  LDRB            R5, [R0]
493CA6:  CBZ             R5, loc_493CBC
493CA8:  LDR             R0, =(UseDataFence_ptr - 0x493CB0)
493CAA:  MOVS            R1, #(stderr+2); void *
493CAC:  ADD             R0, PC; UseDataFence_ptr
493CAE:  LDR             R6, [R0]; UseDataFence
493CB0:  MOVS            R0, #0
493CB2:  STRB            R0, [R6]
493CB4:  ADD             R0, SP, #0x20+var_1C; this
493CB6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493CBA:  STRB            R5, [R6]
493CBC:  ADD             R0, SP, #0x20+var_1C; this
493CBE:  MOVS            R1, #byte_4; void *
493CC0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493CC4:  MOVS            R0, #dword_68; this
493CC6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493CCA:  LDRD.W          R3, R2, [SP,#0x20+var_1C]; int
493CCE:  MOV             R1, R4; CVehicle *
493CD0:  BLX             j__ZN27CTaskSimpleCarSetTempActionC2EP8CVehicleii; CTaskSimpleCarSetTempAction::CTaskSimpleCarSetTempAction(CVehicle *,int,int)
493CD4:  ADD             SP, SP, #0x10
493CD6:  POP.W           {R11}
493CDA:  POP             {R4-R7,PC}
