; =========================================================
; Game Engine Function: _ZN25CTaskComplexTreatAccident17CreateNextSubTaskEP4CPed
; Address            : 0x5104FC - 0x5105DE
; =========================================================

5104FC:  PUSH            {R4-R7,LR}
5104FE:  ADD             R7, SP, #0xC
510500:  PUSH.W          {R8,R9,R11}
510504:  SUB             SP, SP, #0x18; float
510506:  MOV             R6, R0
510508:  MOV             R8, R1
51050A:  LDR             R0, [R6,#8]
51050C:  LDR             R1, [R0]
51050E:  LDR             R1, [R1,#0x14]
510510:  BLX             R1
510512:  MOVW            R1, #0x386
510516:  CMP             R0, R1
510518:  BNE             loc_5105D2
51051A:  LDR             R0, [R6,#0xC]
51051C:  LDR             R0, [R0]
51051E:  CMP             R0, #0
510520:  BEQ             loc_5105D2
510522:  LDRB.W          R1, [R0,#0x488]
510526:  MOVS            R4, #0
510528:  LSLS            R1, R1, #0x1C
51052A:  BMI             loc_5105D4
51052C:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x510532)
51052E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
510530:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
510532:  LDR             R1, [R1]; unsigned int
510534:  STR.W           R1, [R0,#0x758]
510538:  MOVS            R0, #off_18; this
51053A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
51053E:  MOV             R5, R0
510540:  LDR.W           R9, [R6,#0xC]
510544:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
510548:  LDR             R0, =(_ZTV18CTaskSimpleGiveCPR_ptr - 0x510554)
51054A:  ADD             R1, SP, #0x30+var_24
51054C:  MOVS            R2, #5
51054E:  MOVS            R3, #0
510550:  ADD             R0, PC; _ZTV18CTaskSimpleGiveCPR_ptr
510552:  LDR             R0, [R0]; `vtable for'CTaskSimpleGiveCPR ...
510554:  ADDS            R0, #8
510556:  STR             R0, [R5]
510558:  LDRB            R0, [R5,#8]
51055A:  STRD.W          R9, R4, [R5,#0xC]
51055E:  AND.W           R0, R0, #0xFC
510562:  ORR.W           R0, R0, #1
510566:  STRB            R0, [R5,#8]
510568:  LDR             R0, [R6,#0xC]
51056A:  LDR             R0, [R0]; this
51056C:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510570:  LDR             R0, [R6,#0xC]
510572:  MOV             R1, SP
510574:  MOVS            R2, #1
510576:  MOVS            R3, #0
510578:  LDR             R0, [R0]; this
51057A:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
51057E:  VLDR            S0, [SP,#0x30+var_30]
510582:  VMOV.F32        S8, #0.5
510586:  VLDR            S4, [SP,#0x30+var_24]
51058A:  VLDR            S2, [SP,#0x30+var_2C]
51058E:  VLDR            S6, [SP,#0x30+var_20]
510592:  VADD.F32        S0, S4, S0
510596:  LDR.W           R2, [R8,#0x14]
51059A:  VADD.F32        S2, S6, S2
51059E:  ADD.W           R3, R2, #0x30 ; '0'
5105A2:  CMP             R2, #0
5105A4:  IT EQ
5105A6:  ADDEQ.W         R3, R8, #4
5105AA:  LDRD.W          R2, R3, [R3]; float
5105AE:  VMUL.F32        S0, S0, S8
5105B2:  VMUL.F32        S2, S2, S8
5105B6:  VMOV            R0, S0; this
5105BA:  VMOV            R1, S2; float
5105BE:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5105C2:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5105C6:  MOV             R4, R5
5105C8:  STR.W           R0, [R8,#0x55C]
5105CC:  STR.W           R0, [R8,#0x560]
5105D0:  B               loc_5105D4
5105D2:  MOVS            R4, #0
5105D4:  MOV             R0, R4
5105D6:  ADD             SP, SP, #0x18
5105D8:  POP.W           {R8,R9,R11}
5105DC:  POP             {R4-R7,PC}
