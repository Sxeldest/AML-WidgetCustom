; =========================================================
; Game Engine Function: _ZN25CTaskComplexWaitForBackup13CreateSubTaskEiP4CPed
; Address            : 0x547630 - 0x547766
; =========================================================

547630:  PUSH            {R4,R5,R7,LR}
547632:  ADD             R7, SP, #8
547634:  SUB             SP, SP, #0x10
547636:  MOV             R4, R2
547638:  MOV             R5, R0
54763A:  MOVW            R2, #0x385
54763E:  MOVS            R0, #0
547640:  CMP             R1, R2
547642:  BGT             loc_54766C
547644:  CMP             R1, #0xCA
547646:  BEQ             loc_54769C
547648:  CMP.W           R1, #0x2C0
54764C:  BNE             loc_547718
54764E:  MOVS            R0, #dword_34; this
547650:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547654:  LDR.W           R1, [R4,#0x590]; CVehicle *
547658:  MOVS            R2, #0
54765A:  MOVS            R3, #1
54765C:  STRD.W          R3, R2, [SP,#0x18+var_18]; bool
547660:  MOVS            R2, #0; int
547662:  MOVS            R3, #0; int
547664:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
547668:  ADD             SP, SP, #0x10
54766A:  POP             {R4,R5,R7,PC}
54766C:  MOVW            R2, #0x386
547670:  CMP             R1, R2
547672:  BEQ             loc_5476B0
547674:  CMP.W           R1, #0x3FC
547678:  BNE             loc_547718
54767A:  MOVS            R0, #off_3C; this
54767C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547680:  LDR             R1, [R5,#0x10]; CEntity *
547682:  MOV.W           R2, #0x7D0
547686:  MOVS            R3, #0x64 ; 'd'
547688:  MOVS            R5, #1
54768A:  STRD.W          R5, R3, [SP,#0x18+var_18]; signed __int8
54768E:  MOVS            R3, #0; CVector *
547690:  STR             R2, [SP,#0x18+var_10]; int
547692:  MOVS            R2, #0; CVector *
547694:  BLX             j__ZN21CTaskSimpleGunControlC2EP7CEntityPK7CVectorS4_asi; CTaskSimpleGunControl::CTaskSimpleGunControl(CEntity *,CVector const*,CVector const*,signed char,short,int)
547698:  ADD             SP, SP, #0x10
54769A:  POP             {R4,R5,R7,PC}; float
54769C:  LDR.W           R0, [R4,#0x590]
5476A0:  MOVS            R5, #0
5476A2:  CBZ             R0, loc_5476AC
5476A4:  LDRB.W          R0, [R4,#0x485]
5476A8:  LSLS            R0, R0, #0x1F
5476AA:  BNE             loc_54771C
5476AC:  MOVS            R4, #0
5476AE:  B               loc_547746
5476B0:  LDR             R0, [R5,#0x10]
5476B2:  LDR             R1, [R4,#0x14]
5476B4:  LDR             R2, [R0,#0x14]
5476B6:  ADD.W           R3, R1, #0x30 ; '0'
5476BA:  CMP             R1, #0
5476BC:  IT EQ
5476BE:  ADDEQ           R3, R4, #4
5476C0:  ADD.W           R1, R2, #0x30 ; '0'
5476C4:  CMP             R2, #0
5476C6:  VLDR            S0, [R3]
5476CA:  VLDR            S2, [R3,#4]
5476CE:  IT EQ
5476D0:  ADDEQ           R1, R0, #4
5476D2:  VLDR            S4, [R1]
5476D6:  MOVS            R2, #0; float
5476D8:  VLDR            S6, [R1,#4]
5476DC:  MOVS            R3, #0; float
5476DE:  VSUB.F32        S0, S4, S0
5476E2:  VSUB.F32        S2, S6, S2
5476E6:  VMOV            R0, S0; this
5476EA:  VMOV            R1, S2; float
5476EE:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5476F2:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5476F6:  MOV             R5, R0
5476F8:  MOVS            R0, #off_18; this
5476FA:  STR.W           R5, [R4,#0x560]
5476FE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547702:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x54770A)
547704:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x54770C)
547706:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
547708:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
54770A:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
54770C:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
54770E:  LDR             R2, [R1]; float
547710:  MOV             R1, R5; float
547712:  LDR             R3, [R3]; float
547714:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
547718:  ADD             SP, SP, #0x10
54771A:  POP             {R4,R5,R7,PC}
54771C:  BLX             rand
547720:  UXTH            R0, R0
547722:  VLDR            S2, =0.000015259
547726:  VMOV            S0, R0
54772A:  VCVT.F32.S32    S0, S0
54772E:  VMUL.F32        S0, S0, S2
547732:  VLDR            S2, =1000.0
547736:  VMUL.F32        S0, S0, S2
54773A:  VCVT.S32.F32    S0, S0
54773E:  VMOV            R0, S0
547742:  ADD.W           R4, R0, #0x3E8
547746:  MOVS            R0, #off_18; this
547748:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54774C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
547750:  LDR             R1, =(_ZTV16CTaskSimplePause_ptr - 0x547758)
547752:  STRH            R5, [R0,#0x10]
547754:  ADD             R1, PC; _ZTV16CTaskSimplePause_ptr
547756:  STR             R4, [R0,#0x14]
547758:  STRD.W          R5, R5, [R0,#8]
54775C:  LDR             R1, [R1]; `vtable for'CTaskSimplePause ...
54775E:  ADDS            R1, #8
547760:  STR             R1, [R0]
547762:  ADD             SP, SP, #0x10
547764:  POP             {R4,R5,R7,PC}
