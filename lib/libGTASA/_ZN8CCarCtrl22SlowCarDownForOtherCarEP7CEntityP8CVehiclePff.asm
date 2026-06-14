; =========================================================
; Game Engine Function: _ZN8CCarCtrl22SlowCarDownForOtherCarEP7CEntityP8CVehiclePff
; Address            : 0x2EE500 - 0x2EE85E
; =========================================================

2EE500:  PUSH            {R4-R7,LR}
2EE502:  ADD             R7, SP, #0xC
2EE504:  PUSH.W          {R8-R11}
2EE508:  SUB             SP, SP, #4
2EE50A:  VPUSH           {D8-D14}
2EE50E:  SUB             SP, SP, #0x28
2EE510:  MOV             R10, R1
2EE512:  MOV             R11, R0
2EE514:  LDR.W           R1, [R10,#0x14]
2EE518:  MOV             R9, R2
2EE51A:  LDR             R0, [R1,#0x10]
2EE51C:  STR             R0, [SP,#0x80+var_64]
2EE51E:  VLDR            S18, [R1,#0x14]
2EE522:  VMOV            S0, R0
2EE526:  VMUL.F32        S2, S18, S18
2EE52A:  VSTR            S18, [SP,#0x80+var_60]
2EE52E:  VMUL.F32        S4, S0, S0
2EE532:  VADD.F32        S2, S4, S2
2EE536:  VSQRT.F32       S2, S2
2EE53A:  VCMP.F32        S2, #0.0
2EE53E:  VMRS            APSR_nzcv, FPSCR
2EE542:  BEQ             loc_2EE556
2EE544:  VDIV.F32        S18, S18, S2
2EE548:  VDIV.F32        S20, S0, S2
2EE54C:  VSTR            S18, [SP,#0x80+var_60]
2EE550:  VSTR            S20, [SP,#0x80+var_64]
2EE554:  B               loc_2EE560
2EE556:  VMOV.F32        S20, #1.0
2EE55A:  MOV.W           R0, #0x3F800000
2EE55E:  STR             R0, [SP,#0x80+var_64]
2EE560:  LDR.W           R0, [R11,#0x14]
2EE564:  ADD.W           R5, R11, #4
2EE568:  ADD.W           R2, R1, #0x30 ; '0'
2EE56C:  CMP             R1, #0
2EE56E:  IT EQ
2EE570:  ADDEQ.W         R2, R10, #4
2EE574:  CMP             R0, #0
2EE576:  MOV             R1, R5
2EE578:  VLDR            S0, [R2]
2EE57C:  VLDR            S2, [R2,#4]
2EE580:  IT NE
2EE582:  ADDNE.W         R1, R0, #0x30 ; '0'
2EE586:  VLDR            S4, [R1]
2EE58A:  VLDR            S6, [R1,#4]
2EE58E:  VSUB.F32        S0, S4, S0
2EE592:  VSUB.F32        S2, S6, S2
2EE596:  VMUL.F32        S0, S0, S20
2EE59A:  VMUL.F32        S2, S2, S18
2EE59E:  VADD.F32        S0, S0, S2
2EE5A2:  VCMPE.F32       S0, #0.0
2EE5A6:  VMRS            APSR_nzcv, FPSCR
2EE5AA:  BGE             loc_2EE5BA
2EE5AC:  ADD             SP, SP, #0x28 ; '('
2EE5AE:  VPOP            {D8-D14}
2EE5B2:  ADD             SP, SP, #4
2EE5B4:  POP.W           {R8-R11}
2EE5B8:  POP             {R4-R7,PC}
2EE5BA:  MOVS            R1, #0
2EE5BC:  VMOV            S16, R3
2EE5C0:  STR             R1, [SP,#0x80+var_5C]
2EE5C2:  CMP             R0, #0
2EE5C4:  VLDR            S22, =60.0
2EE5C8:  VLDR            S24, [R11,#0x48]
2EE5CC:  VLDR            S28, [R11,#0x4C]
2EE5D0:  BEQ             loc_2EE5D8
2EE5D2:  VLDR            S26, [R0,#0x10]
2EE5D6:  B               loc_2EE608
2EE5D8:  MOV             R0, R11; this
2EE5DA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2EE5DE:  LDR.W           R1, [R11,#0x14]; CMatrix *
2EE5E2:  MOV             R0, R5; this
2EE5E4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2EE5E8:  LDR.W           R0, [R11,#0x14]
2EE5EC:  CMP             R0, #0
2EE5EE:  VLDR            S26, [R0,#0x10]
2EE5F2:  BNE             loc_2EE608
2EE5F4:  MOV             R0, R11; this
2EE5F6:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2EE5FA:  LDR.W           R1, [R11,#0x14]; CMatrix *
2EE5FE:  MOV             R0, R5; this
2EE600:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2EE604:  LDR.W           R0, [R11,#0x14]
2EE608:  LDR             R0, [R0,#0x14]
2EE60A:  VMUL.F32        S10, S26, S26
2EE60E:  VMUL.F32        S0, S18, S16
2EE612:  STR             R0, [SP,#0x80+var_6C]
2EE614:  VMUL.F32        S4, S20, S16
2EE618:  VSTR            S26, [SP,#0x80+var_70]
2EE61C:  VMOV            S8, R0
2EE620:  MOVS            R0, #0
2EE622:  VMUL.F32        S2, S28, S22
2EE626:  STR             R0, [SP,#0x80+var_68]
2EE628:  VMUL.F32        S12, S8, S8
2EE62C:  STR             R5, [SP,#0x80+var_74]
2EE62E:  VMUL.F32        S6, S24, S22
2EE632:  VADD.F32        S10, S10, S12
2EE636:  VSQRT.F32       S10, S10
2EE63A:  VCMP.F32        S10, #0.0
2EE63E:  VMRS            APSR_nzcv, FPSCR
2EE642:  BEQ             loc_2EE656
2EE644:  VDIV.F32        S8, S8, S10
2EE648:  VDIV.F32        S10, S26, S10
2EE64C:  VSTR            S8, [SP,#0x80+var_6C]
2EE650:  VSTR            S10, [SP,#0x80+var_70]
2EE654:  B               loc_2EE65C
2EE656:  MOV.W           R0, #0x3F800000
2EE65A:  STR             R0, [SP,#0x80+var_70]
2EE65C:  VSUB.F32        S4, S6, S4
2EE660:  ADD             R6, SP, #0x80+var_70
2EE662:  VSUB.F32        S0, S2, S0
2EE666:  MOV             R0, R11; this
2EE668:  MOV             R1, R10; CVehicle *
2EE66A:  ADD.W           R8, SP, #0x80+var_64
2EE66E:  STRD.W          R8, R6, [SP,#0x80+var_80]; float
2EE672:  VMOV            R5, S4
2EE676:  VMOV            R4, S0
2EE67A:  MOV             R2, R5; CVehicle *
2EE67C:  MOV             R3, R4; float
2EE67E:  BLX             j__ZN8CCarCtrl48TestCollisionBetween2MovingRects_OnlyFrontBumperEP8CVehicleS1_ffP7CVectorS3_; CCarCtrl::TestCollisionBetween2MovingRects_OnlyFrontBumper(CVehicle *,CVehicle *,float,float,CVector *,CVector *)
2EE682:  EOR.W           R2, R5, #0x80000000; CVehicle *
2EE686:  EOR.W           R3, R4, #0x80000000; float
2EE68A:  VMOV            S18, R0
2EE68E:  MOV             R0, R10; this
2EE690:  MOV             R1, R11; CVehicle *
2EE692:  STRD.W          R6, R8, [SP,#0x80+var_80]; float
2EE696:  BLX             j__ZN8CCarCtrl32TestCollisionBetween2MovingRectsEP8CVehicleS1_ffP7CVectorS3_; CCarCtrl::TestCollisionBetween2MovingRects(CVehicle *,CVehicle *,float,float,CVector *,CVector *)
2EE69A:  VMOV            S0, R0
2EE69E:  VMIN.F32        D9, D9, D0
2EE6A2:  VCMPE.F32       S18, #0.0
2EE6A6:  VMRS            APSR_nzcv, FPSCR
2EE6AA:  BLT             loc_2EE6EC
2EE6AC:  VMOV.F32        S0, #1.5
2EE6B0:  VCMPE.F32       S18, S0
2EE6B4:  VMRS            APSR_nzcv, FPSCR
2EE6B8:  BGE             loc_2EE6EC
2EE6BA:  LDRH.W          R0, [R10,#0x3DF]
2EE6BE:  ADDW            R1, R10, #0x424; CEntity **
2EE6C2:  STR.W           R11, [R10,#0x424]
2EE6C6:  ORR.W           R0, R0, #1
2EE6CA:  STRH.W          R0, [R10,#0x3DF]
2EE6CE:  MOV             R0, R11; this
2EE6D0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
2EE6D4:  VMOV.F32        S0, #1.0
2EE6D8:  VDIV.F32        S2, S0, S16
2EE6DC:  VCMPE.F32       S18, S2
2EE6E0:  VMRS            APSR_nzcv, FPSCR
2EE6E4:  BGE             loc_2EE6F0
2EE6E6:  VLDR            S0, =0.0
2EE6EA:  B               loc_2EE730
2EE6EC:  LDR             R5, [SP,#0x80+var_74]
2EE6EE:  B               loc_2EE736
2EE6F0:  VMOV.F32        S2, #3.0
2EE6F4:  VDIV.F32        S2, S2, S16
2EE6F8:  VCMPE.F32       S18, S2
2EE6FC:  VMRS            APSR_nzcv, FPSCR
2EE700:  BGE             loc_2EE70C
2EE702:  VLDR            S2, [R9]
2EE706:  VMIN.F32        D0, D1, D0
2EE70A:  B               loc_2EE730
2EE70C:  VLDR            S0, =-0.2
2EE710:  VLDR            S2, =0.76923
2EE714:  VADD.F32        S0, S18, S0
2EE718:  VLDR            S4, =0.0
2EE71C:  VMUL.F32        S0, S0, S2
2EE720:  VMAX.F32        D9, D0, D2
2EE724:  VLDR            S0, [R9]
2EE728:  VMUL.F32        S2, S18, S16
2EE72C:  VMIN.F32        D0, D0, D1
2EE730:  LDR             R5, [SP,#0x80+var_74]
2EE732:  VSTR            S0, [R9]
2EE736:  VCMPE.F32       S18, #0.0
2EE73A:  VMRS            APSR_nzcv, FPSCR
2EE73E:  BLT.W           loc_2EE5AC
2EE742:  VMOV.F32        S0, #0.5
2EE746:  VCMPE.F32       S18, S0
2EE74A:  VMRS            APSR_nzcv, FPSCR
2EE74E:  BGE.W           loc_2EE5AC
2EE752:  LDRB.W          R0, [R11,#0x3A]
2EE756:  AND.W           R0, R0, #7
2EE75A:  CMP             R0, #2
2EE75C:  BNE.W           loc_2EE5AC
2EE760:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EE76A)
2EE762:  LDR.W           R1, [R10,#0x3B4]
2EE766:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EE768:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EE76A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EE76C:  SUBS            R2, R0, R1
2EE76E:  MOVW            R1, #0x3A99
2EE772:  CMP             R2, R1
2EE774:  BCC.W           loc_2EE5AC
2EE778:  LDR.W           R2, [R11,#0x3B4]
2EE77C:  SUBS            R0, R0, R2
2EE77E:  CMP             R0, R1
2EE780:  BCC.W           loc_2EE5AC
2EE784:  LDR.W           R1, [R10,#0x14]
2EE788:  LDR.W           R0, [R11,#0x14]
2EE78C:  VLDR            S18, [R1,#0x10]
2EE790:  CBNZ            R0, loc_2EE7AA
2EE792:  MOV             R0, R11; this
2EE794:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2EE798:  LDR.W           R1, [R11,#0x14]; CMatrix *
2EE79C:  MOV             R0, R5; this
2EE79E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2EE7A2:  LDR.W           R1, [R10,#0x14]
2EE7A6:  LDR.W           R0, [R11,#0x14]
2EE7AA:  VLDR            S22, [R0,#0x10]
2EE7AE:  CMP             R0, #0
2EE7B0:  VLDR            S20, [R1,#0x14]
2EE7B4:  BNE             loc_2EE7CA
2EE7B6:  MOV             R0, R11; this
2EE7B8:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
2EE7BC:  LDR.W           R1, [R11,#0x14]; CMatrix *
2EE7C0:  MOV             R0, R5; this
2EE7C2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
2EE7C6:  LDR.W           R0, [R11,#0x14]
2EE7CA:  VLDR            S24, [R0,#0x14]
2EE7CE:  MOV.W           R0, #0xFFFFFFFF; int
2EE7D2:  MOVS            R1, #0; bool
2EE7D4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2EE7D8:  CMP             R10, R11
2EE7DA:  BCS.W           loc_2EE5AC
2EE7DE:  CMP             R0, R11
2EE7E0:  BEQ.W           loc_2EE5AC
2EE7E4:  VMUL.F32        S0, S18, S22
2EE7E8:  VMUL.F32        S2, S20, S24
2EE7EC:  VADD.F32        S0, S0, S2
2EE7F0:  VMOV.F32        S2, #-0.5
2EE7F4:  VCMPE.F32       S0, S2
2EE7F8:  VMRS            APSR_nzcv, FPSCR
2EE7FC:  BGE.W           loc_2EE5AC
2EE800:  VLDR            S0, =0.2
2EE804:  VLDR            S2, [R9]
2EE808:  VMUL.F32        S0, S16, S0
2EE80C:  VMAX.F32        D0, D1, D0
2EE810:  VSTR            S0, [R9]
2EE814:  LDRB.W          R0, [R10,#0x3A]
2EE818:  AND.W           R1, R0, #0xF8
2EE81C:  CMP             R1, #0x10
2EE81E:  BNE             loc_2EE846
2EE820:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EE82E)
2EE822:  MOVS            R2, #0
2EE824:  MOVS            R3, #3
2EE826:  STRB.W          R2, [R10,#0x3BF]
2EE82A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EE82C:  BFI.W           R0, R3, #3, #0x1D
2EE830:  STRB.W          R0, [R10,#0x3A]
2EE834:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
2EE836:  LDR             R0, [R1]; CTimer::m_snTimeInMilliseconds
2EE838:  STRB.W          R2, [R10,#0xBC]
2EE83C:  ADD.W           R1, R0, #0x7D0
2EE840:  STRD.W          R1, R0, [R10,#0x3B0]
2EE844:  B               loc_2EE84E
2EE846:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2EE84C)
2EE848:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2EE84A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2EE84C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2EE84E:  ADD.W           R0, R0, #0x3E8
2EE852:  STR.W           R0, [R10,#0x3C0]
2EE856:  MOVS            R0, #2
2EE858:  STRB.W          R0, [R10,#0x3BD]
2EE85C:  B               loc_2EE5AC
