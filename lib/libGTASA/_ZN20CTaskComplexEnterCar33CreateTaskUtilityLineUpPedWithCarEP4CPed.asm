; =========================================================
; Game Engine Function: _ZN20CTaskComplexEnterCar33CreateTaskUtilityLineUpPedWithCarEP4CPed
; Address            : 0x4F65AE - 0x4F661C
; =========================================================

4F65AE:  PUSH            {R4,R5,R7,LR}
4F65B0:  ADD             R7, SP, #8
4F65B2:  SUB             SP, SP, #0x20
4F65B4:  MOV             R4, R0
4F65B6:  MOV             R5, R1
4F65B8:  LDR             R1, [R4,#0xC]; CVehicle *
4F65BA:  ADD             R0, SP, #0x28+var_20; this
4F65BC:  LDR             R2, [R4,#0x14]; int
4F65BE:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
4F65C2:  LDR             R0, [R5,#0x14]
4F65C4:  VLDR            S0, [SP,#0x28+var_20]
4F65C8:  ADD.W           R1, R0, #0x30 ; '0'
4F65CC:  CMP             R0, #0
4F65CE:  VLDR            S2, [SP,#0x28+var_1C]
4F65D2:  MOV.W           R0, #0x1C; unsigned int
4F65D6:  VLDR            S4, [SP,#0x28+var_18]
4F65DA:  IT EQ
4F65DC:  ADDEQ           R1, R5, #4
4F65DE:  VLDR            S6, [R1]
4F65E2:  VLDR            S8, [R1,#4]
4F65E6:  VSUB.F32        S0, S0, S6
4F65EA:  VLDR            S10, [R1,#8]
4F65EE:  VSTR            S0, [SP,#0x28+var_14]
4F65F2:  VSUB.F32        S0, S2, S8
4F65F6:  VSTR            S0, [SP,#0x28+var_10]
4F65FA:  VSUB.F32        S0, S4, S10
4F65FE:  VSTR            S0, [SP,#0x28+var_C]
4F6602:  BLX             _Znwj; operator new(uint)
4F6606:  LDR             R1, [R4,#0x14]
4F6608:  MOV.W           R2, #0x258; int
4F660C:  STR             R1, [SP,#0x28+var_28]; int
4F660E:  ADD             R1, SP, #0x28+var_14; CVector *
4F6610:  MOVS            R3, #0; int
4F6612:  BLX             j__ZN28CTaskUtilityLineUpPedWithCarC2ERK7CVectoriii; CTaskUtilityLineUpPedWithCar::CTaskUtilityLineUpPedWithCar(CVector const&,int,int,int)
4F6616:  STR             R0, [R4,#0x38]
4F6618:  ADD             SP, SP, #0x20 ; ' '
4F661A:  POP             {R4,R5,R7,PC}
