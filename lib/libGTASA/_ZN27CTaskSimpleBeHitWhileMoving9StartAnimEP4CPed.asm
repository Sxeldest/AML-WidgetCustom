; =========================================================
; Game Engine Function: _ZN27CTaskSimpleBeHitWhileMoving9StartAnimEP4CPed
; Address            : 0x4DF38C - 0x4DF606
; =========================================================

4DF38C:  PUSH            {R4-R7,LR}
4DF38E:  ADD             R7, SP, #0xC
4DF390:  PUSH.W          {R8}
4DF394:  MOV             R4, R0
4DF396:  MOV             R5, R1
4DF398:  LDR             R0, [R4,#0xC]
4DF39A:  CMP             R0, #4
4DF39C:  IT NE
4DF39E:  CMPNE           R0, #2
4DF3A0:  BNE             loc_4DF3BE
4DF3A2:  MOV             R0, R5; this
4DF3A4:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DF3A8:  CBNZ            R0, loc_4DF3B4
4DF3AA:  BLX             rand
4DF3AE:  TST.W           R0, #1
4DF3B2:  BNE             loc_4DF42C
4DF3B4:  BLX             rand
4DF3B8:  TST.W           R0, #7
4DF3BC:  BEQ             loc_4DF42C
4DF3BE:  MOV             R0, R5; this
4DF3C0:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DF3C4:  CBNZ            R0, loc_4DF3D6
4DF3C6:  BLX             rand
4DF3CA:  TST.W           R0, #1
4DF3CE:  BNE             loc_4DF3D6
4DF3D0:  BLX             rand
4DF3D4:  B               loc_4DF5C6
4DF3D6:  LDR             R1, [R4,#0x10]
4DF3D8:  MOVS            R6, #0x1C
4DF3DA:  LDR             R0, [R5,#0x18]
4DF3DC:  SUBS            R2, R1, #1
4DF3DE:  CMP             R2, #3
4DF3E0:  IT CC
4DF3E2:  ADDCC.W         R6, R1, #0x1C
4DF3E6:  MOV             R1, R6
4DF3E8:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DF3EC:  CMP             R0, #0
4DF3EE:  STR             R0, [R4,#0x14]
4DF3F0:  BEQ             loc_4DF400
4DF3F2:  VLDR            S0, [R0,#0x1C]
4DF3F6:  VCMPE.F32       S0, #0.0
4DF3FA:  VMRS            APSR_nzcv, FPSCR
4DF3FE:  BGE             loc_4DF410
4DF400:  LDR             R0, [R5,#0x18]; int
4DF402:  MOVS            R1, #0; int
4DF404:  MOV             R2, R6; unsigned int
4DF406:  MOV.W           R3, #0x41000000
4DF40A:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DF40E:  STR             R0, [R4,#0x14]
4DF410:  MOVS            R1, #0; float
4DF412:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DF416:  LDR             R0, [R4,#0x14]
4DF418:  LDRH            R1, [R0,#0x2E]
4DF41A:  ORR.W           R1, R1, #1
4DF41E:  STRH            R1, [R0,#0x2E]
4DF420:  LDR             R0, [R4,#0x14]
4DF422:  LDRH            R1, [R0,#0x2E]
4DF424:  ORR.W           R1, R1, #8
4DF428:  STRH            R1, [R0,#0x2E]
4DF42A:  B               loc_4DF5C6
4DF42C:  LDR             R0, [R4,#0x10]
4DF42E:  CMP             R0, #1
4DF430:  BEQ             loc_4DF44E
4DF432:  CMP             R0, #3
4DF434:  BEQ             loc_4DF454
4DF436:  CMP             R0, #2
4DF438:  BNE             loc_4DF45A
4DF43A:  BLX             rand
4DF43E:  ANDS.W          R0, R0, #1
4DF442:  MOV.W           R1, #0x1A
4DF446:  ADD.W           R8, R1, R0,LSL#3
4DF44A:  BEQ             loc_4DF482
4DF44C:  B               loc_4DF5E0
4DF44E:  MOV.W           R8, #0x19
4DF452:  B               loc_4DF482
4DF454:  MOV.W           R8, #0x1B
4DF458:  B               loc_4DF482
4DF45A:  LDR             R0, [R4,#0xC]
4DF45C:  CMP             R0, #2
4DF45E:  BNE             loc_4DF466
4DF460:  MOV.W           R8, #0x14
4DF464:  B               loc_4DF482
4DF466:  BLX             rand
4DF46A:  TST.W           R0, #1
4DF46E:  BNE.W           loc_4DF5AC
4DF472:  BLX             rand
4DF476:  TST.W           R0, #1
4DF47A:  BNE.W           loc_4DF5DC
4DF47E:  MOV.W           R8, #0x13
4DF482:  LDR.W           R0, [R5,#0x100]
4DF486:  CMP             R0, #0
4DF488:  BNE.W           loc_4DF5C6
4DF48C:  MOV             R0, R5; this
4DF48E:  BLX             j__ZN4CPed13ClearLookFlagEv; CPed::ClearLookFlag(void)
4DF492:  MOV             R0, R5; this
4DF494:  BLX             j__ZN4CPed12ClearAimFlagEv; CPed::ClearAimFlag(void)
4DF498:  LDR             R0, [R5,#0x18]
4DF49A:  MOV             R1, R8
4DF49C:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DF4A0:  MOV             R6, R0
4DF4A2:  CBZ             R6, loc_4DF50C
4DF4A4:  MOV             R0, R6; this
4DF4A6:  MOVS            R1, #0; float
4DF4A8:  MOV.W           R8, #0
4DF4AC:  BLX             j__ZN21CAnimBlendAssociation14SetCurrentTimeEf; CAnimBlendAssociation::SetCurrentTime(float)
4DF4B0:  LDRH            R0, [R6,#0x2E]
4DF4B2:  MOV.W           R1, #0x41000000
4DF4B6:  STRD.W          R8, R1, [R6,#0x18]
4DF4BA:  ORR.W           R0, R0, #1
4DF4BE:  STRH            R0, [R6,#0x2E]
4DF4C0:  MOV             R0, R5; this
4DF4C2:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DF4C6:  CMP             R0, #1
4DF4C8:  BNE             loc_4DF554
4DF4CA:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DF4D2)
4DF4CC:  LDR             R1, [R6,#0x14]
4DF4CE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DF4D0:  VLDR            S0, =1000.0
4DF4D4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DF4D6:  VLDR            S2, [R1,#0x10]
4DF4DA:  VLDR            S4, [R0]
4DF4DE:  VMUL.F32        S0, S2, S0
4DF4E2:  VCVT.F32.U32    S2, S4
4DF4E6:  LDRSH.W         R0, [R6,#0x2C]
4DF4EA:  BIC.W           R0, R0, #1
4DF4EE:  CMP             R0, #0x6E ; 'n'
4DF4F0:  VADD.F32        S0, S0, S2
4DF4F4:  BNE             loc_4DF5B2
4DF4F6:  VLDR            S2, =-1000.0
4DF4FA:  VLDR            S4, [R6,#0x20]
4DF4FE:  VMUL.F32        S2, S4, S2
4DF502:  VADD.F32        S0, S0, S2
4DF506:  VLDR            S2, =100.0
4DF50A:  B               loc_4DF5B6
4DF50C:  LDR             R0, [R5,#0x18]; int
4DF50E:  MOVS            R1, #0; int
4DF510:  MOV             R2, R8; unsigned int
4DF512:  MOV.W           R3, #0x41000000
4DF516:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
4DF51A:  STR             R0, [R4,#0x14]
4DF51C:  MOV             R0, R5; this
4DF51E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4DF522:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4DF52E)
4DF524:  MOV.W           R3, #0x3E8
4DF528:  LDRH            R1, [R5,#0x24]
4DF52A:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
4DF52C:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
4DF52E:  LDR             R0, [R0]; CTimer::m_FrameCounter
4DF530:  ADD             R0, R1
4DF532:  MOV             R1, #0x10624DD3
4DF53A:  UMULL.W         R1, R2, R0, R1
4DF53E:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DF544)
4DF540:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DF542:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4DF544:  LSRS            R2, R2, #6
4DF546:  MLS.W           R0, R2, R3, R0
4DF54A:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4DF54C:  ADD             R0, R1
4DF54E:  ADD.W           R0, R0, #0x3E8
4DF552:  B               loc_4DF5C2
4DF554:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4DF55C)
4DF556:  LDR             R1, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x4DF560)
4DF558:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4DF55A:  LDR             R2, [R6,#0x14]
4DF55C:  ADD             R1, PC; _ZN6CTimer14m_FrameCounterE_ptr
4DF55E:  VLDR            S0, =1000.0
4DF562:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4DF564:  LDR             R1, [R1]; CTimer::m_FrameCounter ...
4DF566:  VLDR            S2, [R2,#0x10]
4DF56A:  VLDR            S4, [R0]
4DF56E:  LDRH            R0, [R5,#0x24]
4DF570:  VMUL.F32        S0, S2, S0
4DF574:  LDR             R1, [R1]; CTimer::m_FrameCounter
4DF576:  VCVT.F32.U32    S2, S4
4DF57A:  ADD             R0, R1
4DF57C:  MOV             R1, #0x10624DD3
4DF584:  UMULL.W         R1, R2, R0, R1
4DF588:  VADD.F32        S0, S0, S2
4DF58C:  VLDR            S2, =500.0
4DF590:  LSRS            R1, R2, #6
4DF592:  MOV.W           R2, #0x3E8
4DF596:  MLS.W           R0, R1, R2, R0
4DF59A:  VADD.F32        S0, S0, S2
4DF59E:  VMOV            S4, R0
4DF5A2:  VCVT.F32.U32    S4, S4
4DF5A6:  VADD.F32        S0, S0, S4
4DF5AA:  B               loc_4DF5BA
4DF5AC:  MOV.W           R8, #0x25 ; '%'
4DF5B0:  B               loc_4DF5E0
4DF5B2:  VLDR            S2, =500.0
4DF5B6:  VADD.F32        S0, S0, S2
4DF5BA:  VCVT.U32.F32    S0, S0
4DF5BE:  VMOV            R0, S0
4DF5C2:  STR.W           R0, [R5,#0x74C]
4DF5C6:  LDR             R1, =(_ZN27CTaskSimpleBeHitWhileMoving28FinishAnimBeHitWhileMovingCBEP21CAnimBlendAssociationPv_ptr - 0x4DF5D0)
4DF5C8:  MOV             R2, R4
4DF5CA:  LDR             R0, [R4,#0x14]
4DF5CC:  ADD             R1, PC; _ZN27CTaskSimpleBeHitWhileMoving28FinishAnimBeHitWhileMovingCBEP21CAnimBlendAssociationPv_ptr
4DF5CE:  LDR             R1, [R1]; CTaskSimpleBeHitWhileMoving::FinishAnimBeHitWhileMovingCB(CAnimBlendAssociation *,void *)
4DF5D0:  POP.W           {R8}
4DF5D4:  POP.W           {R4-R7,LR}
4DF5D8:  B.W             sub_18C20C
4DF5DC:  MOV.W           R8, #0x20 ; ' '
4DF5E0:  LDR             R0, [R5,#0x18]
4DF5E2:  MOV             R1, R8
4DF5E4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4DF5E8:  CMP             R0, #0
4DF5EA:  STR             R0, [R4,#0x14]
4DF5EC:  BEQ             loc_4DF5FE
4DF5EE:  VLDR            S0, [R0,#0x1C]
4DF5F2:  VCMPE.F32       S0, #0.0
4DF5F6:  VMRS            APSR_nzcv, FPSCR
4DF5FA:  BGE.W           loc_4DF410
4DF5FE:  LDR             R0, [R5,#0x18]
4DF600:  MOVS            R1, #0
4DF602:  MOV             R2, R8
4DF604:  B               loc_4DF406
