; =========================================================
; Game Engine Function: _ZN32CTaskComplexScreamInCarThenLeave10CreateTaskEv
; Address            : 0x493460 - 0x4934DE
; =========================================================

493460:  PUSH            {R4-R7,LR}
493462:  ADD             R7, SP, #0xC
493464:  PUSH.W          {R11}
493468:  SUB             SP, SP, #0x10
49346A:  LDR             R0, =(UseDataFence_ptr - 0x493470)
49346C:  ADD             R0, PC; UseDataFence_ptr
49346E:  LDR             R0, [R0]; UseDataFence
493470:  LDRB            R4, [R0]
493472:  CBZ             R4, loc_493488
493474:  LDR             R0, =(UseDataFence_ptr - 0x49347C)
493476:  MOVS            R1, #(stderr+2); void *
493478:  ADD             R0, PC; UseDataFence_ptr
49347A:  LDR             R5, [R0]; UseDataFence
49347C:  MOVS            R0, #0
49347E:  STRB            R0, [R5]
493480:  ADD             R0, SP, #0x20+var_14; this
493482:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493486:  STRB            R4, [R5]
493488:  ADD             R0, SP, #0x20+var_18; this
49348A:  MOVS            R1, #byte_4; void *
49348C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493490:  LDR             R0, [SP,#0x20+var_18]; this
493492:  ADDS            R1, R0, #1; int
493494:  BEQ             loc_49349E
493496:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49349A:  MOV             R4, R0
49349C:  B               loc_4934A0
49349E:  MOVS            R4, #0
4934A0:  LDR             R0, =(UseDataFence_ptr - 0x4934A6)
4934A2:  ADD             R0, PC; UseDataFence_ptr
4934A4:  LDR             R0, [R0]; UseDataFence
4934A6:  LDRB            R5, [R0]
4934A8:  CBZ             R5, loc_4934C0
4934AA:  LDR             R0, =(UseDataFence_ptr - 0x4934B2)
4934AC:  MOVS            R1, #(stderr+2); void *
4934AE:  ADD             R0, PC; UseDataFence_ptr
4934B0:  LDR             R6, [R0]; UseDataFence
4934B2:  MOVS            R0, #0
4934B4:  STRB            R0, [R6]
4934B6:  SUB.W           R0, R7, #-var_12; this
4934BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4934BE:  STRB            R5, [R6]
4934C0:  ADD             R0, SP, #0x20+var_1C; this
4934C2:  MOVS            R1, #byte_4; void *
4934C4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4934C8:  MOVS            R0, #dword_20; this
4934CA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4934CE:  LDR             R2, [SP,#0x20+var_1C]; int
4934D0:  MOV             R1, R4; CVehicle *
4934D2:  BLX             j__ZN32CTaskComplexScreamInCarThenLeaveC2EP8CVehiclei; CTaskComplexScreamInCarThenLeave::CTaskComplexScreamInCarThenLeave(CVehicle *,int)
4934D6:  ADD             SP, SP, #0x10
4934D8:  POP.W           {R11}
4934DC:  POP             {R4-R7,PC}
