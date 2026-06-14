; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntity10DropEntityEP4CPedb
; Address            : 0x54150C - 0x541820
; =========================================================

54150C:  PUSH            {R4-R7,LR}
54150E:  ADD             R7, SP, #0xC
541510:  PUSH.W          {R8-R10}
541514:  VPUSH           {D8}
541518:  SUB             SP, SP, #0x28
54151A:  MOV             R4, R0
54151C:  MOV             R6, R1
54151E:  LDR.W           R0, [R4,#8]!
541522:  CMP             R0, #0
541524:  BEQ.W           loc_541814
541528:  LDR             R1, [R0,#0x1C]
54152A:  ORR.W           R1, R1, #1
54152E:  STR             R1, [R0,#0x1C]
541530:  LDR             R5, [R4]
541532:  LDRB.W          R0, [R5,#0x3A]
541536:  AND.W           R0, R0, #7
54153A:  CMP             R0, #4
54153C:  BNE.W           loc_541808
541540:  STR.W           R6, [R5,#0x12C]
541544:  EOR.W           R9, R2, #1
541548:  LDR             R0, [R5,#0x44]
54154A:  TST.W           R0, #4
54154E:  BEQ             loc_54159C
541550:  CMP.W           R9, #0
541554:  BNE             loc_54159C
541556:  LDRB.W          R0, [R5,#0x145]
54155A:  LSLS            R0, R0, #0x1A
54155C:  BMI.W           loc_5416CC
541560:  LDRB.W          R0, [R5,#0x140]
541564:  MOV.W           R8, #1
541568:  CMP             R0, #2
54156A:  BEQ.W           loc_5416DE
54156E:  CMP             R0, #3
541570:  BEQ             loc_541584
541572:  CMP             R0, #6
541574:  BEQ.W           loc_5416DE
541578:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x54157E)
54157A:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
54157C:  LDR             R0, [R0]; CObject::nNoTempObjects ...
54157E:  LDRH            R1, [R0]; CObject::nNoTempObjects
541580:  ADDS            R1, #1
541582:  STRH            R1, [R0]; CObject::nNoTempObjects
541584:  MOV.W           R8, #0
541588:  MOVS            R1, #3
54158A:  STR.W           R8, [R5,#0x154]
54158E:  LDR             R0, [R5,#0x1C]
541590:  STRB.W          R1, [R5,#0x140]
541594:  BIC.W           R0, R0, #0x81
541598:  STR             R0, [R5,#0x1C]
54159A:  B               loc_5416DE
54159C:  CMP             R2, #1
54159E:  BIC.W           R0, R0, #0x2000000
5415A2:  STR             R0, [R5,#0x44]
5415A4:  BNE.W           loc_5416D2
5415A8:  LDR             R0, [R5,#0x1C]
5415AA:  TST.W           R0, #0x40004
5415AE:  BEQ             loc_5415C0
5415B0:  LDR             R0, [R5]
5415B2:  MOVS            R1, #0
5415B4:  LDR             R2, [R0,#0x14]
5415B6:  MOV             R0, R5
5415B8:  BLX             R2
5415BA:  MOV             R0, R5; this
5415BC:  BLX             j__ZN9CPhysical15AddToMovingListEv; CPhysical::AddToMovingList(void)
5415C0:  VLDR            D16, [R6,#0x48]
5415C4:  LDR             R0, [R6,#0x50]
5415C6:  STR             R0, [R5,#0x50]
5415C8:  VSTR            D16, [R5,#0x48]
5415CC:  BLX             rand
5415D0:  VMOV            S0, R0
5415D4:  VLDR            S16, =4.6566e-10
5415D8:  VLDR            S2, =0.03
5415DC:  VCVT.F32.S32    S0, S0
5415E0:  LDR             R0, [R6,#0x14]
5415E2:  VLDR            S8, [R5,#0x4C]
5415E6:  VLDR            S10, [R5,#0x50]
5415EA:  VLDR            S4, [R0,#0x14]
5415EE:  VLDR            S6, [R0,#0x18]
5415F2:  VMUL.F32        S0, S0, S16
5415F6:  VMUL.F32        S0, S0, S2
5415FA:  VADD.F32        S0, S0, S2
5415FE:  VLDR            S2, [R0,#0x10]
541602:  VMUL.F32        S2, S2, S0
541606:  VMUL.F32        S6, S6, S0
54160A:  VMUL.F32        S0, S4, S0
54160E:  VLDR            S4, [R5,#0x48]
541612:  VADD.F32        S2, S2, S4
541616:  VADD.F32        S4, S6, S10
54161A:  VADD.F32        S0, S0, S8
54161E:  VSTR            S2, [R5,#0x48]
541622:  VSTR            S0, [R5,#0x4C]
541626:  VSTR            S4, [R5,#0x50]
54162A:  BLX             rand
54162E:  VMOV            S0, R0
541632:  VLDR            S2, =0.06
541636:  MOVS            R1, #0
541638:  VCVT.F32.S32    S0, S0
54163C:  LDR             R0, [R6,#0x14]
54163E:  VLDR            S8, [R5,#0x4C]
541642:  VLDR            S10, [R5,#0x50]
541646:  VLDR            S4, [R0,#4]
54164A:  VLDR            S6, [R0,#8]
54164E:  VMUL.F32        S0, S0, S16
541652:  VMUL.F32        S0, S0, S2
541656:  VLDR            S2, =-0.03
54165A:  VADD.F32        S0, S0, S2
54165E:  VLDR            S2, [R0]
541662:  VMUL.F32        S2, S2, S0
541666:  VMUL.F32        S6, S6, S0
54166A:  VMUL.F32        S0, S4, S0
54166E:  VLDR            S4, [R5,#0x48]
541672:  VADD.F32        S2, S2, S4
541676:  VADD.F32        S4, S6, S10
54167A:  VLDR            S6, =0.01
54167E:  VADD.F32        S0, S0, S8
541682:  VSTR            S2, [R5,#0x48]
541686:  VSTR            S0, [R5,#0x4C]
54168A:  VSTR            S4, [R5,#0x50]
54168E:  LDR             R0, [R6,#0x14]
541690:  VLDR            S8, [R0,#0x20]
541694:  VLDR            S10, [R0,#0x24]
541698:  VLDR            S12, [R0,#0x28]
54169C:  VMUL.F32        S8, S8, S6
5416A0:  VMUL.F32        S10, S10, S6
5416A4:  VMUL.F32        S6, S12, S6
5416A8:  VADD.F32        S2, S8, S2
5416AC:  VADD.F32        S0, S10, S0
5416B0:  VADD.F32        S4, S6, S4
5416B4:  VSTR            S2, [R5,#0x48]
5416B8:  VSTR            S0, [R5,#0x4C]
5416BC:  VSTR            S4, [R5,#0x50]
5416C0:  LDR             R0, [R5]
5416C2:  LDR             R2, [R0,#0x38]
5416C4:  MOV             R0, R5
5416C6:  BLX             R2
5416C8:  MOV             R8, R0
5416CA:  B               loc_5416DE
5416CC:  MOV.W           R8, #1
5416D0:  B               loc_5416DE
5416D2:  MOV.W           R8, #0
5416D6:  STRD.W          R8, R8, [R5,#0x48]
5416DA:  STR.W           R8, [R5,#0x50]
5416DE:  LDRB.W          R0, [R5,#0x145]
5416E2:  LSLS            R0, R0, #0x1A
5416E4:  BPL             loc_541784
5416E6:  LDR.W           R0, [R6,#0x444]
5416EA:  MOV.W           R10, #0
5416EE:  CMP             R0, #0
5416F0:  MOV.W           R0, #0
5416F4:  IT EQ
5416F6:  MOVEQ           R0, #1
5416F8:  ORRS.W          R0, R0, R9
5416FC:  BNE             loc_541784
5416FE:  MOV             R0, SP; this
541700:  BLX             j__ZN22CEventEditableResponseC2Ev; CEventEditableResponse::CEventEditableResponse(void)
541704:  LDR             R1, =(_ZTV16CEventSoundQuiet_ptr - 0x541714)
541706:  MOVS            R2, #0
541708:  ADD.W           R9, R0, #0x10
54170C:  MOVT            R2, #0x4270
541710:  ADD             R1, PC; _ZTV16CEventSoundQuiet_ptr
541712:  STR             R6, [SP,#0x48+var_38]
541714:  STR             R2, [SP,#0x48+var_34]
541716:  MOV.W           R2, #0xFFFFFFFF
54171A:  LDR             R1, [R1]; `vtable for'CEventSoundQuiet ...
54171C:  MOV             R0, R6; this
54171E:  STR             R2, [SP,#0x48+var_30]
541720:  ADDS            R1, #8
541722:  STRD.W          R10, R10, [SP,#0x48+var_2C]
541726:  STR.W           R10, [SP,#0x48+var_24]
54172A:  STR             R1, [SP,#0x48+var_48]
54172C:  MOV             R1, R9; CEntity **
54172E:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
541732:  LDR             R0, [SP,#0x48+var_30]
541734:  ADDS            R0, #1
541736:  BNE             loc_54175C
541738:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x541740)
54173A:  LDR             R1, [SP,#0x48+var_38]
54173C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
54173E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
541740:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
541742:  STR             R0, [SP,#0x48+var_30]
541744:  LDR             R0, [R1,#0x14]
541746:  ADD.W           R2, R0, #0x30 ; '0'
54174A:  CMP             R0, #0
54174C:  IT EQ
54174E:  ADDEQ           R2, R1, #4
541750:  VLDR            D16, [R2]
541754:  LDR             R0, [R2,#8]
541756:  STR             R0, [SP,#0x48+var_24]
541758:  VSTR            D16, [SP,#0x48+var_2C]
54175C:  BLX             j__Z19GetEventGlobalGroupv; GetEventGlobalGroup(void)
541760:  MOV             R1, SP; CEvent *
541762:  MOVS            R2, #0; bool
541764:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
541768:  LDR             R0, =(_ZTV16CEventSoundQuiet_ptr - 0x54176E)
54176A:  ADD             R0, PC; _ZTV16CEventSoundQuiet_ptr
54176C:  LDR             R1, [R0]; `vtable for'CEventSoundQuiet ...
54176E:  LDR             R0, [SP,#0x48+var_38]; this
541770:  ADDS            R1, #8
541772:  STR             R1, [SP,#0x48+var_48]
541774:  CMP             R0, #0
541776:  ITT NE
541778:  MOVNE           R1, R9; CEntity **
54177A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
54177E:  MOV             R0, SP; this
541780:  BLX             j__ZN6CEventD2Ev_0; CEvent::~CEvent()
541784:  CMP.W           R8, #1
541788:  BNE             loc_541808
54178A:  LDR             R0, [R5]
54178C:  MOVS            R1, #0
54178E:  STRD.W          R1, R1, [R5,#0x48]
541792:  STR             R1, [R5,#0x50]
541794:  MOVS            R1, #1
541796:  LDR             R2, [R0,#0x14]
541798:  MOV             R0, R5
54179A:  BLX             R2
54179C:  MOV             R0, R5; this
54179E:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
5417A2:  VMOV.F32        S0, #-1.0
5417A6:  LDR             R0, [R6,#0x14]
5417A8:  ADD.W           R1, R0, #0x30 ; '0'
5417AC:  CMP             R0, #0
5417AE:  IT EQ
5417B0:  ADDEQ           R1, R6, #4
5417B2:  MOV             R0, R5; this
5417B4:  VLDR            S2, [R1,#8]
5417B8:  LDRD.W          R6, R8, [R1]
5417BC:  VADD.F32        S16, S2, S0
5417C0:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5417C4:  VLDR            S0, [R0,#8]
5417C8:  LDR             R0, [R5,#0x14]
5417CA:  VSUB.F32        S0, S16, S0
5417CE:  CBZ             R0, loc_5417DE
5417D0:  STR             R6, [R0,#0x30]
5417D2:  LDR             R0, [R5,#0x14]
5417D4:  STR.W           R8, [R0,#0x34]
5417D8:  LDR             R0, [R5,#0x14]
5417DA:  ADDS            R0, #0x38 ; '8'
5417DC:  B               loc_5417E6
5417DE:  ADD.W           R0, R5, #0xC
5417E2:  STRD.W          R6, R8, [R5,#4]
5417E6:  VSTR            S0, [R0]
5417EA:  LDR             R0, [R5,#0x18]
5417EC:  CBZ             R0, loc_541802
5417EE:  LDR             R1, [R0,#4]
5417F0:  LDR             R0, [R5,#0x14]
5417F2:  ADDS            R1, #0x10
5417F4:  CBZ             R0, loc_5417FC
5417F6:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
5417FA:  B               loc_541802
5417FC:  ADDS            R0, R5, #4
5417FE:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
541802:  MOV             R0, R5; this
541804:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
541808:  LDR             R0, [R4]; this
54180A:  MOV             R1, R4; CEntity **
54180C:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
541810:  MOVS            R0, #0
541812:  STR             R0, [R4]
541814:  ADD             SP, SP, #0x28 ; '('
541816:  VPOP            {D8}
54181A:  POP.W           {R8-R10}
54181E:  POP             {R4-R7,PC}
