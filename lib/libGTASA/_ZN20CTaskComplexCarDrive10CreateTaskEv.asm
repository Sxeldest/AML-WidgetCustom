; =========================================================
; Game Engine Function: _ZN20CTaskComplexCarDrive10CreateTaskEv
; Address            : 0x493E80 - 0x493F4E
; =========================================================

493E80:  PUSH            {R4-R7,LR}
493E82:  ADD             R7, SP, #0xC
493E84:  PUSH.W          {R11}
493E88:  SUB             SP, SP, #0x18
493E8A:  LDR             R0, =(UseDataFence_ptr - 0x493E90)
493E8C:  ADD             R0, PC; UseDataFence_ptr
493E8E:  LDR             R0, [R0]; UseDataFence
493E90:  LDRB            R4, [R0]
493E92:  CBZ             R4, loc_493EA8
493E94:  LDR             R0, =(UseDataFence_ptr - 0x493E9C)
493E96:  MOVS            R1, #(stderr+2); void *
493E98:  ADD             R0, PC; UseDataFence_ptr
493E9A:  LDR             R5, [R0]; UseDataFence
493E9C:  MOVS            R0, #0
493E9E:  STRB            R0, [R5]
493EA0:  ADD             R0, SP, #0x28+var_14; this
493EA2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493EA6:  STRB            R4, [R5]
493EA8:  ADD             R0, SP, #0x28+var_14; this
493EAA:  MOVS            R1, #byte_4; void *
493EAC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493EB0:  LDR             R0, [SP,#0x28+var_14]; this
493EB2:  ADDS            R1, R0, #1; int
493EB4:  BEQ             loc_493EBE
493EB6:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493EBA:  MOV             R4, R0
493EBC:  B               loc_493EC0
493EBE:  MOVS            R4, #0
493EC0:  LDR             R0, =(UseDataFence_ptr - 0x493EC6)
493EC2:  ADD             R0, PC; UseDataFence_ptr
493EC4:  LDR             R0, [R0]; UseDataFence
493EC6:  LDRB            R5, [R0]
493EC8:  CBZ             R5, loc_493EDE
493ECA:  LDR             R0, =(UseDataFence_ptr - 0x493ED2)
493ECC:  MOVS            R1, #(stderr+2); void *
493ECE:  ADD             R0, PC; UseDataFence_ptr
493ED0:  LDR             R6, [R0]; UseDataFence
493ED2:  MOVS            R0, #0
493ED4:  STRB            R0, [R6]
493ED6:  ADD             R0, SP, #0x28+var_18; this
493ED8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493EDC:  STRB            R5, [R6]
493EDE:  ADD             R0, SP, #0x28+var_18; this
493EE0:  MOVS            R1, #byte_4; void *
493EE2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493EE6:  LDR             R0, =(UseDataFence_ptr - 0x493EEC)
493EE8:  ADD             R0, PC; UseDataFence_ptr
493EEA:  LDR             R0, [R0]; UseDataFence
493EEC:  LDRB            R5, [R0]
493EEE:  CBZ             R5, loc_493F04
493EF0:  LDR             R0, =(UseDataFence_ptr - 0x493EF8)
493EF2:  MOVS            R1, #(stderr+2); void *
493EF4:  ADD             R0, PC; UseDataFence_ptr
493EF6:  LDR             R6, [R0]; UseDataFence
493EF8:  MOVS            R0, #0
493EFA:  STRB            R0, [R6]
493EFC:  ADD             R0, SP, #0x28+var_1C; this
493EFE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493F02:  STRB            R5, [R6]
493F04:  ADD             R0, SP, #0x28+var_1C; this
493F06:  MOVS            R1, #byte_4; void *
493F08:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493F0C:  LDR             R0, =(UseDataFence_ptr - 0x493F12)
493F0E:  ADD             R0, PC; UseDataFence_ptr
493F10:  LDR             R0, [R0]; UseDataFence
493F12:  LDRB            R5, [R0]
493F14:  CBZ             R5, loc_493F2A
493F16:  LDR             R0, =(UseDataFence_ptr - 0x493F1E)
493F18:  MOVS            R1, #(stderr+2); void *
493F1A:  ADD             R0, PC; UseDataFence_ptr
493F1C:  LDR             R6, [R0]; UseDataFence
493F1E:  MOVS            R0, #0
493F20:  STRB            R0, [R6]
493F22:  ADD             R0, SP, #0x28+var_20; this
493F24:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493F28:  STRB            R5, [R6]
493F2A:  ADD             R0, SP, #0x28+var_20; this
493F2C:  MOVS            R1, #byte_4; void *
493F2E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493F32:  MOVS            R0, #dword_24; this
493F34:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493F38:  LDR             R2, [SP,#0x28+var_18]; float
493F3A:  LDRD.W          R1, R3, [SP,#0x28+var_20]; int
493F3E:  STR             R1, [SP,#0x28+var_28]; int
493F40:  MOV             R1, R4; CVehicle *
493F42:  BLX             j__ZN20CTaskComplexCarDriveC2EP8CVehiclefii; CTaskComplexCarDrive::CTaskComplexCarDrive(CVehicle *,float,int,int)
493F46:  ADD             SP, SP, #0x18
493F48:  POP.W           {R11}
493F4C:  POP             {R4-R7,PC}
