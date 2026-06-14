; =========================================================
; Game Engine Function: _ZN26CTaskComplexLeaveCarAndDie10CreateTaskEv
; Address            : 0x493170 - 0x493228
; =========================================================

493170:  PUSH            {R4-R7,LR}
493172:  ADD             R7, SP, #0xC
493174:  PUSH.W          {R11}
493178:  SUB             SP, SP, #0x18
49317A:  LDR             R0, =(UseDataFence_ptr - 0x493180)
49317C:  ADD             R0, PC; UseDataFence_ptr
49317E:  LDR             R0, [R0]; UseDataFence
493180:  LDRB            R4, [R0]
493182:  CBZ             R4, loc_493198
493184:  LDR             R0, =(UseDataFence_ptr - 0x49318C)
493186:  MOVS            R1, #(stderr+2); void *
493188:  ADD             R0, PC; UseDataFence_ptr
49318A:  LDR             R5, [R0]; UseDataFence
49318C:  MOVS            R0, #0
49318E:  STRB            R0, [R5]
493190:  ADD             R0, SP, #0x28+var_14; this
493192:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493196:  STRB            R4, [R5]
493198:  ADD             R0, SP, #0x28+var_14; this
49319A:  MOVS            R1, #byte_4; void *
49319C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4931A0:  LDR             R0, [SP,#0x28+var_14]; this
4931A2:  ADDS            R1, R0, #1; int
4931A4:  BEQ             loc_4931AE
4931A6:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
4931AA:  MOV             R4, R0
4931AC:  B               loc_4931B0
4931AE:  MOVS            R4, #0
4931B0:  LDR             R0, =(UseDataFence_ptr - 0x4931B6)
4931B2:  ADD             R0, PC; UseDataFence_ptr
4931B4:  LDR             R0, [R0]; UseDataFence
4931B6:  LDRB            R5, [R0]
4931B8:  CBZ             R5, loc_4931CE
4931BA:  LDR             R0, =(UseDataFence_ptr - 0x4931C2)
4931BC:  MOVS            R1, #(stderr+2); void *
4931BE:  ADD             R0, PC; UseDataFence_ptr
4931C0:  LDR             R6, [R0]; UseDataFence
4931C2:  MOVS            R0, #0
4931C4:  STRB            R0, [R6]
4931C6:  ADD             R0, SP, #0x28+var_18; this
4931C8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4931CC:  STRB            R5, [R6]
4931CE:  ADD             R0, SP, #0x28+var_18; this
4931D0:  MOVS            R1, #byte_4; void *
4931D2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4931D6:  LDR             R0, =(UseDataFence_ptr - 0x4931DC)
4931D8:  ADD             R0, PC; UseDataFence_ptr
4931DA:  LDR             R0, [R0]; UseDataFence
4931DC:  LDRB            R5, [R0]
4931DE:  CBZ             R5, loc_4931F4
4931E0:  LDR             R0, =(UseDataFence_ptr - 0x4931E8)
4931E2:  MOVS            R1, #(stderr+2); void *
4931E4:  ADD             R0, PC; UseDataFence_ptr
4931E6:  LDR             R6, [R0]; UseDataFence
4931E8:  MOVS            R0, #0
4931EA:  STRB            R0, [R6]
4931EC:  ADD             R0, SP, #0x28+var_1C; this
4931EE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4931F2:  STRB            R5, [R6]
4931F4:  ADD             R0, SP, #0x28+var_1C; this
4931F6:  MOVS            R1, #byte_4; void *
4931F8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4931FC:  MOVS            R0, #dword_34; this
4931FE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493202:  LDRD.W          R3, R2, [SP,#0x28+var_1C]; int
493206:  MOVS            R5, #1
493208:  MOVS            R1, #0
49320A:  STRD.W          R1, R5, [SP,#0x28+var_28]; bool
49320E:  MOV             R1, R4; CVehicle *
493210:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
493214:  LDR             R1, =(_ZTV26CTaskComplexLeaveCarAndDie_ptr - 0x49321C)
493216:  STRB            R5, [R0,#0x1A]
493218:  ADD             R1, PC; _ZTV26CTaskComplexLeaveCarAndDie_ptr
49321A:  LDR             R1, [R1]; `vtable for'CTaskComplexLeaveCarAndDie ...
49321C:  ADDS            R1, #8
49321E:  STR             R1, [R0]
493220:  ADD             SP, SP, #0x18
493222:  POP.W           {R11}
493226:  POP             {R4-R7,PC}
