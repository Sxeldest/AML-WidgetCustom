; =========================================================
; Game Engine Function: _ZN20CTaskComplexEnterCar15SetVehicleFlagsEP4CPed
; Address            : 0x4F64C2 - 0x4F6520
; =========================================================

4F64C2:  PUSH            {R4-R7,LR}
4F64C4:  ADD             R7, SP, #0xC
4F64C6:  PUSH.W          {R11}
4F64CA:  MOV             R4, R0
4F64CC:  MOVS            R2, #1; int
4F64CE:  LDR             R0, [R4,#0xC]; this
4F64D0:  MOVS            R6, #1
4F64D2:  LDR             R1, [R4,#0x14]; CVehicle *
4F64D4:  BLX             j__ZN13CCarEnterExit15ComputeDoorFlagERK8CVehicleib; CCarEnterExit::ComputeDoorFlag(CVehicle const&,int,bool)
4F64D8:  MOV             R5, R0
4F64DA:  LDR             R0, [R4,#0xC]; this
4F64DC:  UXTB            R1, R5; unsigned __int8
4F64DE:  BLX             j__ZN8CVehicle17SetGettingInFlagsEh; CVehicle::SetGettingInFlags(uchar)
4F64E2:  LDR             R0, [R4,#0xC]
4F64E4:  STRB.W          R6, [R4,#0x28]
4F64E8:  STRB.W          R5, [R4,#0x44]
4F64EC:  LDRB.W          R1, [R0,#0x489]
4F64F0:  ADDS            R1, #1
4F64F2:  STRB.W          R1, [R0,#0x489]
4F64F6:  LDR             R1, [R4,#0x18]; CVehicle *
4F64F8:  CBZ             R1, loc_4F651A
4F64FA:  LDR             R0, [R4,#0xC]; this
4F64FC:  MOVS            R2, #1; int
4F64FE:  BLX             j__ZN13CCarEnterExit15ComputeDoorFlagERK8CVehicleib; CCarEnterExit::ComputeDoorFlag(CVehicle const&,int,bool)
4F6502:  MOV             R6, R0
4F6504:  UXTB            R1, R6; unsigned __int8
4F6506:  CMP             R1, R5
4F6508:  BEQ             loc_4F651A
4F650A:  LDR             R0, [R4,#0xC]; this
4F650C:  BLX             j__ZN8CVehicle17SetGettingInFlagsEh; CVehicle::SetGettingInFlags(uchar)
4F6510:  LDRB.W          R0, [R4,#0x44]
4F6514:  ORRS            R0, R6
4F6516:  STRB.W          R0, [R4,#0x44]
4F651A:  POP.W           {R11}
4F651E:  POP             {R4-R7,PC}
