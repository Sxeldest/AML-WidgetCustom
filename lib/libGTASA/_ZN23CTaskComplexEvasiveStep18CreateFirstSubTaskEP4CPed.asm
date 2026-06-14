; =========================================================
; Game Engine Function: _ZN23CTaskComplexEvasiveStep18CreateFirstSubTaskEP4CPed
; Address            : 0x50B06C - 0x50B0A6
; =========================================================

50B06C:  PUSH            {R4,R5,R7,LR}; float
50B06E:  ADD             R7, SP, #8
50B070:  MOV             R4, R0
50B072:  MOVS            R0, #off_18; this
50B074:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50B078:  MOV             R5, R0
50B07A:  LDRD.W          R0, R1, [R4,#0xC]
50B07E:  EOR.W           R1, R1, #0x80000000; float
50B082:  MOVS            R2, #0; float
50B084:  EOR.W           R0, R0, #0x80000000; this
50B088:  MOVS            R3, #0; float
50B08A:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
50B08E:  MOV             R1, R0; float
50B090:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x50B09A)
50B092:  MOV.W           R2, #0x40000000; float
50B096:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
50B098:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
50B09A:  LDR             R3, [R0]; float
50B09C:  MOV             R0, R5; this
50B09E:  POP.W           {R4,R5,R7,LR}
50B0A2:  B.W             sub_19DE8C
