; =========================================================
; Game Engine Function: _ZN29CTaskComplexLeaveCarAndWander10CreateTaskEv
; Address            : 0x49336C - 0x493440
; =========================================================

49336C:  PUSH            {R4-R7,LR}
49336E:  ADD             R7, SP, #0xC
493370:  PUSH.W          {R11}
493374:  SUB             SP, SP, #0x18
493376:  LDR             R0, =(UseDataFence_ptr - 0x49337C)
493378:  ADD             R0, PC; UseDataFence_ptr
49337A:  LDR             R0, [R0]; UseDataFence
49337C:  LDRB            R4, [R0]
49337E:  CBZ             R4, loc_493394
493380:  LDR             R0, =(UseDataFence_ptr - 0x493388)
493382:  MOVS            R1, #(stderr+2); void *
493384:  ADD             R0, PC; UseDataFence_ptr
493386:  LDR             R5, [R0]; UseDataFence
493388:  MOVS            R0, #0
49338A:  STRB            R0, [R5]
49338C:  ADD             R0, SP, #0x28+var_18; this
49338E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493392:  STRB            R4, [R5]
493394:  ADD             R0, SP, #0x28+var_18; this
493396:  MOVS            R1, #byte_4; void *
493398:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49339C:  LDR             R0, [SP,#0x28+var_18]; this
49339E:  ADDS            R1, R0, #1; int
4933A0:  BEQ             loc_4933AA
4933A2:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4933A6:  MOV             R4, R0
4933A8:  B               loc_4933AC
4933AA:  MOVS            R4, #0
4933AC:  LDR             R0, =(UseDataFence_ptr - 0x4933B2)
4933AE:  ADD             R0, PC; UseDataFence_ptr
4933B0:  LDR             R0, [R0]; UseDataFence
4933B2:  LDRB            R5, [R0]
4933B4:  CBZ             R5, loc_4933CA
4933B6:  LDR             R0, =(UseDataFence_ptr - 0x4933BE)
4933B8:  MOVS            R1, #(stderr+2); void *
4933BA:  ADD             R0, PC; UseDataFence_ptr
4933BC:  LDR             R6, [R0]; UseDataFence
4933BE:  MOVS            R0, #0
4933C0:  STRB            R0, [R6]
4933C2:  ADD             R0, SP, #0x28+var_1C; this
4933C4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4933C8:  STRB            R5, [R6]
4933CA:  ADD             R0, SP, #0x28+var_1C; this
4933CC:  MOVS            R1, #byte_4; void *
4933CE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4933D2:  LDR             R0, =(UseDataFence_ptr - 0x4933D8)
4933D4:  ADD             R0, PC; UseDataFence_ptr
4933D6:  LDR             R0, [R0]; UseDataFence
4933D8:  LDRB            R5, [R0]
4933DA:  CBZ             R5, loc_4933F0
4933DC:  LDR             R0, =(UseDataFence_ptr - 0x4933E4)
4933DE:  MOVS            R1, #(stderr+2); void *
4933E0:  ADD             R0, PC; UseDataFence_ptr
4933E2:  LDR             R6, [R0]; UseDataFence
4933E4:  MOVS            R0, #0
4933E6:  STRB            R0, [R6]
4933E8:  ADD             R0, SP, #0x28+var_20; this
4933EA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4933EE:  STRB            R5, [R6]
4933F0:  ADD             R0, SP, #0x28+var_20; this
4933F2:  MOVS            R1, #byte_4; void *
4933F4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4933F8:  LDR             R0, =(UseDataFence_ptr - 0x4933FE)
4933FA:  ADD             R0, PC; UseDataFence_ptr
4933FC:  LDR             R0, [R0]; UseDataFence
4933FE:  LDRB            R5, [R0]
493400:  CBZ             R5, loc_493418
493402:  LDR             R0, =(UseDataFence_ptr - 0x49340A)
493404:  MOVS            R1, #(stderr+2); void *
493406:  ADD             R0, PC; UseDataFence_ptr
493408:  LDR             R6, [R0]; UseDataFence
49340A:  MOVS            R0, #0
49340C:  STRB            R0, [R6]
49340E:  SUB.W           R0, R7, #-var_12; this
493412:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493416:  STRB            R5, [R6]
493418:  SUB.W           R0, R7, #-var_12; this
49341C:  MOVS            R1, #(stderr+1); void *
49341E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493422:  MOVS            R0, #dword_1C; this
493424:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493428:  LDRD.W          R3, R2, [SP,#0x28+var_20]; int
49342C:  LDRB.W          R1, [R7,#var_12]
493430:  STR             R1, [SP,#0x28+var_28]; bool
493432:  MOV             R1, R4; CVehicle *
493434:  BLX             j__ZN29CTaskComplexLeaveCarAndWanderC2EP8CVehicleiib; CTaskComplexLeaveCarAndWander::CTaskComplexLeaveCarAndWander(CVehicle *,int,int,bool)
493438:  ADD             SP, SP, #0x18
49343A:  POP.W           {R11}
49343E:  POP             {R4-R7,PC}
