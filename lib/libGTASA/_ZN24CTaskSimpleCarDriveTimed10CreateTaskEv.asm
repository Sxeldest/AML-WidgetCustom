; =========================================================
; Game Engine Function: _ZN24CTaskSimpleCarDriveTimed10CreateTaskEv
; Address            : 0x493A00 - 0x493A98
; =========================================================

493A00:  PUSH            {R4-R7,LR}
493A02:  ADD             R7, SP, #0xC
493A04:  PUSH.W          {R11}
493A08:  SUB             SP, SP, #0x10
493A0A:  LDR             R0, =(UseDataFence_ptr - 0x493A10)
493A0C:  ADD             R0, PC; UseDataFence_ptr
493A0E:  LDR             R0, [R0]; UseDataFence
493A10:  LDRB            R4, [R0]
493A12:  CBZ             R4, loc_493A28
493A14:  LDR             R0, =(UseDataFence_ptr - 0x493A1C)
493A16:  MOVS            R1, #(stderr+2); void *
493A18:  ADD             R0, PC; UseDataFence_ptr
493A1A:  LDR             R5, [R0]; UseDataFence
493A1C:  MOVS            R0, #0
493A1E:  STRB            R0, [R5]
493A20:  ADD             R0, SP, #0x20+var_14; this
493A22:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493A26:  STRB            R4, [R5]
493A28:  ADD             R0, SP, #0x20+var_18; this
493A2A:  MOVS            R1, #byte_4; void *
493A2C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493A30:  LDR             R0, [SP,#0x20+var_18]; this
493A32:  ADDS            R1, R0, #1; int
493A34:  BEQ             loc_493A3E
493A36:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493A3A:  MOV             R4, R0
493A3C:  B               loc_493A40
493A3E:  MOVS            R4, #0
493A40:  LDR             R0, =(UseDataFence_ptr - 0x493A46)
493A42:  ADD             R0, PC; UseDataFence_ptr
493A44:  LDR             R0, [R0]; UseDataFence
493A46:  LDRB            R5, [R0]
493A48:  CBZ             R5, loc_493A60
493A4A:  LDR             R0, =(UseDataFence_ptr - 0x493A52)
493A4C:  MOVS            R1, #(stderr+2); void *
493A4E:  ADD             R0, PC; UseDataFence_ptr
493A50:  LDR             R6, [R0]; UseDataFence
493A52:  MOVS            R0, #0
493A54:  STRB            R0, [R6]
493A56:  SUB.W           R0, R7, #-var_12; this
493A5A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493A5E:  STRB            R5, [R6]
493A60:  ADD             R0, SP, #0x20+var_1C; this
493A62:  MOVS            R1, #byte_4; void *
493A64:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493A68:  MOVS            R0, #dword_70; this
493A6A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493A6E:  MOV             R1, R4; CVehicle *
493A70:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
493A72:  MOVS            R3, #0; bool
493A74:  LDR             R5, [SP,#0x20+var_1C]
493A76:  MOVS            R6, #0
493A78:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
493A7C:  LDR             R1, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x493A84)
493A7E:  STR             R5, [R0,#0x60]
493A80:  ADD             R1, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
493A82:  LDR             R1, [R1]; `vtable for'CTaskSimpleCarDriveTimed ...
493A84:  ADDS            R1, #8
493A86:  STR             R1, [R0]
493A88:  STRH.W          R6, [R0,#0x6C]
493A8C:  STRD.W          R6, R6, [R0,#0x64]
493A90:  ADD             SP, SP, #0x10
493A92:  POP.W           {R11}
493A96:  POP             {R4-R7,PC}
