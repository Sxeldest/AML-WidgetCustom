; =========================================================
; Game Engine Function: _ZN21CTaskInteriorGoToInfo17CreateNextSubTaskEP4CPed
; Address            : 0x52951C - 0x52960C
; =========================================================

52951C:  PUSH            {R4,R5,R7,LR}
52951E:  ADD             R7, SP, #8
529520:  SUB             SP, SP, #0x28; float
529522:  MOV             R4, R0
529524:  MOV             R5, R1
529526:  LDR             R0, [R4,#0xC]
529528:  CMP             R0, #0
52952A:  BEQ             loc_5295D4
52952C:  LDR             R0, [R4,#8]
52952E:  LDR             R1, [R0]
529530:  LDR             R1, [R1,#0x14]
529532:  BLX             R1
529534:  MOVW            R1, #0x38A
529538:  CMP             R0, R1
52953A:  BEQ             loc_52954A
52953C:  LDR             R0, [R4,#8]
52953E:  LDR             R1, [R0]
529540:  LDR             R1, [R1,#0x14]
529542:  BLX             R1
529544:  CMP.W           R0, #0x384
529548:  BNE             loc_5295D4
52954A:  LDR             R0, [R5,#0x14]
52954C:  LDR             R1, [R4,#0xC]; unsigned int
52954E:  ADD.W           R2, R0, #0x30 ; '0'
529552:  CMP             R0, #0
529554:  VLDR            S2, =0.0
529558:  VLDR            D16, [R1,#4]
52955C:  IT EQ
52955E:  ADDEQ           R2, R5, #4
529560:  VLDR            D17, [R2]
529564:  VSUB.F32        D16, D17, D16
529568:  VMUL.F32        D0, D16, D16
52956C:  VADD.F32        S0, S0, S1
529570:  VADD.F32        S0, S0, S2
529574:  VLDR            S2, =0.04
529578:  VCMPE.F32       S0, S2
52957C:  VMRS            APSR_nzcv, FPSCR
529580:  BLE             loc_5295DA
529582:  MOVS            R0, #dword_60; this
529584:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529588:  LDR             R2, =(_ZN27CTaskComplexFollowNodeRoute35ms_fFollowNodeThresholdHeightChangeE_ptr - 0x529590)
52958A:  LDR             R1, =(_ZN27CTaskComplexFollowNodeRoute20ms_fSlowDownDistanceE_ptr - 0x529594)
52958C:  ADD             R2, PC; _ZN27CTaskComplexFollowNodeRoute35ms_fFollowNodeThresholdHeightChangeE_ptr
52958E:  LDR             R3, [R4,#0xC]
529590:  ADD             R1, PC; _ZN27CTaskComplexFollowNodeRoute20ms_fSlowDownDistanceE_ptr
529592:  LDR             R2, [R2]; CTaskComplexFollowNodeRoute::ms_fFollowNodeThresholdHeightChange ...
529594:  LDR             R1, [R1]; CTaskComplexFollowNodeRoute::ms_fSlowDownDistance ...
529596:  VLDR            D16, [R3,#4]
52959A:  LDR             R5, [R3,#0xC]
52959C:  MOVS            R3, #0
52959E:  VLDR            S2, [R2]
5295A2:  MOV.W           R2, #0xFFFFFFFF
5295A6:  VLDR            S0, [R1]
5295AA:  MOVS            R1, #1
5295AC:  STR             R5, [SP,#0x30+var_10]
5295AE:  VSTR            D16, [SP,#0x30+var_18]
5295B2:  STRD.W          R3, R2, [SP,#0x30+var_28]; bool
5295B6:  MOVW            R3, #0xCCCD
5295BA:  ADD             R2, SP, #0x30+var_18; CVector *
5295BC:  STR             R1, [SP,#0x30+var_20]; bool
5295BE:  MOVT            R3, #0x3E4C; float
5295C2:  MOVS            R1, #4; int
5295C4:  VSTR            S0, [SP,#0x30+var_30]
5295C8:  VSTR            S2, [SP,#0x30+var_2C]
5295CC:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
5295D0:  ADD             SP, SP, #0x28 ; '('
5295D2:  POP             {R4,R5,R7,PC}
5295D4:  MOVS            R0, #0
5295D6:  ADD             SP, SP, #0x28 ; '('
5295D8:  POP             {R4,R5,R7,PC}; float
5295DA:  LDRD.W          R0, R1, [R1,#0x10]; float
5295DE:  MOVS            R2, #0; float
5295E0:  MOVS            R3, #0; float
5295E2:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5295E6:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5295EA:  MOV             R4, R0
5295EC:  MOVS            R0, #off_18; this
5295EE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5295F2:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x5295FA)
5295F4:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x5295FC)
5295F6:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
5295F8:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
5295FA:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
5295FC:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
5295FE:  LDR             R2, [R1]; float
529600:  MOV             R1, R4; float
529602:  LDR             R3, [R3]; float
529604:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
529608:  ADD             SP, SP, #0x28 ; '('
52960A:  POP             {R4,R5,R7,PC}
