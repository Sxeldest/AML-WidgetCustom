; =========================================================
; Game Engine Function: _ZN21CTaskComplexLeaveBoat10CreateTaskEv
; Address            : 0x49386C - 0x4938EA
; =========================================================

49386C:  PUSH            {R4-R7,LR}
49386E:  ADD             R7, SP, #0xC
493870:  PUSH.W          {R11}
493874:  SUB             SP, SP, #0x10
493876:  LDR             R0, =(UseDataFence_ptr - 0x49387C)
493878:  ADD             R0, PC; UseDataFence_ptr
49387A:  LDR             R0, [R0]; UseDataFence
49387C:  LDRB            R4, [R0]
49387E:  CBZ             R4, loc_493894
493880:  LDR             R0, =(UseDataFence_ptr - 0x493888)
493882:  MOVS            R1, #(stderr+2); void *
493884:  ADD             R0, PC; UseDataFence_ptr
493886:  LDR             R5, [R0]; UseDataFence
493888:  MOVS            R0, #0
49388A:  STRB            R0, [R5]
49388C:  ADD             R0, SP, #0x20+var_14; this
49388E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493892:  STRB            R4, [R5]
493894:  ADD             R0, SP, #0x20+var_18; this
493896:  MOVS            R1, #byte_4; void *
493898:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49389C:  LDR             R0, [SP,#0x20+var_18]; this
49389E:  ADDS            R1, R0, #1; int
4938A0:  BEQ             loc_4938AA
4938A2:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4938A6:  MOV             R4, R0
4938A8:  B               loc_4938AC
4938AA:  MOVS            R4, #0
4938AC:  LDR             R0, =(UseDataFence_ptr - 0x4938B2)
4938AE:  ADD             R0, PC; UseDataFence_ptr
4938B0:  LDR             R0, [R0]; UseDataFence
4938B2:  LDRB            R5, [R0]
4938B4:  CBZ             R5, loc_4938CC
4938B6:  LDR             R0, =(UseDataFence_ptr - 0x4938BE)
4938B8:  MOVS            R1, #(stderr+2); void *
4938BA:  ADD             R0, PC; UseDataFence_ptr
4938BC:  LDR             R6, [R0]; UseDataFence
4938BE:  MOVS            R0, #0
4938C0:  STRB            R0, [R6]
4938C2:  SUB.W           R0, R7, #-var_12; this
4938C6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4938CA:  STRB            R5, [R6]
4938CC:  ADD             R0, SP, #0x20+var_1C; this
4938CE:  MOVS            R1, #byte_4; void *
4938D0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4938D4:  MOVS            R0, #dword_14; this
4938D6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4938DA:  LDR             R2, [SP,#0x20+var_1C]; int
4938DC:  MOV             R1, R4; CVehicle *
4938DE:  BLX             j__ZN21CTaskComplexLeaveBoatC2EP8CVehiclei; CTaskComplexLeaveBoat::CTaskComplexLeaveBoat(CVehicle *,int)
4938E2:  ADD             SP, SP, #0x10
4938E4:  POP.W           {R11}
4938E8:  POP             {R4-R7,PC}
