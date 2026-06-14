; =========================================================
; Game Engine Function: _ZN16CTaskSimpleInAir10ProcessPedEP4CPed
; Address            : 0x52C45C - 0x52C9EE
; =========================================================

52C45C:  PUSH            {R4-R7,LR}
52C45E:  ADD             R7, SP, #0xC
52C460:  PUSH.W          {R8,R9,R11}
52C464:  SUB             SP, SP, #0x58
52C466:  MOV             R5, R1
52C468:  MOV             R6, R0
52C46A:  LDR             R0, [R5,#0x14]
52C46C:  ADD.W           R8, R0, #0x30 ; '0'
52C470:  ADD             R0, SP, #0x70+var_24
52C472:  LDM.W           R8, {R1,R2,R8}
52C476:  STM.W           R0, {R1,R2,R8}
52C47A:  LDRB.W          R0, [R6,#0x34]
52C47E:  CMP             R0, #0
52C480:  BEQ             loc_52C504
52C482:  LDRB.W          R0, [R6,#0x35]
52C486:  CBZ             R0, loc_52C49E
52C488:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52C492)
52C48C:  MOVS            R1, #0
52C48E:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52C490:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52C492:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52C494:  STRB.W          R1, [R6,#0x35]
52C498:  STR             R0, [R6,#0x2C]
52C49A:  MOV             R1, R0
52C49C:  B               loc_52C4AA
52C49E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x52C4A8)
52C4A2:  LDR             R1, [R6,#0x2C]
52C4A4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
52C4A6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
52C4A8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
52C4AA:  LDR             R2, [R6,#0x30]
52C4AC:  ADD             R1, R2
52C4AE:  CMP             R1, R0
52C4B0:  BHI             loc_52C504
52C4B2:  LDR.W           R0, [R5,#0x44C]
52C4B6:  CMP             R0, #0x27 ; '''
52C4B8:  BEQ             loc_52C504
52C4BA:  VLDR            S0, =50.0
52C4BE:  VMOV.F32        S4, #-20.0
52C4C2:  VLDR            S2, [R5,#0x50]
52C4C6:  VMUL.F32        S0, S2, S0
52C4CA:  VCMPE.F32       S0, S4
52C4CE:  VMRS            APSR_nzcv, FPSCR
52C4D2:  BGT             loc_52C504
52C4D4:  MOV             R0, R5; this
52C4D6:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52C4DA:  CMP             R0, #1
52C4DC:  MOV.W           R0, #0
52C4E0:  STRD.W          R0, R0, [SP,#0x70+var_70]; unsigned __int8
52C4E4:  MOV.W           R2, #0; unsigned int
52C4E8:  STR             R0, [SP,#0x70+var_68]; unsigned __int8
52C4EA:  ITE NE
52C4EC:  MOVNE.W         R1, #0x15A
52C4F0:  MOVEQ.W         R1, #0x166; unsigned __int16
52C4F4:  MOV             R0, R5; this
52C4F6:  MOV.W           R3, #0x3F800000; float
52C4FA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
52C4FE:  MOVS            R0, #0
52C500:  STRB.W          R0, [R6,#0x34]
52C504:  LDR             R0, [R6,#0x1C]
52C506:  CBZ             R0, loc_52C582
52C508:  LDRH            R1, [R0,#0x2C]
52C50A:  CMP             R1, #0x80
52C50C:  ITT EQ
52C50E:  LDRBEQ.W        R1, [R5,#0x484]
52C512:  MOVSEQ.W        R1, R1,LSL#31
52C516:  BNE.W           loc_52C68C
52C51A:  LDR             R1, [R0,#0x14]
52C51C:  VLDR            S0, [R0,#0x20]
52C520:  VLDR            S2, [R1,#0x10]
52C524:  VCMPE.F32       S0, S2
52C528:  VMRS            APSR_nzcv, FPSCR
52C52C:  BGE.W           loc_52C68C
52C530:  VMOV.F32        S0, #1.0
52C534:  VLDR            S2, [R0,#0x18]
52C538:  VCMPE.F32       S2, S0
52C53C:  VMRS            APSR_nzcv, FPSCR
52C540:  BGE             loc_52C552
52C542:  VLDR            S0, [R0,#0x1C]
52C546:  VCMPE.F32       S0, #0.0
52C54A:  VMRS            APSR_nzcv, FPSCR
52C54E:  BLE.W           loc_52C68C
52C552:  LDR.W           R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x52C566)
52C556:  MOVS            R1, #0
52C558:  VLDR            S0, =0.0028
52C55C:  MOVS            R2, #0
52C55E:  VLDR            S2, [R5,#0x90]
52C562:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
52C564:  VMUL.F32        S0, S2, S0
52C568:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
52C56A:  VLDR            S2, [R0]
52C56E:  MOV             R0, R5
52C570:  VMUL.F32        S0, S0, S2
52C574:  VMOV            R3, S0
52C578:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
52C57C:  ADD.W           R4, R6, #0x24 ; '$'
52C580:  B               loc_52C906
52C582:  LDR.W           R0, [R5,#0x484]
52C586:  ORR.W           R0, R0, #0x200
52C58A:  STR.W           R0, [R5,#0x484]
52C58E:  LDRB.W          R0, [R6,#0x24]
52C592:  TST.W           R0, #1
52C596:  BNE             loc_52C5EC
52C598:  LSLS            R0, R0, #0x1E
52C59A:  BMI             loc_52C638
52C59C:  LDR             R0, [R6,#0x1C]
52C59E:  CBNZ            R0, loc_52C5B2
52C5A0:  MOV             R4, R5
52C5A2:  MOVS            R1, #0x80
52C5A4:  LDR.W           R0, [R4,#0x18]!
52C5A8:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52C5AC:  CMP             R0, #0
52C5AE:  STR             R0, [R6,#0x1C]
52C5B0:  BEQ             loc_52C5D6
52C5B2:  VMOV.F32        S0, #1.0
52C5B6:  VLDR            S2, [R0,#0x18]
52C5BA:  VCMPE.F32       S2, S0
52C5BE:  VMRS            APSR_nzcv, FPSCR
52C5C2:  BGE             loc_52C674
52C5C4:  VLDR            S0, [R0,#0x1C]
52C5C8:  VCMPE.F32       S0, #0.0
52C5CC:  VMRS            APSR_nzcv, FPSCR
52C5D0:  BGT             loc_52C674
52C5D2:  ADD.W           R4, R5, #0x18
52C5D6:  LDR             R0, [R4]; int
52C5D8:  MOVS            R1, #0; int
52C5DA:  MOVS            R2, #0x79 ; 'y'; unsigned int
52C5DC:  MOV.W           R3, #0x40800000
52C5E0:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52C5E4:  STR             R0, [R6,#0x1C]
52C5E6:  CMP             R0, #0
52C5E8:  BNE             loc_52C678
52C5EA:  B               loc_52C68C
52C5EC:  LDR             R0, [R5,#0x18]
52C5EE:  MOVS            R1, #0x76 ; 'v'
52C5F0:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52C5F4:  CMP             R0, #0
52C5F6:  STR             R0, [R6,#0x1C]
52C5F8:  BNE             loc_52C608
52C5FA:  LDR             R0, [R5,#0x18]
52C5FC:  MOVS            R1, #0x80
52C5FE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
52C602:  CMP             R0, #0
52C604:  STR             R0, [R6,#0x1C]
52C606:  BEQ             loc_52C628
52C608:  VMOV.F32        S0, #1.0
52C60C:  VLDR            S2, [R0,#0x18]
52C610:  VCMPE.F32       S2, S0
52C614:  VMRS            APSR_nzcv, FPSCR
52C618:  BGE             loc_52C674
52C61A:  VLDR            S0, [R0,#0x1C]
52C61E:  VCMPE.F32       S0, #0.0
52C622:  VMRS            APSR_nzcv, FPSCR
52C626:  BGT             loc_52C674
52C628:  LDR             R0, [R5,#0x18]; int
52C62A:  MOVS            R1, #0; int
52C62C:  MOVS            R2, #0x76 ; 'v'; unsigned int
52C62E:  MOV.W           R3, #0x40800000
52C632:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52C636:  B               loc_52C674
52C638:  VLDR            S0, [R5,#0x50]
52C63C:  VCMPE.F32       S0, #0.0
52C640:  VMRS            APSR_nzcv, FPSCR
52C644:  BGT             loc_52C674
52C646:  LDR             R0, [R5,#0x18]; int
52C648:  MOVS            R1, #0; int
52C64A:  MOVS            R2, #0x79 ; 'y'; unsigned int
52C64C:  MOV.W           R3, #0x40800000
52C650:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52C654:  LDR.W           R1, =(_ZN16CTaskSimpleInAir17DeleteInAirAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52C660)
52C658:  MOV             R2, R6; void *
52C65A:  STR             R0, [R6,#0x1C]
52C65C:  ADD             R1, PC; _ZN16CTaskSimpleInAir17DeleteInAirAnimCBEP21CAnimBlendAssociationPv_ptr
52C65E:  LDR             R1, [R1]; CTaskSimpleInAir::DeleteInAirAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52C660:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52C664:  LDR             R0, [R6,#0x1C]
52C666:  MOV.W           R1, #0x3F000000
52C66A:  STR             R1, [R0,#0x1C]
52C66C:  MOV.W           R1, #0x3F800000
52C670:  LDR             R0, [R6,#0x1C]
52C672:  STR             R1, [R0,#0x18]
52C674:  LDR             R0, [R6,#0x1C]; this
52C676:  CBZ             R0, loc_52C68C
52C678:  LDR             R1, =(_ZN16CTaskSimpleInAir17DeleteInAirAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52C680)
52C67A:  MOV             R2, R6; void *
52C67C:  ADD             R1, PC; _ZN16CTaskSimpleInAir17DeleteInAirAnimCBEP21CAnimBlendAssociationPv_ptr
52C67E:  LDR             R1, [R1]; CTaskSimpleInAir::DeleteInAirAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52C680:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52C684:  LDR             R0, [R6,#0x1C]
52C686:  CMP             R0, #0
52C688:  BNE.W           loc_52C508
52C68C:  VLDR            S0, [R5,#0x50]
52C690:  VCMPE.F32       S0, #0.0
52C694:  VMRS            APSR_nzcv, FPSCR
52C698:  BLE             loc_52C6D0
52C69A:  VLDR            S2, [R5,#0x48]
52C69E:  VCMP.F32        S2, #0.0
52C6A2:  VMRS            APSR_nzcv, FPSCR
52C6A6:  BNE             loc_52C6E8
52C6A8:  VCMP.F32        S0, #0.0
52C6AC:  VLDR            S2, [R5,#0x4C]
52C6B0:  VMRS            APSR_nzcv, FPSCR
52C6B4:  MOV.W           R1, #0
52C6B8:  VCMP.F32        S2, #0.0
52C6BC:  MOV.W           R0, #0
52C6C0:  IT EQ
52C6C2:  MOVEQ           R1, #1
52C6C4:  VMRS            APSR_nzcv, FPSCR
52C6C8:  IT EQ
52C6CA:  MOVEQ           R0, #1
52C6CC:  TST             R1, R0
52C6CE:  BEQ             loc_52C6E8
52C6D0:  MOV             R4, R6
52C6D2:  LDRB.W          R1, [R4,#0x24]!
52C6D6:  TST.W           R1, #2
52C6DA:  BNE             loc_52C7AA
52C6DC:  LDR.W           R0, [R5,#0x44C]
52C6E0:  BIC.W           R0, R0, #1
52C6E4:  CMP             R0, #0x36 ; '6'
52C6E6:  BNE             loc_52C7AA
52C6E8:  MOV             R4, R6
52C6EA:  LDRB.W          R0, [R4,#0x24]!
52C6EE:  TST.W           R0, #2
52C6F2:  BNE.W           loc_52C906
52C6F6:  LDR             R0, [R6,#4]
52C6F8:  CMP             R0, #0
52C6FA:  ITT NE
52C6FC:  LDRNE           R0, [R0,#4]
52C6FE:  CMPNE           R0, #0
52C700:  BEQ.W           loc_52C906
52C704:  LDR             R1, [R0]
52C706:  LDR             R1, [R1,#0x14]
52C708:  BLX             R1
52C70A:  CMP             R0, #0xD3
52C70C:  BNE.W           loc_52C906
52C710:  LDR             R0, [R5,#0x14]
52C712:  VLDR            S6, [R5,#0x48]
52C716:  VLDR            S8, [R5,#0x4C]
52C71A:  VLDR            S0, [R0,#0x10]
52C71E:  VLDR            S2, [R0,#0x14]
52C722:  VMUL.F32        S6, S6, S0
52C726:  VLDR            S10, [R5,#0x50]
52C72A:  VMUL.F32        S8, S8, S2
52C72E:  VLDR            S4, [R0,#0x18]
52C732:  VMUL.F32        S10, S10, S4
52C736:  VADD.F32        S6, S6, S8
52C73A:  VLDR            S8, =0.05
52C73E:  VADD.F32        S6, S6, S10
52C742:  VCMPE.F32       S6, S8
52C746:  VMRS            APSR_nzcv, FPSCR
52C74A:  ITT LT
52C74C:  LDRLT           R0, [R6,#0x28]
52C74E:  CMPLT.W         R0, #0x3E8
52C752:  BGE.W           loc_52C906
52C756:  VSUB.F32        S6, S8, S6
52C75A:  VLDR            S8, [R5,#0x90]
52C75E:  MOV             R0, R5
52C760:  VMUL.F32        S6, S6, S8
52C764:  VMUL.F32        S0, S0, S6
52C768:  VMUL.F32        S2, S2, S6
52C76C:  VMUL.F32        S4, S4, S6
52C770:  VMOV            R1, S0
52C774:  VMOV            R2, S2
52C778:  VMOV            R3, S4
52C77C:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
52C780:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x52C78A)
52C782:  VLDR            S0, =50.0
52C786:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
52C788:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
52C78A:  VLDR            S2, [R0]
52C78E:  LDR             R0, [R6,#0x28]
52C790:  VDIV.F32        S0, S2, S0
52C794:  VLDR            S2, =1000.0
52C798:  VMUL.F32        S0, S0, S2
52C79C:  VCVT.U32.F32    S0, S0
52C7A0:  VMOV            R1, S0
52C7A4:  ADD             R0, R1
52C7A6:  STR             R0, [R6,#0x28]
52C7A8:  B               loc_52C906
52C7AA:  VLDR            S2, [R6,#0x20]
52C7AE:  ADDW            R9, R5, #0x484
52C7B2:  VCMPE.F32       S0, S2
52C7B6:  VMRS            APSR_nzcv, FPSCR
52C7BA:  IT LT
52C7BC:  VSTRLT          S0, [R6,#0x20]
52C7C0:  LDRB.W          R0, [R5,#0x484]
52C7C4:  LSLS            R0, R0, #0x1F
52C7C6:  MOV.W           R0, #1
52C7CA:  BNE             loc_52C7F8
52C7CC:  VMOV.F32        S0, #-4.0
52C7D0:  MOVS            R2, #0
52C7D2:  VMOV            S2, R8
52C7D6:  STRD.W          R0, R0, [SP,#0x70+var_70]; int
52C7DA:  STRD.W          R2, R0, [SP,#0x70+var_68]; int
52C7DE:  ADD             R0, SP, #0x70+var_24; CVector *
52C7E0:  STRD.W          R2, R2, [SP,#0x70+var_60]; int
52C7E4:  ADD             R3, SP, #0x70+var_54; int
52C7E6:  STR             R2, [SP,#0x70+var_58]; int
52C7E8:  ADD             R2, SP, #0x70+var_50; int
52C7EA:  VADD.F32        S0, S2, S0
52C7EE:  VMOV            R1, S0; int
52C7F2:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
52C7F6:  LDRB            R1, [R4]
52C7F8:  LSLS            R1, R1, #0x1E
52C7FA:  BPL             loc_52C84C
52C7FC:  VLDR            S0, [R5,#0x50]
52C800:  VCMPE.F32       S0, #0.0
52C804:  VMRS            APSR_nzcv, FPSCR
52C808:  BGT             loc_52C848
52C80A:  LDR             R1, =(_ZN16CTaskSimpleInAir20ms_fMaxStuckVelocityE_ptr - 0x52C810)
52C80C:  ADD             R1, PC; _ZN16CTaskSimpleInAir20ms_fMaxStuckVelocityE_ptr
52C80E:  LDR             R1, [R1]; CTaskSimpleInAir::ms_fMaxStuckVelocity ...
52C810:  VLDR            S2, [R1]
52C814:  VCMPE.F32       S0, S2
52C818:  VMRS            APSR_nzcv, FPSCR
52C81C:  BLE             loc_52C848
52C81E:  LDR             R1, =(_ZN16CTaskSimpleInAir39ms_iNumStuckFallingFramesBeforeQuittingE_ptr - 0x52C826)
52C820:  LDR             R2, [R6,#0x28]
52C822:  ADD             R1, PC; _ZN16CTaskSimpleInAir39ms_iNumStuckFallingFramesBeforeQuittingE_ptr
52C824:  ADDS            R3, R2, #1
52C826:  STR             R3, [R6,#0x28]
52C828:  LDR             R1, [R1]; CTaskSimpleInAir::ms_iNumStuckFallingFramesBeforeQuitting ...
52C82A:  LDR             R1, [R1]; CTaskSimpleInAir::ms_iNumStuckFallingFramesBeforeQuitting
52C82C:  CMP             R2, R1
52C82E:  BLT             loc_52C84C
52C830:  LDR.W           R0, [R9]
52C834:  ORR.W           R0, R0, #1
52C838:  STR.W           R0, [R9]
52C83C:  B               loc_52C84E
52C83E:  ALIGN 0x10
52C840:  DCFS 50.0
52C844:  DCFS 0.0028
52C848:  MOVS            R1, #0
52C84A:  STR             R1, [R6,#0x28]
52C84C:  CBZ             R0, loc_52C8B8
52C84E:  LDR             R0, [R5,#0x14]
52C850:  VLDR            S0, [SP,#0x70+var_48]
52C854:  VLDR            S2, [R0,#0x38]
52C858:  VSUB.F32        S0, S2, S0
52C85C:  VLDR            S2, =1.3
52C860:  VCMPE.F32       S0, S2
52C864:  VMRS            APSR_nzcv, FPSCR
52C868:  BLT             loc_52C87A
52C86A:  LDRB.W          R0, [R9]
52C86E:  LSLS            R0, R0, #0x1F
52C870:  ITT EQ
52C872:  LDREQ.W         R0, [R5,#0x100]
52C876:  CMPEQ           R0, #0
52C878:  BEQ             loc_52C906
52C87A:  LDR             R0, [R6,#0x1C]
52C87C:  CBZ             R0, loc_52C8A8
52C87E:  LDRB            R1, [R4]
52C880:  LSLS            R1, R1, #0x1E
52C882:  BPL             loc_52C8A8
52C884:  MOVS            R2, #0
52C886:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52C894)
52C888:  MOVT            R2, #0xC47A
52C88C:  MOVS            R4, #0
52C88E:  STR             R2, [R0,#0x1C]
52C890:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52C892:  LDR             R0, [R6,#0x1C]
52C894:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52C896:  LDRH            R2, [R0,#0x2E]
52C898:  ORR.W           R2, R2, #4
52C89C:  STRH            R2, [R0,#0x2E]
52C89E:  LDR             R0, [R6,#0x1C]; this
52C8A0:  MOVS            R2, #0; void *
52C8A2:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52C8A6:  STR             R4, [R6,#0x1C]
52C8A8:  LDR.W           R0, [R9]
52C8AC:  BIC.W           R0, R0, #0x200
52C8B0:  STR.W           R0, [R9]
52C8B4:  MOVS            R0, #1
52C8B6:  B               loc_52C922
52C8B8:  LDR.W           R0, [R5,#0x44C]
52C8BC:  CMP             R0, #0x27 ; '''
52C8BE:  BEQ             loc_52C906
52C8C0:  VLDR            S0, =-0.1
52C8C4:  VLDR            S2, [R5,#0x50]
52C8C8:  VCMPE.F32       S2, S0
52C8CC:  VMRS            APSR_nzcv, FPSCR
52C8D0:  BGE             loc_52C906
52C8D2:  LDR             R0, [R6,#0x1C]; this
52C8D4:  CMP             R0, #0
52C8D6:  ITT NE
52C8D8:  LDRHNE          R1, [R0,#0x2C]
52C8DA:  CMPNE           R1, #0x78 ; 'x'
52C8DC:  BEQ             loc_52C906
52C8DE:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52C8E6)
52C8E0:  MOVS            R2, #0; void *
52C8E2:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
52C8E4:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52C8E6:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52C8EA:  LDR             R0, [R5,#0x18]; int
52C8EC:  MOVS            R1, #0; int
52C8EE:  MOVS            R2, #0x78 ; 'x'; unsigned int
52C8F0:  MOV.W           R3, #0x40800000
52C8F4:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
52C8F8:  LDR             R1, =(_ZN16CTaskSimpleInAir17DeleteInAirAnimCBEP21CAnimBlendAssociationPv_ptr - 0x52C902)
52C8FA:  MOV             R2, R6; void *
52C8FC:  STR             R0, [R6,#0x1C]
52C8FE:  ADD             R1, PC; _ZN16CTaskSimpleInAir17DeleteInAirAnimCBEP21CAnimBlendAssociationPv_ptr
52C900:  LDR             R1, [R1]; CTaskSimpleInAir::DeleteInAirAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
52C902:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
52C906:  LDRB            R0, [R4]
52C908:  LSLS            R0, R0, #0x1F
52C90A:  BEQ             loc_52C920
52C90C:  MOV             R4, R6
52C90E:  LDR.W           R0, [R4,#0x38]!
52C912:  CBNZ            R0, loc_52C920
52C914:  LDR.W           R0, [R5,#0x44C]
52C918:  BIC.W           R0, R0, #1
52C91C:  CMP             R0, #0x36 ; '6'
52C91E:  BNE             loc_52C92A
52C920:  MOVS            R0, #0
52C922:  ADD             SP, SP, #0x58 ; 'X'
52C924:  POP.W           {R8,R9,R11}
52C928:  POP             {R4-R7,PC}
52C92A:  MOV             R0, R5; this
52C92C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
52C930:  MOV             R1, R0
52C932:  MOVS            R0, #0
52C934:  CMP             R1, #1
52C936:  BNE             loc_52C922
52C938:  LDR             R1, =(_ZN5CGame8currAreaE_ptr - 0x52C93E)
52C93A:  ADD             R1, PC; _ZN5CGame8currAreaE_ptr
52C93C:  LDR             R1, [R1]; CGame::currArea ...
52C93E:  LDR             R1, [R1]; CGame::currArea
52C940:  CMP             R1, #0
52C942:  BNE             loc_52C922
52C944:  VLDR            S0, =-0.2
52C948:  VLDR            S2, [R5,#0x50]
52C94C:  VCMPE.F32       S2, S0
52C950:  VMRS            APSR_nzcv, FPSCR
52C954:  BLE             loc_52C920
52C956:  VLDR            S0, [R5,#0x48]
52C95A:  VLDR            S2, [R5,#0x4C]
52C95E:  VMUL.F32        S0, S0, S0
52C962:  VMUL.F32        S2, S2, S2
52C966:  VADD.F32        S0, S0, S2
52C96A:  VLDR            S2, =0.05
52C96E:  VSQRT.F32       S0, S0
52C972:  VCMPE.F32       S0, S2
52C976:  VMRS            APSR_nzcv, FPSCR
52C97A:  BLE             loc_52C920
52C97C:  LDR             R0, [R6,#4]
52C97E:  MOV.W           R8, #0
52C982:  CBZ             R0, loc_52C9A2
52C984:  LDR             R1, [R0]
52C986:  LDR             R1, [R1,#0x14]
52C988:  BLX             R1
52C98A:  CMP             R0, #0xF0
52C98C:  BNE             loc_52C9A2
52C98E:  LDR.W           R9, [R6,#4]
52C992:  CMP.W           R9, #0
52C996:  BEQ             loc_52C9A2
52C998:  LDRB.W          R0, [R9,#0xE]
52C99C:  CMP             R0, #0
52C99E:  BNE             loc_52C920
52C9A0:  B               loc_52C9A6
52C9A2:  MOV.W           R9, #0
52C9A6:  STR.W           R8, [SP,#0x70+var_70]; unsigned __int8 *
52C9AA:  ADD.W           R8, R6, #0x14
52C9AE:  ADD.W           R1, R6, #8; CPed *
52C9B2:  ADD.W           R3, R6, #0x18; float *
52C9B6:  MOV             R0, R5; this
52C9B8:  MOV             R2, R8; CVector *
52C9BA:  BLX             j__ZN16CTaskSimpleClimb12TestForClimbEP4CPedR7CVectorRfRhb; CTaskSimpleClimb::TestForClimb(CPed *,CVector &,float &,uchar &,bool)
52C9BE:  CMP             R0, #0
52C9C0:  STR             R0, [R6,#0x38]
52C9C2:  BEQ             loc_52C9CC
52C9C4:  MOV             R1, R4; CEntity **
52C9C6:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
52C9CA:  B               loc_52C920
52C9CC:  MOVS            R0, #0
52C9CE:  CMP.W           R9, #0
52C9D2:  BEQ             loc_52C922
52C9D4:  VLDR            S0, [R8]
52C9D8:  VLDR            S2, =-1000.0
52C9DC:  VCMPE.F32       S0, S2
52C9E0:  VMRS            APSR_nzcv, FPSCR
52C9E4:  BGE             loc_52C922
52C9E6:  MOVS            R0, #1
52C9E8:  STRB.W          R0, [R9,#0xE]
52C9EC:  B               loc_52C920
