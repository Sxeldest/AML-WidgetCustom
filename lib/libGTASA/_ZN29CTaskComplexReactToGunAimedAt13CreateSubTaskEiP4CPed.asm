; =========================================================
; Game Engine Function: _ZN29CTaskComplexReactToGunAimedAt13CreateSubTaskEiP4CPed
; Address            : 0x546F58 - 0x5471FA
; =========================================================

546F58:  PUSH            {R4-R7,LR}
546F5A:  ADD             R7, SP, #0xC
546F5C:  PUSH.W          {R11}
546F60:  SUB             SP, SP, #0x18; float
546F62:  MOV             R6, R2
546F64:  MOV             R5, R0
546F66:  MOVS            R4, #0
546F68:  CMP.W           R1, #0x2C0
546F6C:  BLT             loc_546FF6
546F6E:  MOVW            R0, #0x38E
546F72:  CMP             R1, R0
546F74:  BGT             loc_54706A
546F76:  CMP.W           R1, #0x2C0
546F7A:  BEQ.W           loc_547106
546F7E:  MOVW            R0, #0x386
546F82:  CMP             R1, R0
546F84:  BNE.W           loc_5471F0
546F88:  LDR             R0, [R5,#0xC]
546F8A:  LDR             R1, [R6,#0x14]
546F8C:  LDR             R2, [R0,#0x14]
546F8E:  ADD.W           R3, R1, #0x30 ; '0'
546F92:  CMP             R1, #0
546F94:  IT EQ
546F96:  ADDEQ           R3, R6, #4
546F98:  ADD.W           R1, R2, #0x30 ; '0'
546F9C:  CMP             R2, #0
546F9E:  VLDR            S0, [R3]
546FA2:  VLDR            S2, [R3,#4]
546FA6:  IT EQ
546FA8:  ADDEQ           R1, R0, #4
546FAA:  VLDR            S4, [R1]
546FAE:  MOVS            R2, #0; float
546FB0:  VLDR            S6, [R1,#4]
546FB4:  MOVS            R3, #0; float
546FB6:  VSUB.F32        S0, S4, S0
546FBA:  VSUB.F32        S2, S6, S2
546FBE:  VMOV            R0, S0; this
546FC2:  VMOV            R1, S2; float
546FC6:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
546FCA:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
546FCE:  MOV             R5, R0
546FD0:  MOVS            R0, #off_18; this
546FD2:  STR.W           R5, [R6,#0x560]
546FD6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
546FDA:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x546FE4)
546FDC:  MOV             R4, R0
546FDE:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x546FE6)
546FE0:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
546FE2:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
546FE4:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
546FE6:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
546FE8:  LDR             R3, [R1]; float
546FEA:  MOV             R1, R5; float
546FEC:  LDR             R2, [R0]; float
546FEE:  MOV             R0, R4; this
546FF0:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
546FF4:  B               loc_5471F0
546FF6:  CMP             R1, #0xCA
546FF8:  BEQ.W           loc_547126
546FFC:  CMP.W           R1, #0x19C
547000:  BEQ.W           loc_54713A
547004:  MOVW            R5, #0x19D
547008:  CMP             R1, R5
54700A:  BNE.W           loc_5471F0
54700E:  MOVS            R0, #dword_34; this
547010:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547014:  MOV             R4, R0
547016:  BLX             rand
54701A:  UXTH            R0, R0
54701C:  VLDR            S2, =0.000015259
547020:  VMOV            S0, R0
547024:  LDR             R0, =(aHandsup - 0x547032); "HandsUp"
547026:  MOVS            R1, #0
547028:  MOVS            R2, #0x8E; int
54702A:  VCVT.F32.S32    S0, S0
54702E:  ADD             R0, PC; "HandsUp"
547030:  STR             R1, [SP,#0x28+var_18]; int
547032:  MOVS            R1, #0; int
547034:  STRD.W          R5, R0, [SP,#0x28+var_20]; int
547038:  MOVS            R0, #0xC0800000
54703E:  MOV.W           R3, #0x40800000; int
547042:  VMUL.F32        S0, S0, S2
547046:  VLDR            S2, =2000.0
54704A:  VMUL.F32        S0, S0, S2
54704E:  VCVT.S32.F32    S0, S0
547052:  STR             R0, [SP,#0x28+var_28]; float
547054:  VMOV            R0, S0
547058:  ADDW            R0, R0, #0xBB8
54705C:  STR             R0, [SP,#0x28+var_24]; int
54705E:  MOV             R0, R4; int
547060:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
547064:  LDR             R0, =(_ZTV18CTaskSimpleHandsUp_ptr - 0x54706A)
547066:  ADD             R0, PC; _ZTV18CTaskSimpleHandsUp_ptr
547068:  B               loc_5471EA
54706A:  MOVW            R0, #0x38F
54706E:  CMP             R1, R0
547070:  BEQ             loc_547166
547072:  CMP.W           R1, #0x390
547076:  BNE.W           loc_5471F0
54707A:  LDR             R0, [R5,#0xC]
54707C:  LDR             R1, [R6,#0x14]
54707E:  LDR             R2, [R0,#0x14]; float
547080:  ADD.W           R3, R1, #0x30 ; '0'
547084:  CMP             R1, #0
547086:  IT EQ
547088:  ADDEQ           R3, R6, #4
54708A:  ADD.W           R1, R2, #0x30 ; '0'
54708E:  CMP             R2, #0
547090:  VLDR            S0, [R3]
547094:  VLDR            S2, [R3,#4]
547098:  IT EQ
54709A:  ADDEQ           R1, R0, #4
54709C:  VLDR            S4, [R1]
5470A0:  VLDR            S6, [R1,#4]
5470A4:  VSUB.F32        S0, S0, S4
5470A8:  VSUB.F32        S2, S2, S6
5470AC:  VMOV            R0, S0; this
5470B0:  VMOV            R1, S2; float
5470B4:  BLX             j__ZN8CGeneral24GetNodeHeadingFromVectorEff; CGeneral::GetNodeHeadingFromVector(float,float)
5470B8:  MOV             R6, R0
5470BA:  MOVS            R0, #dword_38; this
5470BC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5470C0:  MOV             R4, R0
5470C2:  LDR             R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x5470CC)
5470C4:  UXTB            R2, R6; unsigned __int8
5470C6:  MOVS            R1, #4; int
5470C8:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
5470CA:  MOVS            R3, #1; bool
5470CC:  MOVS            R6, #1
5470CE:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
5470D0:  VLDR            S0, [R0]
5470D4:  MOV             R0, R4; this
5470D6:  VSTR            S0, [SP,#0x28+var_28]
5470DA:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
5470DE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5470E8)
5470E0:  MOVS            R2, #0
5470E2:  LDR             R1, =(_ZTV26CTaskComplexWanderStandard_ptr - 0x5470EC)
5470E4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5470E6:  STRH            R2, [R4,#0x30]
5470E8:  ADD             R1, PC; _ZTV26CTaskComplexWanderStandard_ptr
5470EA:  STR             R2, [R4,#0x34]
5470EC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5470EE:  LDR             R1, [R1]; `vtable for'CTaskComplexWanderStandard ...
5470F0:  STRD.W          R2, R2, [R4,#0x28]
5470F4:  ADDS            R1, #8
5470F6:  STR             R1, [R4]
5470F8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5470FA:  MOVW            R1, #0x2710; unsigned int
5470FE:  STRB            R6, [R5,#0x18]
547100:  STRD.W          R0, R1, [R5,#0x10]
547104:  B               loc_5471F0
547106:  MOVS            R0, #dword_34; this
547108:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54710C:  LDR.W           R1, [R6,#0x590]; CVehicle *
547110:  MOV             R4, R0
547112:  MOVS            R0, #0
547114:  MOVS            R2, #1
547116:  STRD.W          R2, R0, [SP,#0x28+var_28]; bool
54711A:  MOV             R0, R4; this
54711C:  MOVS            R2, #0; int
54711E:  MOVS            R3, #0; int
547120:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
547124:  B               loc_5471F0
547126:  LDR.W           R0, [R6,#0x590]
54712A:  MOVS            R5, #0
54712C:  CBZ             R0, loc_547136
54712E:  LDRB.W          R0, [R6,#0x485]
547132:  LSLS            R0, R0, #0x1F
547134:  BNE             loc_5471A8
547136:  MOVS            R6, #0
547138:  B               loc_5471D2
54713A:  MOVS            R0, #dword_20; this
54713C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
547140:  MOV             R4, R0
547142:  LDR             R0, =(aCower - 0x54714E); "Cower"
547144:  MOVS            R1, #0
547146:  MOV.W           R2, #0x19C
54714A:  ADD             R0, PC; "Cower"
54714C:  MOV.W           R3, #0x40800000
547150:  STRD.W          R2, R0, [SP,#0x28+var_28]
547154:  MOV             R0, R4
547156:  STR             R1, [SP,#0x28+var_20]
547158:  MOVS            R1, #0
54715A:  MOVS            R2, #0x8F
54715C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
547160:  LDR             R0, =(_ZTV16CTaskSimpleCower_ptr - 0x547166)
547162:  ADD             R0, PC; _ZTV16CTaskSimpleCower_ptr
547164:  B               loc_5471EA
547166:  MOVS            R0, #dword_40; this
547168:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
54716C:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x547178)
54716E:  MOV             R4, R0
547170:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x54717C)
547172:  LDR             R0, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x54717E)
547174:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
547176:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x547184)
547178:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
54717A:  ADD             R0, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
54717C:  LDR.W           R12, [R2]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
547180:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
547182:  LDR             R2, [R3]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
547184:  LDR             R0, [R0]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
547186:  LDR             R6, [R1]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
547188:  VLDR            S0, [R2]
54718C:  LDR.W           R2, [R12]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
547190:  LDR             R3, [R0]; float
547192:  LDR             R1, [R5,#0xC]; CEntity *
547194:  LDR             R0, [R6]; CTaskComplexSmartFleeEntity::ms_iFleeTime
547196:  STRD.W          R0, R2, [SP,#0x28+var_28]; int
54719A:  MOV             R0, R4; this
54719C:  MOVS            R2, #0; bool
54719E:  VSTR            S0, [SP,#0x28+var_20]
5471A2:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
5471A6:  B               loc_5471F0
5471A8:  BLX             rand
5471AC:  UXTH            R0, R0
5471AE:  VLDR            S2, =0.000015259
5471B2:  VMOV            S0, R0
5471B6:  VCVT.F32.S32    S0, S0
5471BA:  VMUL.F32        S0, S0, S2
5471BE:  VLDR            S2, =1000.0
5471C2:  VMUL.F32        S0, S0, S2
5471C6:  VCVT.S32.F32    S0, S0
5471CA:  VMOV            R0, S0
5471CE:  ADD.W           R6, R0, #0x3E8
5471D2:  MOVS            R0, #off_18; this
5471D4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5471D8:  MOV             R4, R0
5471DA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5471DE:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x5471E6)
5471E0:  STRH            R5, [R4,#0x10]
5471E2:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
5471E4:  STR             R6, [R4,#0x14]
5471E6:  STRD.W          R5, R5, [R4,#8]
5471EA:  LDR             R0, [R0]; `vtable for'CTaskSimplePause
5471EC:  ADDS            R0, #8
5471EE:  STR             R0, [R4]
5471F0:  MOV             R0, R4
5471F2:  ADD             SP, SP, #0x18
5471F4:  POP.W           {R11}
5471F8:  POP             {R4-R7,PC}
