; =========================================================
; Game Engine Function: _ZN21CTaskInteriorLieInBed10ProcessPedEP4CPed
; Address            : 0x52A3CC - 0x52A774
; =========================================================

52A3CC:  PUSH            {R4-R7,LR}
52A3CE:  ADD             R7, SP, #0xC
52A3D0:  PUSH.W          {R8}
52A3D4:  SUB             SP, SP, #0x10; float
52A3D6:  MOV             R4, R0
52A3D8:  MOV             R5, R1
52A3DA:  LDR             R0, [R4,#0x14]
52A3DC:  MOVS            R1, #1
52A3DE:  CMP             R0, #0
52A3E0:  ITE NE
52A3E2:  LDRSHNE.W       R6, [R0,#0x2C]
52A3E6:  MOVEQ.W         R6, #0xFFFFFFFF
52A3EA:  MOV             R0, R5
52A3EC:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
52A3F0:  LDRB.W          R0, [R4,#0x29]
52A3F4:  CBZ             R0, loc_52A402
52A3F6:  LDR             R1, [R4,#0x2C]
52A3F8:  LDR             R0, [R5,#0x18]
52A3FA:  ADDS            R1, #2
52A3FC:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52A400:  CBZ             R0, loc_52A42C
52A402:  LDRB.W          R0, [R4,#0x2A]
52A406:  CMP             R0, #0
52A408:  BEQ             loc_52A49C
52A40A:  LDR             R0, =(g_interiorMan_ptr - 0x52A416)
52A40C:  MOVS            R1, #0; int
52A40E:  MOV.W           R8, #0
52A412:  ADD             R0, PC; g_interiorMan_ptr
52A414:  LDR             R0, [R0]; g_interiorMan ; this
52A416:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
52A41A:  CBZ             R0, loc_52A438
52A41C:  LDR             R0, [R4,#0x2C]
52A41E:  CMP             R6, R0
52A420:  BNE             loc_52A448
52A422:  LDR             R0, [R4,#0x14]
52A424:  MOV.W           R1, #0xC1000000
52A428:  STR             R1, [R0,#0x1C]
52A42A:  B               loc_52A49C
52A42C:  LDR.W           R0, [R5,#0x440]
52A430:  MOVS            R1, #0
52A432:  STRB.W          R1, [R0,#0x24A]
52A436:  B               loc_52A440
52A438:  LDR.W           R0, [R5,#0x440]
52A43C:  STRB.W          R8, [R0,#0x24A]
52A440:  MOVS            R6, #1
52A442:  STRH.W          R6, [R0,#0x248]
52A446:  B               loc_52A76A
52A448:  ADDS            R1, R0, #1
52A44A:  CMP             R6, R1
52A44C:  BNE             loc_52A48C
52A44E:  LDRB.W          R0, [R4,#0x28]
52A452:  CBNZ            R0, loc_52A49C
52A454:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A460)
52A456:  MOVS            R2, #0; void *
52A458:  LDR             R0, [R4,#0x14]; this
52A45A:  MOVS            R6, #0
52A45C:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52A45E:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A460:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A464:  LDR             R1, [R4,#0x2C]
52A466:  MOVS            R3, #0
52A468:  LDR             R0, [R5,#0x18]; int
52A46A:  MOVT            R3, #0x447A
52A46E:  ADDS            R2, R1, #2; unsigned int
52A470:  MOVS            R1, #0x54 ; 'T'; int
52A472:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52A476:  LDR             R1, =(_ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A480)
52A478:  MOV             R2, R4; void *
52A47A:  STR             R0, [R4,#0x14]
52A47C:  ADD             R1, PC; _ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52A47E:  LDR             R1, [R1]; CTaskInteriorLieInBed::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A480:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A484:  MOVS            R0, #1
52A486:  STRB.W          R0, [R4,#0x28]
52A48A:  B               loc_52A76A
52A48C:  ADDS            R0, #2
52A48E:  CMP             R6, R0
52A490:  ITTTT EQ
52A492:  LDREQ           R0, [R4,#0x14]
52A494:  MOVEQ           R1, #0
52A496:  MOVTEQ          R1, #0x4040
52A49A:  STREQ           R1, [R0,#0x24]
52A49C:  LDR             R0, [R4,#0x14]
52A49E:  CBZ             R0, loc_52A4CC
52A4A0:  LDRB.W          R0, [R4,#0x28]
52A4A4:  CMP             R0, #0
52A4A6:  BEQ.W           loc_52A5F2
52A4AA:  LDR             R1, [R5,#0x14]
52A4AC:  ORR.W           R0, R6, #1
52A4B0:  MOVW            R3, #0x153
52A4B4:  ADD.W           R2, R1, #0x30 ; '0'
52A4B8:  CMP             R1, #0
52A4BA:  IT EQ
52A4BC:  ADDEQ           R2, R5, #4
52A4BE:  CMP             R0, R3
52A4C0:  LDR.W           R8, [R2,#8]
52A4C4:  BNE             loc_52A51C
52A4C6:  LDR             R2, =(_ZN13CCarEnterExit23ms_vecPedBedLAnimOffsetE_ptr - 0x52A4CC)
52A4C8:  ADD             R2, PC; _ZN13CCarEnterExit23ms_vecPedBedLAnimOffsetE_ptr
52A4CA:  B               loc_52A528
52A4CC:  LDR             R0, =(g_interiorMan_ptr - 0x52A4D6)
52A4CE:  MOVS            R1, #0; int
52A4D0:  MOVS            R6, #0
52A4D2:  ADD             R0, PC; g_interiorMan_ptr
52A4D4:  LDR             R0, [R0]; g_interiorMan ; this
52A4D6:  BLX             j__ZN17InteriorManager_c14AreAnimsLoadedEi; InteriorManager_c::AreAnimsLoaded(int)
52A4DA:  CMP             R0, #0
52A4DC:  BEQ.W           loc_52A76A
52A4E0:  LDR             R0, [R4,#0x18]
52A4E2:  ADDS            R2, R0, #1; unsigned int
52A4E4:  BEQ             loc_52A596
52A4E6:  LDR             R1, [R4,#0x2C]
52A4E8:  CMP             R0, R1
52A4EA:  BNE.W           loc_52A768
52A4EE:  LDR             R0, [R4,#8]
52A4F0:  CMP             R0, #0
52A4F2:  BLT             loc_52A506
52A4F4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52A4FC)
52A4F6:  MOVS            R3, #1
52A4F8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52A4FA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
52A4FC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
52A4FE:  STRB.W          R3, [R4,#0x24]
52A502:  STRD.W          R1, R0, [R4,#0x1C]
52A506:  LDR             R0, [R5,#0x18]; int
52A508:  MOVS            R3, #0x447A0000
52A50E:  MOVS            R1, #0x54 ; 'T'; int
52A510:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52A514:  LDR             R1, =(_ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A51C)
52A516:  STR             R0, [R4,#0x14]
52A518:  ADD             R1, PC; _ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52A51A:  B               loc_52A5DC
52A51C:  SUBW            R0, R6, #0x155
52A520:  CMP             R0, #1
52A522:  BHI             loc_52A536
52A524:  LDR             R2, =(_ZN13CCarEnterExit23ms_vecPedBedRAnimOffsetE_ptr - 0x52A52A)
52A526:  ADD             R2, PC; _ZN13CCarEnterExit23ms_vecPedBedRAnimOffsetE_ptr
52A528:  LDR             R2, [R2]; CCarEnterExit::ms_vecPedBedLAnimOffset
52A52A:  ADD             R0, SP, #0x20+var_1C
52A52C:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
52A530:  LDR             R0, [SP,#0x20+var_1C]
52A532:  LDR             R1, [SP,#0x20+var_18]
52A534:  B               loc_52A53A
52A536:  LDRD.W          R0, R1, [R2]
52A53A:  LDR             R2, [R5,#0x14]
52A53C:  CBZ             R2, loc_52A54A
52A53E:  STR             R0, [R2,#0x30]
52A540:  LDR             R0, [R5,#0x14]
52A542:  STR             R1, [R0,#0x34]
52A544:  LDR             R0, [R5,#0x14]
52A546:  ADDS            R0, #0x38 ; '8'
52A548:  B               loc_52A552
52A54A:  STRD.W          R0, R1, [R5,#4]
52A54E:  ADD.W           R0, R5, #0xC
52A552:  STR.W           R8, [R0]
52A556:  MOVS            R1, #0; float
52A558:  LDR             R0, [R4,#0x2C]
52A55A:  STRB.W          R1, [R4,#0x28]
52A55E:  ADDS            R0, #1
52A560:  CMP             R6, R0
52A562:  BNE             loc_52A5F2
52A564:  ADDW            R0, R5, #0x55C
52A568:  VLDR            S0, =3.1416
52A56C:  VLDR            S2, [R0]
52A570:  VADD.F32        S0, S2, S0
52A574:  VMOV            R0, S0; this
52A578:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
52A57C:  MOV             R1, R0
52A57E:  LDR             R0, [R5,#0x14]; this
52A580:  VMOV            S0, R1; x
52A584:  STR.W           R1, [R5,#0x55C]
52A588:  CMP             R0, #0
52A58A:  STR.W           R1, [R5,#0x560]
52A58E:  BEQ             loc_52A5EE
52A590:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
52A594:  B               loc_52A5F2
52A596:  LDR.W           R0, [R5,#0x440]
52A59A:  MOVS            R1, #0
52A59C:  STRB.W          R1, [R0,#0x24A]
52A5A0:  STRH.W          R1, [R0,#0x248]
52A5A4:  LDRB            R0, [R4,#0x11]
52A5A6:  CMP             R0, #0
52A5A8:  BEQ.W           loc_52A74C
52A5AC:  LDR             R0, [R4,#8]
52A5AE:  CMP             R0, #0
52A5B0:  BLT             loc_52A5C4
52A5B2:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52A5BA)
52A5B4:  MOVS            R2, #1
52A5B6:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52A5B8:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
52A5BA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
52A5BC:  STRB.W          R2, [R4,#0x24]
52A5C0:  STRD.W          R1, R0, [R4,#0x1C]
52A5C4:  LDR             R1, [R4,#0x2C]
52A5C6:  MOVS            R3, #0
52A5C8:  LDR             R0, [R5,#0x18]; int
52A5CA:  MOVT            R3, #0x447A
52A5CE:  ADDS            R2, R1, #1; unsigned int
52A5D0:  MOVS            R1, #0x54 ; 'T'; int
52A5D2:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52A5D6:  LDR             R1, =(_ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A5DE)
52A5D8:  STR             R0, [R4,#0x14]
52A5DA:  ADD             R1, PC; _ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52A5DC:  LDR             R1, [R1]; CTaskInteriorLieInBed::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A5DE:  MOV             R2, R4; void *
52A5E0:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A5E4:  MOVS            R0, #1
52A5E6:  MOVS            R6, #0
52A5E8:  STRB.W          R0, [R4,#0x28]
52A5EC:  B               loc_52A76A
52A5EE:  VSTR            S0, [R5,#0x10]
52A5F2:  LDRB.W          R0, [R4,#0x24]
52A5F6:  CBZ             R0, loc_52A664
52A5F8:  LDRB.W          R0, [R4,#0x25]
52A5FC:  CBZ             R0, loc_52A612
52A5FE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52A606)
52A600:  MOVS            R1, #0
52A602:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52A604:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52A606:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52A608:  STRB.W          R1, [R4,#0x25]
52A60C:  STR             R0, [R4,#0x1C]
52A60E:  MOV             R1, R0
52A610:  B               loc_52A61C
52A612:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52A61A)
52A614:  LDR             R1, [R4,#0x1C]
52A616:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52A618:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52A61A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52A61C:  LDR             R2, [R4,#0x20]
52A61E:  ADD             R1, R2
52A620:  CMP             R1, R0
52A622:  BHI             loc_52A664
52A624:  LDR             R0, [R4,#0x14]; this
52A626:  LDR             R1, [R4,#0x2C]
52A628:  LDRSH.W         R2, [R0,#0x2C]
52A62C:  ADDS            R1, #2
52A62E:  CMP             R1, R2
52A630:  BEQ             loc_52A664
52A632:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A63A)
52A634:  MOVS            R2, #0; void *
52A636:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52A638:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A63A:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A63E:  LDR             R1, [R4,#0x2C]
52A640:  MOVS            R3, #0
52A642:  LDR             R0, [R5,#0x18]; int
52A644:  MOVT            R3, #0x447A
52A648:  ADDS            R2, R1, #2; unsigned int
52A64A:  MOVS            R1, #0x54 ; 'T'; int
52A64C:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52A650:  LDR             R1, =(_ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A65A)
52A652:  MOV             R2, R4; void *
52A654:  STR             R0, [R4,#0x14]
52A656:  ADD             R1, PC; _ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52A658:  LDR             R1, [R1]; CTaskInteriorLieInBed::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A65A:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A65E:  MOVS            R0, #1
52A660:  STRB.W          R0, [R4,#0x28]
52A664:  LDR             R0, [R4,#0x14]
52A666:  LDR             R1, [R4,#0x2C]
52A668:  LDRSH.W         R0, [R0,#0x2C]
52A66C:  CMP             R1, R0
52A66E:  BNE             loc_52A768
52A670:  LDR             R1, [R4,#0xC]
52A672:  MOVS            R3, #0; float
52A674:  LDR             R0, [R5,#0x14]
52A676:  MOVS            R6, #0
52A678:  ADD.W           R2, R0, #0x30 ; '0'
52A67C:  CMP             R0, #0
52A67E:  VLDR            S0, [R1,#4]
52A682:  VLDR            S2, [R1,#8]
52A686:  VLDR            S4, [R1,#0xC]
52A68A:  IT EQ
52A68C:  ADDEQ           R2, R5, #4
52A68E:  VLDR            S6, [R2]
52A692:  VLDR            S8, [R2,#4]
52A696:  VSUB.F32        S0, S0, S6
52A69A:  VLDR            S10, [R2,#8]
52A69E:  VSUB.F32        S2, S2, S8
52A6A2:  VLDR            S14, [R0,#0x10]
52A6A6:  VSUB.F32        S4, S4, S10
52A6AA:  VLDR            S1, [R0,#0x14]
52A6AE:  VLDR            S12, [R0,#8]
52A6B2:  MOVS            R2, #0; float
52A6B4:  VLDR            S3, [R0,#0x18]
52A6B8:  VMUL.F32        S8, S0, S0
52A6BC:  VMUL.F32        S6, S2, S2
52A6C0:  VMUL.F32        S10, S4, S4
52A6C4:  VADD.F32        S6, S8, S6
52A6C8:  VMOV.F32        S8, #1.0
52A6CC:  VADD.F32        S6, S6, S10
52A6D0:  VLDR            S10, =0.02
52A6D4:  VSQRT.F32       S6, S6
52A6D8:  VDIV.F32        S8, S8, S6
52A6DC:  VMUL.F32        S2, S2, S8
52A6E0:  VMUL.F32        S0, S0, S8
52A6E4:  VMIN.F32        D3, D3, D5
52A6E8:  VLDR            S10, [R0,#4]
52A6EC:  VMUL.F32        S4, S4, S8
52A6F0:  VLDR            S8, [R0]
52A6F4:  ADDW            R0, R5, #0x4E4
52A6F8:  VMUL.F32        S2, S2, S6
52A6FC:  VMUL.F32        S0, S0, S6
52A700:  VMUL.F32        S4, S4, S6
52A704:  VMUL.F32        S6, S10, S2
52A708:  VMUL.F32        S8, S8, S0
52A70C:  VMUL.F32        S2, S1, S2
52A710:  VMUL.F32        S0, S14, S0
52A714:  VMUL.F32        S10, S12, S4
52A718:  VMUL.F32        S4, S4, S3
52A71C:  VADD.F32        S6, S8, S6
52A720:  VADD.F32        S0, S0, S2
52A724:  VADD.F32        S2, S10, S6
52A728:  VADD.F32        S0, S4, S0
52A72C:  VSTR            S2, [R0]
52A730:  ADD.W           R0, R5, #0x4E8
52A734:  VSTR            S0, [R0]
52A738:  LDR             R1, [R4,#0xC]
52A73A:  LDRD.W          R0, R1, [R1,#0x10]; float
52A73E:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
52A742:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
52A746:  STR.W           R0, [R5,#0x560]
52A74A:  B               loc_52A76A
52A74C:  LDR             R2, [R4,#0x2C]; unsigned int
52A74E:  MOVS            R1, #0x54 ; 'T'; int
52A750:  LDR             R0, [R5,#0x18]; int
52A752:  MOV.W           R3, #0x40800000
52A756:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52A75A:  LDR             R1, =(_ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52A764)
52A75C:  MOV             R2, R4; void *
52A75E:  STR             R0, [R4,#0x14]
52A760:  ADD             R1, PC; _ZN21CTaskInteriorLieInBed12FinishAnimCBEP21CAnimBlendAssociationPv_ptr
52A762:  LDR             R1, [R1]; CTaskInteriorLieInBed::FinishAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52A764:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52A768:  MOVS            R6, #0
52A76A:  MOV             R0, R6
52A76C:  ADD             SP, SP, #0x10
52A76E:  POP.W           {R8}
52A772:  POP             {R4-R7,PC}
