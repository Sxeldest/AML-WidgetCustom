; =========================================================
; Game Engine Function: _ZN24CTaskComplexEvasiveCower18CreateFirstSubTaskEP4CPed
; Address            : 0x50E7CC - 0x50E806
; =========================================================

50E7CC:  PUSH            {R4,R5,R7,LR}; float
50E7CE:  ADD             R7, SP, #8
50E7D0:  MOV             R4, R0
50E7D2:  MOVS            R0, #off_18; this
50E7D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50E7D8:  MOV             R5, R0
50E7DA:  LDRD.W          R0, R1, [R4,#0xC]
50E7DE:  EOR.W           R1, R1, #0x80000000; float
50E7E2:  MOVS            R2, #0; float
50E7E4:  EOR.W           R0, R0, #0x80000000; this
50E7E8:  MOVS            R3, #0; float
50E7EA:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
50E7EE:  MOV             R1, R0; float
50E7F0:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x50E7FA)
50E7F2:  MOV.W           R2, #0x40000000; float
50E7F6:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
50E7F8:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
50E7FA:  LDR             R3, [R0]; float
50E7FC:  MOV             R0, R5; this
50E7FE:  POP.W           {R4,R5,R7,LR}
50E802:  B.W             sub_19DE8C
