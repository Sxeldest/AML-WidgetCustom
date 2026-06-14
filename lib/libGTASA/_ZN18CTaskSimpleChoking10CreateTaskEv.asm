; =========================================================
; Game Engine Function: _ZN18CTaskSimpleChoking10CreateTaskEv
; Address            : 0x4918B8 - 0x49193A
; =========================================================

4918B8:  PUSH            {R4-R7,LR}
4918BA:  ADD             R7, SP, #0xC
4918BC:  PUSH.W          {R11}
4918C0:  SUB             SP, SP, #0x10
4918C2:  LDR             R0, =(UseDataFence_ptr - 0x4918C8)
4918C4:  ADD             R0, PC; UseDataFence_ptr
4918C6:  LDR             R0, [R0]; UseDataFence
4918C8:  LDRB            R4, [R0]
4918CA:  CBZ             R4, loc_4918E0
4918CC:  LDR             R0, =(UseDataFence_ptr - 0x4918D4)
4918CE:  MOVS            R1, #(stderr+2); void *
4918D0:  ADD             R0, PC; UseDataFence_ptr
4918D2:  LDR             R5, [R0]; UseDataFence
4918D4:  MOVS            R0, #0
4918D6:  STRB            R0, [R5]
4918D8:  ADD             R0, SP, #0x20+var_14; this
4918DA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4918DE:  STRB            R4, [R5]
4918E0:  ADD             R0, SP, #0x20+var_18; this
4918E2:  MOVS            R1, #byte_4; void *
4918E4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4918E8:  LDR             R0, [SP,#0x20+var_18]; this
4918EA:  ADDS            R1, R0, #1; int
4918EC:  BEQ             loc_4918F6
4918EE:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
4918F2:  MOV             R4, R0
4918F4:  B               loc_4918F8
4918F6:  MOVS            R4, #0
4918F8:  LDR             R0, =(UseDataFence_ptr - 0x4918FE)
4918FA:  ADD             R0, PC; UseDataFence_ptr
4918FC:  LDR             R0, [R0]; UseDataFence
4918FE:  LDRB            R5, [R0]
491900:  CBZ             R5, loc_491918
491902:  LDR             R0, =(UseDataFence_ptr - 0x49190A)
491904:  MOVS            R1, #(stderr+2); void *
491906:  ADD             R0, PC; UseDataFence_ptr
491908:  LDR             R6, [R0]; UseDataFence
49190A:  MOVS            R0, #0
49190C:  STRB            R0, [R6]
49190E:  SUB.W           R0, R7, #-var_12; this
491912:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491916:  STRB            R5, [R6]
491918:  SUB.W           R0, R7, #-var_19; this
49191C:  MOVS            R1, #(stderr+1); void *
49191E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
491922:  MOVS            R0, #dword_1C; this
491924:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
491928:  LDRB.W          R2, [R7,#var_19]; unsigned __int8
49192C:  MOV             R1, R4; CPed *
49192E:  BLX             j__ZN18CTaskSimpleChokingC2EP4CPedh; CTaskSimpleChoking::CTaskSimpleChoking(CPed *,uchar)
491932:  ADD             SP, SP, #0x10
491934:  POP.W           {R11}
491938:  POP             {R4-R7,PC}
