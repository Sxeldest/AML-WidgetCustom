; =========================================================
; Game Engine Function: _ZN24CTaskComplexShuffleSeats13CreateSubTaskEiP4CPed
; Address            : 0x4FCBE4 - 0x4FCCA0
; =========================================================

4FCBE4:  PUSH            {R4,R5,R7,LR}
4FCBE6:  ADD             R7, SP, #8
4FCBE8:  MOV             R5, R2
4FCBEA:  SUB.W           R2, R1, #0x328; switch 9 cases
4FCBEE:  MOV             R4, R0
4FCBF0:  MOVS            R0, #0
4FCBF2:  CMP             R2, #8
4FCBF4:  BHI             def_4FCBF6; jumptable 004FCBF6 default case
4FCBF6:  TBB.W           [PC,R2]; switch jump
4FCBFA:  DCB 5; jump table for switch statement
4FCBFB:  DCB 0x44
4FCBFC:  DCB 0x44
4FCBFD:  DCB 0x20
4FCBFE:  DCB 0x29; unsigned int
4FCBFF:  DCB 0x44
4FCC00:  DCB 0x44
4FCC01:  DCB 0x44
4FCC02:  DCB 0x35
4FCC03:  ALIGN 2
4FCC04:  MOVS            R0, #dword_1C; jumptable 004FCBF6 case 808
4FCC06:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCC0A:  LDRD.W          R1, R2, [R4,#0xC]; int
4FCC0E:  LDR             R3, [R4,#0x24]; CTaskUtilityLineUpPedWithCar *
4FCC10:  BLX             j__ZN21CTaskSimpleCarShuffleC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarShuffle::CTaskSimpleCarShuffle(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4FCC14:  POP             {R4,R5,R7,PC}
4FCC16:  MOVW            R2, #0x516; jumptable 004FCBF6 default case
4FCC1A:  CMP             R1, R2
4FCC1C:  IT NE
4FCC1E:  POPNE           {R4,R5,R7,PC}
4FCC20:  CBZ             R5, loc_4FCC84
4FCC22:  LDRB.W          R0, [R5,#0x485]
4FCC26:  LSLS            R0, R0, #0x1F
4FCC28:  ITT NE
4FCC2A:  MOVNE           R0, #0
4FCC2C:  POPNE           {R4,R5,R7,PC}
4FCC2E:  LDR             R0, [R5,#0x1C]
4FCC30:  ORR.W           R0, R0, #1
4FCC34:  STR             R0, [R5,#0x1C]
4FCC36:  MOVS            R0, #0
4FCC38:  POP             {R4,R5,R7,PC}
4FCC3A:  LDR             R0, [R4,#0xC]; jumptable 004FCBF6 case 811
4FCC3C:  LDR.W           R1, [R0,#0x464]
4FCC40:  CMP             R1, R5
4FCC42:  BEQ             loc_4FCC88
4FCC44:  MOV             R1, R5; CPed *
4FCC46:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
4FCC4A:  B               loc_4FCC8E
4FCC4C:  LDR             R0, [R4,#0xC]; jumptable 004FCBF6 case 812
4FCC4E:  MOV             R1, R5; CPed *
4FCC50:  BLX             j__ZN8CVehicle15RemovePassengerEP4CPed; CVehicle::RemovePassenger(CPed *)
4FCC54:  MOVS            R0, #dword_1C; this
4FCC56:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCC5A:  LDR             R1, [R4,#0xC]; CVehicle *
4FCC5C:  LDR             R2, [R4,#0x24]; CTaskUtilityLineUpPedWithCar *
4FCC5E:  BLX             j__ZN30CTaskSimpleCarSetPedInAsDriverC2EP8CVehicleP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsDriver::CTaskSimpleCarSetPedInAsDriver(CVehicle *,CTaskUtilityLineUpPedWithCar *)
4FCC62:  POP             {R4,R5,R7,PC}
4FCC64:  LDR.W           R0, [R5,#0x590]; jumptable 004FCBF6 case 816
4FCC68:  MOV             R1, R5; CVehicle *
4FCC6A:  BLX             j__ZN13CCarEnterExit23ComputeTargetDoorToExitERK8CVehicleRK4CPed; CCarEnterExit::ComputeTargetDoorToExit(CVehicle const&,CPed const&)
4FCC6E:  MOV             R4, R0
4FCC70:  MOVS            R0, #off_18; this
4FCC72:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCC76:  LDR.W           R1, [R5,#0x590]; CVehicle *
4FCC7A:  MOV             R2, R4; int
4FCC7C:  MOVS            R3, #1; bool
4FCC7E:  BLX             j__ZN23CTaskSimpleCarSetPedOutC2EP8CVehicleib; CTaskSimpleCarSetPedOut::CTaskSimpleCarSetPedOut(CVehicle *,int,bool)
4FCC82:  POP             {R4,R5,R7,PC}; jumptable 004FCBF6 cases 809,810,813-815
4FCC84:  MOVS            R0, #0
4FCC86:  POP             {R4,R5,R7,PC}
4FCC88:  MOVS            R1, #1; bool
4FCC8A:  BLX             j__ZN8CVehicle12RemoveDriverEb; CVehicle::RemoveDriver(bool)
4FCC8E:  MOVS            R0, #dword_20; this
4FCC90:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FCC94:  LDR             R1, [R4,#0xC]; CVehicle *
4FCC96:  LDR             R2, [R4,#0x14]; int
4FCC98:  LDR             R3, [R4,#0x24]; CTaskUtilityLineUpPedWithCar *
4FCC9A:  BLX             j__ZN33CTaskSimpleCarSetPedInAsPassengerC2EP8CVehicleiP28CTaskUtilityLineUpPedWithCar; CTaskSimpleCarSetPedInAsPassenger::CTaskSimpleCarSetPedInAsPassenger(CVehicle *,int,CTaskUtilityLineUpPedWithCar *)
4FCC9E:  POP             {R4,R5,R7,PC}
