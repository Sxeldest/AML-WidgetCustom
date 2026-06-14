; =========================================================
; Game Engine Function: _ZNK26CTaskComplexPresentIDToCop20ComputeTargetHeadingERK4CPed
; Address            : 0x511794 - 0x5117CC
; =========================================================

511794:  PUSH            {R7,LR}; float
511796:  MOV             R7, SP
511798:  LDR.W           R12, [R0,#0xC]
51179C:  LDR             R2, [R1,#0x14]
51179E:  LDR.W           R0, [R12,#0x14]
5117A2:  ADD.W           R3, R2, #0x30 ; '0'
5117A6:  CMP             R2, #0
5117A8:  IT EQ
5117AA:  ADDEQ           R3, R1, #4
5117AC:  ADD.W           R1, R0, #0x30 ; '0'
5117B0:  CMP             R0, #0
5117B2:  LDRD.W          R2, R3, [R3]; float
5117B6:  IT EQ
5117B8:  ADDEQ.W         R1, R12, #4
5117BC:  LDRD.W          R0, R1, [R1]; float
5117C0:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5117C4:  POP.W           {R7,LR}
5117C8:  B.W             j_j__ZN8CGeneral16LimitRadianAngleEf; j_CGeneral::LimitRadianAngle(float)
