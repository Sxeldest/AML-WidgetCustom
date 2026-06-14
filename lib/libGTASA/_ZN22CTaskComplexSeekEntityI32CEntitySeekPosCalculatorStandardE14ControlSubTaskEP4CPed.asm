; =========================================================
; Game Engine Function: _ZN22CTaskComplexSeekEntityI32CEntitySeekPosCalculatorStandardE14ControlSubTaskEP4CPed
; Address            : 0x3343C4 - 0x3349C4
; =========================================================

3343C4:  PUSH            {R4-R7,LR}
3343C6:  ADD             R7, SP, #0xC
3343C8:  PUSH.W          {R8,R9,R11}
3343CC:  VPUSH           {D8-D10}
3343D0:  SUB             SP, SP, #0x98; float
3343D2:  MOV             R5, R0
3343D4:  MOV             R9, R1
3343D6:  LDRD.W          R6, R4, [R5,#8]
3343DA:  CMP             R4, #0
3343DC:  BEQ             loc_334466
3343DE:  LDRB.W          R0, [R4,#0x3A]
3343E2:  AND.W           R0, R0, #7
3343E6:  CMP             R0, #3
3343E8:  BNE             loc_334466
3343EA:  MOV             R0, R9; this
3343EC:  MOV             R1, R4; CPed *
3343EE:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
3343F2:  CMP             R0, #1
3343F4:  BNE             loc_334466
3343F6:  LDRB.W          R0, [R4,#0x45]
3343FA:  LSLS            R0, R0, #0x1F
3343FC:  BNE             loc_33444E
3343FE:  LDR.W           R8, [R4,#0x56C]
334402:  CMP.W           R8, #0
334406:  BEQ             loc_334426
334408:  LDRB.W          R0, [R8,#0x3A]
33440C:  AND.W           R0, R0, #7
334410:  CMP             R0, #2
334412:  BNE             loc_334426
334414:  LDR.W           R0, [R9,#0x56C]
334418:  CMP             R0, R8
33441A:  ITT NE
33441C:  LDRNE.W         R0, [R9,#0x588]
334420:  CMPNE           R0, R8
334422:  BEQ.W           loc_3348D6
334426:  LDR.W           R8, [R4,#0x588]
33442A:  CMP.W           R8, #0
33442E:  BEQ             loc_33444E
334430:  LDRB.W          R0, [R8,#0x3A]
334434:  AND.W           R0, R0, #7
334438:  CMP             R0, #2
33443A:  BNE             loc_33444E
33443C:  LDR.W           R0, [R9,#0x56C]
334440:  CMP             R0, R8
334442:  ITT NE
334444:  LDRNE.W         R0, [R9,#0x588]
334448:  CMPNE           R0, R8
33444A:  BEQ.W           loc_3348D6
33444E:  MOV.W           R8, #0
334452:  LDR.W           R0, [R9,#0x100]
334456:  CMP.W           R8, #0
33445A:  BNE             loc_334524
33445C:  CMP             R0, #0
33445E:  BEQ             loc_334524
334460:  MOV             R0, R9; this
334462:  BLX             j__ZN4CPed20DettachPedFromEntityEv; CPed::DettachPedFromEntity(void)
334466:  LDR             R0, [R5,#8]
334468:  LDR             R1, [R0]
33446A:  LDR             R1, [R1,#0x14]
33446C:  BLX             R1
33446E:  MOVW            R1, #0x38A
334472:  CMP             R0, R1
334474:  BEQ             loc_334488
334476:  LDR             R0, [R5,#8]
334478:  LDR             R1, [R0]
33447A:  LDR             R1, [R1,#0x14]
33447C:  BLX             R1
33447E:  MOVW            R1, #0x387
334482:  CMP             R0, R1
334484:  BNE.W           loc_334942
334488:  LDR             R0, [R5,#0xC]
33448A:  CBZ             R0, loc_3344AE
33448C:  LDRB.W          R1, [R5,#0x3C]
334490:  CBZ             R1, loc_3344D8
334492:  LDRB.W          R1, [R5,#0x3D]
334496:  CBZ             R1, loc_3344C4
334498:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3344A2)
33449C:  MOVS            R2, #0
33449E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3344A0:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3344A2:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3344A4:  STRB.W          R2, [R5,#0x3D]
3344A8:  STR             R1, [R5,#0x34]
3344AA:  MOV             R2, R1
3344AC:  B               loc_3344D0
3344AE:  LDR             R0, [R5,#8]
3344B0:  MOVS            R2, #1
3344B2:  MOVS            R3, #0
3344B4:  LDR             R1, [R0]
3344B6:  LDR             R4, [R1,#0x1C]
3344B8:  MOV             R1, R9
3344BA:  BLX             R4
3344BC:  CMP             R0, #0
3344BE:  IT NE
3344C0:  MOVNE           R6, #0
3344C2:  B               loc_334942
3344C4:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3344CE)
3344C8:  LDR             R2, [R5,#0x34]
3344CA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3344CC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3344CE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3344D0:  LDR             R3, [R5,#0x38]
3344D2:  ADD             R2, R3
3344D4:  CMP             R2, R1
3344D6:  BLS             loc_334502
3344D8:  LDRB.W          R1, [R5,#0x30]
3344DC:  CMP             R1, #0
3344DE:  BEQ.W           loc_334942
3344E2:  LDRB.W          R1, [R5,#0x31]
3344E6:  CMP             R1, #0
3344E8:  BEQ.W           loc_3346FA
3344EC:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3344F6)
3344F0:  MOVS            R2, #0
3344F2:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3344F4:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
3344F6:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
3344F8:  STRB.W          R2, [R5,#0x31]
3344FC:  STR             R1, [R5,#0x28]
3344FE:  MOV             R2, R1
334500:  B               loc_334704
334502:  LDR             R0, [R5,#8]
334504:  MOVS            R2, #1
334506:  MOVS            R3, #0
334508:  LDR             R1, [R0]
33450A:  LDR             R4, [R1,#0x1C]
33450C:  MOV             R1, R9
33450E:  BLX             R4
334510:  CMP             R0, #1
334512:  BNE.W           loc_334942
334516:  LDRB.W          R0, [R5,#0x48]
33451A:  LSLS            R0, R0, #0x1F
33451C:  BNE.W           loc_3348A2
334520:  MOVS            R6, #0
334522:  B               loc_334942
334524:  CMP.W           R8, #0
334528:  BEQ             loc_334466
33452A:  CMP             R0, #0
33452C:  BNE             loc_334466
33452E:  LDR             R0, [R5,#8]
334530:  LDR             R1, [R0]
334532:  LDR             R1, [R1,#0x14]
334534:  BLX             R1
334536:  CMP             R0, #0xCB
334538:  BEQ             loc_334466
33453A:  LDR             R0, [R5,#8]
33453C:  MOVS            R2, #1
33453E:  MOVS            R3, #0
334540:  LDR             R1, [R0]
334542:  LDR             R4, [R1,#0x1C]
334544:  MOV             R1, R9
334546:  BLX             R4
334548:  CMP             R0, #1
33454A:  BNE.W           loc_334466
33454E:  LDR.W           R0, [R9,#0x14]
334552:  ADD.W           R4, R8, #4
334556:  LDR.W           R1, [R8,#dword_14]
33455A:  ADD.W           R2, R0, #0x30 ; '0'
33455E:  CMP             R0, #0
334560:  IT EQ
334562:  ADDEQ.W         R2, R9, #4
334566:  CMP             R1, #0
334568:  MOV             R0, R4
33456A:  VLDR            S0, [R2]
33456E:  VLDR            S2, [R2,#4]
334572:  VLDR            S4, [R2,#8]
334576:  IT NE
334578:  ADDNE.W         R0, R1, #0x30 ; '0'
33457C:  VLDR            S6, [R0]
334580:  VSUB.F32        S16, S6, S0
334584:  VSTR            S16, [SP,#0xC8+var_40]
334588:  VLDR            S0, [R0,#4]
33458C:  VSUB.F32        S18, S0, S2
334590:  VSTR            S18, [SP,#0xC8+var_40+4]
334594:  VLDR            S0, [R0,#8]
334598:  VSUB.F32        S20, S0, S4
33459C:  VSTR            S20, [SP,#0xC8+var_38]
3345A0:  LDR             R0, [SP,#0xC8+var_38]
3345A2:  STR             R0, [SP,#0xC8+var_48]
3345A4:  ADD             R0, SP, #0xC8+var_50; this
3345A6:  VLDR            D16, [SP,#0xC8+var_40]
3345AA:  VSTR            D16, [SP,#0xC8+var_50]
3345AE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3345B2:  VMOV.F32        S0, #0.25
3345B6:  VLDR            S4, [SP,#0xC8+var_50+4]
3345BA:  VLDR            S6, [SP,#0xC8+var_48]
3345BE:  MOV             R1, R4
3345C0:  VLDR            S2, [SP,#0xC8+var_50]
3345C4:  VMUL.F32        S4, S4, S0
3345C8:  VMUL.F32        S6, S6, S0
3345CC:  VMUL.F32        S0, S2, S0
3345D0:  VSUB.F32        S4, S18, S4
3345D4:  VSUB.F32        S6, S20, S6
3345D8:  VSUB.F32        S0, S16, S0
3345DC:  VSTR            S4, [SP,#0xC8+var_40+4]
3345E0:  VSTR            S6, [SP,#0xC8+var_38]
3345E4:  LDR.W           R0, [R8,#dword_14]
3345E8:  CMP             R0, #0
3345EA:  IT NE
3345EC:  ADDNE.W         R1, R0, #0x30 ; '0'; CVector *
3345F0:  VLDR            S2, [R1]
3345F4:  VSUB.F32        S18, S2, S0
3345F8:  VSTR            S18, [SP,#0xC8+var_40]
3345FC:  VLDR            S0, [R1,#4]
334600:  VSUB.F32        S20, S0, S4
334604:  VSTR            S20, [SP,#0xC8+var_40+4]
334608:  VLDR            S0, [R1,#8]
33460C:  VSUB.F32        S16, S0, S6
334610:  VSTR            S16, [SP,#0xC8+var_38]
334614:  LDR             R0, [SP,#0xC8+var_38]
334616:  STR             R0, [SP,#0xC8+var_58]
334618:  ADD             R0, SP, #0xC8+var_60; this
33461A:  VLDR            D16, [SP,#0xC8+var_40]
33461E:  VSTR            D16, [SP,#0xC8+var_60]
334622:  BLX             j__ZN13CPedPlacement15FindZCoorForPedEP7CVector; CPedPlacement::FindZCoorForPed(CVector *)
334626:  CMP             R0, #1
334628:  BNE             loc_334642
33462A:  LDR             R0, [SP,#0xC8+var_58]
33462C:  VLDR            D16, [SP,#0xC8+var_60]
334630:  STR             R0, [SP,#0xC8+var_38]
334632:  VLDR            S16, [SP,#0xC8+var_38]
334636:  VSTR            D16, [SP,#0xC8+var_40]
33463A:  VLDR            S18, [SP,#0xC8+var_40]
33463E:  VLDR            S20, [SP,#0xC8+var_40+4]
334642:  LDR.W           R0, [R8,#dword_14]
334646:  ADD             R5, SP, #0xC8+var_A8
334648:  CMP             R0, #0
33464A:  MOV             R1, R5; CMatrix *
33464C:  IT NE
33464E:  ADDNE.W         R4, R0, #0x30 ; '0'
334652:  MOVS            R0, #0
334654:  VLDR            S0, [R4]
334658:  VSUB.F32        S0, S18, S0
33465C:  VSTR            S0, [SP,#0xC8+var_40]
334660:  VLDR            S0, [R4,#4]
334664:  VSUB.F32        S0, S20, S0
334668:  VSTR            S0, [SP,#0xC8+var_40+4]
33466C:  VLDR            S0, [R4,#8]
334670:  VSUB.F32        S0, S16, S0
334674:  VSTR            S0, [SP,#0xC8+var_38]
334678:  STRD.W          R0, R0, [SP,#0xC8+var_68]
33467C:  LDR.W           R0, [R8,#dword_14]; CMatrix *
334680:  BLX             j__Z6InvertRK7CMatrixRS_; Invert(CMatrix const&,CMatrix&)
334684:  ADD             R0, SP, #0xC8+var_B4; this
334686:  ADD             R2, SP, #0xC8+var_40; CVector *
334688:  MOV             R1, R5; CMatrix *
33468A:  BLX             j__ZN7CVector15FromMultiply3X3ERK7CMatrixRKS_; CVector::FromMultiply3X3(CMatrix const&,CVector const&)
33468E:  LDRD.W          R0, R1, [SP,#0xC8+var_50]; float
334692:  MOVS            R2, #0; float
334694:  MOVS            R3, #0; float
334696:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
33469A:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
33469E:  LDRSB.W         R1, [R9,#0x71C]
3346A2:  VMOV            S0, R0
3346A6:  ADD             R6, SP, #0xC8+var_B4
3346A8:  MOV             R0, #0x3E4CCCCD
3346B0:  RSB.W           R1, R1, R1,LSL#3
3346B4:  ADD.W           R1, R9, R1,LSL#2
3346B8:  LDR.W           R1, [R1,#0x5A4]
3346BC:  LDM             R6, {R2,R3,R6}; int
3346BE:  STR             R1, [SP,#0xC8+var_BC]; int
3346C0:  VCVT.U32.F32    S0, S0
3346C4:  STR             R0, [SP,#0xC8+var_C0]; float
3346C6:  MOV             R1, R8; this
3346C8:  VMOV            R0, S0
3346CC:  STRD.W          R6, R0, [SP,#0xC8+var_C8]; int
3346D0:  MOV             R0, R9; int
3346D2:  BLX             j__ZN4CPed17AttachPedToEntityEP7CEntity7CVectortf11eWeaponType; CPed::AttachPedToEntity(CEntity *,CVector,ushort,float,eWeaponType)
3346D6:  MOVS            R0, #dword_20; this
3346D8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3346DC:  MOV             R6, R0
3346DE:  MOV.W           R0, #0x41000000
3346E2:  STR             R0, [SP,#0xC8+var_C8]; float
3346E4:  MOV             R0, R6; this
3346E6:  MOV.W           R1, #0x7D0; int
3346EA:  MOVS            R2, #0; bool
3346EC:  MOVS            R3, #0; bool
3346EE:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
3346F2:  MOV             R0, R5; this
3346F4:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3346F8:  B               loc_3349B6
3346FA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x334702)
3346FC:  LDR             R2, [R5,#0x28]
3346FE:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
334700:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
334702:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
334704:  LDR             R3, [R5,#0x2C]
334706:  ADD             R2, R3
334708:  CMP             R2, R1
33470A:  BHI.W           loc_334942
33470E:  LDR             R2, [R5,#0x14]
334710:  MOVS            R3, #1
334712:  STRB.W          R3, [R5,#0x30]
334716:  STRD.W          R1, R2, [R5,#0x28]
33471A:  LDR             R1, [R0,#0x14]
33471C:  ADD.W           R2, R1, #0x30 ; '0'
334720:  CMP             R1, #0
334722:  IT EQ
334724:  ADDEQ           R2, R0, #4
334726:  VLDR            D16, [R2]
33472A:  LDR             R0, [R2,#8]
33472C:  STR             R0, [SP,#0xC8+var_38]
33472E:  VSTR            D16, [SP,#0xC8+var_40]
334732:  LDR.W           R0, [R9,#0x14]
334736:  VLDR            S18, [SP,#0xC8+var_40]
33473A:  ADD.W           R1, R0, #0x30 ; '0'
33473E:  CMP             R0, #0
334740:  VLDR            S16, [SP,#0xC8+var_40+4]
334744:  IT EQ
334746:  ADDEQ.W         R1, R9, #4
33474A:  VLDR            S0, [R1]
33474E:  VLDR            S2, [R1,#4]
334752:  VSUB.F32        S0, S0, S18
334756:  LDR             R0, [R5,#8]
334758:  VSUB.F32        S2, S2, S16
33475C:  LDR             R1, [R0]
33475E:  LDR             R1, [R1,#0x14]
334760:  VMUL.F32        S0, S0, S0
334764:  VMUL.F32        S2, S2, S2
334768:  VADD.F32        S0, S0, S2
33476C:  VLDR            S2, =0.0
334770:  VADD.F32        S20, S0, S2
334774:  BLX             R1
334776:  MOVW            R1, #0x38A
33477A:  CMP             R0, R1
33477C:  BNE             loc_33480E
33477E:  VLDR            S0, [R5,#0x20]
334782:  VCMP.F32        S0, #0.0
334786:  VMRS            APSR_nzcv, FPSCR
33478A:  BEQ.W           loc_3348B4
33478E:  VMOV.F32        S2, #-1.0
334792:  VADD.F32        S0, S0, S2
334796:  VMUL.F32        S0, S0, S0
33479A:  VCMPE.F32       S20, S0
33479E:  VMRS            APSR_nzcv, FPSCR
3347A2:  BGE.W           loc_3348B4
3347A6:  LDR             R0, [R5,#8]
3347A8:  MOVS            R2, #1
3347AA:  MOVS            R3, #0
3347AC:  MOVS            R4, #0
3347AE:  LDR             R1, [R0]
3347B0:  LDR             R6, [R1,#0x1C]
3347B2:  MOV             R1, R9
3347B4:  BLX             R6
3347B6:  CMP             R0, #1
3347B8:  BNE.W           loc_334940
3347BC:  MOVS            R0, #word_28; this
3347BE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3347C2:  MOV             R6, R0
3347C4:  LDR             R0, [R5,#0xC]
3347C6:  LDR             R1, [R5,#0x44]; int
3347C8:  LDR             R2, [R0,#0x14]
3347CA:  ADD.W           R3, R2, #0x30 ; '0'
3347CE:  CMP             R2, #0
3347D0:  IT EQ
3347D2:  ADDEQ           R3, R0, #4
3347D4:  ADD             R2, SP, #0xC8+var_A8; CVector *
3347D6:  VLDR            D16, [R3]
3347DA:  LDR             R0, [R3,#8]
3347DC:  STR             R0, [SP,#0xC8+var_A0]
3347DE:  MOV             R0, R6; this
3347E0:  VSTR            D16, [SP,#0xC8+var_A8]
3347E4:  LDR             R3, [R5,#0x18]; float
3347E6:  VLDR            S0, [R5,#0x1C]
3347EA:  STRD.W          R4, R4, [SP,#0xC8+var_C4]; bool
3347EE:  VSTR            S0, [SP,#0xC8+var_C8]
3347F2:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
3347F6:  LDRB.W          R0, [R5,#0x48]
3347FA:  LDRB.W          R1, [R6,#0x24]
3347FE:  AND.W           R0, R0, #8
334802:  AND.W           R1, R1, #0xF7
334806:  ORRS            R0, R1
334808:  STRB.W          R0, [R6,#0x24]
33480C:  B               loc_3349B6
33480E:  LDR             R0, [R5,#8]
334810:  LDRB.W          R1, [R0,#0x24]
334814:  TST.W           R1, #0x10
334818:  BNE.W           loc_334940
33481C:  VLDR            S0, [R5,#0x20]
334820:  VCMP.F32        S0, #0.0
334824:  VMRS            APSR_nzcv, FPSCR
334828:  BEQ             loc_3348E4
33482A:  VMOV.F32        S2, #1.0
33482E:  VADD.F32        S0, S0, S2
334832:  VMUL.F32        S0, S0, S0
334836:  VCMPE.F32       S20, S0
33483A:  VMRS            APSR_nzcv, FPSCR
33483E:  BLE             loc_3348E4
334840:  LDR             R1, [R0]
334842:  MOVS            R2, #1
334844:  MOVS            R3, #0
334846:  MOV.W           R8, #1
33484A:  MOVS            R4, #0
33484C:  LDR             R6, [R1,#0x1C]
33484E:  MOV             R1, R9
334850:  BLX             R6
334852:  CMP             R0, #1
334854:  BNE             loc_334940
334856:  MOVS            R0, #dword_60; this
334858:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
33485C:  MOV             R6, R0
33485E:  LDR             R0, [R5,#0xC]
334860:  LDR             R1, [R5,#0x44]; int
334862:  LDR             R2, [R0,#0x14]
334864:  ADD.W           R3, R2, #0x30 ; '0'
334868:  CMP             R2, #0
33486A:  IT EQ
33486C:  ADDEQ           R3, R0, #4
33486E:  ADD             R2, SP, #0xC8+var_A8; CVector *
334870:  VLDR            D16, [R3]
334874:  LDR             R0, [R3,#8]
334876:  STR             R0, [SP,#0xC8+var_A0]
334878:  MOV.W           R0, #0xFFFFFFFF
33487C:  VSTR            D16, [SP,#0xC8+var_A8]
334880:  LDR             R3, [R5,#0x18]; float
334882:  VLDR            S0, [R5,#0x1C]
334886:  VLDR            S2, [R5,#0x24]
33488A:  STRD.W          R4, R0, [SP,#0xC8+var_C0]; bool
33488E:  MOV             R0, R6; this
334890:  STR.W           R8, [SP,#0xC8+var_B8]; bool
334894:  VSTR            S0, [SP,#0xC8+var_C8]
334898:  VSTR            S2, [SP,#0xC8+var_C4]
33489C:  BLX             j__ZN27CTaskComplexFollowNodeRouteC2EiRK7CVectorfffbib; CTaskComplexFollowNodeRoute::CTaskComplexFollowNodeRoute(int,CVector const&,float,float,float,bool,int,bool)
3348A0:  B               loc_3349B6
3348A2:  MOVS            R0, #dword_1C; this
3348A4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
3348A8:  MOV.W           R1, #0x3E8; int
3348AC:  MOV             R6, R0
3348AE:  BLX             j__ZN16CTaskSimpleTiredC2Ei; CTaskSimpleTired::CTaskSimpleTired(int)
3348B2:  B               loc_334942
3348B4:  LDR             R3, [R5,#0x18]; float
3348B6:  MOVS            R1, #0
3348B8:  LDR             R0, [R5,#8]; this
3348BA:  ADD             R2, SP, #0xC8+var_40; CVector *
3348BC:  VLDR            S0, [R5,#0x1C]
3348C0:  VLDR            S2, [R5,#0x24]
3348C4:  STR             R1, [SP,#0xC8+var_C0]; bool
3348C6:  MOV             R1, R9; CPed *
3348C8:  VSTR            S0, [SP,#0xC8+var_C8]
3348CC:  VSTR            S2, [SP,#0xC8+var_C4]
3348D0:  BLX             j__ZN27CTaskComplexFollowNodeRoute9SetTargetEPK4CPedRK7CVectorfffb; CTaskComplexFollowNodeRoute::SetTarget(CPed const*,CVector const&,float,float,float,bool)
3348D4:  B               loc_334940
3348D6:  LDR.W           R0, [R8,#0x5A0]
3348DA:  CMP             R0, #5
3348DC:  IT NE
3348DE:  MOVNE.W         R8, #0
3348E2:  B               loc_334452
3348E4:  VLDR            S2, [R0,#0x10]
3348E8:  VLDR            S0, [R5,#0x1C]
3348EC:  VCMP.F32        S2, S18
3348F0:  LDR             R2, [R5,#0x18]
3348F2:  VMRS            APSR_nzcv, FPSCR
3348F6:  ITTT EQ
3348F8:  VLDREQ          S2, [R0,#0x14]
3348FC:  VCMPEQ.F32      S2, S16
334900:  VMRSEQ          APSR_nzcv, FPSCR
334904:  BNE             loc_334926
334906:  VLDR            S2, [SP,#0xC8+var_38]
33490A:  VLDR            S4, [R0,#0x18]
33490E:  VCMP.F32        S4, S2
334912:  VMRS            APSR_nzcv, FPSCR
334916:  BNE             loc_334926
334918:  VLDR            S2, [R0,#0x20]
33491C:  VCMP.F32        S2, S0
334920:  VMRS            APSR_nzcv, FPSCR
334924:  BEQ             loc_334940
334926:  VLDR            D16, [SP,#0xC8+var_40]
33492A:  ORR.W           R1, R1, #4
33492E:  LDR             R3, [SP,#0xC8+var_38]
334930:  STRD.W          R3, R2, [R0,#0x18]
334934:  VSTR            S0, [R0,#0x20]
334938:  STRB.W          R1, [R0,#0x24]
33493C:  VSTR            D16, [R0,#0x10]
334940:  LDR             R6, [R5,#8]
334942:  LDR             R0, [R5,#0xC]; this
334944:  CMP             R0, #0
334946:  BEQ             loc_3349B6
334948:  LDRB.W          R1, [R0,#0x3A]
33494C:  AND.W           R1, R1, #7
334950:  CMP             R1, #3
334952:  BNE             loc_3349B6
334954:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
334958:  CMP             R0, #1
33495A:  BNE             loc_3349B6
33495C:  MOV.W           R0, #0xFFFFFFFF; int
334960:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
334964:  LDR.W           R0, [R0,#0x444]
334968:  MOV.W           R2, #0x2D4
33496C:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x334974)
33496E:  LDR             R0, [R0,#0x38]
334970:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
334972:  LDR             R1, [R1]; CPedGroups::ms_groups ...
334974:  MLA.W           R0, R0, R2, R1
334978:  MOV             R1, R9; CPed *
33497A:  ADDS            R0, #8; this
33497C:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
334980:  CMP             R0, #1
334982:  BNE             loc_3349B6
334984:  LDR.W           R0, [R9,#0x450]
334988:  SUBS            R0, #5
33498A:  CMP             R0, #2
33498C:  BHI             loc_3349B6
33498E:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x334998)
334990:  LDRH.W          R1, [R9,#0x24]
334994:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
334996:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
334998:  LDR             R0, [R0]; CTimer::m_FrameCounter
33499A:  ADD             R0, R1
33499C:  LSLS            R0, R0, #0x12
33499E:  BNE             loc_3349B6
3349A0:  MOVS            R0, #0
3349A2:  MOVS            R1, #0x5B ; '['; unsigned __int16
3349A4:  STRD.W          R0, R0, [SP,#0xC8+var_C8]; unsigned __int8
3349A8:  MOVS            R2, #0; unsigned int
3349AA:  STR             R0, [SP,#0xC8+var_C0]; unsigned __int8
3349AC:  MOV             R0, R9; this
3349AE:  MOV.W           R3, #0x3F800000; float
3349B2:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
3349B6:  MOV             R0, R6
3349B8:  ADD             SP, SP, #0x98
3349BA:  VPOP            {D8-D10}
3349BE:  POP.W           {R8,R9,R11}
3349C2:  POP             {R4-R7,PC}
