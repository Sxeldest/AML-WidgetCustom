; =========================================================
; Game Engine Function: _ZN11CAutomobile16ProcessHarvesterEv
; Address            : 0x557488 - 0x557A0E
; =========================================================

557488:  PUSH            {R4-R7,LR}
55748A:  ADD             R7, SP, #0xC
55748C:  PUSH.W          {R8-R11}
557490:  SUB             SP, SP, #4
557492:  VPUSH           {D8-D13}
557496:  SUB             SP, SP, #0x50
557498:  MOV             R9, R0
55749A:  LDRB.W          R0, [R9,#0x3A]
55749E:  CMP             R0, #7
5574A0:  BHI.W           loc_557A00
5574A4:  LDR.W           R0, =(_ZN10CStreaming33m_bStreamHarvesterModelsThisFrameE_ptr - 0x5574AE)
5574A8:  MOVS            R1, #1
5574AA:  ADD             R0, PC; _ZN10CStreaming33m_bStreamHarvesterModelsThisFrameE_ptr
5574AC:  LDR             R0, [R0]; CStreaming::m_bStreamHarvesterModelsThisFrame ...
5574AE:  STRB            R1, [R0]; CStreaming::m_bStreamHarvesterModelsThisFrame
5574B0:  VLDR            S0, [R9,#0x48]
5574B4:  VLDR            S2, [R9,#0x4C]
5574B8:  VMUL.F32        S0, S0, S0
5574BC:  LDR.W           R10, [R9,#0x14]
5574C0:  VMUL.F32        S2, S2, S2
5574C4:  VADD.F32        S0, S0, S2
5574C8:  VLDR            S2, =0.01
5574CC:  VSQRT.F32       S0, S0
5574D0:  VCMPE.F32       S0, S2
5574D4:  VMRS            APSR_nzcv, FPSCR
5574D8:  BLE.W           loc_5577AA
5574DC:  LDR.W           R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x5574E4)
5574E0:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
5574E2:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
5574E4:  LDRB            R0, [R0]; CTimer::m_FrameCounter
5574E6:  LSLS            R0, R0, #0x1F
5574E8:  BNE.W           loc_557666
5574EC:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x5574F4)
5574F0:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
5574F2:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
5574F4:  LDR.W           R8, [R0]; CPools::ms_pObjectPool
5574F8:  LDR.W           R0, [R8,#8]
5574FC:  CMP             R0, #0
5574FE:  BEQ.W           loc_5577AA
557502:  MOV.W           R1, #0x1A4
557506:  SUBS            R5, R0, #1
557508:  MULS            R1, R0
55750A:  LDR.W           R0, =(MI_GRASSHOUSE_ptr - 0x557516)
55750E:  VMOV.F32        S16, #4.0
557512:  ADD             R0, PC; MI_GRASSHOUSE_ptr
557514:  VMOV.F32        S18, #5.0
557518:  MOV.W           R12, #0x32 ; '2'
55751C:  LDR.W           R11, [R0]; MI_GRASSHOUSE
557520:  LDR.W           R0, =(MI_GRASSPLANT_ptr - 0x557530)
557524:  SUB.W           R6, R1, #0x1A4
557528:  MOVW            R1, #0x4F80
55752C:  ADD             R0, PC; MI_GRASSPLANT_ptr
55752E:  MOVT            R1, #0x47C3
557532:  LDR.W           LR, [R0]; MI_GRASSPLANT
557536:  LDR.W           R0, [R8,#4]
55753A:  LDRSB           R0, [R0,R5]
55753C:  CMP             R0, #0
55753E:  BLT.W           loc_557658
557542:  LDR.W           R0, [R8]
557546:  ADDS            R0, R0, R6
557548:  BEQ.W           loc_557658
55754C:  LDRSH.W         R3, [R0,#0x26]
557550:  LDRH.W          R2, [R11]
557554:  CMP             R3, R2
557556:  ITT NE
557558:  LDRHNE.W        R2, [LR]
55755C:  CMPNE           R3, R2
55755E:  BNE             loc_557658
557560:  LDR             R2, [R0,#0x1C]
557562:  AND.W           R2, R2, #0x280
557566:  TEQ.W           R2, #0x80
55756A:  BNE             loc_557658
55756C:  LDR.W           R4, [R9,#0x14]
557570:  LDR             R2, [R0,#0x14]
557572:  ADD.W           R3, R4, #0x30 ; '0'
557576:  CMP             R4, #0
557578:  IT EQ
55757A:  ADDEQ.W         R3, R9, #4
55757E:  ADD.W           R4, R2, #0x30 ; '0'
557582:  CMP             R2, #0
557584:  VLDR            S0, [R3]
557588:  VLDR            S2, [R3,#4]
55758C:  VLDR            S4, [R3,#8]
557590:  IT EQ
557592:  ADDEQ           R4, R0, #4
557594:  VLDR            S6, [R4]
557598:  VLDR            S8, [R4,#4]
55759C:  VSUB.F32        S0, S6, S0
5575A0:  VLDR            S6, [R10,#0x10]
5575A4:  VSUB.F32        S2, S8, S2
5575A8:  VLDR            S8, [R10,#0x14]
5575AC:  VLDR            S10, [R4,#8]
5575B0:  VLDR            S12, [R10,#0x18]
5575B4:  VSUB.F32        S4, S10, S4
5575B8:  VMUL.F32        S6, S0, S6
5575BC:  VMUL.F32        S8, S2, S8
5575C0:  VMUL.F32        S10, S4, S12
5575C4:  VADD.F32        S6, S6, S8
5575C8:  VADD.F32        S6, S6, S10
5575CC:  VCMPE.F32       S6, S16
5575D0:  VMRS            APSR_nzcv, FPSCR
5575D4:  BLE             loc_557658
5575D6:  VCMPE.F32       S6, S18
5575DA:  VMRS            APSR_nzcv, FPSCR
5575DE:  BGE             loc_557658
5575E0:  VLDR            S6, [R10]
5575E4:  VLDR            S8, [R10,#4]
5575E8:  VMUL.F32        S6, S0, S6
5575EC:  VLDR            S10, [R10,#8]
5575F0:  VMUL.F32        S8, S2, S8
5575F4:  VMUL.F32        S10, S4, S10
5575F8:  VADD.F32        S6, S6, S8
5575FC:  VADD.F32        S6, S6, S10
557600:  VABS.F32        S6, S6
557604:  VCMPE.F32       S6, S16
557608:  VMRS            APSR_nzcv, FPSCR
55760C:  BGE             loc_557658
55760E:  VLDR            S6, [R10,#0x20]
557612:  VLDR            S8, [R10,#0x24]
557616:  VMUL.F32        S0, S0, S6
55761A:  VLDR            S10, [R10,#0x28]
55761E:  VMUL.F32        S2, S2, S8
557622:  VMUL.F32        S4, S4, S10
557626:  VADD.F32        S0, S0, S2
55762A:  VADD.F32        S0, S0, S4
55762E:  VABS.F32        S0, S0
557632:  VCMPE.F32       S0, S16
557636:  VMRS            APSR_nzcv, FPSCR
55763A:  BGE             loc_557658
55763C:  MOVS            R2, #0
55763E:  MOVS            R3, #0
557640:  STRD.W          R9, R12, [SP,#0xA0+var_A0]
557644:  MOV             R4, LR
557646:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
55764A:  MOVW            R1, #0x4F80
55764E:  MOV             LR, R4
557650:  MOVT            R1, #0x47C3
557654:  MOV.W           R12, #0x32 ; '2'
557658:  SUBS            R5, #1
55765A:  SUB.W           R6, R6, #0x1A4
55765E:  ADDS            R0, R5, #1
557660:  BNE.W           loc_557536
557664:  B               loc_5577AA
557666:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x55766E)
55766A:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
55766C:  LDR             R0, [R0]; CPools::ms_pPedPool ...
55766E:  LDR.W           R11, [R0]; CPools::ms_pPedPool
557672:  LDR.W           R0, [R11,#8]
557676:  CMP             R0, #0
557678:  BEQ.W           loc_5577AA
55767C:  MOVW            R1, #0x7CC
557680:  VMOV.F32        S16, #4.0
557684:  MULS            R1, R0
557686:  VMOV.F32        S18, #5.0
55768A:  SUBS            R4, R0, #1
55768C:  ADD.W           R0, R9, #0x13C
557690:  STR             R0, [SP,#0xA0+var_88]
557692:  SUBW            R5, R1, #0x7CC
557696:  LDR.W           R0, [R11,#4]
55769A:  LDRSB           R0, [R0,R4]
55769C:  CMP             R0, #0
55769E:  BLT             loc_55779E
5576A0:  LDR.W           R8, [R11]
5576A4:  ADDS.W          R6, R8, R5
5576A8:  BEQ             loc_55779E
5576AA:  MOV             R0, R6; this
5576AC:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5576B0:  CMP             R0, #1
5576B2:  BEQ             loc_55779E
5576B4:  LDR.W           R0, [R9,#0x14]
5576B8:  LDR             R1, [R6,#0x14]
5576BA:  ADD.W           R2, R0, #0x30 ; '0'
5576BE:  CMP             R0, #0
5576C0:  IT EQ
5576C2:  ADDEQ.W         R2, R9, #4
5576C6:  ADD.W           R0, R1, #0x30 ; '0'
5576CA:  CMP             R1, #0
5576CC:  VLDR            S0, [R2]
5576D0:  VLDR            S2, [R2,#4]
5576D4:  VLDR            S4, [R2,#8]
5576D8:  IT EQ
5576DA:  ADDEQ           R0, R6, #4
5576DC:  VLDR            S6, [R0]
5576E0:  VLDR            S8, [R0,#4]
5576E4:  VSUB.F32        S0, S6, S0
5576E8:  VLDR            S6, [R10,#0x10]
5576EC:  VSUB.F32        S2, S8, S2
5576F0:  VLDR            S8, [R10,#0x14]
5576F4:  VLDR            S10, [R0,#8]
5576F8:  VLDR            S12, [R10,#0x18]
5576FC:  VSUB.F32        S4, S10, S4
557700:  VMUL.F32        S6, S0, S6
557704:  VMUL.F32        S8, S2, S8
557708:  VMUL.F32        S10, S4, S12
55770C:  VADD.F32        S6, S6, S8
557710:  VADD.F32        S6, S6, S10
557714:  VCMPE.F32       S6, S16
557718:  VMRS            APSR_nzcv, FPSCR
55771C:  BLE             loc_55779E
55771E:  VCMPE.F32       S6, S18
557722:  VMRS            APSR_nzcv, FPSCR
557726:  BGE             loc_55779E
557728:  VLDR            S6, [R10]
55772C:  VLDR            S8, [R10,#4]
557730:  VMUL.F32        S6, S0, S6
557734:  VLDR            S10, [R10,#8]
557738:  VMUL.F32        S8, S2, S8
55773C:  VMUL.F32        S10, S4, S10
557740:  VADD.F32        S6, S6, S8
557744:  VADD.F32        S6, S6, S10
557748:  VABS.F32        S6, S6
55774C:  VCMPE.F32       S6, S16
557750:  VMRS            APSR_nzcv, FPSCR
557754:  BGE             loc_55779E
557756:  VLDR            S6, [R10,#0x20]
55775A:  VLDR            S8, [R10,#0x24]
55775E:  VMUL.F32        S0, S0, S6
557762:  VLDR            S10, [R10,#0x28]
557766:  VMUL.F32        S2, S2, S8
55776A:  VMUL.F32        S4, S4, S10
55776E:  VADD.F32        S0, S0, S2
557772:  VADD.F32        S0, S0, S4
557776:  VABS.F32        S0, S0
55777A:  VCMPE.F32       S0, S16
55777E:  VMRS            APSR_nzcv, FPSCR
557782:  BGE             loc_55779E
557784:  LDR.W           R0, [R8,R5]
557788:  LDR             R1, [R0,#0x58]
55778A:  MOV             R0, R6
55778C:  BLX             R1
55778E:  MOVS            R0, #0x14
557790:  MOVS            R1, #0x73 ; 's'; int
557792:  STRB.W          R0, [R9,#0x994]
557796:  MOVS            R2, #0; float
557798:  LDR             R0, [SP,#0xA0+var_88]; this
55779A:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
55779E:  SUBS            R4, #1
5577A0:  SUBW            R5, R5, #0x7CC
5577A4:  ADDS            R0, R4, #1
5577A6:  BNE.W           loc_557696
5577AA:  LDRB.W          R0, [R9,#0x994]
5577AE:  CMP             R0, #0
5577B0:  BEQ.W           loc_557A00
5577B4:  MOVW            R0, #0x3333
5577B8:  ADD.W           R8, SP, #0xA0+var_84
5577BC:  MOVT            R0, #0xC073
5577C0:  MOV             R1, R10
5577C2:  STR             R0, [SP,#0xA0+var_80]
5577C4:  MOV             R0, #0xBF99999A
5577CC:  MOV             R2, R8
5577CE:  STR             R0, [SP,#0xA0+var_84]
5577D0:  MOV.W           R0, #0x3FC00000
5577D4:  STR             R0, [SP,#0xA0+var_7C]
5577D6:  ADD             R0, SP, #0xA0+var_5C
5577D8:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5577DC:  VLDR            S18, =-0.1
5577E0:  VLDR            S0, [R10,#0x18]
5577E4:  VLDR            S20, [R10,#0x10]
5577E8:  VMUL.F32        S0, S0, S18
5577EC:  VLDR            S22, [R10,#0x14]
5577F0:  VSTR            S0, [SP,#0xA0+var_60]
5577F4:  BLX             rand
5577F8:  VMOV            S0, R0
5577FC:  VLDR            S16, =4.6566e-10
557800:  VLDR            S24, =0.1
557804:  VMUL.F32        S2, S20, S18
557808:  VCVT.F32.S32    S0, S0
55780C:  VLDR            S26, =-0.05
557810:  VMUL.F32        S0, S0, S16
557814:  VMUL.F32        S0, S0, S24
557818:  VADD.F32        S0, S0, S26
55781C:  VADD.F32        S0, S2, S0
557820:  VSTR            S0, [SP,#0xA0+var_68]
557824:  BLX             rand
557828:  VMOV            S0, R0
55782C:  MOV.W           R4, #0xFFFFFFFF
557830:  VMUL.F32        S2, S22, S18
557834:  VCVT.F32.S32    S0, S0
557838:  VMUL.F32        S0, S0, S16
55783C:  VMUL.F32        S0, S0, S24
557840:  VADD.F32        S0, S0, S26
557844:  VADD.F32        S0, S2, S0
557848:  VSTR            S0, [SP,#0xA0+var_68+4]
55784C:  LDRB.W          R0, [R9,#0x994]
557850:  SUBS            R0, #1; switch 7 cases
557852:  CMP             R0, #6
557854:  BHI             def_557856; jumptable 00557856 default case, case 5
557856:  TBB.W           [PC,R0]; switch jump
55785A:  DCB 4; jump table for switch statement
55785B:  DCB 7
55785C:  DCB 0xA
55785D:  DCB 0xF
55785E:  DCB 0x19
55785F:  DCB 0x12
557860:  DCB 0x15
557861:  ALIGN 2
557862:  LDR             R0, =(MI_HARVESTERBODYPART1_ptr - 0x557868); jumptable 00557856 case 1
557864:  ADD             R0, PC; MI_HARVESTERBODYPART1_ptr
557866:  B               loc_557888
557868:  LDR             R0, =(MI_HARVESTERBODYPART2_ptr - 0x55786E); jumptable 00557856 case 2
55786A:  ADD             R0, PC; MI_HARVESTERBODYPART2_ptr
55786C:  B               loc_557888
55786E:  LDR             R0, =(MI_HARVESTERBODYPART3_ptr - 0x557874); jumptable 00557856 case 3
557870:  ADD             R0, PC; MI_HARVESTERBODYPART3_ptr
557872:  B               loc_557888
557874:  DCFS 0.01
557878:  LDR             R0, =(MI_HARVESTERBODYPART2_ptr - 0x55787E); jumptable 00557856 case 4
55787A:  ADD             R0, PC; MI_HARVESTERBODYPART2_ptr
55787C:  B               loc_557888
55787E:  LDR             R0, =(MI_HARVESTERBODYPART4_ptr - 0x557884); jumptable 00557856 case 6
557880:  ADD             R0, PC; MI_HARVESTERBODYPART4_ptr
557882:  B               loc_557888
557884:  LDR             R0, =(MI_HARVESTERBODYPART1_ptr - 0x55788A); jumptable 00557856 case 7
557886:  ADD             R0, PC; MI_HARVESTERBODYPART1_ptr
557888:  LDR             R0, [R0]; this
55788A:  LDRH            R4, [R0]
55788C:  BLX             j__ZN13CLocalisation10ShootLimbsEv; jumptable 00557856 default case, case 5
557890:  CMP             R0, #0
557892:  IT EQ
557894:  MOVEQ.W         R4, #0xFFFFFFFF
557898:  CMP             R4, #0
55789A:  BLT             loc_55797E
55789C:  MOV.W           R0, #(elf_hash_bucket+0x88); this
5578A0:  BLX             j__ZN7CObjectnwEj; CObject::operator new(uint)
5578A4:  MOV             R1, R4; int
5578A6:  MOVS            R2, #1; bool
5578A8:  MOV             R6, R0
5578AA:  BLX             j__ZN7CObjectC2Eib; CObject::CObject(int,bool)
5578AE:  MOV             R1, R10; CMatrix *
5578B0:  BLX             j__ZN10CPlaceable9SetMatrixERK7CMatrix; CPlaceable::SetMatrix(CMatrix const&)
5578B4:  LDRD.W          R2, R1, [SP,#0xA0+var_5C]
5578B8:  LDR             R3, [R6,#0x14]
5578BA:  LDR             R0, [SP,#0xA0+var_54]
5578BC:  CBZ             R3, loc_5578CA
5578BE:  STR             R2, [R3,#0x30]
5578C0:  LDR             R2, [R6,#0x14]
5578C2:  STR             R1, [R2,#0x34]
5578C4:  LDR             R1, [R6,#0x14]
5578C6:  ADDS            R1, #0x38 ; '8'
5578C8:  B               loc_5578D2
5578CA:  STRD.W          R2, R1, [R6,#4]
5578CE:  ADD.W           R1, R6, #0xC
5578D2:  STR             R0, [R1]
5578D4:  VLDR            D16, [SP,#0xA0+var_68]
5578D8:  LDR             R0, [SP,#0xA0+var_60]
5578DA:  STR             R0, [R6,#0x50]
5578DC:  VSTR            D16, [R6,#0x48]
5578E0:  BLX             rand
5578E4:  VMOV            S0, R0
5578E8:  VCVT.F32.S32    S18, S0
5578EC:  BLX             rand
5578F0:  VMOV            S0, R0
5578F4:  VCVT.F32.S32    S20, S0
5578F8:  BLX             rand
5578FC:  VMOV            S0, R0
557900:  VLDR            S6, =0.08
557904:  VMUL.F32        S2, S18, S16
557908:  MOVS            R1, #3
55790A:  VCVT.F32.S32    S0, S0
55790E:  LDR             R0, [R6,#0x18]
557910:  VMUL.F32        S4, S20, S16
557914:  STRB.W          R1, [R6,#0x140]
557918:  CMP             R0, #0
55791A:  VMUL.F32        S2, S2, S6
55791E:  VMUL.F32        S0, S0, S16
557922:  VMUL.F32        S4, S4, S6
557926:  VMUL.F32        S0, S0, S6
55792A:  VLDR            S6, =-0.04
55792E:  VADD.F32        S2, S2, S6
557932:  VADD.F32        S4, S4, S6
557936:  VADD.F32        S0, S0, S6
55793A:  VSTR            S2, [R6,#0x54]
55793E:  VSTR            S4, [R6,#0x58]
557942:  VSTR            S0, [R6,#0x5C]
557946:  BEQ             loc_55795C
557948:  LDR             R1, [R0,#4]
55794A:  LDR             R0, [R6,#0x14]
55794C:  ADDS            R1, #0x10
55794E:  CBZ             R0, loc_557956
557950:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
557954:  B               loc_55795C
557956:  ADDS            R0, R6, #4
557958:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
55795C:  MOV             R0, R6; this
55795E:  BLX             j__ZN7CEntity13UpdateRwFrameEv; CEntity::UpdateRwFrame(void)
557962:  LDR             R0, [R6]
557964:  MOVS            R1, #0
557966:  LDR             R2, [R0,#0x14]
557968:  MOV             R0, R6
55796A:  BLX             R2
55796C:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x557972)
55796E:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
557970:  LDR             R0, [R0]; CObject::nNoTempObjects ...
557972:  LDRH            R1, [R0]; CObject::nNoTempObjects
557974:  ADDS            R1, #1; CEntity *
557976:  STRH            R1, [R0]; CObject::nNoTempObjects
557978:  MOV             R0, R6; this
55797A:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
55797E:  LDRB.W          R0, [R9,#0x994]
557982:  SUBS            R0, #1; this
557984:  STRB.W          R0, [R9,#0x994]
557988:  BLX             j__ZN13CLocalisation5BloodEv; CLocalisation::Blood(void)
55798C:  CBZ             R0, loc_557A00
55798E:  LDRB.W          R0, [R9,#0x994]
557992:  MOV             R1, #0xAAAAAAAB
55799A:  UMULL.W         R1, R2, R0, R1
55799E:  LSRS            R1, R2, #1
5579A0:  ADD.W           R1, R1, R1,LSL#1
5579A4:  SUBS            R0, R0, R1
5579A6:  BNE             loc_557A00
5579A8:  MOV             R0, R8; this
5579AA:  BLX             j__ZN11FxPrtMult_cC2Ev; FxPrtMult_c::FxPrtMult_c(void)
5579AE:  MOVW            R1, #0x999A
5579B2:  MOV.W           R0, #0x3F800000
5579B6:  MOVS            R4, #0
5579B8:  STRD.W          R0, R0, [SP,#0xA0+var_A0]; float
5579BC:  STRD.W          R4, R0, [SP,#0xA0+var_98]; float
5579C0:  MOVT            R1, #0x3E19; float
5579C4:  MOV             R0, R8; this
5579C6:  MOVS            R2, #0; float
5579C8:  MOVS            R3, #0; float
5579CA:  BLX             j__ZN11FxPrtMult_c5SetUpEfffffff; FxPrtMult_c::SetUp(float,float,float,float,float,float,float)
5579CE:  LDR             R0, =(g_fx_ptr - 0x5579DE)
5579D0:  MOVW            R1, #0x999A
5579D4:  MOVW            R2, #0x999A
5579D8:  MOVS            R3, #0
5579DA:  ADD             R0, PC; g_fx_ptr
5579DC:  MOVT            R1, #0x3F19
5579E0:  MOVT            R2, #0x3F99
5579E4:  MOVT            R3, #0xBF80
5579E8:  LDR             R0, [R0]; g_fx
5579EA:  LDR             R0, [R0,#(dword_820544 - 0x820520)]; int
5579EC:  STRD.W          R8, R3, [SP,#0xA0+var_A0]; int
5579F0:  MOVS            R3, #0; int
5579F2:  STRD.W          R2, R1, [SP,#0xA0+var_98]; float
5579F6:  ADD             R1, SP, #0xA0+var_5C; int
5579F8:  ADD             R2, SP, #0xA0+var_68; int
5579FA:  STR             R4, [SP,#0xA0+var_90]; int
5579FC:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
557A00:  ADD             SP, SP, #0x50 ; 'P'
557A02:  VPOP            {D8-D13}
557A06:  ADD             SP, SP, #4
557A08:  POP.W           {R8-R11}
557A0C:  POP             {R4-R7,PC}
