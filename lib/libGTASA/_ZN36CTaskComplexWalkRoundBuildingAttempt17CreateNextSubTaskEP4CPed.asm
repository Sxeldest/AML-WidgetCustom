; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttempt17CreateNextSubTaskEP4CPed
; Address            : 0x50CEDC - 0x50D098
; =========================================================

50CEDC:  PUSH            {R4-R7,LR}
50CEDE:  ADD             R7, SP, #0xC
50CEE0:  PUSH.W          {R8}
50CEE4:  SUB             SP, SP, #0x20
50CEE6:  MOV             R5, R0
50CEE8:  MOV             R4, R1
50CEEA:  LDRB.W          R0, [R5,#0x49]
50CEEE:  MOV             R8, #0xFFFFFFBF
50CEF2:  MOV.W           R6, #0xFFFFFFFF
50CEF6:  LSLS            R0, R0, #0x1B
50CEF8:  BMI             loc_50CF80
50CEFA:  LDR             R0, [R5,#8]
50CEFC:  LDR             R1, [R0]
50CEFE:  LDR             R1, [R1,#0x14]
50CF00:  BLX             R1
50CF02:  CMP.W           R0, #0x1A6
50CF06:  BLT             loc_50CF1E
50CF08:  MOVW            R1, #0x385; unsigned int
50CF0C:  CMP             R0, R1
50CF0E:  BGT             loc_50CF70
50CF10:  CMP.W           R0, #0x1A6
50CF14:  BEQ             loc_50CFB4
50CF16:  CMP.W           R0, #0x384
50CF1A:  BEQ             loc_50CF32
50CF1C:  B               loc_50CF80
50CF1E:  CMP             R0, #0xCB
50CF20:  BEQ             loc_50CF80
50CF22:  MOVW            R1, #0x19B
50CF26:  CMP             R0, R1
50CF28:  BEQ             loc_50CF32
50CF2A:  MOVW            R1, #0x1A5; unsigned int
50CF2E:  CMP             R0, R1
50CF30:  BNE             loc_50CF80
50CF32:  LDRB.W          R0, [R5,#0x49]
50CF36:  LSLS            R0, R0, #0x1E
50CF38:  BMI             loc_50CFF8
50CF3A:  MOVS            R0, #dword_34; this
50CF3C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50CF40:  LDR             R1, =(aLookabout - 0x50CF4E); "LookAbout"
50CF42:  MOVS            R5, #0
50CF44:  MOVS            R2, #0
50CF46:  MOV.W           R3, #0x1A6
50CF4A:  ADD             R1, PC; "LookAbout"
50CF4C:  MOV.W           R6, #0x3E8
50CF50:  MOVT            R5, #0xC080
50CF54:  STRD.W          R5, R6, [SP,#0x30+var_30]; float
50CF58:  STRD.W          R3, R1, [SP,#0x30+var_28]; int
50CF5C:  MOVS            R1, #0; int
50CF5E:  STR             R2, [SP,#0x30+var_20]; int
50CF60:  MOVS            R2, #9; int
50CF62:  MOV.W           R3, #0x40800000; int
50CF66:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
50CF6A:  LDR             R1, =(_ZTV20CTaskSimpleLookAbout_ptr - 0x50CF70)
50CF6C:  ADD             R1, PC; _ZTV20CTaskSimpleLookAbout_ptr
50CF6E:  B               loc_50CFF0
50CF70:  MOVW            R1, #0x386; unsigned int
50CF74:  CMP             R0, R1
50CF76:  BEQ             loc_50D068
50CF78:  MOVW            R1, #0x389
50CF7C:  CMP             R0, R1
50CF7E:  BEQ             loc_50CFAA
50CF80:  LDR.W           R0, [R4,#0x484]
50CF84:  LDR.W           R1, [R4,#0x488]
50CF88:  LDR.W           R2, [R4,#0x48C]
50CF8C:  ANDS            R0, R6
50CF8E:  LDR.W           R3, [R4,#0x490]
50CF92:  ANDS            R1, R6
50CF94:  STR.W           R0, [R4,#0x484]
50CF98:  ANDS            R2, R6
50CF9A:  STR.W           R1, [R4,#0x488]
50CF9E:  AND.W           R3, R3, R8
50CFA2:  STR.W           R2, [R4,#0x48C]
50CFA6:  STR.W           R3, [R4,#0x490]
50CFAA:  MOVS            R0, #0
50CFAC:  ADD             SP, SP, #0x20 ; ' '
50CFAE:  POP.W           {R8}
50CFB2:  POP             {R4-R7,PC}; float
50CFB4:  LDRB.W          R0, [R5,#0x49]
50CFB8:  LSLS            R0, R0, #0x1E
50CFBA:  BMI             loc_50CFF8
50CFBC:  MOVS            R0, #dword_34; this
50CFBE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50CFC2:  LDR             R1, =(aLookabout - 0x50CFD0); "LookAbout"
50CFC4:  MOVS            R5, #0
50CFC6:  MOVS            R2, #0
50CFC8:  MOV.W           R3, #0x1A6
50CFCC:  ADD             R1, PC; "LookAbout"
50CFCE:  MOV.W           R6, #0x3E8
50CFD2:  MOVT            R5, #0xC080
50CFD6:  STRD.W          R5, R6, [SP,#0x30+var_30]; float
50CFDA:  STRD.W          R3, R1, [SP,#0x30+var_28]; int
50CFDE:  MOVS            R1, #0; int
50CFE0:  STR             R2, [SP,#0x30+var_20]; int
50CFE2:  MOVS            R2, #9; int
50CFE4:  MOV.W           R3, #0x40800000; int
50CFE8:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
50CFEC:  LDR             R1, =(_ZTV20CTaskSimpleLookAbout_ptr - 0x50CFF2)
50CFEE:  ADD             R1, PC; _ZTV20CTaskSimpleLookAbout_ptr
50CFF0:  LDR             R1, [R1]; `vtable for'CTaskSimpleLookAbout ...
50CFF2:  ADDS            R1, #8
50CFF4:  STR             R1, [R0]
50CFF6:  B               loc_50CFAC
50CFF8:  LDR             R0, [R4,#0x14]
50CFFA:  LDR             R1, [R5,#0xC]
50CFFC:  ADD.W           R2, R0, #0x30 ; '0'
50D000:  CMP             R0, #0
50D002:  ADD             R0, SP, #0x30+var_1C; this
50D004:  VLDR            S0, [R1,#4]
50D008:  IT EQ
50D00A:  ADDEQ           R2, R4, #4
50D00C:  VLDR            S2, [R2]
50D010:  VLDR            S4, [R2,#4]
50D014:  VSUB.F32        S0, S0, S2
50D018:  VLDR            S6, [R2,#8]
50D01C:  VSTR            S0, [SP,#0x30+var_1C]
50D020:  VLDR            S0, [R1,#8]
50D024:  VSUB.F32        S0, S0, S4
50D028:  VSTR            S0, [SP,#0x30+var_18]
50D02C:  VLDR            S0, [R1,#0xC]
50D030:  VSUB.F32        S0, S0, S6
50D034:  VSTR            S0, [SP,#0x30+var_14]
50D038:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50D03C:  LDR             R0, [SP,#0x30+var_1C]; this
50D03E:  MOVS            R2, #0; float
50D040:  LDR             R1, [SP,#0x30+var_18]; float
50D042:  MOVS            R3, #0; float
50D044:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
50D048:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
50D04C:  MOV             R4, R0
50D04E:  MOVS            R0, #off_18; this
50D050:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D054:  MOVW            R3, #0xCCCD
50D058:  MOV             R1, R4; float
50D05A:  MOVT            R3, #0x3DCC; float
50D05E:  MOV.W           R2, #0x3F800000; float
50D062:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
50D066:  B               loc_50CFAC
50D068:  MOVS            R0, #off_3C; this
50D06A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D06E:  LDR             R3, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50D07A)
50D070:  MOVS            R6, #1
50D072:  LDRSB.W         R1, [R5,#0x48]; int
50D076:  ADD             R3, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50D078:  LDR             R2, [R5,#0xC]; CPointRoute *
50D07A:  STR             R6, [SP,#0x30+var_20]; bool
50D07C:  LDR             R3, [R3]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
50D07E:  VLDR            S0, [R3]
50D082:  MOVS            R3, #0
50D084:  STRD.W          R3, R3, [SP,#0x30+var_28]; bool
50D088:  MOVS            R3, #0; int
50D08A:  VSTR            S0, [SP,#0x30+var_30]
50D08E:  VSTR            S0, [SP,#0x30+var_2C]
50D092:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
50D096:  B               loc_50CFAC
