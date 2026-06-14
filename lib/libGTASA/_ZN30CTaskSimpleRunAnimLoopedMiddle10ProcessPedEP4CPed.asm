; =========================================================
; Game Engine Function: _ZN30CTaskSimpleRunAnimLoopedMiddle10ProcessPedEP4CPed
; Address            : 0x4D73BC - 0x4D74B8
; =========================================================

4D73BC:  PUSH            {R4,R5,R7,LR}
4D73BE:  ADD             R7, SP, #8
4D73C0:  MOV             R4, R0
4D73C2:  MOV             R5, R1
4D73C4:  LDRB            R0, [R4,#0xC]
4D73C6:  LSLS            R0, R0, #0x1F
4D73C8:  ITT NE
4D73CA:  MOVNE           R0, #1
4D73CC:  POPNE           {R4,R5,R7,PC}
4D73CE:  LDR             R0, [R4,#8]
4D73D0:  CBZ             R0, loc_4D73E4
4D73D2:  LDR             R2, [R4,#0x14]
4D73D4:  MOVS            R1, #0
4D73D6:  LDR             R0, [R5,#0x18]
4D73D8:  CMP             R2, #0
4D73DA:  IT EQ
4D73DC:  MOVEQ           R1, #1
4D73DE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4D73E2:  CBZ             R0, loc_4D744A
4D73E4:  LDR             R1, [R4,#0x44]
4D73E6:  LDR             R0, [R5,#0x18]; int
4D73E8:  CBZ             R1, loc_4D73F4
4D73EA:  LDR             R2, [R4,#0x18]
4D73EC:  LDR             R3, [R4,#0x48]
4D73EE:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClumpP19CAnimBlendHierarchyif; CAnimManager::BlendAnimation(RpClump *,CAnimBlendHierarchy *,int,float)
4D73F2:  B               loc_4D73FE
4D73F4:  LDRD.W          R1, R2, [R4,#0x10]; unsigned int
4D73F8:  LDR             R3, [R4,#0x48]
4D73FA:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4D73FE:  LDR             R1, =(_ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4D7408)
4D7400:  MOV             R2, R4; void *
4D7402:  STR             R0, [R4,#8]
4D7404:  ADD             R1, PC; _ZN15CTaskSimpleAnim15FinishRunAnimCBEP21CAnimBlendAssociationPv_ptr
4D7406:  LDR             R1, [R1]; CTaskSimpleAnim::FinishRunAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4D7408:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4D740C:  LDR             R0, [R4,#8]
4D740E:  MOVS            R2, #1
4D7410:  VLDR            S0, [R4,#0x4C]
4D7414:  LDR             R1, [R0,#0x14]
4D7416:  VLDR            S2, [R1,#0x10]
4D741A:  VMUL.F32        S0, S0, S2
4D741E:  VSTR            S0, [R4,#0x54]
4D7422:  LDR             R0, [R0,#0x14]
4D7424:  VLDR            S0, [R4,#0x50]
4D7428:  LDR             R1, [R4,#0x5C]
4D742A:  VLDR            S2, [R0,#0x10]
4D742E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4D7438)
4D7430:  VMUL.F32        S0, S0, S2
4D7434:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4D7436:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4D7438:  VSTR            S0, [R4,#0x58]
4D743C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4D743E:  STRB.W          R2, [R4,#0x68]
4D7442:  STRD.W          R0, R1, [R4,#0x60]
4D7446:  MOVS            R0, #0
4D7448:  POP             {R4,R5,R7,PC}
4D744A:  LDRB.W          R0, [R4,#0x68]
4D744E:  CBZ             R0, loc_4D747C
4D7450:  LDRB.W          R0, [R4,#0x69]
4D7454:  CBZ             R0, loc_4D746A
4D7456:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4D745E)
4D7458:  MOVS            R1, #0
4D745A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4D745C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4D745E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4D7460:  STRB.W          R1, [R4,#0x69]
4D7464:  STR             R0, [R4,#0x60]
4D7466:  MOV             R1, R0
4D7468:  B               loc_4D7474
4D746A:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4D7472)
4D746C:  LDR             R1, [R4,#0x60]
4D746E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4D7470:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4D7472:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4D7474:  LDR             R2, [R4,#0x64]
4D7476:  ADD             R1, R2
4D7478:  CMP             R1, R0
4D747A:  BLS             loc_4D74B4
4D747C:  LDR             R0, [R4,#8]; this
4D747E:  CBZ             R0, loc_4D74B4
4D7480:  VLDR            S0, [R4,#0x58]
4D7484:  VLDR            S2, [R0,#0x20]
4D7488:  VCMPE.F32       S2, S0
4D748C:  VMRS            APSR_nzcv, FPSCR
4D7490:  BLE             loc_4D74B4
4D7492:  VLDR            S4, [R0,#0x28]
4D7496:  VSUB.F32        S2, S2, S4
4D749A:  VCMPE.F32       S2, S0
4D749E:  VMRS            APSR_nzcv, FPSCR
4D74A2:  BGT             loc_4D74B4
4D74A4:  LDR             R1, [R4,#0x54]; float
4D74A6:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4D74AA:  LDR             R0, [R4,#8]
4D74AC:  LDRH            R1, [R0,#0x2E]
4D74AE:  ORR.W           R1, R1, #1
4D74B2:  STRH            R1, [R0,#0x2E]
4D74B4:  MOVS            R0, #0
4D74B6:  POP             {R4,R5,R7,PC}
