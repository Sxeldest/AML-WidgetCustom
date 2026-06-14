; =========================================================
; Game Engine Function: _ZN25CTaskComplexTreatAccident13CreateSubTaskEiPK4CPed
; Address            : 0x5105E8 - 0x5106D6
; =========================================================

5105E8:  PUSH            {R4-R7,LR}
5105EA:  ADD             R7, SP, #0xC
5105EC:  PUSH.W          {R11}
5105F0:  SUB             SP, SP, #0x18; float
5105F2:  MOV             R5, R2
5105F4:  MOV             R6, R0
5105F6:  MOVS            R4, #0
5105F8:  CMP             R1, #0x66 ; 'f'
5105FA:  BEQ             loc_51068C
5105FC:  CMP             R1, #0xC8
5105FE:  BEQ             loc_5106B6
510600:  MOVW            R0, #0x386
510604:  CMP             R1, R0
510606:  BNE             loc_5106CC
510608:  LDR             R0, [R6,#0xC]
51060A:  ADD             R1, SP, #0x28+var_1C
51060C:  MOVS            R2, #5
51060E:  MOVS            R3, #0
510610:  LDR             R0, [R0]; this
510612:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510616:  LDR             R0, [R6,#0xC]
510618:  MOV             R1, SP
51061A:  MOVS            R2, #1
51061C:  MOVS            R3, #0
51061E:  LDR             R0, [R0]; this
510620:  BLX             j__ZN4CPed15GetBonePositionER5RwV3djb; CPed::GetBonePosition(RwV3d &,uint,bool)
510624:  VLDR            S0, [SP,#0x28+var_28]
510628:  VMOV.F32        S8, #0.5
51062C:  VLDR            S4, [SP,#0x28+var_1C]
510630:  VLDR            S2, [SP,#0x28+var_24]
510634:  VLDR            S6, [SP,#0x28+var_18]
510638:  VADD.F32        S0, S4, S0
51063C:  LDR             R2, [R5,#0x14]
51063E:  VADD.F32        S2, S6, S2
510642:  ADD.W           R3, R2, #0x30 ; '0'
510646:  CMP             R2, #0
510648:  IT EQ
51064A:  ADDEQ           R3, R5, #4
51064C:  LDRD.W          R2, R3, [R3]; float
510650:  VMUL.F32        S0, S0, S8
510654:  VMUL.F32        S2, S2, S8
510658:  VMOV            R0, S0; this
51065C:  VMOV            R1, S2; float
510660:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
510664:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
510668:  MOV             R5, R0
51066A:  MOVS            R0, #off_18; this
51066C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510670:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x51067A)
510672:  MOV             R4, R0
510674:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x51067C)
510676:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
510678:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
51067A:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
51067C:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
51067E:  LDR             R3, [R1]; float
510680:  MOV             R1, R5; float
510682:  LDR             R2, [R0]; float
510684:  MOV             R0, R4; this
510686:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
51068A:  B               loc_5106CC
51068C:  MOVS            R0, #off_18; this
51068E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
510692:  LDR             R5, [R6,#0xC]
510694:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
510698:  LDR             R1, =(_ZTV18CTaskSimpleGiveCPR_ptr - 0x5106A0)
51069A:  LDRB            R2, [R0,#8]
51069C:  ADD             R1, PC; _ZTV18CTaskSimpleGiveCPR_ptr
51069E:  STRD.W          R5, R4, [R0,#0xC]
5106A2:  MOV             R4, R0
5106A4:  LDR             R1, [R1]; `vtable for'CTaskSimpleGiveCPR ...
5106A6:  ADDS            R1, #8
5106A8:  STR             R1, [R0]
5106AA:  AND.W           R1, R2, #0xFC
5106AE:  ORR.W           R1, R1, #1; unsigned int
5106B2:  STRB            R1, [R0,#8]
5106B4:  B               loc_5106CC
5106B6:  MOVS            R0, #byte_8; this
5106B8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5106BC:  MOV             R4, R0
5106BE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5106C2:  LDR             R0, =(_ZTV15CTaskSimpleNone_ptr - 0x5106C8)
5106C4:  ADD             R0, PC; _ZTV15CTaskSimpleNone_ptr
5106C6:  LDR             R0, [R0]; `vtable for'CTaskSimpleNone ...
5106C8:  ADDS            R0, #8
5106CA:  STR             R0, [R4]
5106CC:  MOV             R0, R4
5106CE:  ADD             SP, SP, #0x18
5106D0:  POP.W           {R11}
5106D4:  POP             {R4-R7,PC}
