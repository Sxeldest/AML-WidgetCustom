; =========================================================
; Game Engine Function: _ZNK26CTaskComplexPresentIDToCop13CreateSubTaskEiPK4CPed
; Address            : 0x511664 - 0x511710
; =========================================================

511664:  PUSH            {R4-R7,LR}
511666:  ADD             R7, SP, #0xC
511668:  PUSH.W          {R8}
51166C:  SUB             SP, SP, #0x18; float
51166E:  MOVW            R8, #0x19D
511672:  MOV             R5, R2
511674:  MOV             R6, R0
511676:  MOVS            R4, #0
511678:  CMP             R1, R8
51167A:  BEQ             loc_5116D0
51167C:  MOVW            R0, #0x386
511680:  CMP             R1, R0
511682:  BNE             loc_511706
511684:  MOVS            R0, #off_18; this
511686:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51168A:  MOV             R4, R0
51168C:  LDR             R0, [R6,#0xC]
51168E:  LDR             R1, [R5,#0x14]
511690:  LDR             R6, [R0,#0x14]
511692:  ADD.W           R3, R1, #0x30 ; '0'
511696:  CMP             R1, #0
511698:  IT EQ
51169A:  ADDEQ           R3, R5, #4
51169C:  ADD.W           R1, R6, #0x30 ; '0'
5116A0:  CMP             R6, #0
5116A2:  LDRD.W          R2, R3, [R3]; float
5116A6:  IT EQ
5116A8:  ADDEQ           R1, R0, #4
5116AA:  LDRD.W          R0, R1, [R1]; float
5116AE:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5116B2:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5116B6:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x5116C0)
5116B8:  MOV             R1, R0; float
5116BA:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x5116C2)
5116BC:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
5116BE:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
5116C0:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
5116C2:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
5116C4:  LDR             R3, [R3]; float
5116C6:  LDR             R2, [R0]; float
5116C8:  MOV             R0, R4; this
5116CA:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
5116CE:  B               loc_511706
5116D0:  MOVS            R0, #dword_34; this
5116D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5116D6:  LDR             R1, =(aHandsup - 0x5116E6); "HandsUp"
5116D8:  MOVS            R3, #0
5116DA:  MOVW            R2, #0xBB8
5116DE:  MOVT            R3, #0xC080
5116E2:  ADD             R1, PC; "HandsUp"
5116E4:  STRD.W          R3, R2, [SP,#0x28+var_28]; float
5116E8:  MOVS            R2, #0x8E; int
5116EA:  MOV.W           R3, #0x40800000; int
5116EE:  STRD.W          R8, R1, [SP,#0x28+var_20]; int
5116F2:  MOVS            R1, #0; int
5116F4:  STR             R4, [SP,#0x28+var_18]; int
5116F6:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
5116FA:  LDR             R1, =(_ZTV18CTaskSimpleHandsUp_ptr - 0x511702)
5116FC:  MOV             R4, R0
5116FE:  ADD             R1, PC; _ZTV18CTaskSimpleHandsUp_ptr
511700:  LDR             R1, [R1]; `vtable for'CTaskSimpleHandsUp ...
511702:  ADDS            R1, #8
511704:  STR             R1, [R0]
511706:  MOV             R0, R4
511708:  ADD             SP, SP, #0x18
51170A:  POP.W           {R8}
51170E:  POP             {R4-R7,PC}
