; =========================================================
; Game Engine Function: _ZN31CTaskComplexEnterCarAsPassenger10CreateTaskEv
; Address            : 0x492EE8 - 0x492F9A
; =========================================================

492EE8:  PUSH            {R4-R7,LR}
492EEA:  ADD             R7, SP, #0xC
492EEC:  PUSH.W          {R11}
492EF0:  SUB             SP, SP, #0x18
492EF2:  LDR             R0, =(UseDataFence_ptr - 0x492EF8)
492EF4:  ADD             R0, PC; UseDataFence_ptr
492EF6:  LDR             R0, [R0]; UseDataFence
492EF8:  LDRB            R4, [R0]
492EFA:  CBZ             R4, loc_492F12
492EFC:  LDR             R0, =(UseDataFence_ptr - 0x492F04)
492EFE:  MOVS            R1, #(stderr+2); void *
492F00:  ADD             R0, PC; UseDataFence_ptr
492F02:  LDR             R5, [R0]; UseDataFence
492F04:  MOVS            R0, #0
492F06:  STRB            R0, [R5]
492F08:  SUB.W           R0, R7, #-var_16; this
492F0C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492F10:  STRB            R4, [R5]
492F12:  ADD             R0, SP, #0x28+var_1C; this
492F14:  MOVS            R1, #byte_4; void *
492F16:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492F1A:  LDR             R0, [SP,#0x28+var_1C]; this
492F1C:  ADDS            R1, R0, #1; int
492F1E:  BEQ             loc_492F28
492F20:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
492F24:  MOV             R4, R0
492F26:  B               loc_492F2A
492F28:  MOVS            R4, #0
492F2A:  LDR             R0, =(UseDataFence_ptr - 0x492F30)
492F2C:  ADD             R0, PC; UseDataFence_ptr
492F2E:  LDR             R0, [R0]; UseDataFence
492F30:  LDRB            R5, [R0]
492F32:  CBZ             R5, loc_492F48
492F34:  LDR             R0, =(UseDataFence_ptr - 0x492F3C)
492F36:  MOVS            R1, #(stderr+2); void *
492F38:  ADD             R0, PC; UseDataFence_ptr
492F3A:  LDR             R6, [R0]; UseDataFence
492F3C:  MOVS            R0, #0
492F3E:  STRB            R0, [R6]
492F40:  ADD             R0, SP, #0x28+var_14; this
492F42:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492F46:  STRB            R5, [R6]
492F48:  ADD             R0, SP, #0x28+var_20; this
492F4A:  MOVS            R1, #byte_4; void *
492F4C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492F50:  LDR             R0, =(UseDataFence_ptr - 0x492F56)
492F52:  ADD             R0, PC; UseDataFence_ptr
492F54:  LDR             R0, [R0]; UseDataFence
492F56:  LDRB            R5, [R0]
492F58:  CBZ             R5, loc_492F70
492F5A:  LDR             R0, =(UseDataFence_ptr - 0x492F62)
492F5C:  MOVS            R1, #(stderr+2); void *
492F5E:  ADD             R0, PC; UseDataFence_ptr
492F60:  LDR             R6, [R0]; UseDataFence
492F62:  MOVS            R0, #0
492F64:  STRB            R0, [R6]
492F66:  SUB.W           R0, R7, #-var_12; this
492F6A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492F6E:  STRB            R5, [R6]
492F70:  SUB.W           R0, R7, #-var_21; this
492F74:  MOVS            R1, #(stderr+1); void *
492F76:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
492F7A:  MOVS            R0, #dword_50; this
492F7C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
492F80:  LDRB.W          R3, [R7,#var_21]
492F84:  MOV             R1, R4; CVehicle *
492F86:  LDR             R2, [SP,#0x28+var_20]; int
492F88:  CMP             R3, #0
492F8A:  IT NE
492F8C:  MOVNE           R3, #1; bool
492F8E:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
492F92:  ADD             SP, SP, #0x18
492F94:  POP.W           {R11}
492F98:  POP             {R4-R7,PC}
