; =========================================================
; Game Engine Function: _ZN21CTaskInteriorGoToInfo18CreateFirstSubTaskEP4CPed
; Address            : 0x529624 - 0x52978A
; =========================================================

529624:  PUSH            {R4,R5,R7,LR}
529626:  ADD             R7, SP, #8
529628:  SUB             SP, SP, #0x28; float
52962A:  MOV             R5, R0
52962C:  MOV             R4, R1
52962E:  LDR             R0, [R5,#0xC]
529630:  CMP             R0, #0
529632:  BEQ.W           loc_529756
529636:  LDRB            R1, [R5,#0x14]
529638:  CBZ             R1, loc_52965C
52963A:  LDR             R5, [R4,#0x14]
52963C:  VLDR            S0, [R0,#0x10]
529640:  VLDR            S2, [R0,#0x14]
529644:  CMP             R5, #0
529646:  LDRD.W          R3, R1, [R0,#4]
52964A:  LDR             R2, [R0,#0xC]
52964C:  BEQ             loc_52971A
52964E:  STR             R3, [R5,#0x30]
529650:  LDR             R0, [R4,#0x14]
529652:  STR             R1, [R0,#0x34]
529654:  LDR             R0, [R4,#0x14]
529656:  ADD.W           R3, R0, #0x38 ; '8'
52965A:  B               loc_529722
52965C:  LDR             R0, =(g_interiorMan_ptr - 0x529664)
52965E:  MOV             R1, R4; CPed *
529660:  ADD             R0, PC; g_interiorMan_ptr
529662:  LDR             R0, [R0]; g_interiorMan ; this
529664:  BLX             j__ZN17InteriorManager_c15GetPedsInteriorEP4CPed; InteriorManager_c::GetPedsInterior(CPed *)
529668:  MOV             R4, R0
52966A:  LDR             R0, [R5,#0x10]
52966C:  CMP             R4, R0
52966E:  BEQ             loc_52975C
529670:  LDR             R1, =(ThePaths_ptr - 0x52967E)
529672:  VMOV.F32        S0, #0.125
529676:  LDR.W           R0, [R0,#0x3F0]
52967A:  ADD             R1, PC; ThePaths_ptr
52967C:  LDR             R1, [R1]; ThePaths
52967E:  UXTH            R2, R0
529680:  ADD.W           R1, R1, R2,LSL#2
529684:  LSRS            R2, R0, #0x10
529686:  LSLS            R2, R2, #3
529688:  SUB.W           R0, R2, R0,LSR#16
52968C:  LDR.W           R1, [R1,#0x804]
529690:  ADD.W           R0, R1, R0,LSL#2
529694:  LDRSH.W         R1, [R0,#8]
529698:  LDRSH.W         R2, [R0,#0xA]
52969C:  LDRSH.W         R0, [R0,#0xC]
5296A0:  VMOV            S4, R1; unsigned int
5296A4:  VMOV            S2, R2
5296A8:  VMOV            S6, R0
5296AC:  MOVS            R0, #dword_60; this
5296AE:  VCVT.F32.S32    S2, S2
5296B2:  VCVT.F32.S32    S4, S4
5296B6:  VCVT.F32.S32    S6, S6
5296BA:  VMUL.F32        S2, S2, S0
5296BE:  VMUL.F32        S4, S4, S0
5296C2:  VMUL.F32        S0, S6, S0
5296C6:  VSTR            S2, [SP,#0x30+var_18+4]
5296CA:  VSTR            S4, [SP,#0x30+var_18]
5296CE:  VSTR            S0, [SP,#0x30+var_10]
5296D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5296D6:  LDR             R1, =(_ZN27CTaskComplexFollowNodeRoute20ms_fSlowDownDistanceE_ptr - 0x5296E0)
5296D8:  MOVS            R3, #1
5296DA:  LDR             R2, =(_ZN27CTaskComplexFollowNodeRoute35ms_fFollowNodeThresholdHeightChangeE_ptr - 0x5296E2)
5296DC:  ADD             R1, PC; _ZN27CTaskComplexFollowNodeRoute20ms_fSlowDownDistanceE_ptr
5296DE:  ADD             R2, PC; _ZN27CTaskComplexFollowNodeRoute35ms_fFollowNodeThresholdHeightChangeE_ptr
5296E0:  LDR             R1, [R1]; CTaskComplexFollowNodeRoute::ms_fSlowDownDistance ...
5296E2:  LDR             R2, [R2]; CTaskComplexFollowNodeRoute::ms_fFollowNodeThresholdHeightChange ...
5296E4:  VLDR            S0, [R1]
5296E8:  MOV.W           R1, #0xFFFFFFFF
5296EC:  VLDR            S2, [R2]
5296F0:  MOVS            R2, #0
5296F2:  STRD.W          R2, R1, [SP,#0x30+var_28]; bool
5296F6:  ADD             R2, SP, #0x30+var_18; CVector *
5296F8:  STR             R3, [SP,#0x30+var_20]; bool
5296FA:  MOV             R3, #0x3E4CCCCD; float
529702:  MOVS            R1, #4; int
529704:  VSTR            S0, [SP,#0x30+var_30]
529708:  VSTR            S2, [SP,#0x30+var_2C]
52970C:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
529710:  LDR.W           R1, [R4,#0x3F0]
529714:  STR             R1, [R0,#0x28]
529716:  ADD             SP, SP, #0x28 ; '('
529718:  POP             {R4,R5,R7,PC}; float
52971A:  STRD.W          R3, R1, [R4,#4]
52971E:  ADD.W           R3, R4, #0xC
529722:  VMOV            R0, S0; this
529726:  STR             R2, [R3]
529728:  VMOV            R1, S2; float
52972C:  MOVS            R2, #0; float
52972E:  MOVS            R3, #0; float
529730:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
529734:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
529738:  MOV             R1, R0
52973A:  LDR             R0, [R4,#0x14]; this
52973C:  VMOV            S0, R1; x
529740:  STR.W           R1, [R4,#0x55C]
529744:  CMP             R0, #0
529746:  STR.W           R1, [R4,#0x560]
52974A:  BEQ             loc_529752
52974C:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
529750:  B               loc_529756
529752:  VSTR            S0, [R4,#0x10]
529756:  MOVS            R0, #0
529758:  ADD             SP, SP, #0x28 ; '('
52975A:  POP             {R4,R5,R7,PC}
52975C:  MOVS            R0, #word_2C; this
52975E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
529762:  LDR             R1, [R5,#0xC]
529764:  MOVW            R3, #0xCCCD
529768:  ADD             R2, SP, #0x30+var_18; CVector *
52976A:  MOVT            R3, #0x3E4C; float
52976E:  VLDR            D16, [R1,#4]
529772:  LDR             R1, [R1,#0xC]
529774:  STR             R1, [SP,#0x30+var_10]
529776:  MOVS            R1, #0
529778:  VSTR            D16, [SP,#0x30+var_18]
52977C:  STRD.W          R1, R1, [SP,#0x30+var_30]; bool
529780:  MOVS            R1, #4; int
529782:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
529786:  ADD             SP, SP, #0x28 ; '('
529788:  POP             {R4,R5,R7,PC}
