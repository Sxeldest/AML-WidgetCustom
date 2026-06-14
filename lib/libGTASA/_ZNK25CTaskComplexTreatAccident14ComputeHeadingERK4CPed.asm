; =========================================================
; Game Engine Function: _ZNK25CTaskComplexTreatAccident14ComputeHeadingERK4CPed
; Address            : 0x5106E8 - 0x510756
; =========================================================

5106E8:  PUSH            {R4,R5,R7,LR}
5106EA:  ADD             R7, SP, #8
5106EC:  SUB             SP, SP, #0x18; float
5106EE:  MOV             R5, R0
5106F0:  MOV             R4, R1
5106F2:  LDR             R0, [R5,#0xC]
5106F4:  ADD             R1, SP, #0x20+var_14
5106F6:  MOVS            R2, #5
5106F8:  MOVS            R3, #0
5106FA:  LDR             R0, [R0]; this
5106FC:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510700:  LDR             R0, [R5,#0xC]
510702:  MOV             R1, SP
510704:  MOVS            R2, #1
510706:  MOVS            R3, #0
510708:  LDR             R0, [R0]; this
51070A:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
51070E:  VLDR            S0, [SP,#0x20+var_20]
510712:  VMOV.F32        S8, #0.5
510716:  VLDR            S4, [SP,#0x20+var_14]
51071A:  VLDR            S2, [SP,#0x20+var_1C]
51071E:  VLDR            S6, [SP,#0x20+var_10]
510722:  VADD.F32        S0, S4, S0
510726:  LDR             R2, [R4,#0x14]
510728:  VADD.F32        S2, S6, S2
51072C:  ADD.W           R3, R2, #0x30 ; '0'
510730:  CMP             R2, #0
510732:  IT EQ
510734:  ADDEQ           R3, R4, #4
510736:  LDRD.W          R2, R3, [R3]; float
51073A:  VMUL.F32        S0, S0, S8
51073E:  VMUL.F32        S2, S2, S8
510742:  VMOV            R0, S0; this
510746:  VMOV            R1, S2; float
51074A:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
51074E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
510752:  ADD             SP, SP, #0x18
510754:  POP             {R4,R5,R7,PC}
