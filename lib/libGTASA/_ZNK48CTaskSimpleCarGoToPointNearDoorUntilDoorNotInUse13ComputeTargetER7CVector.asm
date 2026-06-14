; =========================================================
; Game Engine Function: _ZNK48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse13ComputeTargetER7CVector
; Address            : 0x502634 - 0x5026A6
; =========================================================

502634:  PUSH            {R4,R5,R7,LR}
502636:  ADD             R7, SP, #8
502638:  SUB             SP, SP, #0x10
50263A:  MOV             R5, R0
50263C:  MOV             R4, R1
50263E:  LDR             R0, [R5,#0xC]
502640:  LDRD.W          R1, R2, [R0,#8]; int
502644:  ADD             R0, SP, #0x18+var_14; this
502646:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
50264A:  LDR             R0, [R5,#0xC]
50264C:  VLDR            S0, [SP,#0x18+var_14]
502650:  VLDR            S2, [SP,#0x18+var_10]
502654:  LDR             R0, [R0,#8]
502656:  VLDR            S4, [SP,#0x18+var_C]
50265A:  LDR             R1, [R0,#0x14]
50265C:  ADD.W           R2, R1, #0x30 ; '0'
502660:  CMP             R1, #0
502662:  IT EQ
502664:  ADDEQ           R2, R0, #4
502666:  VLDR            S6, [R2]
50266A:  VLDR            S8, [R2,#4]
50266E:  VLDR            S10, [R2,#8]
502672:  VSUB.F32        S0, S0, S6
502676:  VSUB.F32        S2, S2, S8
50267A:  VSUB.F32        S4, S4, S10
50267E:  VADD.F32        S0, S0, S0
502682:  VADD.F32        S2, S2, S2
502686:  VADD.F32        S4, S4, S4
50268A:  VADD.F32        S0, S6, S0
50268E:  VADD.F32        S2, S8, S2
502692:  VADD.F32        S4, S10, S4
502696:  VSTR            S0, [R4]
50269A:  VSTR            S2, [R4,#4]
50269E:  VSTR            S4, [R4,#8]
5026A2:  ADD             SP, SP, #0x10
5026A4:  POP             {R4,R5,R7,PC}
