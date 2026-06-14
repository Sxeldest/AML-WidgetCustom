; =========================================================
; Game Engine Function: _ZN15CTaskSimpleSwim10CreateTaskEv
; Address            : 0x496EF4 - 0x496F72
; =========================================================

496EF4:  PUSH            {R4-R7,LR}
496EF6:  ADD             R7, SP, #0xC
496EF8:  PUSH.W          {R11}
496EFC:  SUB             SP, SP, #0x10
496EFE:  LDR             R0, =(UseDataFence_ptr - 0x496F04)
496F00:  ADD             R0, PC; UseDataFence_ptr
496F02:  LDR             R0, [R0]; UseDataFence
496F04:  LDRB            R4, [R0]
496F06:  CBZ             R4, loc_496F1C
496F08:  LDR             R0, =(UseDataFence_ptr - 0x496F10)
496F0A:  MOVS            R1, #(stderr+2); void *
496F0C:  ADD             R0, PC; UseDataFence_ptr
496F0E:  LDR             R5, [R0]; UseDataFence
496F10:  MOVS            R0, #0
496F12:  STRB            R0, [R5]
496F14:  ADD             R0, SP, #0x20+var_1C; this
496F16:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496F1A:  STRB            R4, [R5]
496F1C:  ADD             R0, SP, #0x20+var_1C; this
496F1E:  MOVS            R1, #byte_4; void *
496F20:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496F24:  LDR             R0, [SP,#0x20+var_1C]; this
496F26:  ADDS            R1, R0, #1; int
496F28:  BEQ             loc_496F32
496F2A:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
496F2E:  MOV             R4, R0
496F30:  B               loc_496F34
496F32:  MOVS            R4, #0
496F34:  LDR             R0, =(UseDataFence_ptr - 0x496F3A)
496F36:  ADD             R0, PC; UseDataFence_ptr
496F38:  LDR             R0, [R0]; UseDataFence
496F3A:  LDRB            R5, [R0]
496F3C:  CBZ             R5, loc_496F52
496F3E:  LDR             R0, =(UseDataFence_ptr - 0x496F46)
496F40:  MOVS            R1, #(stderr+2); void *
496F42:  ADD             R0, PC; UseDataFence_ptr
496F44:  LDR             R6, [R0]; UseDataFence
496F46:  MOVS            R0, #0
496F48:  STRB            R0, [R6]
496F4A:  ADD             R0, SP, #0x20+var_1C; this
496F4C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496F50:  STRB            R5, [R6]
496F52:  ADD             R5, SP, #0x20+var_1C
496F54:  MOVS            R1, #(byte_9+3); void *
496F56:  MOV             R0, R5; this
496F58:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
496F5C:  MOVS            R0, #dword_68; this
496F5E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
496F62:  MOV             R1, R5; CVector *
496F64:  MOV             R2, R4; CPed *
496F66:  BLX             j__ZN15CTaskSimpleSwimC2EPK7CVectorP4CPed; CTaskSimpleSwim::CTaskSimpleSwim(CVector const*,CPed *)
496F6A:  ADD             SP, SP, #0x10
496F6C:  POP.W           {R11}
496F70:  POP             {R4-R7,PC}
