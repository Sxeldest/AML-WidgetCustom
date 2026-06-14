; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeats18CreateFirstSubTaskEP4CPed
; Address            : 0x4FCDA0 - 0x4FCDDC
; =========================================================

4FCDA0:  PUSH            {R4,R5,R7,LR}
4FCDA2:  ADD             R7, SP, #8
4FCDA4:  MOV             R4, R0
4FCDA6:  MOV             R5, R1
4FCDA8:  LDR             R0, [R4,#0xC]; this
4FCDAA:  CBZ             R0, loc_4FCDD8
4FCDAC:  BLX             j__ZN13CCarEnterExit16IsVehicleHealthyERK8CVehicle; CCarEnterExit::IsVehicleHealthy(CVehicle const&)
4FCDB0:  CMP             R0, #1
4FCDB2:  BNE             loc_4FCDD8
4FCDB4:  MOV             R0, R5; this
4FCDB6:  BLX             j__ZN13CCarEnterExit12IsPedHealthyERK4CPed; CCarEnterExit::IsPedHealthy(CPed const&)
4FCDBA:  CMP             R0, #1
4FCDBC:  BNE             loc_4FCDD8
4FCDBE:  MOV             R0, R4; this
4FCDC0:  MOV             R1, R5; CPed *
4FCDC2:  BLX             j__ZN24CTaskComplexShuffleSeats33CreateTaskUtilityLineUpPedWithCarEP4CPed; CTaskComplexShuffleSeats::CreateTaskUtilityLineUpPedWithCar(CPed *)
4FCDC6:  MOVS            R0, #dword_1C; this
4FCDC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCDCC:  LDRD.W          R1, R2, [R4,#0xC]; int
4FCDD0:  LDR             R3, [R4,#0x24]; CTaskUtilityLineUpPedWithCar *
4FCDD2:  BLX             j__ZN21CTaskSimpleCarShuffleC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarShuffle::CTaskSimpleCarShuffle(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4FCDD6:  POP             {R4,R5,R7,PC}
4FCDD8:  MOVS            R0, #0
4FCDDA:  POP             {R4,R5,R7,PC}
