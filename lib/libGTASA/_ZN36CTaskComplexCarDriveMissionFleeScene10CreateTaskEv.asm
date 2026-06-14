; =========================================================
; Game Engine Function: _ZN36CTaskComplexCarDriveMissionFleeScene10CreateTaskEv
; Address            : 0x493F70 - 0x493FD8
; =========================================================

493F70:  PUSH            {R4,R5,R7,LR}
493F72:  ADD             R7, SP, #8
493F74:  SUB             SP, SP, #0x10
493F76:  LDR             R0, =(UseDataFence_ptr - 0x493F7C)
493F78:  ADD             R0, PC; UseDataFence_ptr
493F7A:  LDR             R0, [R0]; UseDataFence
493F7C:  LDRB            R4, [R0]
493F7E:  CBZ             R4, loc_493F96
493F80:  LDR             R0, =(UseDataFence_ptr - 0x493F88)
493F82:  MOVS            R1, #(stderr+2); void *
493F84:  ADD             R0, PC; UseDataFence_ptr
493F86:  LDR             R5, [R0]; UseDataFence
493F88:  MOVS            R0, #0
493F8A:  STRB            R0, [R5]
493F8C:  SUB.W           R0, R7, #-var_A; this
493F90:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493F94:  STRB            R4, [R5]
493F96:  ADD             R0, SP, #0x18+var_10; this
493F98:  MOVS            R1, #byte_4; void *
493F9A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
493F9E:  LDR             R0, [SP,#0x18+var_10]; this
493FA0:  ADDS            R1, R0, #1; unsigned int
493FA2:  BEQ             loc_493FAC
493FA4:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
493FA8:  MOV             R4, R0
493FAA:  B               loc_493FAE
493FAC:  MOVS            R4, #0
493FAE:  MOVS            R0, #word_2C; this
493FB0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
493FB4:  MOVS            R1, #0
493FB6:  MOVS            R2, #2
493FB8:  MOVT            R1, #0x4220
493FBC:  MOVS            R3, #1; int
493FBE:  STRD.W          R2, R1, [SP,#0x18+var_18]; int
493FC2:  MOV             R1, R4; CVehicle *
493FC4:  MOVS            R2, #0; CEntity *
493FC6:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
493FCA:  LDR             R1, =(_ZTV36CTaskComplexCarDriveMissionFleeScene_ptr - 0x493FD0)
493FCC:  ADD             R1, PC; _ZTV36CTaskComplexCarDriveMissionFleeScene_ptr
493FCE:  LDR             R1, [R1]; `vtable for'CTaskComplexCarDriveMissionFleeScene ...
493FD0:  ADDS            R1, #8
493FD2:  STR             R1, [R0]
493FD4:  ADD             SP, SP, #0x10
493FD6:  POP             {R4,R5,R7,PC}
