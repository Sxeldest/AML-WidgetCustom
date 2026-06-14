; =========================================================
; Game Engine Function: _ZN9CPhysical18ApplySoftCollisionEPS_R9CColPointRfS3_
; Address            : 0x404448 - 0x405972
; =========================================================

404448:  PUSH            {R4-R7,LR}
40444A:  ADD             R7, SP, #0xC
40444C:  PUSH.W          {R8-R11}
404450:  SUB             SP, SP, #4
404452:  VPUSH           {D8-D15}
404456:  SUB             SP, SP, #0x80
404458:  MOV             R10, R1
40445A:  MOV             R4, R0
40445C:  LDR.W           R0, [R10,#0x44]
404460:  MOV             R6, R3
404462:  LDR             R1, [R4,#0x44]
404464:  MOV             R11, R2
404466:  TST.W           R0, #0x10
40446A:  BEQ             loc_404484
40446C:  ANDS.W          R2, R1, #0x60 ; '`'
404470:  BNE             loc_404484
404472:  LDR.W           R2, [R10,#0x56C]
404476:  MOVS            R5, #0
404478:  VMOV.F32        S18, #10.0
40447C:  CMP             R2, R4
40447E:  IT EQ
404480:  MOVEQ           R5, #1
404482:  B               loc_404498
404484:  VMOV.F32        S0, #1.0
404488:  LSLS            R2, R1, #0x1F
40448A:  VMOV.F32        S18, #2.0
40448E:  MOV.W           R5, #0
404492:  IT EQ
404494:  VMOVEQ.F32      S18, S0
404498:  LSLS            R1, R1, #0x1B
40449A:  STR             R6, [SP,#0xE0+var_AC]
40449C:  STR             R5, [SP,#0xE0+var_B4]
40449E:  BPL             loc_40451E
4044A0:  ANDS.W          R1, R0, #0x60 ; '`'
4044A4:  BNE             loc_40451E
4044A6:  VMOV.F32        S16, #10.0
4044AA:  LDRB.W          R0, [R4,#0x3A]
4044AE:  AND.W           R0, R0, #7
4044B2:  CMP             R0, #3
4044B4:  BNE             loc_404502
4044B6:  MOV             R0, R4; this
4044B8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4044BC:  CMP             R0, #1
4044BE:  BNE             loc_404502
4044C0:  LDRB.W          R0, [R10,#0x3A]
4044C4:  AND.W           R1, R0, #7
4044C8:  CMP             R1, #2
4044CA:  BNE             loc_404502
4044CC:  AND.W           R0, R0, #0xF0
4044D0:  CMP             R0, #0x20 ; ' '
4044D2:  BEQ             loc_4044DA
4044D4:  LDRB            R0, [R4,#0x1D]
4044D6:  LSLS            R0, R0, #0x1B
4044D8:  BPL             loc_404502
4044DA:  VLDR            S0, =-2000.0
4044DE:  VLDR            S2, [R10,#0x90]
4044E2:  VLDR            S4, =0.0
4044E6:  VADD.F32        S0, S2, S0
4044EA:  VLDR            S2, =0.0002
4044EE:  VMAX.F32        D0, D0, D2
4044F2:  VMOV.F32        S4, #1.0
4044F6:  VMUL.F32        S0, S0, S2
4044FA:  VADD.F32        S0, S0, S4
4044FE:  VDIV.F32        S16, S4, S0
404502:  LDRB.W          R0, [R4,#0x3A]
404506:  MOVS            R1, #0
404508:  AND.W           R0, R0, #7
40450C:  CMP             R0, #3
40450E:  BNE             loc_40452E
404510:  LDR.W           R0, [R4,#0x56C]
404514:  CMP             R0, R10
404516:  IT EQ
404518:  MOVEQ           R1, #1
40451A:  STR             R1, [SP,#0xE0+var_B8]
40451C:  B               loc_404532
40451E:  VMOV.F32        S0, #1.0
404522:  LSLS            R0, R0, #0x1F
404524:  VMOV.F32        S16, #2.0
404528:  IT EQ
40452A:  VMOVEQ.F32      S16, S0
40452E:  MOVS            R0, #0
404530:  STR             R0, [SP,#0xE0+var_B8]
404532:  LDR             R1, [R4,#0x14]; CVector *
404534:  ADD.W           R2, R4, #0xA8
404538:  ADD             R0, SP, #0xE0+var_84; CMatrix *
40453A:  LDR.W           R6, [R10,#0x44]
40453E:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
404542:  LDR.W           R1, [R10,#0x14]; CVector *
404546:  ADD.W           R2, R10, #0xA8
40454A:  ADD             R0, SP, #0xE0+var_90; CMatrix *
40454C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
404550:  AND.W           R8, R6, #0xC
404554:  MOV.W           R9, #0
404558:  CMP.W           R8, #4
40455C:  MOV.W           R1, #0
404560:  IT NE
404562:  MOVNE.W         R9, #1
404566:  LDR             R0, [R4,#0x44]
404568:  MOV             R5, R10
40456A:  TST.W           R0, #0x40
40456E:  ITT NE
404570:  STRDNE.W        R1, R1, [SP,#0xE0+var_84]
404574:  STRNE           R1, [SP,#0xE0+var_7C]
404576:  LDRB.W          R1, [R10,#0x44]
40457A:  LSLS            R1, R1, #0x19
40457C:  ITTT MI
40457E:  MOVMI           R1, #0
404580:  STRDMI.W        R1, R1, [SP,#0xE0+var_90]
404584:  STRMI           R1, [SP,#0xE0+var_88]
404586:  CMP.W           R8, #4
40458A:  LDR.W           R1, [R5,#0x1C]!
40458E:  IT NE
404590:  ANDSNE.W        R1, R1, #0x40004
404594:  BEQ.W           loc_404AE6
404598:  LSLS            R0, R0, #0x1B
40459A:  BMI.W           loc_40479C
40459E:  LDR             R0, [R4,#0x14]
4045A0:  MOV             R1, R4
4045A2:  VLDR            S0, [R11]
4045A6:  VLDR            S2, [R11,#4]
4045AA:  VLDR            S6, [R0,#0x30]
4045AE:  VLDR            S8, [R0,#0x34]
4045B2:  VSUB.F32        S0, S0, S6
4045B6:  VLDR            S10, [R0,#0x38]
4045BA:  VSUB.F32        S2, S2, S8
4045BE:  VLDR            S4, [R11,#8]
4045C2:  ADD             R0, SP, #0xE0+var_78
4045C4:  STR             R5, [SP,#0xE0+var_B0]
4045C6:  VSUB.F32        S4, S4, S10
4045CA:  VMOV            R2, S0
4045CE:  VMOV            R3, S2
4045D2:  VSTR            S2, [SP,#0xE0+var_68]
4045D6:  VSTR            S0, [SP,#0xE0+var_6C]
4045DA:  VSTR            S4, [SP,#0xE0+var_64]
4045DE:  VSTR            S4, [SP,#0xE0+var_E0]
4045E2:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
4045E6:  VLDR            S0, [SP,#0xE0+var_78]
4045EA:  VLDR            S6, [R11,#0x10]
4045EE:  VLDR            S2, [SP,#0xE0+var_74]
4045F2:  VLDR            S8, [R11,#0x14]
4045F6:  VMUL.F32        S0, S0, S6
4045FA:  VLDR            S4, [SP,#0xE0+var_70]
4045FE:  VMUL.F32        S2, S2, S8
404602:  VLDR            S10, [R11,#0x18]
404606:  LDR             R5, [SP,#0xE0+var_B0]
404608:  VMUL.F32        S4, S4, S10
40460C:  VADD.F32        S0, S0, S2
404610:  VADD.F32        S22, S0, S4
404614:  VCMPE.F32       S22, #0.0
404618:  VMRS            APSR_nzcv, FPSCR
40461C:  BGE.W           loc_404A96
404620:  LDRB.W          R0, [R10,#0x3A]
404624:  AND.W           R0, R0, #7
404628:  CMP             R0, #4
40462A:  BNE.W           loc_4047AE
40462E:  VLDR            S0, [SP,#0xE0+var_84]
404632:  ADD.W           R5, R11, #0x10
404636:  VLDR            S6, [SP,#0xE0+var_6C]
40463A:  ADD             R0, SP, #0xE0+var_78; CVector *
40463C:  VLDR            S2, [SP,#0xE0+var_80]
404640:  ADD             R1, SP, #0xE0+var_9C; CVector *
404642:  VLDR            S8, [SP,#0xE0+var_68]
404646:  VSUB.F32        S0, S6, S0
40464A:  VLDR            S4, [SP,#0xE0+var_7C]
40464E:  MOV             R2, R5
404650:  VLDR            S10, [SP,#0xE0+var_64]
404654:  VSUB.F32        S2, S8, S2
404658:  VLDR            S20, [R4,#0x90]
40465C:  VSUB.F32        S4, S10, S4
404660:  VSTR            S0, [SP,#0xE0+var_9C]
404664:  VSTR            S2, [SP,#0xE0+var_98]
404668:  VSTR            S4, [SP,#0xE0+var_94]
40466C:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
404670:  VLDR            S0, [SP,#0xE0+var_78]
404674:  VLDR            S2, [SP,#0xE0+var_74]
404678:  VMUL.F32        S0, S0, S0
40467C:  VLDR            S4, [SP,#0xE0+var_70]
404680:  VMUL.F32        S2, S2, S2
404684:  LDRB            R0, [R4,#0x1D]
404686:  VMUL.F32        S4, S4, S4
40468A:  LSLS            R0, R0, #0x1B
40468C:  LDR             R0, [R7,#arg_0]
40468E:  VADD.F32        S2, S0, S2
404692:  VMOV.F32        S0, #1.0
404696:  VADD.F32        S2, S2, S4
40469A:  VLDR            S4, [R4,#0x94]
40469E:  VDIV.F32        S6, S0, S20
4046A2:  VDIV.F32        S2, S2, S4
4046A6:  VADD.F32        S2, S6, S2
4046AA:  VDIV.F32        S20, S0, S2
4046AE:  ITTT PL
4046B0:  VLDRPL          S2, [R4,#0xA0]
4046B4:  VADDPL.F32      S0, S2, S0
4046B8:  VMULPL.F32      S22, S22, S0
4046BC:  LDR             R6, [SP,#0xE0+var_AC]
4046BE:  VNMUL.F32       S0, S20, S22
4046C2:  VSTR            S0, [R6]
4046C6:  VSTR            S0, [R0]
4046CA:  LDRB.W          R0, [R10,#0x148]
4046CE:  CMP             R0, #0
4046D0:  BEQ.W           loc_404818
4046D4:  VMOV.F32        S2, #20.0
4046D8:  VLDR            S0, [R6]
4046DC:  VCMPE.F32       S0, S2
4046E0:  VMRS            APSR_nzcv, FPSCR
4046E4:  BLE.W           loc_404818
4046E8:  VMOV            R1, S0
4046EC:  MOVS            R0, #0x37 ; '7'
4046EE:  STRD.W          R4, R0, [SP,#0xE0+var_E0]
4046F2:  MOV             R0, R10
4046F4:  MOV             R2, R11
4046F6:  MOV             R3, R5
4046F8:  BLX             j__ZN7CObject12ObjectDamageEfP7CVectorS1_P7CEntity11eWeaponType; CObject::ObjectDamage(float,CVector *,CVector *,CEntity *,eWeaponType)
4046FC:  LDR             R0, [SP,#0xE0+var_B0]
4046FE:  LDRB            R0, [R0]
404700:  LSLS            R0, R0, #0x1F
404702:  BNE.W           loc_404818
404706:  LDRB.W          R0, [R4,#0x44]
40470A:  LSLS            R0, R0, #0x1D
40470C:  BMI             loc_40475C
40470E:  VLDR            S0, =0.2
404712:  ADD.W           R12, SP, #0xE0+var_6C
404716:  VLDR            S2, [R11,#0x10]
40471A:  MOV.W           LR, #1
40471E:  VLDR            S4, [R11,#0x14]
404722:  VLDR            S6, [R11,#0x18]
404726:  VMUL.F32        S2, S2, S0
40472A:  VMUL.F32        S4, S4, S0
40472E:  VMUL.F32        S0, S6, S0
404732:  VLDR            S6, [R6]
404736:  LDM.W           R12, {R0,R8,R12}
40473A:  STMEA.W         SP, {R0,R8,R12,LR}
40473E:  MOV             R0, R4
404740:  VMUL.F32        S2, S2, S6
404744:  VMUL.F32        S4, S4, S6
404748:  VMUL.F32        S0, S0, S6
40474C:  VMOV            R1, S2
404750:  VMOV            R2, S4
404754:  VMOV            R3, S0
404758:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
40475C:  VLDR            S2, [R6]
404760:  MOVS            R6, #0
404762:  VLDR            S0, =0.2
404766:  MOV.W           R2, #0x3F800000
40476A:  LDR             R0, =(AudioEngine_ptr - 0x404778)
40476C:  VMUL.F32        S0, S2, S0
404770:  LDRB.W          R3, [R11,#0x20]; unsigned __int8
404774:  ADD             R0, PC; AudioEngine_ptr
404776:  LDRB.W          R1, [R11,#0x23]
40477A:  STRD.W          R2, R6, [SP,#0xE0+var_D0]; float
40477E:  MOV             R2, R10; CEntity *
404780:  LDR             R0, [R0]; AudioEngine ; this
404782:  STR             R6, [SP,#0xE0+var_C8]; unsigned __int8
404784:  STRD.W          R1, R11, [SP,#0xE0+var_E0]; unsigned __int8
404788:  MOV             R1, R4; CEntity *
40478A:  STR             R5, [SP,#0xE0+var_D8]; CVector *
40478C:  VDIV.F32        S0, S0, S20
404790:  VSTR            S0, [SP,#0xE0+var_D4]
404794:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
404798:  B.W             loc_40592A
40479C:  LDR             R3, [SP,#0xE0+var_AC]
40479E:  MOV             R0, R4
4047A0:  MOV             R1, R10
4047A2:  MOV             R2, R11
4047A4:  BLX             j__ZN9CPhysical18ApplySoftCollisionEP7CEntityR9CColPointRf; CPhysical::ApplySoftCollision(CEntity *,CColPoint &,float &)
4047A8:  MOV             R6, R0
4047AA:  B.W             loc_40592A
4047AE:  LDRB.W          R0, [R10,#0x44]
4047B2:  LSLS            R0, R0, #0x1D
4047B4:  BMI.W           loc_404A96
4047B8:  LDR.W           R0, [R10]
4047BC:  MOVS            R1, #0
4047BE:  LDR             R2, [R0,#0x14]
4047C0:  MOV             R0, R10
4047C2:  BLX             R2
4047C4:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x4047D0)
4047C6:  MOV.W           R2, #0x194
4047CA:  LDR             R1, =(_ZN6CWorld7PlayersE_ptr - 0x4047D2)
4047CC:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
4047CE:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
4047D0:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
4047D2:  LDR             R1, [R1]; CWorld::Players ...
4047D4:  LDR             R0, [R0]; CWorld::PlayerInFocus
4047D6:  SMLABB.W        R0, R0, R2, R1
4047DA:  LDR.W           R1, [R0,#0x140]
4047DE:  ADDS            R1, #2
4047E0:  STR.W           R1, [R0,#0x140]
4047E4:  BLX             rand
4047E8:  MOV             R1, #0x88888889
4047F0:  SMMLA.W         R1, R1, R0, R0
4047F4:  ASRS            R2, R1, #4; float
4047F6:  ADD.W           R1, R2, R1,LSR#31
4047FA:  RSB.W           R1, R1, R1,LSL#4
4047FE:  SUB.W           R0, R0, R1,LSL#1
404802:  ADDS            R0, #0x1E
404804:  VMOV            S0, R0
404808:  MOVS            R0, #(off_7C+1); this
40480A:  VCVT.F32.S32    S0, S0
40480E:  VMOV            R1, S0; unsigned __int16
404812:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
404816:  B               loc_404A94
404818:  LDR.W           R0, [R10,#0x164]
40481C:  VLDR            S0, [R6]
404820:  VLDR            S2, [R0,#0x14]
404824:  VCMPE.F32       S0, S2
404828:  VMRS            APSR_nzcv, FPSCR
40482C:  BGT             loc_404838
40482E:  ADD.W           R0, R4, #0x1C
404832:  LDRB            R0, [R0]
404834:  LSLS            R0, R0, #0x1B
404836:  BPL             loc_4048CC
404838:  LDRB.W          R0, [R10,#0x44]
40483C:  LSLS            R0, R0, #0x1D
40483E:  BMI             loc_4048CC
404840:  LDRB.W          R0, [R10,#0x3A]
404844:  AND.W           R0, R0, #7
404848:  CMP             R0, #4
40484A:  BNE.W           loc_4049D6
40484E:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x404858)
404850:  LDRSH.W         R1, [R10,#0x26]
404854:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
404856:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
404858:  LDR.W           R0, [R0,R1,LSL#2]
40485C:  LDR             R1, [R0]
40485E:  LDR             R1, [R1,#8]
404860:  BLX             R1
404862:  CMP             R0, #0
404864:  BEQ.W           loc_4049D6
404868:  LDRH            R0, [R0,#0x28]
40486A:  AND.W           R0, R0, #0x7000
40486E:  ORR.W           R0, R0, #0x800
404872:  CMP.W           R0, #0x2800
404876:  BNE.W           loc_4049D6
40487A:  LDRD.W          R2, R3, [R4,#0x48]
40487E:  MOVS            R5, #0
404880:  LDR             R0, [R4,#0x50]
404882:  LDM.W           R11, {R6,R12,LR}
404886:  LDR             R1, [SP,#0xE0+var_AC]
404888:  LDR             R1, [R1]
40488A:  STMEA.W         SP, {R0,R6,R12,LR}
40488E:  MOV             R0, R10
404890:  STR             R5, [SP,#0xE0+var_D0]
404892:  BLX             j__ZN6CGlass25WindowRespondsToCollisionEP7CEntityf7CVectorS2_b; CGlass::WindowRespondsToCollision(CEntity *,float,CVector,CVector,bool)
404896:  B               loc_4049EA
404898:  DCFS -2000.0
40489C:  DCFS 0.0
4048A0:  DCFS 0.0002
4048A4:  DCFS 0.2
4048A8:  DCD AudioEngine_ptr - 0x404778
4048AC:  DCD _ZN6CWorld13PlayerInFocusE_ptr - 0x4047D0
4048B0:  DCD _ZN6CWorld7PlayersE_ptr - 0x4047D2
4048B4:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x404858
4048B8:  DCD _ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4048E8
4048BC:  DCFS 0.3
4048C0:  DCFS 0.7
4048C4:  DCD _ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x40495A
4048C8:  DCD AudioEngine_ptr - 0x4049B6
4048CC:  LDRB.W          R0, [R10,#0x3A]
4048D0:  LDR.W           R8, [SP,#0xE0+var_AC]
4048D4:  AND.W           R0, R0, #7
4048D8:  CMP             R0, #4
4048DA:  BNE             loc_40490E
4048DC:  LDR.W           R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x4048E8)
4048E0:  LDRSH.W         R1, [R10,#0x26]
4048E4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
4048E6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
4048E8:  LDR.W           R0, [R0,R1,LSL#2]
4048EC:  LDR             R1, [R0]
4048EE:  LDR             R1, [R1,#8]
4048F0:  BLX             R1
4048F2:  CBZ             R0, loc_40490E
4048F4:  LDRH            R0, [R0,#0x28]
4048F6:  AND.W           R0, R0, #0x7000
4048FA:  ORR.W           R0, R0, #0x800
4048FE:  CMP.W           R0, #0x2800
404902:  BNE             loc_40490E
404904:  LDR.W           R1, [R8]; CEntity *
404908:  MOV             R0, R10; this
40490A:  BLX             j__ZN6CGlass29WindowRespondsToSoftCollisionEP7CEntityf; CGlass::WindowRespondsToSoftCollision(CEntity *,float)
40490E:  LDRB.W          R0, [R4,#0x44]
404912:  VLDR            S0, [R8]
404916:  LSLS            R0, R0, #0x1D
404918:  BMI             loc_4049A4
40491A:  VLDR            S6, [R11,#0x18]
40491E:  ADD.W           LR, SP, #0xE0+var_6C
404922:  VLDR            S10, =0.3
404926:  MOVS            R2, #0
404928:  VMUL.F32        S8, S0, S6
40492C:  LDRB.W          R1, [R4,#0x3A]
404930:  VLDR            S12, =0.7
404934:  AND.W           R1, R1, #7
404938:  VLDR            S2, [R11,#0x10]
40493C:  CMP             R1, #2
40493E:  VCMPE.F32       S6, S12
404942:  VLDR            S4, [R11,#0x14]
404946:  VMUL.F32        S2, S0, S2
40494A:  LDR.W           R0, =(_ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x40495A)
40494E:  VMUL.F32        S0, S0, S4
404952:  VMUL.F32        S10, S8, S10
404956:  ADD             R0, PC; _ZN6CWorld22bNoMoreCollisionTorqueE_ptr
404958:  VMOV.F32        S14, S8
40495C:  LDR             R0, [R0]; CWorld::bNoMoreCollisionTorque ...
40495E:  IT EQ
404960:  VMOVEQ.F32      S14, S10
404964:  VMRS            APSR_nzcv, FPSCR
404968:  IT LT
40496A:  VMOVLT.F32      S8, S14
40496E:  LDRB            R0, [R0]; CWorld::bNoMoreCollisionTorque
404970:  CMP             R1, #2
404972:  MOV.W           R1, #0
404976:  LDM.W           LR, {R6,R12,LR}
40497A:  IT NE
40497C:  MOVNE           R1, #1
40497E:  CMP             R0, #0
404980:  IT EQ
404982:  MOVEQ           R2, #1
404984:  VMOV            R3, S8
404988:  ORR.W           R0, R2, R1
40498C:  VMOV            R1, S2
404990:  VMOV            R2, S0
404994:  STMEA.W         SP, {R6,R12,LR}
404998:  STR             R0, [SP,#0xE0+var_D4]
40499A:  MOV             R0, R4
40499C:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
4049A0:  VLDR            S0, [R8]
4049A4:  VDIV.F32        S0, S0, S20
4049A8:  LDR.W           R0, =(AudioEngine_ptr - 0x4049B6)
4049AC:  LDRB.W          R1, [R11,#0x23]
4049B0:  MOVS            R2, #0
4049B2:  ADD             R0, PC; AudioEngine_ptr
4049B4:  MOV.W           R6, #0x3F800000
4049B8:  LDRB.W          R3, [R11,#0x20]
4049BC:  STRD.W          R6, R2, [SP,#0xE0+var_D0]
4049C0:  STR             R2, [SP,#0xE0+var_C8]
4049C2:  MOV             R2, R10
4049C4:  STRD.W          R1, R11, [SP,#0xE0+var_E0]
4049C8:  MOV             R1, R4
4049CA:  STR             R5, [SP,#0xE0+var_D8]
4049CC:  LDR             R0, [R0]; AudioEngine
4049CE:  VSTR            S0, [SP,#0xE0+var_D4]
4049D2:  B.W             loc_405758
4049D6:  LDRB.W          R0, [R10,#0x44]
4049DA:  LSLS            R0, R0, #0x1D
4049DC:  BMI             loc_4049EA
4049DE:  LDR.W           R0, [R10]
4049E2:  MOVS            R1, #0
4049E4:  LDR             R2, [R0,#0x14]
4049E6:  MOV             R0, R10
4049E8:  BLX             R2
4049EA:  LDR.W           R0, =(MI_FIRE_HYDRANT_ptr - 0x4049F2)
4049EE:  ADD             R0, PC; MI_FIRE_HYDRANT_ptr
4049F0:  LDR             R1, [R0]; MI_FIRE_HYDRANT
4049F2:  LDRSH.W         R0, [R10,#0x26]
4049F6:  LDRH            R1, [R1]
4049F8:  CMP             R0, R1
4049FA:  BNE             loc_404A22
4049FC:  LDRB.W          R1, [R10,#0x144]
404A00:  LSLS            R1, R1, #0x19
404A02:  BMI             loc_404A22
404A04:  LDR.W           R0, =(g_fx_ptr - 0x404A10)
404A08:  LDR.W           R2, [R10,#0x14]
404A0C:  ADD             R0, PC; g_fx_ptr
404A0E:  ADD.W           R1, R2, #0x30 ; '0'
404A12:  CMP             R2, #0
404A14:  LDR             R0, [R0]; g_fx ; this
404A16:  IT EQ
404A18:  ADDEQ.W         R1, R10, #4; CVector *
404A1C:  BLX             j__ZN4Fx_c19TriggerWaterHydrantER7CVector; Fx_c::TriggerWaterHydrant(CVector &)
404A20:  B               loc_404A88
404A22:  LDR.W           R1, =(MI_PARKINGMETER_ptr - 0x404A2A)
404A26:  ADD             R1, PC; MI_PARKINGMETER_ptr
404A28:  LDR             R1, [R1]; MI_PARKINGMETER
404A2A:  LDRH            R1, [R1]
404A2C:  CMP             R0, R1
404A2E:  BEQ             loc_404A40
404A30:  LDR.W           R1, =(MI_PARKINGMETER2_ptr - 0x404A38)
404A34:  ADD             R1, PC; MI_PARKINGMETER2_ptr
404A36:  LDR             R1, [R1]; MI_PARKINGMETER2
404A38:  LDRH            R1, [R1]
404A3A:  CMP             R0, R1
404A3C:  BNE.W           loc_40593A
404A40:  LDRB.W          R1, [R10,#0x144]
404A44:  LSLS            R1, R1, #0x19
404A46:  BMI.W           loc_40593A
404A4A:  LDR.W           R0, [R10,#0x14]
404A4E:  ADD.W           R1, R0, #0x30 ; '0'
404A52:  CMP             R0, #0
404A54:  IT EQ
404A56:  ADDEQ.W         R1, R10, #4
404A5A:  LDRD.W          R5, R6, [R1]
404A5E:  LDR             R0, [R1,#8]
404A60:  STR             R0, [SP,#0xE0+var_BC]
404A62:  BLX             rand
404A66:  MOV             R1, #0x51EB851F
404A6E:  SMMUL.W         R1, R0, R1
404A72:  ASRS            R2, R1, #5
404A74:  ADD.W           R1, R2, R1,LSR#31
404A78:  MOVS            R2, #0x64 ; 'd'
404A7A:  MLS.W           R3, R1, R2, R0
404A7E:  LDR             R2, [SP,#0xE0+var_BC]
404A80:  MOV             R0, R5
404A82:  MOV             R1, R6
404A84:  BLX             j__ZN8CPickups15CreateSomeMoneyE7CVectori; CPickups::CreateSomeMoney(CVector,int)
404A88:  LDR.W           R0, [R10,#0x144]
404A8C:  ORR.W           R0, R0, #0x40 ; '@'
404A90:  STR.W           R0, [R10,#0x144]
404A94:  LDR             R5, [SP,#0xE0+var_B0]
404A96:  LDR             R0, [R5]
404A98:  TST.W           R0, #0x40004
404A9C:  BNE.W           loc_405928
404AA0:  LDRB.W          R1, [R10,#0x44]
404AA4:  LSLS            R1, R1, #0x1D
404AA6:  BMI             loc_404AE6
404AA8:  LDR.W           R1, [R10,#0xB8]; unsigned int
404AAC:  CMP             R1, #0
404AAE:  IT EQ
404AB0:  ANDSEQ.W        R0, R0, #0x40000
404AB4:  BNE             loc_404AE6
404AB6:  MOVS            R0, #(byte_9+3); this
404AB8:  BLX             j__ZN18CPtrNodeDoubleLinknwEj; CPtrNodeDoubleLink::operator new(uint)
404ABC:  LDR.W           R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x404ACA)
404AC0:  MOVS            R2, #0
404AC2:  STR.W           R10, [R0]
404AC6:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
404AC8:  STR.W           R0, [R10,#0xB8]
404ACC:  STR             R2, [R0,#8]
404ACE:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
404AD0:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs
404AD2:  STR             R1, [R0,#4]
404AD4:  CMP             R1, #0
404AD6:  IT NE
404AD8:  STRNE           R0, [R1,#8]
404ADA:  LDR.W           R1, =(_ZN6CWorld23ms_listMovingEntityPtrsE_ptr - 0x404AE4)
404ADE:  LDR             R5, [SP,#0xE0+var_B0]
404AE0:  ADD             R1, PC; _ZN6CWorld23ms_listMovingEntityPtrsE_ptr
404AE2:  LDR             R1, [R1]; CWorld::ms_listMovingEntityPtrs ...
404AE4:  STR             R0, [R1]; CWorld::ms_listMovingEntityPtrs
404AE6:  LDRB.W          R0, [R4,#0x44]
404AEA:  LDR.W           R1, [R10,#0x44]
404AEE:  AND.W           R1, R1, #0x10
404AF2:  LSLS            R0, R0, #0x1B
404AF4:  BMI             loc_404BD8
404AF6:  LDR             R0, [R4,#0x14]
404AF8:  CMP             R1, #0
404AFA:  VLDR            S0, [R11]
404AFE:  VLDR            S4, [R11,#4]
404B02:  VLDR            S6, [R0,#0x30]
404B06:  VLDR            S8, [R0,#0x34]
404B0A:  VLDR            S2, [R11,#8]
404B0E:  VSUB.F32        S6, S0, S6
404B12:  VLDR            S10, [R0,#0x38]
404B16:  VSUB.F32        S8, S4, S8
404B1A:  VSUB.F32        S10, S2, S10
404B1E:  VMOV            R2, S6
404B22:  VMOV            R3, S8
404B26:  VSTR            S8, [SP,#0xE0+var_68]
404B2A:  VSTR            S6, [SP,#0xE0+var_6C]
404B2E:  VMOV            R0, S10
404B32:  VSTR            S10, [SP,#0xE0+var_64]
404B36:  BNE.W           loc_404EF0
404B3A:  STR             R5, [SP,#0xE0+var_B0]
404B3C:  LDR.W           R1, [R10,#0x14]
404B40:  VLDR            S6, [R1,#0x30]
404B44:  VLDR            S8, [R1,#0x34]
404B48:  VLDR            S10, [R1,#0x38]
404B4C:  VSUB.F32        S0, S0, S6
404B50:  VSUB.F32        S4, S4, S8
404B54:  STR             R0, [SP,#0xE0+var_E0]
404B56:  VSUB.F32        S2, S2, S10
404B5A:  ADD             R0, SP, #0xE0+var_9C
404B5C:  MOV             R1, R4
404B5E:  VSTR            S4, [SP,#0xE0+var_74]
404B62:  VSTR            S0, [SP,#0xE0+var_78]
404B66:  VSTR            S2, [SP,#0xE0+var_70]
404B6A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
404B6E:  LDRD.W          R9, R6, [SP,#0xE0+var_9C]
404B72:  LDRB.W          R0, [R4,#0x47]
404B76:  LDR             R5, [SP,#0xE0+var_94]
404B78:  LSLS            R0, R0, #0x1D
404B7A:  BPL.W           loc_40527C
404B7E:  LDRB.W          R0, [R4,#0x3A]
404B82:  AND.W           R0, R0, #7
404B86:  CMP             R0, #2
404B88:  BNE.W           loc_40527C
404B8C:  LDRB.W          R0, [R11,#0x20]
404B90:  CMP             R0, #0x41 ; 'A'
404B92:  BNE.W           loc_40527C
404B96:  LDR             R0, [R4]
404B98:  ADD             R2, SP, #0xE0+var_6C
404B9A:  MOV             R1, R4
404B9C:  LDR.W           R3, [R0,#0xC8]
404BA0:  ADD             R0, SP, #0xE0+var_9C
404BA2:  BLX             R3
404BA4:  VMOV            S0, R6
404BA8:  VLDR            S6, [SP,#0xE0+var_98]
404BAC:  VLDR            S4, [SP,#0xE0+var_9C]
404BB0:  VMOV            S10, R9
404BB4:  VADD.F32        S0, S6, S0
404BB8:  VLDR            S8, [SP,#0xE0+var_94]
404BBC:  VMOV            S2, R5
404BC0:  VADD.F32        S4, S4, S10
404BC4:  VADD.F32        S2, S8, S2
404BC8:  VMOV            R6, S0
404BCC:  VMOV            R9, S4
404BD0:  VMOV            R0, S2
404BD4:  STR             R0, [SP,#0xE0+var_B8]
404BD6:  B               loc_40527E
404BD8:  CMP             R1, #0
404BDA:  BNE.W           loc_405200
404BDE:  STR             R5, [SP,#0xE0+var_B0]
404BE0:  MOV             R1, R10
404BE2:  LDR.W           R0, [R10,#0x14]
404BE6:  VLDR            S0, [R11]
404BEA:  VLDR            S2, [R11,#4]
404BEE:  VLDR            S6, [R0,#0x30]
404BF2:  VLDR            S8, [R0,#0x34]
404BF6:  VSUB.F32        S0, S0, S6
404BFA:  VLDR            S10, [R0,#0x38]
404BFE:  VSUB.F32        S2, S2, S8
404C02:  VLDR            S4, [R11,#8]
404C06:  ADD             R0, SP, #0xE0+var_9C
404C08:  VSUB.F32        S4, S4, S10
404C0C:  VMOV            R2, S0
404C10:  VMOV            R3, S2
404C14:  VSTR            S2, [SP,#0xE0+var_74]
404C18:  VSTR            S0, [SP,#0xE0+var_78]
404C1C:  VSTR            S4, [SP,#0xE0+var_70]
404C20:  VSTR            S4, [SP,#0xE0+var_E0]
404C24:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
404C28:  LDRD.W          R5, R6, [SP,#0xE0+var_9C]
404C2C:  LDR             R0, [SP,#0xE0+var_94]
404C2E:  STR             R0, [SP,#0xE0+var_B4]
404C30:  LDRB.W          R0, [R10,#0x47]
404C34:  LSLS            R0, R0, #0x1D
404C36:  BPL             loc_404C90
404C38:  LDRB.W          R0, [R10,#0x3A]
404C3C:  AND.W           R0, R0, #7
404C40:  CMP             R0, #2
404C42:  ITT EQ
404C44:  LDRBEQ.W        R0, [R11,#0x23]
404C48:  CMPEQ           R0, #0x41 ; 'A'
404C4A:  BNE             loc_404C90
404C4C:  LDR.W           R0, [R10]
404C50:  ADD             R2, SP, #0xE0+var_78
404C52:  MOV             R1, R10
404C54:  LDR.W           R3, [R0,#0xC8]
404C58:  ADD             R0, SP, #0xE0+var_9C
404C5A:  BLX             R3
404C5C:  LDR             R0, [SP,#0xE0+var_B4]
404C5E:  VMOV            S0, R6
404C62:  VLDR            S6, [SP,#0xE0+var_98]
404C66:  VMOV            S10, R5
404C6A:  VLDR            S4, [SP,#0xE0+var_9C]
404C6E:  VADD.F32        S0, S6, S0
404C72:  VLDR            S8, [SP,#0xE0+var_94]
404C76:  VMOV            S2, R0
404C7A:  VADD.F32        S4, S4, S10
404C7E:  VADD.F32        S2, S8, S2
404C82:  VMOV            R6, S0
404C86:  VMOV            R5, S4
404C8A:  VMOV            R0, S2
404C8E:  STR             R0, [SP,#0xE0+var_B4]
404C90:  VLDR            S0, [SP,#0xE0+var_90]
404C94:  ADD.W           R2, R11, #0x10
404C98:  VLDR            S6, [SP,#0xE0+var_78]
404C9C:  ADD             R0, SP, #0xE0+var_9C; CVector *
404C9E:  VLDR            S2, [SP,#0xE0+var_8C]
404CA2:  ADD             R1, SP, #0xE0+var_A8; CVector *
404CA4:  VLDR            S8, [SP,#0xE0+var_74]
404CA8:  VSUB.F32        S0, S6, S0
404CAC:  VLDR            S4, [SP,#0xE0+var_88]
404CB0:  VLDR            S10, [SP,#0xE0+var_70]
404CB4:  VSUB.F32        S2, S8, S2
404CB8:  VLDR            S20, [R4,#0x48]
404CBC:  VSUB.F32        S4, S10, S4
404CC0:  VLDR            S22, [R4,#0x4C]
404CC4:  VLDR            S24, [R4,#0x50]
404CC8:  VLDR            S26, [R4,#0x90]
404CCC:  VLDR            S28, [R11,#0x10]
404CD0:  VLDR            S30, [R11,#0x14]
404CD4:  VLDR            S17, [R11,#0x18]
404CD8:  VLDR            S19, [R10,#0x90]
404CDC:  VSTR            S0, [SP,#0xE0+var_A8]
404CE0:  VSTR            S2, [SP,#0xE0+var_A4]
404CE4:  VSTR            S4, [SP,#0xE0+var_A0]
404CE8:  STR             R2, [SP,#0xE0+var_BC]
404CEA:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
404CEE:  VLDR            S0, [SP,#0xE0+var_9C]
404CF2:  VMUL.F32        S6, S16, S19
404CF6:  VLDR            S2, [SP,#0xE0+var_98]
404CFA:  VMUL.F32        S10, S20, S28
404CFE:  VMUL.F32        S0, S0, S0
404D02:  VLDR            S4, [SP,#0xE0+var_94]
404D06:  VMUL.F32        S2, S2, S2
404D0A:  VLDR            S8, [R10,#0x94]
404D0E:  VMUL.F32        S4, S4, S4
404D12:  LDR             R0, [SP,#0xE0+var_B4]
404D14:  VMUL.F32        S8, S16, S8
404D18:  CMP.W           R8, #4
404D1C:  VADD.F32        S2, S0, S2
404D20:  VMOV.F32        S0, #1.0
404D24:  VADD.F32        S2, S2, S4
404D28:  VDIV.F32        S4, S0, S6
404D2C:  VDIV.F32        S2, S2, S8
404D30:  VADD.F32        S2, S4, S2
404D34:  VMOV            S4, R6
404D38:  VMOV            S6, R5
404D3C:  VMUL.F32        S4, S30, S4
404D40:  VMUL.F32        S6, S28, S6
404D44:  VMUL.F32        S8, S22, S30
404D48:  VMUL.F32        S22, S18, S26
404D4C:  VDIV.F32        S20, S0, S2
404D50:  VMOV            S2, R0
404D54:  VADD.F32        S4, S6, S4
404D58:  VMUL.F32        S2, S17, S2
404D5C:  VMUL.F32        S6, S24, S17
404D60:  VADD.F32        S8, S10, S8
404D64:  VADD.F32        S2, S4, S2
404D68:  VADD.F32        S4, S8, S6
404D6C:  VMOV.F32        S6, S2
404D70:  BEQ             loc_404D86
404D72:  VMUL.F32        S6, S2, S20
404D76:  VMUL.F32        S8, S22, S4
404D7A:  VADD.F32        S10, S22, S20
404D7E:  VADD.F32        S6, S8, S6
404D82:  VDIV.F32        S6, S6, S10
404D86:  VSUB.F32        S8, S4, S6
404D8A:  LDR             R1, [SP,#0xE0+var_B0]
404D8C:  VCMPE.F32       S8, #0.0
404D90:  VMRS            APSR_nzcv, FPSCR
404D94:  BGE.W           loc_405928
404D98:  VLDR            S10, [R10,#0xA0]
404D9C:  VMOV.F32        S14, #0.5
404DA0:  VLDR            S12, [R4,#0xA0]
404DA4:  LDRB            R0, [R4,#0x1D]
404DA6:  VADD.F32        S10, S12, S10
404DAA:  LSLS            R0, R0, #0x1B
404DAC:  VMUL.F32        S10, S10, S14
404DB0:  VMUL.F32        S8, S8, S10
404DB4:  VSUB.F32        S8, S6, S8
404DB8:  IT MI
404DBA:  VMOVMI.F32      S8, S6
404DBE:  LDRB            R0, [R1,#1]
404DC0:  VSUB.F32        S4, S8, S4
404DC4:  LDR             R1, [R7,#arg_0]
404DC6:  LSLS            R0, R0, #0x1B
404DC8:  ITTT PL
404DCA:  VSUBPL.F32      S12, S2, S6
404DCE:  VMULPL.F32      S10, S12, S10
404DD2:  VSUBPL.F32      S6, S6, S10
404DD6:  LDR             R6, [SP,#0xE0+var_AC]
404DD8:  LDR             R0, [SP,#0xE0+var_B8]
404DDA:  VSUB.F32        S2, S6, S2
404DDE:  AND.W           R0, R0, R9
404DE2:  VMUL.F32        S4, S22, S4
404DE6:  VNMUL.F32       S6, S20, S2
404DEA:  VSTR            S4, [R6]
404DEE:  VSTR            S6, [R1]
404DF2:  LDR             R1, [R4,#0x44]
404DF4:  VLDR            S4, [R11,#0x10]
404DF8:  VLDR            S6, [R11,#0x14]
404DFC:  TST.W           R1, #0x64
404E00:  VLDR            S8, [R11,#0x18]
404E04:  BNE             loc_404E7A
404E06:  VLDR            S10, [R6]
404E0A:  CMP             R0, #0
404E0C:  VLDR            S7, [R4,#0x90]
404E10:  VDIV.F32        S10, S10, S18
404E14:  VDIV.F32        S0, S0, S7
404E18:  VMUL.F32        S14, S10, S6
404E1C:  VLDR            S18, =0.0
404E20:  VMUL.F32        S12, S10, S8
404E24:  VLDR            S1, [R4,#0x48]
404E28:  VMUL.F32        S10, S4, S10
404E2C:  VLDR            S3, [R4,#0x4C]
404E30:  VLDR            S5, [R4,#0x50]
404E34:  VADD.F32        S7, S14, S14
404E38:  VMAX.F32        D6, D6, D9
404E3C:  VADD.F32        S9, S10, S10
404E40:  IT NE
404E42:  VMOVNE.F32      S10, S9
404E46:  CMP             R0, #0
404E48:  IT NE
404E4A:  VMOVNE.F32      S14, S7
404E4E:  LSLS            R1, R1, #0x18
404E50:  IT PL
404E52:  VMOVPL.F32      S18, S12
404E56:  VMUL.F32        S10, S10, S0
404E5A:  VMUL.F32        S12, S14, S0
404E5E:  VMUL.F32        S0, S18, S0
404E62:  VADD.F32        S10, S1, S10
404E66:  VADD.F32        S12, S12, S3
404E6A:  VADD.F32        S0, S0, S5
404E6E:  VSTR            S10, [R4,#0x48]
404E72:  VSTR            S12, [R4,#0x4C]
404E76:  VSTR            S0, [R4,#0x50]
404E7A:  LDRB.W          R1, [R10,#0x44]
404E7E:  AND.W           R1, R1, #4
404E82:  ORR.W           R0, R0, R1,LSR#2
404E86:  CBNZ            R0, loc_404EBE
404E88:  VMUL.F32        S0, S20, S2
404E8C:  ADD.W           R12, SP, #0xE0+var_78
404E90:  MOV.W           LR, #1
404E94:  LDM.W           R12, {R0,R8,R12}
404E98:  STMEA.W         SP, {R0,R8,R12,LR}
404E9C:  MOV             R0, R10
404E9E:  VDIV.F32        S0, S0, S16
404EA2:  VMUL.F32        S2, S8, S0
404EA6:  VMUL.F32        S6, S6, S0
404EAA:  VMUL.F32        S0, S4, S0
404EAE:  VMOV            R3, S2
404EB2:  VMOV            R2, S6
404EB6:  VMOV            R1, S0
404EBA:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
404EBE:  LDR.W           R1, =(AudioEngine_ptr - 0x404ED2)
404EC2:  MOV.W           R8, #0
404EC6:  VLDR            S0, [R6]
404ECA:  MOV.W           R9, #0x3F800000
404ECE:  ADD             R1, PC; AudioEngine_ptr
404ED0:  LDRB.W          R0, [R11,#0x23]
404ED4:  LDRB.W          R3, [R11,#0x20]
404ED8:  VDIV.F32        S0, S0, S22
404EDC:  STRD.W          R9, R8, [SP,#0xE0+var_D0]
404EE0:  STR.W           R8, [SP,#0xE0+var_C8]
404EE4:  STRD.W          R0, R11, [SP,#0xE0+var_E0]
404EE8:  LDR             R6, [R1]; AudioEngine
404EEA:  LDR             R5, [SP,#0xE0+var_BC]
404EEC:  B.W             loc_40571E
404EF0:  STR             R0, [SP,#0xE0+var_E0]
404EF2:  ADD             R0, SP, #0xE0+var_78
404EF4:  MOV             R1, R4
404EF6:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
404EFA:  LDRD.W          R6, R9, [SP,#0xE0+var_78]
404EFE:  LDRB.W          R0, [R4,#0x47]
404F02:  LDR.W           R8, [SP,#0xE0+var_70]
404F06:  LSLS            R0, R0, #0x1D
404F08:  BPL             loc_404F5C
404F0A:  LDRB.W          R0, [R4,#0x3A]
404F0E:  AND.W           R0, R0, #7
404F12:  CMP             R0, #2
404F14:  ITT EQ
404F16:  LDRBEQ.W        R0, [R11,#0x20]
404F1A:  CMPEQ           R0, #0x41 ; 'A'
404F1C:  BNE             loc_404F5C
404F1E:  LDR             R0, [R4]
404F20:  ADD             R2, SP, #0xE0+var_6C
404F22:  MOV             R1, R4
404F24:  LDR.W           R3, [R0,#0xC8]
404F28:  ADD             R0, SP, #0xE0+var_78
404F2A:  BLX             R3
404F2C:  VMOV            S0, R9
404F30:  VLDR            S6, [SP,#0xE0+var_74]
404F34:  VMOV            S2, R8
404F38:  VLDR            S8, [SP,#0xE0+var_70]
404F3C:  VLDR            S4, [SP,#0xE0+var_78]
404F40:  VMOV            S10, R6
404F44:  VADD.F32        S2, S8, S2
404F48:  VADD.F32        S0, S6, S0
404F4C:  VADD.F32        S4, S4, S10
404F50:  VMOV            R8, S2
404F54:  VMOV            R9, S0
404F58:  VMOV            R6, S4
404F5C:  VLDR            S0, [SP,#0xE0+var_84]
404F60:  ADD.W           R2, R11, #0x10
404F64:  VLDR            S6, [SP,#0xE0+var_6C]
404F68:  ADD             R0, SP, #0xE0+var_78; CVector *
404F6A:  VLDR            S2, [SP,#0xE0+var_80]
404F6E:  ADD             R1, SP, #0xE0+var_9C; CVector *
404F70:  VLDR            S8, [SP,#0xE0+var_68]
404F74:  VSUB.F32        S0, S6, S0
404F78:  VLDR            S4, [SP,#0xE0+var_7C]
404F7C:  VLDR            S10, [SP,#0xE0+var_64]
404F80:  VSUB.F32        S2, S8, S2
404F84:  VLDR            S20, [R10,#0x48]
404F88:  VSUB.F32        S4, S10, S4
404F8C:  VLDR            S22, [R10,#0x4C]
404F90:  VLDR            S26, [R10,#0x50]
404F94:  VLDR            S28, [R11,#0x10]
404F98:  VLDR            S30, [R11,#0x14]
404F9C:  VLDR            S17, [R11,#0x18]
404FA0:  VLDR            S19, [R4,#0x90]
404FA4:  VSTR            S0, [SP,#0xE0+var_9C]
404FA8:  VSTR            S2, [SP,#0xE0+var_98]
404FAC:  VSTR            S4, [SP,#0xE0+var_94]
404FB0:  STR             R2, [SP,#0xE0+var_B0]
404FB2:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
404FB6:  VLDR            S0, [SP,#0xE0+var_78]
404FBA:  VMOV.F32        S24, #1.0
404FBE:  VLDR            S2, [SP,#0xE0+var_74]
404FC2:  VMUL.F32        S8, S28, S20
404FC6:  VMUL.F32        S0, S0, S0
404FCA:  VLDR            S4, [SP,#0xE0+var_70]
404FCE:  VMUL.F32        S2, S2, S2
404FD2:  VLDR            S6, [R4,#0x94]
404FD6:  VMUL.F32        S4, S4, S4
404FDA:  VMUL.F32        S6, S18, S6
404FDE:  VMUL.F32        S10, S17, S26
404FE2:  VADD.F32        S0, S0, S2
404FE6:  VMUL.F32        S2, S18, S19
404FEA:  VADD.F32        S0, S0, S4
404FEE:  VDIV.F32        S2, S24, S2
404FF2:  VDIV.F32        S0, S0, S6
404FF6:  VADD.F32        S0, S2, S0
404FFA:  VMOV            S2, R9
404FFE:  VMOV            S4, R6
405002:  VMUL.F32        S6, S30, S22
405006:  VMUL.F32        S2, S30, S2
40500A:  VMUL.F32        S4, S28, S4
40500E:  VDIV.F32        S22, S24, S0
405012:  VMOV            S0, R8
405016:  VADD.F32        S6, S8, S6
40501A:  VMUL.F32        S8, S17, S0
40501E:  VADD.F32        S2, S4, S2
405022:  VLDR            S4, [R10,#0x90]
405026:  VMUL.F32        S20, S16, S4
40502A:  VADD.F32        S0, S6, S10
40502E:  VADD.F32        S26, S2, S8
405032:  VADD.F32        S6, S22, S20
405036:  VMUL.F32        S2, S0, S20
40503A:  VMUL.F32        S4, S26, S22
40503E:  VADD.F32        S2, S4, S2
405042:  VDIV.F32        S2, S2, S6
405046:  VSUB.F32        S4, S26, S2
40504A:  VCMPE.F32       S4, #0.0
40504E:  VMRS            APSR_nzcv, FPSCR
405052:  BGE.W           loc_405928
405056:  VLDR            S6, [R10,#0xA0]
40505A:  VMOV.F32        S28, #0.5
40505E:  VLDR            S8, [R4,#0xA0]
405062:  LDRB            R0, [R4,#0x1D]
405064:  VADD.F32        S6, S8, S6
405068:  LSLS            R0, R0, #0x1B
40506A:  VMUL.F32        S6, S6, S28
40506E:  VMUL.F32        S4, S4, S6
405072:  VSUB.F32        S4, S2, S4
405076:  IT MI
405078:  VMOVMI.F32      S4, S2
40507C:  LDRB            R0, [R5,#1]
40507E:  VSUB.F32        S4, S4, S26
405082:  LSLS            R0, R0, #0x1B
405084:  ITTT PL
405086:  VSUBPL.F32      S8, S0, S2
40508A:  VMULPL.F32      S6, S8, S6
40508E:  VSUBPL.F32      S2, S2, S6
405092:  LDR.W           R8, [SP,#0xE0+var_AC]
405096:  LDR             R0, [R7,#arg_0]
405098:  LDR             R5, [SP,#0xE0+var_B4]
40509A:  VSUB.F32        S30, S2, S0
40509E:  VMUL.F32        S0, S22, S4
4050A2:  VNMUL.F32       S2, S20, S30
4050A6:  VSTR            S0, [R8]
4050AA:  VSTR            S2, [R0]
4050AE:  LDRB.W          R0, [R4,#0x44]
4050B2:  VLDR            S17, [R11,#0x10]
4050B6:  AND.W           R0, R0, #4
4050BA:  VLDR            S19, [R11,#0x14]
4050BE:  VLDR            S21, [R11,#0x18]
4050C2:  ORR.W           R0, R5, R0,LSR#2
4050C6:  CMP             R0, #0
4050C8:  BNE             loc_40510C
4050CA:  VLDR            S0, [R8]
4050CE:  ADD.W           R12, SP, #0xE0+var_6C
4050D2:  MOV.W           LR, #1
4050D6:  VDIV.F32        S0, S0, S18
4050DA:  LDM.W           R12, {R0,R6,R12}
4050DE:  STMEA.W         SP, {R0,R6,R12,LR}
4050E2:  MOV             R0, R4
4050E4:  VMUL.F32        S2, S0, S21
4050E8:  VMUL.F32        S4, S17, S0
4050EC:  VMUL.F32        S0, S0, S19
4050F0:  VCMPE.F32       S2, #0.0
4050F4:  VMRS            APSR_nzcv, FPSCR
4050F8:  VMOV            R1, S4
4050FC:  VMOV            R2, S0
405100:  VMOV            R3, S2
405104:  IT LT
405106:  MOVLT           R3, #0
405108:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
40510C:  LDR.W           R0, [R10,#0x44]
405110:  TST.W           R0, #4
405114:  BNE             loc_4051B4
405116:  VMUL.F32        S0, S20, S30
40511A:  VDIV.F32        S2, S0, S16
40511E:  VMUL.F32        S4, S2, S21
405122:  VMUL.F32        S0, S2, S19
405126:  VMUL.F32        S2, S2, S17
40512A:  VCMPE.F32       S4, #0.0
40512E:  VMRS            APSR_nzcv, FPSCR
405132:  BGE             loc_405156
405134:  VABS.F32        S6, S26
405138:  VLDR            D16, =0.01
40513C:  VLDR            S4, =0.0
405140:  VCVT.F64.F32    D17, S6
405144:  VCMPE.F64       D17, D16
405148:  VMRS            APSR_nzcv, FPSCR
40514C:  ITT LT
40514E:  VMULLT.F32      S0, S0, S28
405152:  VMULLT.F32      S2, S2, S28
405156:  TST.W           R0, #0x60
40515A:  BNE             loc_4051B4
40515C:  VLDR            S12, [R10,#0x90]
405160:  VADD.F32        S14, S0, S0
405164:  VADD.F32        S3, S2, S2
405168:  CMP             R5, #0
40516A:  VDIV.F32        S12, S24, S12
40516E:  VLDR            S6, [R10,#0x48]
405172:  VLDR            S8, [R10,#0x4C]
405176:  VLDR            S10, [R10,#0x50]
40517A:  ITT NE
40517C:  VMOVNE.F32      S2, S3
405180:  VMOVNE.F32      S0, S14
405184:  VLDR            S1, =0.0
405188:  LSLS            R0, R0, #0x18
40518A:  IT PL
40518C:  VMOVPL.F32      S1, S4
405190:  VMUL.F32        S2, S2, S12
405194:  VMUL.F32        S0, S0, S12
405198:  VMUL.F32        S4, S1, S12
40519C:  VADD.F32        S2, S6, S2
4051A0:  VADD.F32        S0, S0, S8
4051A4:  VADD.F32        S4, S4, S10
4051A8:  VSTR            S2, [R10,#0x48]
4051AC:  VSTR            S0, [R10,#0x4C]
4051B0:  VSTR            S4, [R10,#0x50]
4051B4:  LDR.W           R1, =(AudioEngine_ptr - 0x4051C8)
4051B8:  MOV.W           R9, #0x3F800000
4051BC:  VLDR            S0, [R8]
4051C0:  MOV.W           R8, #0
4051C4:  ADD             R1, PC; AudioEngine_ptr
4051C6:  LDRB.W          R0, [R11,#0x23]
4051CA:  LDRB.W          R3, [R11,#0x20]
4051CE:  VDIV.F32        S0, S0, S22
4051D2:  STRD.W          R9, R8, [SP,#0xE0+var_D0]
4051D6:  STR.W           R8, [SP,#0xE0+var_C8]
4051DA:  STRD.W          R0, R11, [SP,#0xE0+var_E0]
4051DE:  LDR             R6, [R1]; AudioEngine
4051E0:  LDR             R5, [SP,#0xE0+var_B0]
4051E2:  B               loc_40571E
4051E4:  DCFS 0.0
4051E8:  DCFD 0.01
4051F0:  DCFS 0.3
4051F4:  DCFS 0.7
4051F8:  DCFS 0.8
4051FC:  DCFS -0.3
405200:  VLDR            S2, [R10,#0x48]
405204:  VLDR            S8, [R11,#0x10]
405208:  VLDR            S4, [R10,#0x4C]
40520C:  VLDR            S10, [R11,#0x14]
405210:  VMUL.F32        S2, S8, S2
405214:  VLDR            S14, [R4,#0x48]
405218:  VLDR            S1, [R4,#0x4C]
40521C:  VMUL.F32        S4, S10, S4
405220:  VMUL.F32        S8, S14, S8
405224:  VLDR            S6, [R10,#0x50]
405228:  VMUL.F32        S10, S1, S10
40522C:  VLDR            S12, [R11,#0x18]
405230:  VLDR            S3, [R4,#0x50]
405234:  VMUL.F32        S6, S12, S6
405238:  LDR.W           R0, [R4,#0x44C]
40523C:  VLDR            S16, [R10,#0x90]
405240:  VLDR            S0, [R4,#0x90]
405244:  CMP             R0, #0xB
405246:  VADD.F32        S2, S2, S4
40524A:  VMUL.F32        S4, S3, S12
40524E:  VADD.F32        S8, S8, S10
405252:  VADD.F32        S18, S2, S6
405256:  VADD.F32        S2, S8, S4
40525A:  BNE.W           loc_405760
40525E:  VADD.F32        S4, S0, S0
405262:  MOV.W           R9, #1
405266:  VMUL.F32        S6, S16, S18
40526A:  VMUL.F32        S8, S2, S4
40526E:  VADD.F32        S4, S4, S16
405272:  VADD.F32        S6, S8, S6
405276:  VDIV.F32        S20, S6, S4
40527A:  B               loc_40576C
40527C:  STR             R5, [SP,#0xE0+var_B8]
40527E:  LDRD.W          R2, R3, [SP,#0xE0+var_78]
405282:  MOV             R1, R10
405284:  LDR             R0, [SP,#0xE0+var_70]
405286:  STR             R0, [SP,#0xE0+var_E0]
405288:  ADD             R0, SP, #0xE0+var_9C
40528A:  BLX             j__ZN9CPhysical8GetSpeedE7CVector; CPhysical::GetSpeed(CVector)
40528E:  LDRD.W          R5, R8, [SP,#0xE0+var_9C]
405292:  LDR             R0, [SP,#0xE0+var_94]
405294:  STR             R0, [SP,#0xE0+var_B4]
405296:  LDRB.W          R0, [R10,#0x47]
40529A:  STR             R6, [SP,#0xE0+var_BC]
40529C:  LSLS            R0, R0, #0x1D
40529E:  BPL             loc_4052F8
4052A0:  LDRB.W          R0, [R10,#0x3A]
4052A4:  AND.W           R0, R0, #7
4052A8:  CMP             R0, #2
4052AA:  ITT EQ
4052AC:  LDRBEQ.W        R0, [R11,#0x23]
4052B0:  CMPEQ           R0, #0x41 ; 'A'
4052B2:  BNE             loc_4052F8
4052B4:  LDR.W           R0, [R10]
4052B8:  ADD             R2, SP, #0xE0+var_78
4052BA:  MOV             R1, R10
4052BC:  LDR.W           R3, [R0,#0xC8]
4052C0:  ADD             R0, SP, #0xE0+var_9C
4052C2:  BLX             R3
4052C4:  LDR             R0, [SP,#0xE0+var_B4]
4052C6:  VMOV            S0, R8
4052CA:  VLDR            S6, [SP,#0xE0+var_98]
4052CE:  VMOV            S10, R5
4052D2:  VLDR            S4, [SP,#0xE0+var_9C]
4052D6:  VADD.F32        S0, S6, S0
4052DA:  VLDR            S8, [SP,#0xE0+var_94]
4052DE:  VMOV            S2, R0
4052E2:  VADD.F32        S4, S4, S10
4052E6:  VADD.F32        S2, S8, S2
4052EA:  VMOV            R8, S0
4052EE:  VMOV            R5, S4
4052F2:  VMOV            R0, S2
4052F6:  STR             R0, [SP,#0xE0+var_B4]
4052F8:  VLDR            S0, [SP,#0xE0+var_84]
4052FC:  ADD.W           R6, R11, #0x10
405300:  VLDR            S6, [SP,#0xE0+var_6C]
405304:  ADD             R0, SP, #0xE0+var_9C; CVector *
405306:  VLDR            S2, [SP,#0xE0+var_80]
40530A:  ADD             R1, SP, #0xE0+var_A8; CVector *
40530C:  VLDR            S8, [SP,#0xE0+var_68]
405310:  VSUB.F32        S0, S6, S0
405314:  VLDR            S4, [SP,#0xE0+var_7C]
405318:  MOV             R2, R6
40531A:  VLDR            S10, [SP,#0xE0+var_64]
40531E:  VSUB.F32        S2, S8, S2
405322:  VLDR            S20, [R11,#0x10]
405326:  VSUB.F32        S4, S10, S4
40532A:  VLDR            S22, [R11,#0x14]
40532E:  VLDR            S24, [R11,#0x18]
405332:  VLDR            S26, [R4,#0x90]
405336:  VSTR            S0, [SP,#0xE0+var_A8]
40533A:  VSTR            S2, [SP,#0xE0+var_A4]
40533E:  VSTR            S4, [SP,#0xE0+var_A0]
405342:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
405346:  VLDR            S0, [SP,#0xE0+var_90]
40534A:  ADD             R0, SP, #0xE0+var_9C; CVector *
40534C:  VLDR            S6, [SP,#0xE0+var_78]
405350:  ADD             R1, SP, #0xE0+var_A8; CVector *
405352:  VLDR            S2, [SP,#0xE0+var_8C]
405356:  MOV             R2, R6
405358:  VLDR            S8, [SP,#0xE0+var_74]
40535C:  VSUB.F32        S0, S6, S0
405360:  VLDR            S4, [SP,#0xE0+var_88]
405364:  VLDR            S10, [SP,#0xE0+var_70]
405368:  VSUB.F32        S2, S8, S2
40536C:  VLDR            S28, [SP,#0xE0+var_9C]
405370:  VSUB.F32        S4, S10, S4
405374:  VLDR            S30, [SP,#0xE0+var_98]
405378:  VLDR            S17, [SP,#0xE0+var_94]
40537C:  VLDR            S19, [R4,#0x94]
405380:  VLDR            S21, [R10,#0x90]
405384:  VSTR            S0, [SP,#0xE0+var_A8]
405388:  VSTR            S2, [SP,#0xE0+var_A4]
40538C:  STR             R6, [SP,#0xE0+var_C0]
40538E:  VSTR            S4, [SP,#0xE0+var_A0]
405392:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
405396:  VLDR            S0, [SP,#0xE0+var_9C]
40539A:  VMUL.F32        S6, S30, S30
40539E:  VLDR            S2, [SP,#0xE0+var_98]
4053A2:  VMUL.F32        S8, S28, S28
4053A6:  VMUL.F32        S0, S0, S0
4053AA:  VLDR            S4, [SP,#0xE0+var_94]
4053AE:  VMUL.F32        S2, S2, S2
4053B2:  VLDR            S14, [R10,#0x94]
4053B6:  VMUL.F32        S10, S17, S17
4053BA:  LDR             R0, [SP,#0xE0+var_BC]
4053BC:  VMUL.F32        S4, S4, S4
4053C0:  VMUL.F32        S12, S18, S19
4053C4:  VMUL.F32        S14, S16, S14
4053C8:  VADD.F32        S6, S8, S6
4053CC:  VMUL.F32        S8, S18, S26
4053D0:  VADD.F32        S0, S0, S2
4053D4:  VMOV.F32        S2, #1.0
4053D8:  VADD.F32        S6, S6, S10
4053DC:  VMUL.F32        S10, S16, S21
4053E0:  VADD.F32        S0, S0, S4
4053E4:  VDIV.F32        S4, S2, S8
4053E8:  VDIV.F32        S6, S6, S12
4053EC:  VDIV.F32        S8, S2, S10
4053F0:  VDIV.F32        S0, S0, S14
4053F4:  VADD.F32        S4, S4, S6
4053F8:  VADD.F32        S0, S8, S0
4053FC:  VMOV            S10, R9
405400:  VMOV            S12, R0
405404:  LDR             R0, [SP,#0xE0+var_B8]
405406:  VMOV            S6, R5
40540A:  VMOV            S14, R8
40540E:  VMUL.F32        S8, S22, S12
405412:  VMUL.F32        S12, S22, S14
405416:  VMUL.F32        S6, S20, S6
40541A:  VMUL.F32        S10, S20, S10
40541E:  VDIV.F32        S22, S2, S4
405422:  VDIV.F32        S20, S2, S0
405426:  VMOV            S0, R0
40542A:  LDR             R0, [SP,#0xE0+var_B4]
40542C:  VADD.F32        S4, S10, S8
405430:  VMUL.F32        S0, S24, S0
405434:  VMOV            S2, R0
405438:  VADD.F32        S6, S6, S12
40543C:  VMUL.F32        S2, S24, S2
405440:  VADD.F32        S8, S22, S20
405444:  VADD.F32        S0, S4, S0
405448:  VADD.F32        S2, S6, S2
40544C:  VMUL.F32        S4, S0, S22
405450:  VMUL.F32        S6, S2, S20
405454:  VADD.F32        S4, S4, S6
405458:  VDIV.F32        S4, S4, S8
40545C:  VSUB.F32        S6, S0, S4
405460:  VCMPE.F32       S6, #0.0
405464:  VMRS            APSR_nzcv, FPSCR
405468:  BGE.W           loc_405928
40546C:  VLDR            S8, [R10,#0xA0]
405470:  VMOV.F32        S12, #0.5
405474:  VLDR            S10, [R4,#0xA0]
405478:  LDRB            R0, [R4,#0x1D]
40547A:  VADD.F32        S8, S10, S8
40547E:  LSLS            R0, R0, #0x1B
405480:  VMUL.F32        S8, S8, S12
405484:  VMUL.F32        S6, S6, S8
405488:  VSUB.F32        S6, S4, S6
40548C:  IT MI
40548E:  VMOVMI.F32      S6, S4
405492:  LDR             R3, [SP,#0xE0+var_B0]
405494:  VSUB.F32        S0, S6, S0
405498:  LDRB            R0, [R3,#1]
40549A:  LSLS            R0, R0, #0x1B
40549C:  ITTT PL
40549E:  VSUBPL.F32      S10, S2, S4
4054A2:  VMULPL.F32      S8, S10, S8
4054A6:  VSUBPL.F32      S4, S4, S8
4054AA:  LDR.W           R8, [SP,#0xE0+var_AC]
4054AE:  VMUL.F32        S0, S22, S0
4054B2:  LDR             R0, [R7,#arg_0]
4054B4:  VSUB.F32        S2, S4, S2
4054B8:  VSTR            S0, [R8]
4054BC:  VNMUL.F32       S4, S20, S2
4054C0:  VMUL.F32        S2, S20, S2
4054C4:  VSTR            S4, [R0]
4054C8:  VLDR            S0, [R8]
4054CC:  VDIV.F32        S24, S2, S16
4054D0:  LDRB.W          R0, [R4,#0x3A]
4054D4:  AND.W           R1, R0, #7
4054D8:  CMP             R1, #2
4054DA:  VDIV.F32        S4, S0, S18
4054DE:  VLDR            S0, [R11,#0x18]
4054E2:  VLDR            S30, [R11,#0x10]
4054E6:  VMUL.F32        S2, S4, S0
4054EA:  VLDR            S26, [R11,#0x14]
4054EE:  VMUL.F32        S28, S24, S0
4054F2:  VMUL.F32        S18, S4, S26
4054F6:  VMUL.F32        S16, S30, S4
4054FA:  VMOV            R9, S2
4054FE:  BNE             loc_405590
405500:  ADD.W           R1, R4, #0x1C
405504:  LDRB            R1, [R1,#1]
405506:  LSLS            R1, R1, #0x1B
405508:  BMI             loc_405590
40550A:  VLDR            S4, =0.3
40550E:  VMUL.F32        S2, S2, S4
405512:  VLDR            S4, =0.7
405516:  VCMPE.F32       S0, S4
40551A:  VMRS            APSR_nzcv, FPSCR
40551E:  IT LT
405520:  VMOVLT          R9, S2
405524:  CMP             R0, #7
405526:  BHI             loc_405550
405528:  VLDR            S0, [SP,#0xE0+var_6C]
40552C:  VLDR            S6, =0.8
405530:  VLDR            S2, [SP,#0xE0+var_68]
405534:  VLDR            S4, [SP,#0xE0+var_64]
405538:  VMUL.F32        S0, S0, S6
40553C:  VMUL.F32        S2, S2, S6
405540:  VMUL.F32        S4, S4, S6
405544:  VSTR            S0, [SP,#0xE0+var_6C]
405548:  VSTR            S2, [SP,#0xE0+var_68]
40554C:  VSTR            S4, [SP,#0xE0+var_64]
405550:  LDR.W           R0, =(_ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x405558)
405554:  ADD             R0, PC; _ZN6CWorld22bNoMoreCollisionTorqueE_ptr
405556:  LDR             R0, [R0]; CWorld::bNoMoreCollisionTorque ...
405558:  LDRB            R0, [R0]; CWorld::bNoMoreCollisionTorque
40555A:  CBZ             R0, loc_405590
40555C:  VLDR            S0, =-0.3
405560:  VMOV            S2, R9
405564:  ADD.W           R12, SP, #0xE0+var_6C
405568:  VMUL.F32        S4, S16, S0
40556C:  VMUL.F32        S6, S18, S0
405570:  LDM.W           R12, {R0,R6,R12}
405574:  VMUL.F32        S0, S2, S0
405578:  STMEA.W         SP, {R0,R6,R12}
40557C:  MOV             R0, R4
40557E:  VMOV            R1, S4
405582:  VMOV            R2, S6
405586:  VMOV            R3, S0
40558A:  BLX             j__ZN9CPhysical18ApplyFrictionForceE7CVectorS0_; CPhysical::ApplyFrictionForce(CVector,CVector)
40558E:  LDR             R3, [SP,#0xE0+var_B0]
405590:  VMOV            R5, S28
405594:  LDRB.W          R0, [R10,#0x3A]
405598:  VMUL.F32        S26, S24, S26
40559C:  VMUL.F32        S24, S24, S30
4055A0:  AND.W           R1, R0, #7
4055A4:  CMP             R1, #2
4055A6:  BNE             loc_405636
4055A8:  LDRB            R1, [R3,#1]
4055AA:  LSLS            R1, R1, #0x1B
4055AC:  BMI             loc_405636
4055AE:  VLDR            S2, =-0.7
4055B2:  VLDR            S4, [R11,#0x18]
4055B6:  VLDR            S0, =0.3
4055BA:  VCMPE.F32       S4, S2
4055BE:  VMRS            APSR_nzcv, FPSCR
4055C2:  VMUL.F32        S0, S28, S0
4055C6:  IT GT
4055C8:  VMOVGT          R5, S0
4055CC:  CMP             R0, #7
4055CE:  BHI             loc_4055F8
4055D0:  VLDR            S0, [SP,#0xE0+var_78]
4055D4:  VLDR            S6, =0.8
4055D8:  VLDR            S2, [SP,#0xE0+var_74]
4055DC:  VLDR            S4, [SP,#0xE0+var_70]
4055E0:  VMUL.F32        S0, S0, S6
4055E4:  VMUL.F32        S2, S2, S6
4055E8:  VMUL.F32        S4, S4, S6
4055EC:  VSTR            S0, [SP,#0xE0+var_78]
4055F0:  VSTR            S2, [SP,#0xE0+var_74]
4055F4:  VSTR            S4, [SP,#0xE0+var_70]
4055F8:  LDR             R0, =(_ZN6CWorld22bNoMoreCollisionTorqueE_ptr - 0x4055FE)
4055FA:  ADD             R0, PC; _ZN6CWorld22bNoMoreCollisionTorqueE_ptr
4055FC:  LDR             R0, [R0]; CWorld::bNoMoreCollisionTorque ...
4055FE:  LDRB            R0, [R0]; CWorld::bNoMoreCollisionTorque
405600:  CBZ             R0, loc_405636
405602:  VLDR            S0, =-0.3
405606:  VMOV            S2, R5
40560A:  ADD.W           R12, SP, #0xE0+var_78
40560E:  VMUL.F32        S4, S24, S0
405612:  VMUL.F32        S6, S26, S0
405616:  LDM.W           R12, {R0,R6,R12}
40561A:  VMUL.F32        S0, S2, S0
40561E:  STMEA.W         SP, {R0,R6,R12}
405622:  MOV             R0, R10
405624:  VMOV            R1, S4
405628:  VMOV            R2, S6
40562C:  VMOV            R3, S0
405630:  BLX             j__ZN9CPhysical18ApplyFrictionForceE7CVectorS0_; CPhysical::ApplyFrictionForce(CVector,CVector)
405634:  LDR             R3, [SP,#0xE0+var_B0]
405636:  LDRB.W          R0, [R4,#0x44]
40563A:  LSLS            R0, R0, #0x1D
40563C:  BMI             loc_40565C
40563E:  VMOV            R2, S18
405642:  ADD             R6, SP, #0xE0+var_6C
405644:  VMOV            R1, S16
405648:  MOV.W           R12, #1
40564C:  LDM             R6, {R0,R3,R6}
40564E:  STMEA.W         SP, {R0,R3,R6,R12}
405652:  MOV             R0, R4
405654:  MOV             R3, R9
405656:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
40565A:  LDR             R3, [SP,#0xE0+var_B0]
40565C:  LDRB.W          R0, [R10,#0x44]
405660:  LSLS            R0, R0, #0x1D
405662:  BMI             loc_4056F2
405664:  VMOV            R2, S26
405668:  LDRB            R0, [R3]
40566A:  VMOV            R9, S24
40566E:  LSLS            R0, R0, #0x1A
405670:  BPL             loc_4056DC
405672:  VLDR            S0, [R10,#0x58]
405676:  ADD.W           R6, R10, #0x48 ; 'H'
40567A:  VLDR            S2, [R10,#0x5C]
40567E:  MOV             R0, R10; this
405680:  VLD1.32         {D16-D17}, [R6]
405684:  VNEG.F32        S0, S0
405688:  VNEG.F32        S2, S2
40568C:  MOV             R8, R3
40568E:  VNEG.F32        Q8, Q8
405692:  VST1.32         {D16-D17}, [R6]
405696:  VSTR            S0, [R10,#0x58]
40569A:  VSTR            S2, [R10,#0x5C]
40569E:  STR             R5, [SP,#0xE0+var_B0]
4056A0:  MOV             R5, R2
4056A2:  BLX             j__ZN9CPhysical10ApplySpeedEv; CPhysical::ApplySpeed(void)
4056A6:  VLDR            S0, [R10,#0x58]
4056AA:  MOV             R2, R5
4056AC:  VLDR            S2, [R10,#0x5C]
4056B0:  VLD1.32         {D16-D17}, [R6]
4056B4:  VNEG.F32        S0, S0
4056B8:  VNEG.F32        S2, S2
4056BC:  VNEG.F32        Q8, Q8
4056C0:  VST1.32         {D16-D17}, [R6]
4056C4:  VSTR            S0, [R10,#0x58]
4056C8:  VSTR            S2, [R10,#0x5C]
4056CC:  LDR.W           R0, [R8]
4056D0:  BIC.W           R0, R0, #0x20 ; ' '
4056D4:  STR.W           R0, [R8]
4056D8:  LDRD.W          R5, R8, [SP,#0xE0+var_B0]
4056DC:  ADD             R6, SP, #0xE0+var_78
4056DE:  MOVS            R3, #1
4056E0:  LDM             R6, {R0,R1,R6}
4056E2:  STMEA.W         SP, {R0,R1,R6}
4056E6:  MOV             R0, R10
4056E8:  MOV             R1, R9
4056EA:  STR             R3, [SP,#0xE0+var_D4]; float
4056EC:  MOV             R3, R5
4056EE:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
4056F2:  VLDR            S0, [R8]
4056F6:  MOV.W           R8, #0
4056FA:  LDR             R1, =(AudioEngine_ptr - 0x40570C)
4056FC:  MOV.W           R9, #0x3F800000
405700:  VDIV.F32        S0, S0, S22
405704:  LDRB.W          R0, [R11,#0x23]
405708:  ADD             R1, PC; AudioEngine_ptr
40570A:  LDRB.W          R3, [R11,#0x20]; unsigned __int8
40570E:  STRD.W          R9, R8, [SP,#0xE0+var_D0]; float
405712:  STR.W           R8, [SP,#0xE0+var_C8]; unsigned __int8
405716:  STRD.W          R0, R11, [SP,#0xE0+var_E0]; unsigned __int8
40571A:  LDR             R6, [R1]; AudioEngine
40571C:  LDR             R5, [SP,#0xE0+var_C0]
40571E:  MOV             R0, R6; this
405720:  MOV             R1, R4; CEntity *
405722:  MOV             R2, R10; CEntity *
405724:  STR             R5, [SP,#0xE0+var_D8]; CVector *
405726:  VSTR            S0, [SP,#0xE0+var_D4]
40572A:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
40572E:  LDR             R0, [R7,#arg_0]
405730:  LDRB.W          R3, [R11,#0x23]; unsigned __int8
405734:  VLDR            S0, [R0]
405738:  LDRB.W          R0, [R11,#0x20]
40573C:  VDIV.F32        S0, S0, S20
405740:  STRD.W          R9, R8, [SP,#0xE0+var_D0]; float
405744:  STR.W           R8, [SP,#0xE0+var_C8]; unsigned __int8
405748:  STRD.W          R0, R11, [SP,#0xE0+var_E0]; unsigned __int8
40574C:  MOV             R0, R6; this
40574E:  STR             R5, [SP,#0xE0+var_D8]; CVector *
405750:  VSTR            S0, [SP,#0xE0+var_D4]
405754:  MOV             R1, R10; CEntity *
405756:  MOV             R2, R4; CEntity *
405758:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
40575C:  MOVS            R6, #1
40575E:  B               loc_40592A
405760:  VLDR            S4, =0.0
405764:  MOV.W           R9, #0
405768:  VMIN.F32        D10, D9, D2
40576C:  VSUB.F32        S4, S2, S20
405770:  VCMPE.F32       S4, #0.0
405774:  VMRS            APSR_nzcv, FPSCR
405778:  BGE.W           loc_405928
40577C:  VLDR            S6, [R10,#0xA0]
405780:  VMOV.F32        S10, #0.5
405784:  VLDR            S8, [R4,#0xA0]
405788:  ADD.W           R8, R11, #0x10
40578C:  LDR             R0, [R4,#0x1C]
40578E:  VADD.F32        S6, S8, S6
405792:  TST.W           R0, #0x1000
405796:  VMUL.F32        S22, S6, S10
40579A:  VMUL.F32        S4, S4, S22
40579E:  VSUB.F32        S4, S20, S4
4057A2:  IT NE
4057A4:  VMOVNE.F32      S4, S20
4057A8:  LDR             R1, [SP,#0xE0+var_AC]
4057AA:  VSUB.F32        S2, S4, S2
4057AE:  VMUL.F32        S2, S0, S2
4057B2:  VSTR            S2, [R1]
4057B6:  LDR             R0, [R4,#0x44]
4057B8:  TST.W           R0, #0x64
4057BC:  BNE             loc_405822
4057BE:  VMOV.F32        S4, #1.0
4057C2:  VLDR            S12, [R4,#0x90]
4057C6:  VLDR            S14, [R11,#0x14]
4057CA:  LSLS            R0, R0, #0x18
4057CC:  VLDR            S1, [R11,#0x18]
4057D0:  VMUL.F32        S14, S14, S2
4057D4:  VLDR            S3, =0.0
4057D8:  VLDR            S6, [R4,#0x48]
4057DC:  VLDR            S8, [R4,#0x4C]
4057E0:  VLDR            S10, [R4,#0x50]
4057E4:  VDIV.F32        S4, S4, S12
4057E8:  VLDR            S12, [R11,#0x10]
4057EC:  VMUL.F32        S12, S12, S2
4057F0:  VMUL.F32        S2, S1, S2
4057F4:  IT PL
4057F6:  VMOVPL.F32      S3, S2
4057FA:  VMUL.F32        S2, S12, S4
4057FE:  VMUL.F32        S12, S14, S4
405802:  VMUL.F32        S4, S3, S4
405806:  VADD.F32        S2, S6, S2
40580A:  VADD.F32        S6, S12, S8
40580E:  VADD.F32        S4, S4, S10
405812:  VSTR            S2, [R4,#0x48]
405816:  VSTR            S6, [R4,#0x4C]
40581A:  VSTR            S4, [R4,#0x50]
40581E:  VLDR            S2, [R1]
405822:  VDIV.F32        S0, S2, S0
405826:  LDR             R0, =(AudioEngine_ptr - 0x405832)
405828:  LDRB.W          R3, [R11,#0x20]; unsigned __int8
40582C:  MOVS            R2, #0
40582E:  ADD             R0, PC; AudioEngine_ptr
405830:  LDRB.W          R1, [R11,#0x23]
405834:  MOV.W           R6, #0x3F800000
405838:  LDR             R0, [R0]; AudioEngine ; this
40583A:  STRD.W          R6, R2, [SP,#0xE0+var_D0]; float
40583E:  STR             R2, [SP,#0xE0+var_C8]; unsigned __int8
405840:  MOV             R2, R10; CEntity *
405842:  STRD.W          R1, R11, [SP,#0xE0+var_E0]; unsigned __int8
405846:  MOV             R1, R4; CEntity *
405848:  STR.W           R8, [SP,#0xE0+var_D8]; CVector *
40584C:  VSTR            S0, [SP,#0xE0+var_D4]
405850:  BLX             j__ZN12CAudioEngine15ReportCollisionEP7CEntityS1_hhR7CVectorPS2_ffhh; CAudioEngine::ReportCollision(CEntity *,CEntity *,uchar,uchar,CVector &,CVector*,float,float,uchar,uchar)
405854:  CMP.W           R9, #1
405858:  BNE.W           loc_40575C
40585C:  VSUB.F32        S0, S18, S20
405860:  VCMPE.F32       S0, #0.0
405864:  VMRS            APSR_nzcv, FPSCR
405868:  BGE.W           loc_40575C
40586C:  VMUL.F32        S0, S0, S22
405870:  LDR             R0, [R5]
405872:  LDR             R1, [R7,#arg_0]
405874:  TST.W           R0, #0x1000
405878:  VSUB.F32        S0, S20, S0
40587C:  IT NE
40587E:  VMOVNE.F32      S0, S20
405882:  VSUB.F32        S2, S0, S18
405886:  VNMUL.F32       S0, S16, S2
40588A:  VSTR            S0, [R1]
40588E:  LDR.W           R0, [R10,#0x44]
405892:  TST.W           R0, #0x64
405896:  BNE             loc_405900
405898:  VMUL.F32        S0, S16, S2
40589C:  VLDR            S10, [R10,#0x90]
4058A0:  VMOV.F32        S2, #1.0
4058A4:  VLDR            S12, [R11,#0x14]
4058A8:  VLDR            S14, [R11,#0x18]
4058AC:  LSLS            R0, R0, #0x18
4058AE:  VLDR            S1, =0.0
4058B2:  VLDR            S4, [R10,#0x48]
4058B6:  VLDR            S6, [R10,#0x4C]
4058BA:  VLDR            S8, [R10,#0x50]
4058BE:  VMUL.F32        S12, S12, S0
4058C2:  VDIV.F32        S2, S2, S10
4058C6:  VLDR            S10, [R11,#0x10]
4058CA:  VMUL.F32        S10, S10, S0
4058CE:  VMUL.F32        S0, S14, S0
4058D2:  IT PL
4058D4:  VMOVPL.F32      S1, S0
4058D8:  VMUL.F32        S0, S10, S2
4058DC:  VMUL.F32        S10, S12, S2
4058E0:  VMUL.F32        S2, S1, S2
4058E4:  VADD.F32        S0, S4, S0
4058E8:  VADD.F32        S4, S10, S6
4058EC:  VADD.F32        S2, S2, S8
4058F0:  VSTR            S0, [R10,#0x48]
4058F4:  VSTR            S4, [R10,#0x4C]
4058F8:  VSTR            S2, [R10,#0x50]
4058FC:  VLDR            S0, [R1]
405900:  VDIV.F32        S0, S0, S16
405904:  LDR             R0, =(AudioEngine_ptr - 0x405910)
405906:  LDRB.W          R1, [R11,#0x20]
40590A:  MOVS            R2, #0
40590C:  ADD             R0, PC; AudioEngine_ptr
40590E:  MOV.W           R6, #0x3F800000
405912:  LDRB.W          R3, [R11,#0x23]
405916:  STRD.W          R6, R2, [SP,#0xE0+var_D0]
40591A:  STR             R2, [SP,#0xE0+var_C8]
40591C:  STRD.W          R1, R11, [SP,#0xE0+var_E0]
405920:  STR.W           R8, [SP,#0xE0+var_D8]
405924:  LDR             R0, [R0]; AudioEngine
405926:  B               loc_405750
405928:  MOVS            R6, #0
40592A:  MOV             R0, R6
40592C:  ADD             SP, SP, #0x80
40592E:  VPOP            {D8-D15}
405932:  ADD             SP, SP, #4
405934:  POP.W           {R8-R11}
405938:  POP             {R4-R7,PC}
40593A:  LDRB.W          R1, [R10,#0x3A]
40593E:  LDR             R5, [SP,#0xE0+var_B0]
405940:  AND.W           R1, R1, #7
405944:  CMP             R1, #4
405946:  BNE.W           loc_404A96
40594A:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x405950)
40594C:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
40594E:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
405950:  LDR.W           R0, [R1,R0,LSL#2]
405954:  LDR             R1, [R0]
405956:  LDR             R1, [R1,#8]
405958:  BLX             R1
40595A:  LDR             R5, [SP,#0xE0+var_B0]
40595C:  CMP             R0, #0
40595E:  BNE.W           loc_404A96
405962:  LDR.W           R0, [R10,#0x144]
405966:  ORR.W           R0, R0, #0x40 ; '@'
40596A:  STR.W           R0, [R10,#0x144]
40596E:  B.W             loc_404A96
