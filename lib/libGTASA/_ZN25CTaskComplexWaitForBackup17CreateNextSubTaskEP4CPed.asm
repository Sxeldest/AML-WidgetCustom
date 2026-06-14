; =========================================================
; Game Engine Function: _ZN25CTaskComplexWaitForBackup17CreateNextSubTaskEP4CPed
; Address            : 0x5473F8 - 0x547612
; =========================================================

5473F8:  PUSH            {R4,R5,R7,LR}
5473FA:  ADD             R7, SP, #8
5473FC:  SUB             SP, SP, #0x10; float
5473FE:  MOV             R5, R0
547400:  MOV             R4, R1
547402:  LDR             R0, [R5,#8]
547404:  LDR             R1, [R0]
547406:  LDR             R1, [R1,#0x14]
547408:  BLX             R1
54740A:  MOV             R1, R0; unsigned int
54740C:  MOVW            R2, #0x385
547410:  MOVS            R0, #0
547412:  CMP             R1, R2
547414:  BGT             loc_54747E
547416:  CMP             R1, #0xCA
547418:  BEQ             loc_5474C4
54741A:  CMP.W           R1, #0x2C0
54741E:  BNE.W           loc_54757C
547422:  LDR             R0, [R5,#0x10]
547424:  LDR             R1, [R4,#0x14]
547426:  LDR             R2, [R0,#0x14]
547428:  ADD.W           R3, R1, #0x30 ; '0'
54742C:  CMP             R1, #0
54742E:  IT EQ
547430:  ADDEQ           R3, R4, #4
547432:  ADD.W           R1, R2, #0x30 ; '0'
547436:  CMP             R2, #0
547438:  VLDR            S0, [R3]
54743C:  VLDR            S2, [R3,#4]
547440:  IT EQ
547442:  ADDEQ           R1, R0, #4
547444:  VLDR            S4, [R1]
547448:  MOVS            R2, #0; float
54744A:  VLDR            S6, [R1,#4]
54744E:  MOVS            R3, #0; float
547450:  VSUB.F32        S0, S4, S0
547454:  VSUB.F32        S2, S6, S2
547458:  VMOV            R0, S0; this
54745C:  VMOV            R1, S2; float
547460:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
547464:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
547468:  MOV             R5, R0
54746A:  MOVS            R0, #off_18; this
54746C:  STR.W           R5, [R4,#0x560]
547470:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547474:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x54747C)
547476:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x54747E)
547478:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
54747A:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
54747C:  B               loc_547530
54747E:  MOVW            R2, #0x386
547482:  CMP             R1, R2
547484:  BEQ             loc_547542
547486:  CMP.W           R1, #0x3FC
54748A:  BNE             loc_54757C
54748C:  LDR             R0, [R5,#0x14]; this
54748E:  CMP             R0, #0
547490:  BEQ.W           loc_54760C
547494:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
547498:  CMP             R0, #1
54749A:  BNE.W           loc_54760C
54749E:  LDRB.W          R0, [R5,#0x20]
5474A2:  CMP             R0, #0
5474A4:  BEQ.W           loc_5475B0
5474A8:  LDRB.W          R0, [R5,#0x21]
5474AC:  CMP             R0, #0
5474AE:  BEQ             loc_54759E
5474B0:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5474B8)
5474B2:  MOVS            R1, #0
5474B4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5474B6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5474B8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5474BA:  STRB.W          R1, [R5,#0x21]
5474BE:  STR             R0, [R5,#0x18]
5474C0:  MOV             R1, R0
5474C2:  B               loc_5475A8
5474C4:  LDR.W           R0, [R4,#0x590]
5474C8:  CMP             R0, #0
5474CA:  ITT NE
5474CC:  LDRBNE.W        R0, [R4,#0x485]
5474D0:  MOVSNE.W        R0, R0,LSL#31
5474D4:  BNE             loc_547580
5474D6:  LDR             R0, [R5,#0x10]
5474D8:  LDR             R1, [R4,#0x14]
5474DA:  LDR             R2, [R0,#0x14]
5474DC:  ADD.W           R3, R1, #0x30 ; '0'
5474E0:  CMP             R1, #0
5474E2:  IT EQ
5474E4:  ADDEQ           R3, R4, #4
5474E6:  ADD.W           R1, R2, #0x30 ; '0'
5474EA:  CMP             R2, #0
5474EC:  VLDR            S0, [R3]
5474F0:  VLDR            S2, [R3,#4]
5474F4:  IT EQ
5474F6:  ADDEQ           R1, R0, #4
5474F8:  VLDR            S4, [R1]
5474FC:  MOVS            R2, #0; float
5474FE:  VLDR            S6, [R1,#4]
547502:  MOVS            R3, #0; float
547504:  VSUB.F32        S0, S4, S0
547508:  VSUB.F32        S2, S6, S2
54750C:  VMOV            R0, S0; this
547510:  VMOV            R1, S2; float
547514:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
547518:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
54751C:  MOV             R5, R0
54751E:  MOVS            R0, #off_18; this
547520:  STR.W           R5, [R4,#0x560]
547524:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547528:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x547530)
54752A:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x547532)
54752C:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
54752E:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
547530:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
547532:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
547534:  LDR             R3, [R3]; float
547536:  LDR             R2, [R1]; float
547538:  MOV             R1, R5; float
54753A:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
54753E:  ADD             SP, SP, #0x10
547540:  POP             {R4,R5,R7,PC}
547542:  LDRSB.W         R0, [R4,#0x71C]
547546:  MOVS            R1, #1
547548:  RSB.W           R0, R0, R0,LSL#3
54754C:  ADD.W           R0, R4, R0,LSL#2
547550:  MOVS            R4, #1
547552:  LDR.W           R0, [R0,#0x5A4]
547556:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
54755A:  LDR             R0, [R0]
54755C:  CMP             R0, #1
54755E:  BNE             loc_54760C
547560:  MOVS            R0, #off_3C; this
547562:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547566:  LDR             R1, [R5,#0x10]; CEntity *
547568:  MOVS            R3, #0x64 ; 'd'
54756A:  MOV.W           R2, #0x7D0
54756E:  STRD.W          R4, R3, [SP,#0x18+var_18]; signed __int8
547572:  STR             R2, [SP,#0x18+var_10]; int
547574:  MOVS            R2, #0; CVector *
547576:  MOVS            R3, #0; CVector *
547578:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
54757C:  ADD             SP, SP, #0x10
54757E:  POP             {R4,R5,R7,PC}
547580:  MOVS            R0, #dword_34; this
547582:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547586:  LDR.W           R1, [R4,#0x590]; CVehicle *
54758A:  MOVS            R2, #0
54758C:  MOVS            R3, #1
54758E:  STRD.W          R3, R2, [SP,#0x18+var_18]; bool
547592:  MOVS            R2, #0; int
547594:  MOVS            R3, #0; int
547596:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
54759A:  ADD             SP, SP, #0x10
54759C:  POP             {R4,R5,R7,PC}
54759E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5475A6)
5475A0:  LDR             R1, [R5,#0x18]
5475A2:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5475A4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5475A6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5475A8:  LDR             R2, [R5,#0x1C]
5475AA:  ADD             R1, R2
5475AC:  CMP             R1, R0
5475AE:  BLS             loc_54760C
5475B0:  LDR             R0, [R5,#0x14]
5475B2:  LDR             R1, [R4,#0x14]
5475B4:  VLDR            S4, =0.0
5475B8:  LDR             R2, [R0,#0x14]
5475BA:  ADD.W           R3, R1, #0x30 ; '0'
5475BE:  CMP             R1, #0
5475C0:  IT EQ
5475C2:  ADDEQ           R3, R4, #4
5475C4:  ADD.W           R1, R2, #0x30 ; '0'
5475C8:  CMP             R2, #0
5475CA:  VLDR            D16, [R3]
5475CE:  IT EQ
5475D0:  ADDEQ           R1, R0, #4
5475D2:  VLDR            S2, [R5,#0xC]
5475D6:  VLDR            D17, [R1]
5475DA:  MOVW            R1, #0x386
5475DE:  VSUB.F32        D16, D16, D17
5475E2:  MOV             R0, R5; this
5475E4:  VMUL.F32        S2, S2, S2
5475E8:  MOV             R2, R4; CPed *
5475EA:  VMUL.F32        D0, D16, D16
5475EE:  VADD.F32        S0, S0, S1
5475F2:  VADD.F32        S0, S0, S4
5475F6:  VCMPE.F32       S0, S2
5475FA:  VMRS            APSR_nzcv, FPSCR
5475FE:  IT LT
547600:  MOVWLT          R1, #0x516; int
547604:  ADD             SP, SP, #0x10
547606:  POP.W           {R4,R5,R7,LR}
54760A:  B               _ZN25CTaskComplexWaitForBackup13CreateSubTaskEiP4CPed; CTaskComplexWaitForBackup::CreateSubTask(int,CPed *)
54760C:  MOVS            R0, #0
54760E:  ADD             SP, SP, #0x10
547610:  POP             {R4,R5,R7,PC}
