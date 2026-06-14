; =========================================================
; Game Engine Function: _ZN29CTaskComplexOpenPassengerDoor10CreateTaskEv
; Address            : 0x493FE4 - 0x494062
; =========================================================

493FE4:  PUSH            {R4-R7,LR}
493FE6:  ADD             R7, SP, #0xC
493FE8:  PUSH.W          {R11}
493FEC:  SUB             SP, SP, #0x10
493FEE:  LDR             R0, =(UseDataFence_ptr - 0x493FF4)
493FF0:  ADD             R0, PC; UseDataFence_ptr
493FF2:  LDR             R0, [R0]; UseDataFence
493FF4:  LDRB            R4, [R0]
493FF6:  CBZ             R4, loc_49400C
493FF8:  LDR             R0, =(UseDataFence_ptr - 0x494000)
493FFA:  MOVS            R1, #(stderr+2); void *
493FFC:  ADD             R0, PC; UseDataFence_ptr
493FFE:  LDR             R5, [R0]; UseDataFence
494000:  MOVS            R0, #0
494002:  STRB            R0, [R5]
494004:  ADD             R0, SP, #0x20+var_14; this
494006:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49400A:  STRB            R4, [R5]
49400C:  ADD             R0, SP, #0x20+var_18; this
49400E:  MOVS            R1, #byte_4; void *
494010:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494014:  LDR             R0, [SP,#0x20+var_18]; this
494016:  ADDS            R1, R0, #1; int
494018:  BEQ             loc_494022
49401A:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49401E:  MOV             R4, R0
494020:  B               loc_494024
494022:  MOVS            R4, #0
494024:  LDR             R0, =(UseDataFence_ptr - 0x49402A)
494026:  ADD             R0, PC; UseDataFence_ptr
494028:  LDR             R0, [R0]; UseDataFence
49402A:  LDRB            R5, [R0]
49402C:  CBZ             R5, loc_494044
49402E:  LDR             R0, =(UseDataFence_ptr - 0x494036)
494030:  MOVS            R1, #(stderr+2); void *
494032:  ADD             R0, PC; UseDataFence_ptr
494034:  LDR             R6, [R0]; UseDataFence
494036:  MOVS            R0, #0
494038:  STRB            R0, [R6]
49403A:  SUB.W           R0, R7, #-var_12; this
49403E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494042:  STRB            R5, [R6]
494044:  ADD             R0, SP, #0x20+var_1C; this
494046:  MOVS            R1, #byte_4; void *
494048:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49404C:  MOVS            R0, #dword_50; this
49404E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494052:  LDR             R2, [SP,#0x20+var_1C]; int
494054:  MOV             R1, R4; CVehicle *
494056:  BLX             j__ZN29CTaskComplexOpenPassengerDoorC2EP8CVehiclei; CTaskComplexOpenPassengerDoor::CTaskComplexOpenPassengerDoor(CVehicle *,int)
49405A:  ADD             SP, SP, #0x10
49405C:  POP.W           {R11}
494060:  POP             {R4-R7,PC}
