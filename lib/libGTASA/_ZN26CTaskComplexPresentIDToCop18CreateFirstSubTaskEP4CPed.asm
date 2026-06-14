; =========================================================
; Game Engine Function: _ZN26CTaskComplexPresentIDToCop18CreateFirstSubTaskEP4CPed
; Address            : 0x511720 - 0x51177E
; =========================================================

511720:  PUSH            {R4-R7,LR}
511722:  ADD             R7, SP, #0xC
511724:  PUSH.W          {R11}; float
511728:  MOV             R6, R0
51172A:  MOVS            R0, #off_18; this
51172C:  MOV             R5, R1
51172E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
511732:  MOV             R4, R0
511734:  LDR             R0, [R6,#0xC]
511736:  LDR             R1, [R5,#0x14]
511738:  LDR             R6, [R0,#0x14]
51173A:  ADD.W           R3, R1, #0x30 ; '0'
51173E:  CMP             R1, #0
511740:  IT EQ
511742:  ADDEQ           R3, R5, #4
511744:  ADD.W           R1, R6, #0x30 ; '0'
511748:  CMP             R6, #0
51174A:  LDRD.W          R2, R3, [R3]; float
51174E:  IT EQ
511750:  ADDEQ           R1, R0, #4
511752:  LDRD.W          R0, R1, [R1]; float
511756:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
51175A:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
51175E:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x511768)
511760:  MOV             R1, R0; float
511762:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x51176A)
511764:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
511766:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
511768:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
51176A:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
51176C:  LDR             R3, [R3]; float
51176E:  LDR             R2, [R0]; float
511770:  MOV             R0, R4; this
511772:  POP.W           {R11}
511776:  POP.W           {R4-R7,LR}
51177A:  B.W             sub_19DE8C
