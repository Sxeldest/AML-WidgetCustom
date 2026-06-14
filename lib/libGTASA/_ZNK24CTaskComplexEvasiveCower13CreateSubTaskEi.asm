; =========================================================
; Game Engine Function: _ZNK24CTaskComplexEvasiveCower13CreateSubTaskEi
; Address            : 0x50E710 - 0x50E78C
; =========================================================

50E710:  PUSH            {R4,R5,R7,LR}
50E712:  ADD             R7, SP, #8
50E714:  SUB             SP, SP, #0x10; float
50E716:  MOV             R5, R0
50E718:  MOVS            R4, #0
50E71A:  CMP.W           R1, #0x19C
50E71E:  BEQ             loc_50E75A
50E720:  MOVW            R0, #0x386
50E724:  CMP             R1, R0
50E726:  BNE             loc_50E786
50E728:  MOVS            R0, #off_18; this
50E72A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E72E:  MOV             R4, R0
50E730:  LDRD.W          R0, R1, [R5,#0xC]
50E734:  EOR.W           R1, R1, #0x80000000; float
50E738:  MOVS            R2, #0; float
50E73A:  EOR.W           R0, R0, #0x80000000; this
50E73E:  MOVS            R3, #0; float
50E740:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
50E744:  MOV             R1, R0; float
50E746:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x50E750)
50E748:  MOV.W           R2, #0x40000000; float
50E74C:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
50E74E:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
50E750:  LDR             R3, [R0]; float
50E752:  MOV             R0, R4; this
50E754:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
50E758:  B               loc_50E786
50E75A:  MOVS            R0, #dword_20; this
50E75C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E760:  LDR             R1, =(aCower - 0x50E76E); "Cower"
50E762:  MOV.W           R2, #0x19C
50E766:  MOV.W           R3, #0x40800000
50E76A:  ADD             R1, PC; "Cower"
50E76C:  STRD.W          R2, R1, [SP,#0x18+var_18]
50E770:  MOVS            R1, #0
50E772:  MOVS            R2, #0x8F
50E774:  STR             R4, [SP,#0x18+var_10]
50E776:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50E77A:  LDR             R1, =(_ZTV16CTaskSimpleCower_ptr - 0x50E782)
50E77C:  MOV             R4, R0
50E77E:  ADD             R1, PC; _ZTV16CTaskSimpleCower_ptr
50E780:  LDR             R1, [R1]; `vtable for'CTaskSimpleCower ...
50E782:  ADDS            R1, #8
50E784:  STR             R1, [R0]
50E786:  MOV             R0, R4
50E788:  ADD             SP, SP, #0x10
50E78A:  POP             {R4,R5,R7,PC}
