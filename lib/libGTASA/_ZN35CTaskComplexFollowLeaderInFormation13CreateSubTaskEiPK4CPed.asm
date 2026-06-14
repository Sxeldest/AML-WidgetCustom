; =========================================================
; Game Engine Function: _ZN35CTaskComplexFollowLeaderInFormation13CreateSubTaskEiPK4CPed
; Address            : 0x544AF0 - 0x544D92
; =========================================================

544AF0:  PUSH            {R4-R7,LR}
544AF2:  ADD             R7, SP, #0xC
544AF4:  PUSH.W          {R8}
544AF8:  VPUSH           {D8}
544AFC:  SUB             SP, SP, #0x18; float
544AFE:  MOV             R6, R2
544B00:  MOV             R5, R0
544B02:  MOVS            R4, #0
544B04:  CMP.W           R1, #0x2C0
544B08:  BLT             loc_544B38
544B0A:  MOVW            R0, #0x385
544B0E:  CMP             R1, R0
544B10:  BGT             loc_544B64
544B12:  CMP.W           R1, #0x2C0
544B16:  BEQ             loc_544C0E
544B18:  MOVW            R0, #0x2C5
544B1C:  CMP             R1, R0
544B1E:  BNE.W           loc_544D84
544B22:  MOVS            R0, #dword_60; this
544B24:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544B28:  LDR.W           R1, [R6,#0x590]; CVehicle *
544B2C:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
544B2E:  MOVS            R3, #0; bool
544B30:  MOV             R4, R0
544B32:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
544B36:  B               loc_544D84
544B38:  CMP             R1, #0xCA
544B3A:  BEQ             loc_544C2E
544B3C:  CMP             R1, #0xCB
544B3E:  BEQ.W           loc_544C54
544B42:  CMP.W           R1, #0x2BC
544B46:  BNE.W           loc_544D84
544B4A:  MOVS            R0, #dword_50; this
544B4C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544B50:  MOV             R4, R0
544B52:  LDR             R0, [R5,#0x10]
544B54:  MOVS            R2, #0; int
544B56:  MOVS            R3, #0; bool
544B58:  LDR.W           R1, [R0,#0x590]; CVehicle *
544B5C:  MOV             R0, R4; this
544B5E:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
544B62:  B               loc_544D84
544B64:  MOVW            R0, #0x386
544B68:  CMP             R1, R0
544B6A:  BEQ.W           loc_544C72
544B6E:  MOVW            R0, #0x38B
544B72:  CMP             R1, R0
544B74:  BNE.W           loc_544D84
544B78:  MOVS            R0, #dword_58; this
544B7A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544B7E:  MOV             R4, R0
544B80:  LDR.W           R8, [R5,#0x10]
544B84:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
544B88:  ADR             R2, dword_544DA0
544B8A:  LDR             R0, =(_ZTV32CEntitySeekPosCalculatorXYOffset_ptr - 0x544B9E)
544B8C:  LDR             R1, =(_ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr - 0x544BA0)
544B8E:  MOV.W           R3, #0x3E8
544B92:  VLD1.64         {D16-D17}, [R2@128]
544B96:  ADD.W           R2, R4, #0x18
544B9A:  ADD             R0, PC; _ZTV32CEntitySeekPosCalculatorXYOffset_ptr
544B9C:  ADD             R1, PC; _ZTV22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorXYOffsetE_ptr
544B9E:  VST1.32         {D16-D17}, [R2]
544BA2:  MOVW            R2, #0xC350
544BA6:  MOV             R6, R4
544BA8:  CMP.W           R8, #0
544BAC:  STRD.W          R2, R3, [R4,#0x10]
544BB0:  MOV.W           R2, #0
544BB4:  MOV.W           R3, #6
544BB8:  LDR             R0, [R0]; `vtable for'CEntitySeekPosCalculatorXYOffset ...
544BBA:  LDR             R1, [R1]; `vtable for'CTaskComplexSeekEntity<CEntitySeekPosCalculatorXYOffset> ...
544BBC:  STRH            R2, [R4,#0x30]
544BBE:  ADD.W           R0, R0, #8
544BC2:  STRH            R2, [R4,#0x3C]
544BC4:  ADD.W           R1, R1, #8
544BC8:  STRD.W          R2, R2, [R4,#0x28]
544BCC:  STRD.W          R2, R2, [R4,#0x34]
544BD0:  STRD.W          R2, R2, [R4,#0x48]
544BD4:  STR             R3, [R4,#0x50]
544BD6:  LDRB.W          R3, [R4,#0x54]
544BDA:  STR             R1, [R4]
544BDC:  MOV             R1, R4
544BDE:  STR             R0, [R4,#0x40]
544BE0:  AND.W           R0, R3, #0xF0
544BE4:  ORR.W           R0, R0, #2
544BE8:  STRB.W          R0, [R4,#0x54]
544BEC:  STR.W           R2, [R6,#0x44]!
544BF0:  STR.W           R8, [R1,#0xC]!; CEntity **
544BF4:  ITT NE
544BF6:  MOVNE           R0, R8; this
544BF8:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
544BFC:  VLDR            D16, [R5,#0x14]
544C00:  LDR             R0, [R5,#0x1C]
544C02:  STR             R0, [R6,#8]
544C04:  MOVS            R0, #7
544C06:  VSTR            D16, [R6]
544C0A:  STR             R0, [R4,#0x50]
544C0C:  B               loc_544D84
544C0E:  MOVS            R0, #dword_34; this
544C10:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544C14:  LDR.W           R1, [R6,#0x590]; CVehicle *
544C18:  MOV             R4, R0
544C1A:  MOVS            R0, #0
544C1C:  MOVS            R2, #1
544C1E:  STRD.W          R2, R0, [SP,#0x30+var_30]; bool
544C22:  MOV             R0, R4; this
544C24:  MOVS            R2, #0; int
544C26:  MOVS            R3, #0; int
544C28:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
544C2C:  B               loc_544D84
544C2E:  MOVS            R0, #off_18; this
544C30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544C34:  MOV             R4, R0
544C36:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
544C3A:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x544C48)
544C3C:  MOVS            R1, #0; unsigned int
544C3E:  MOV.W           R2, #0x7D0
544C42:  STRH            R1, [R4,#0x10]
544C44:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
544C46:  STR             R2, [R4,#0x14]
544C48:  STRD.W          R1, R1, [R4,#8]
544C4C:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
544C4E:  ADDS            R0, #8
544C50:  STR             R0, [R4]
544C52:  B               loc_544D84
544C54:  MOVS            R0, #dword_20; this
544C56:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544C5A:  MOV             R4, R0
544C5C:  MOV.W           R0, #0x41000000
544C60:  STR             R0, [SP,#0x30+var_30]; float
544C62:  MOV             R0, R4; this
544C64:  MOV.W           R1, #0x1F4; int
544C68:  MOVS            R2, #0; bool
544C6A:  MOVS            R3, #0; bool
544C6C:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
544C70:  B               loc_544D84
544C72:  LDR             R0, [R5,#0xC]
544C74:  ADDS            R0, #8; this
544C76:  BLX             j__ZNK19CPedGroupMembership12CountMembersEv; CPedGroupMembership::CountMembers(void)
544C7A:  MOV             R4, R0
544C7C:  BLX             rand
544C80:  UXTH            R0, R0
544C82:  VLDR            S16, =0.000015259
544C86:  VMOV            S0, R0
544C8A:  VMOV            S2, R4
544C8E:  VCVT.F32.S32    S0, S0
544C92:  VCVT.F32.S32    S2, S2
544C96:  LDR             R0, [R5,#0xC]
544C98:  ADDS            R0, #8; this
544C9A:  VMUL.F32        S0, S0, S16
544C9E:  VMUL.F32        S0, S0, S2
544CA2:  VCVT.S32.F32    S0, S0
544CA6:  VMOV            R1, S0; int
544CAA:  BLX             j__ZNK19CPedGroupMembership9GetMemberEi; CPedGroupMembership::GetMember(int)
544CAE:  MOV             R4, R0
544CB0:  CMP             R4, R6
544CB2:  BNE             loc_544CBE
544CB4:  LDR             R0, [R5,#0xC]
544CB6:  ADDS            R0, #8; this
544CB8:  BLX             j__ZNK19CPedGroupMembership9GetLeaderEv; CPedGroupMembership::GetLeader(void)
544CBC:  MOV             R4, R0
544CBE:  CMP             R4, #0
544CC0:  BEQ             loc_544D62
544CC2:  BLX             rand
544CC6:  UXTH            R0, R0
544CC8:  VLDR            S2, =50.0
544CCC:  VMOV            S0, R0
544CD0:  VCVT.F32.S32    S0, S0
544CD4:  VMUL.F32        S0, S0, S16
544CD8:  VMUL.F32        S0, S0, S2
544CDC:  VCVT.S32.F32    S0, S0
544CE0:  VMOV            R0, S0
544CE4:  CMP             R0, #0x14
544CE6:  BNE             loc_544D62
544CE8:  LDR             R0, [R4,#0x14]
544CEA:  ADD.W           R1, R0, #0x30 ; '0'
544CEE:  CMP             R0, #0
544CF0:  IT EQ
544CF2:  ADDEQ           R1, R4, #4
544CF4:  LDR             R0, [R6,#0x14]
544CF6:  VLDR            S0, [R1]
544CFA:  VLDR            S2, [R1,#4]
544CFE:  CMP             R0, #0
544D00:  VLDR            S4, [R1,#8]
544D04:  ADD.W           R1, R0, #0x30 ; '0'
544D08:  IT EQ
544D0A:  ADDEQ           R1, R6, #4
544D0C:  ADD             R0, SP, #0x30+var_24; this
544D0E:  VLDR            S6, [R1]
544D12:  VLDR            S8, [R1,#4]
544D16:  VLDR            S10, [R1,#8]
544D1A:  VSUB.F32        S0, S0, S6
544D1E:  VSUB.F32        S2, S2, S8
544D22:  VSUB.F32        S4, S4, S10
544D26:  VSTR            S2, [SP,#0x30+var_20]
544D2A:  VSTR            S0, [SP,#0x30+var_24]
544D2E:  VSTR            S4, [SP,#0x30+var_1C]
544D32:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
544D36:  LDRD.W          R0, R1, [SP,#0x30+var_24]; float
544D3A:  MOVS            R2, #0; float
544D3C:  MOVS            R3, #0; float
544D3E:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
544D42:  MOV             R5, R0
544D44:  MOVS            R0, #off_18; this
544D46:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544D4A:  MOV             R4, R0
544D4C:  MOV             R0, R5; this
544D4E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
544D52:  LDR             R2, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x544D5C)
544D54:  MOV             R1, R0
544D56:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x544D5E)
544D58:  ADD             R2, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
544D5A:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
544D5C:  LDR             R3, [R2]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
544D5E:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
544D60:  B               loc_544D7A
544D62:  MOVS            R0, #off_18; this
544D64:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544D68:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x544D72)
544D6A:  MOV             R4, R0
544D6C:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x544D74)
544D6E:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
544D70:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
544D72:  LDR             R3, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
544D74:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
544D76:  LDR.W           R1, [R6,#0x55C]; float
544D7A:  LDR             R2, [R0]; float
544D7C:  MOV             R0, R4; this
544D7E:  LDR             R3, [R3]; float
544D80:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
544D84:  MOV             R0, R4
544D86:  ADD             SP, SP, #0x18
544D88:  VPOP            {D8}
544D8C:  POP.W           {R8}
544D90:  POP             {R4-R7,PC}
