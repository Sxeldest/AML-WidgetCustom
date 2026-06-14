; =========================================================
; Game Engine Function: _ZN20CTaskComplexLeaveCar10CreateTaskEv
; Address            : 0x493044 - 0x493148
; =========================================================

493044:  PUSH            {R4-R7,LR}
493046:  ADD             R7, SP, #0xC
493048:  PUSH.W          {R11}
49304C:  SUB             SP, SP, #0x20
49304E:  LDR             R0, =(UseDataFence_ptr - 0x493054)
493050:  ADD             R0, PC; UseDataFence_ptr
493052:  LDR             R0, [R0]; UseDataFence
493054:  LDRB            R4, [R0]
493056:  CBZ             R4, loc_49306C
493058:  LDR             R0, =(UseDataFence_ptr - 0x493060)
49305A:  MOVS            R1, #(stderr+2); void *
49305C:  ADD             R0, PC; UseDataFence_ptr
49305E:  LDR             R5, [R0]; UseDataFence
493060:  MOVS            R0, #0
493062:  STRB            R0, [R5]
493064:  ADD             R0, SP, #0x30+var_18; this
493066:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49306A:  STRB            R4, [R5]
49306C:  ADD             R0, SP, #0x30+var_18; this
49306E:  MOVS            R1, #byte_4; void *
493070:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493074:  LDR             R0, [SP,#0x30+var_18]; this
493076:  ADDS            R1, R0, #1; int
493078:  BEQ             loc_493082
49307A:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
49307E:  MOV             R4, R0
493080:  B               loc_493084
493082:  MOVS            R4, #0
493084:  LDR             R0, =(UseDataFence_ptr - 0x49308A)
493086:  ADD             R0, PC; UseDataFence_ptr
493088:  LDR             R0, [R0]; UseDataFence
49308A:  LDRB            R5, [R0]
49308C:  CBZ             R5, loc_4930A2
49308E:  LDR             R0, =(UseDataFence_ptr - 0x493096)
493090:  MOVS            R1, #(stderr+2); void *
493092:  ADD             R0, PC; UseDataFence_ptr
493094:  LDR             R6, [R0]; UseDataFence
493096:  MOVS            R0, #0
493098:  STRB            R0, [R6]
49309A:  ADD             R0, SP, #0x30+var_1C; this
49309C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4930A0:  STRB            R5, [R6]
4930A2:  ADD             R0, SP, #0x30+var_1C; this
4930A4:  MOVS            R1, #byte_4; void *
4930A6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4930AA:  LDR             R0, =(UseDataFence_ptr - 0x4930B0)
4930AC:  ADD             R0, PC; UseDataFence_ptr
4930AE:  LDR             R0, [R0]; UseDataFence
4930B0:  LDRB            R5, [R0]
4930B2:  CBZ             R5, loc_4930C8
4930B4:  LDR             R0, =(UseDataFence_ptr - 0x4930BC)
4930B6:  MOVS            R1, #(stderr+2); void *
4930B8:  ADD             R0, PC; UseDataFence_ptr
4930BA:  LDR             R6, [R0]; UseDataFence
4930BC:  MOVS            R0, #0
4930BE:  STRB            R0, [R6]
4930C0:  ADD             R0, SP, #0x30+var_20; this
4930C2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4930C6:  STRB            R5, [R6]
4930C8:  ADD             R0, SP, #0x30+var_20; this
4930CA:  MOVS            R1, #byte_4; void *
4930CC:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4930D0:  LDR             R0, =(UseDataFence_ptr - 0x4930D6)
4930D2:  ADD             R0, PC; UseDataFence_ptr
4930D4:  LDR             R0, [R0]; UseDataFence
4930D6:  LDRB            R5, [R0]
4930D8:  CBZ             R5, loc_4930F0
4930DA:  LDR             R0, =(UseDataFence_ptr - 0x4930E2)
4930DC:  MOVS            R1, #(stderr+2); void *
4930DE:  ADD             R0, PC; UseDataFence_ptr
4930E0:  LDR             R6, [R0]; UseDataFence
4930E2:  MOVS            R0, #0
4930E4:  STRB            R0, [R6]
4930E6:  SUB.W           R0, R7, #-var_12; this
4930EA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4930EE:  STRB            R5, [R6]
4930F0:  SUB.W           R0, R7, #-var_21; this
4930F4:  MOVS            R1, #(stderr+1); void *
4930F6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4930FA:  LDR             R0, =(UseDataFence_ptr - 0x493100)
4930FC:  ADD             R0, PC; UseDataFence_ptr
4930FE:  LDR             R0, [R0]; UseDataFence
493100:  LDRB            R5, [R0]
493102:  CBZ             R5, loc_49311A
493104:  LDR             R0, =(UseDataFence_ptr - 0x49310C)
493106:  MOVS            R1, #(stderr+2); void *
493108:  ADD             R0, PC; UseDataFence_ptr
49310A:  LDR             R6, [R0]; UseDataFence
49310C:  MOVS            R0, #0
49310E:  STRB            R0, [R6]
493110:  SUB.W           R0, R7, #-var_12; this
493114:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493118:  STRB            R5, [R6]
49311A:  SUB.W           R0, R7, #-var_12; this
49311E:  MOVS            R1, #(stderr+1); void *
493120:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493124:  MOVS            R0, #dword_34; this
493126:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49312A:  LDRD.W          R3, R2, [SP,#0x30+var_20]; int
49312E:  LDRB.W          R6, [R7,#var_12]
493132:  LDRB.W          R1, [R7,#var_21]
493136:  STRD.W          R1, R6, [SP,#0x30+var_30]; bool
49313A:  MOV             R1, R4; CVehicle *
49313C:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
493140:  ADD             SP, SP, #0x20 ; ' '
493142:  POP.W           {R11}
493146:  POP             {R4-R7,PC}
