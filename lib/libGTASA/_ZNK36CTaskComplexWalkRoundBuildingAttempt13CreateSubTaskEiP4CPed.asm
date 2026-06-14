; =========================================================
; Game Engine Function: _ZNK36CTaskComplexWalkRoundBuildingAttempt13CreateSubTaskEiP4CPed
; Address            : 0x50D0AC - 0x50D262
; =========================================================

50D0AC:  PUSH            {R4,R6,R7,LR}
50D0AE:  ADD             R7, SP, #8
50D0B0:  SUB             SP, SP, #0x20
50D0B2:  MOV             R4, R0
50D0B4:  MOVS            R0, #0
50D0B6:  CMP.W           R1, #0x1A6
50D0BA:  BLT             loc_50D0F4
50D0BC:  MOVW            R3, #0x385
50D0C0:  CMP             R1, R3
50D0C2:  BGT             loc_50D12E
50D0C4:  CMP.W           R1, #0x1A6
50D0C8:  BEQ             loc_50D170
50D0CA:  CMP.W           R1, #0x384
50D0CE:  BNE             loc_50D1C0
50D0D0:  MOVS            R0, #word_2C; this
50D0D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D0D6:  LDR             R2, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x50D0E2)
50D0D8:  MOVS            R3, #0
50D0DA:  LDRSB.W         R1, [R4,#0x48]; int
50D0DE:  ADD             R2, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
50D0E0:  STRD.W          R3, R3, [SP,#0x28+var_28]; bool
50D0E4:  LDR             R2, [R2]; CTaskSimpleGoTo::ms_fTargetRadius ...
50D0E6:  LDR             R3, [R2]; float
50D0E8:  ADD.W           R2, R4, #0x14; CVector *
50D0EC:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
50D0F0:  ADD             SP, SP, #0x20 ; ' '
50D0F2:  POP             {R4,R6,R7,PC}; float
50D0F4:  CMP             R1, #0xCB
50D0F6:  BEQ             loc_50D1A8
50D0F8:  MOVW            R4, #0x19B
50D0FC:  CMP             R1, R4
50D0FE:  BEQ.W           loc_50D236
50D102:  MOVW            R4, #0x1A5
50D106:  CMP             R1, R4
50D108:  BNE             loc_50D1C0
50D10A:  MOVS            R0, #dword_20; this
50D10C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D110:  LDR             R1, =(aScratchhead - 0x50D11C); "ScratchHead"
50D112:  MOVS            R2, #0
50D114:  MOV.W           R3, #0x40800000
50D118:  ADD             R1, PC; "ScratchHead"
50D11A:  STRD.W          R4, R1, [SP,#0x28+var_28]
50D11E:  MOVS            R1, #0
50D120:  STR             R2, [SP,#0x28+var_20]
50D122:  MOVS            R2, #0x87
50D124:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50D128:  LDR             R1, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x50D12E)
50D12A:  ADD             R1, PC; _ZTV22CTaskSimpleScratchHead_ptr ; unsigned int
50D12C:  B               loc_50D258
50D12E:  MOVW            R3, #0x386
50D132:  CMP             R1, R3
50D134:  BEQ             loc_50D1C4
50D136:  MOVW            R2, #0x389
50D13A:  CMP             R1, R2
50D13C:  BNE             loc_50D1C0
50D13E:  MOVS            R0, #off_3C; this
50D140:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D144:  LDR             R3, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x50D14E)
50D146:  LDRSB.W         R1, [R4,#0x48]; int
50D14A:  ADD             R3, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
50D14C:  LDR             R2, [R4,#0xC]; CPointRoute *
50D14E:  MOVS            R4, #1
50D150:  LDR             R3, [R3]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
50D152:  STR             R4, [SP,#0x28+var_18]; bool
50D154:  VLDR            S0, [R3]
50D158:  MOVS            R3, #0
50D15A:  STRD.W          R3, R3, [SP,#0x28+var_20]; bool
50D15E:  MOVS            R3, #0; int
50D160:  VSTR            S0, [SP,#0x28+var_28]
50D164:  VSTR            S0, [SP,#0x28+var_24]
50D168:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
50D16C:  ADD             SP, SP, #0x20 ; ' '
50D16E:  POP             {R4,R6,R7,PC}
50D170:  MOVS            R0, #dword_34; this
50D172:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D176:  LDR.W           R12, =(aLookabout - 0x50D186); "LookAbout"
50D17A:  MOVS            R1, #0
50D17C:  MOVS            R2, #0
50D17E:  MOV.W           R3, #0x1A6
50D182:  ADD             R12, PC; "LookAbout"
50D184:  MOV.W           R4, #0x3E8
50D188:  MOVT            R1, #0xC080
50D18C:  STRD.W          R1, R4, [SP,#0x28+var_28]; float
50D190:  MOVS            R1, #0; int
50D192:  STRD.W          R3, R12, [SP,#0x28+var_20]; int
50D196:  MOV.W           R3, #0x40800000; int
50D19A:  STR             R2, [SP,#0x28+var_18]; int
50D19C:  MOVS            R2, #9; int
50D19E:  BLX             j__ZN23CTaskSimpleRunTimedAnimC2E12AssocGroupId11AnimationIdffiiPKcb_0; CTaskSimpleRunTimedAnim::CTaskSimpleRunTimedAnim(AssocGroupId,AnimationId,float,float,int,int,char const*,bool)
50D1A2:  LDR             R1, =(_ZTV20CTaskSimpleLookAbout_ptr - 0x50D1A8)
50D1A4:  ADD             R1, PC; _ZTV20CTaskSimpleLookAbout_ptr ; unsigned int
50D1A6:  B               loc_50D258
50D1A8:  MOVS            R0, #dword_20; this
50D1AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D1AE:  MOV.W           R1, #0x41000000
50D1B2:  MOVS            R2, #0; bool
50D1B4:  STR             R1, [SP,#0x28+var_28]; float
50D1B6:  MOV.W           R1, #0x3E8; int
50D1BA:  MOVS            R3, #0; bool
50D1BC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
50D1C0:  ADD             SP, SP, #0x20 ; ' '
50D1C2:  POP             {R4,R6,R7,PC}; float
50D1C4:  LDR             R0, [R2,#0x14]
50D1C6:  LDR             R1, [R4,#0xC]
50D1C8:  ADD.W           R3, R0, #0x30 ; '0'
50D1CC:  CMP             R0, #0
50D1CE:  ADD             R0, SP, #0x28+var_14; this
50D1D0:  VLDR            S0, [R1,#4]
50D1D4:  IT EQ
50D1D6:  ADDEQ           R3, R2, #4
50D1D8:  VLDR            S2, [R3]
50D1DC:  VLDR            S4, [R3,#4]
50D1E0:  VSUB.F32        S0, S0, S2
50D1E4:  VLDR            S6, [R3,#8]
50D1E8:  VSTR            S0, [SP,#0x28+var_14]
50D1EC:  VLDR            S0, [R1,#8]
50D1F0:  VSUB.F32        S0, S0, S4
50D1F4:  VSTR            S0, [SP,#0x28+var_10]
50D1F8:  VLDR            S0, [R1,#0xC]
50D1FC:  VSUB.F32        S0, S0, S6
50D200:  VSTR            S0, [SP,#0x28+var_C]
50D204:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
50D208:  LDRD.W          R0, R1, [SP,#0x28+var_14]; float
50D20C:  MOVS            R2, #0; float
50D20E:  MOVS            R3, #0; float
50D210:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
50D214:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
50D218:  MOV             R4, R0
50D21A:  MOVS            R0, #off_18; this
50D21C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D220:  MOVW            R3, #0xCCCD
50D224:  MOV             R1, R4; float
50D226:  MOVT            R3, #0x3DCC; float
50D22A:  MOV.W           R2, #0x3F800000; float
50D22E:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
50D232:  ADD             SP, SP, #0x20 ; ' '
50D234:  POP             {R4,R6,R7,PC}
50D236:  MOVS            R0, #dword_20; this
50D238:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50D23C:  LDR             R1, =(aHitwall - 0x50D248); "HitWall"
50D23E:  MOVS            R2, #0
50D240:  MOV.W           R3, #0x40800000
50D244:  ADD             R1, PC; "HitWall"
50D246:  STRD.W          R4, R1, [SP,#0x28+var_28]
50D24A:  MOVS            R1, #0
50D24C:  STR             R2, [SP,#0x28+var_20]
50D24E:  MOVS            R2, #0x26 ; '&'
50D250:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
50D254:  LDR             R1, =(_ZTV18CTaskSimpleHitWall_ptr - 0x50D25A)
50D256:  ADD             R1, PC; _ZTV18CTaskSimpleHitWall_ptr
50D258:  LDR             R1, [R1]; `vtable for'CTaskSimpleScratchHead
50D25A:  ADDS            R1, #8
50D25C:  STR             R1, [R0]
50D25E:  ADD             SP, SP, #0x20 ; ' '
50D260:  POP             {R4,R6,R7,PC}
