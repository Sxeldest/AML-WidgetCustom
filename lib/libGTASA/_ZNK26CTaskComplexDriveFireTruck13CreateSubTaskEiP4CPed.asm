; =========================================================
; Game Engine Function: _ZNK26CTaskComplexDriveFireTruck13CreateSubTaskEiP4CPed
; Address            : 0x511900 - 0x5119AA
; =========================================================

511900:  PUSH            {R4,R6,R7,LR}
511902:  ADD             R7, SP, #8
511904:  SUB             SP, SP, #0x10
511906:  MOV             R4, R0
511908:  MOVW            R2, #0x2C5
51190C:  MOVS            R0, #0
51190E:  CMP             R1, R2
511910:  BGT             loc_511932
511912:  CMP             R1, #0x6D ; 'm'
511914:  BEQ             loc_511976
511916:  MOVW            R2, #0x2C5
51191A:  CMP             R1, R2
51191C:  BNE             loc_51198E
51191E:  MOVS            R0, #dword_60; this
511920:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511924:  LDR             R1, [R4,#0xC]; CVehicle *
511926:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
511928:  MOVS            R3, #0; bool
51192A:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
51192E:  ADD             SP, SP, #0x10
511930:  POP             {R4,R6,R7,PC}
511932:  MOVW            R2, #0x2C7
511936:  CMP             R1, R2
511938:  BEQ             loc_511992
51193A:  MOVW            R2, #0x2C6
51193E:  CMP             R1, R2
511940:  BNE             loc_51198E
511942:  MOVS            R0, #off_3C; this
511944:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511948:  LDR             R2, [R4,#0x18]
51194A:  MOV.W           R3, #0xFFFFFFFF
51194E:  LDR             R1, [R4,#0xC]; CVehicle *
511950:  MOVS            R4, #0
511952:  MOVW            LR, #0
511956:  STRD.W          R4, R3, [SP,#0x18+var_18]; int
51195A:  MOVS            R3, #0
51195C:  ADDS            R2, #4; CVector *
51195E:  MOVT            R3, #0x41F0; float
511962:  MOV.W           R12, #2
511966:  MOVT            LR, #0x41C8
51196A:  STRD.W          LR, R12, [SP,#0x18+var_10]; float
51196E:  BLX             j__ZN24CTaskComplexDriveToPointC2EP8CVehicleRK7CVectorfiifi; CTaskComplexDriveToPoint::CTaskComplexDriveToPoint(CVehicle *,CVector const&,float,int,int,float,int)
511972:  ADD             SP, SP, #0x10
511974:  POP             {R4,R6,R7,PC}
511976:  MOVS            R0, #word_10; this
511978:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51197C:  LDR             R4, [R4,#0x18]
51197E:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
511982:  LDR             R1, =(_ZTV26CTaskComplexUseWaterCannon_ptr - 0x51198A)
511984:  STR             R4, [R0,#0xC]
511986:  ADD             R1, PC; _ZTV26CTaskComplexUseWaterCannon_ptr
511988:  LDR             R1, [R1]; `vtable for'CTaskComplexUseWaterCannon ...
51198A:  ADDS            R1, #8; unsigned int
51198C:  STR             R1, [R0]
51198E:  ADD             SP, SP, #0x10
511990:  POP             {R4,R6,R7,PC}
511992:  MOVS            R0, #dword_24; this
511994:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511998:  LDR             R1, [R4,#0xC]; CVehicle *
51199A:  MOVS            R3, #0x41200000; float
5119A0:  MOVS            R2, #0; int
5119A2:  BLX             j__ZN26CTaskComplexCarDriveWanderC2EP8CVehicleif; CTaskComplexCarDriveWander::CTaskComplexCarDriveWander(CVehicle *,int,float)
5119A6:  ADD             SP, SP, #0x10
5119A8:  POP             {R4,R6,R7,PC}
