; =========================================================
; Game Engine Function: _ZN26CTaskComplexGoPickUpEntity18CreateFirstSubTaskEP4CPed
; Address            : 0x542648 - 0x54291C
; =========================================================

542648:  PUSH            {R4-R7,LR}
54264A:  ADD             R7, SP, #0xC
54264C:  PUSH.W          {R8}
542650:  VPUSH           {D8-D11}
542654:  SUB             SP, SP, #0x30
542656:  MOV             R4, R0
542658:  LDR             R5, [R4,#0xC]
54265A:  CMP             R5, #0
54265C:  BEQ             loc_54271C
54265E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x542666)
542660:  ADDS            R6, R5, #4
542662:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
542664:  MOV             R3, R6
542666:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
542668:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
54266A:  STR             R0, [R4,#0x28]
54266C:  LDR             R0, [R5,#0x14]
54266E:  LDR             R2, [R1,#0x14]
542670:  CMP             R0, #0
542672:  IT NE
542674:  ADDNE.W         R3, R0, #0x30 ; '0'
542678:  ADD.W           R0, R2, #0x30 ; '0'
54267C:  CMP             R2, #0
54267E:  VLDR            S0, [R3]
542682:  VLDR            S2, [R3,#4]
542686:  VLDR            S4, [R3,#8]
54268A:  IT EQ
54268C:  ADDEQ           R0, R1, #4
54268E:  VLDR            S6, [R0]
542692:  VLDR            S8, [R0,#4]
542696:  VLDR            S10, [R0,#8]
54269A:  VSUB.F32        S16, S6, S0
54269E:  VSUB.F32        S18, S8, S2
5426A2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5426B0)
5426A4:  VSUB.F32        S20, S10, S4
5426A8:  VLDR            S0, =-0.2
5426AC:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5426AE:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5426B0:  VSTR            S18, [SP,#0x60+var_40+4]
5426B4:  VSTR            S16, [SP,#0x60+var_40]
5426B8:  VSTR            S20, [SP,#0x60+var_38]
5426BC:  LDRSH.W         R1, [R5,#0x26]
5426C0:  LDR.W           R0, [R0,R1,LSL#2]
5426C4:  LDR.W           R8, [R0,#0x2C]
5426C8:  MOV             R0, #0xBE4CCCCD
5426D0:  STR             R0, [R4,#0x10]
5426D2:  VLDR            S2, [R8,#4]
5426D6:  VSUB.F32        S0, S0, S2
5426DA:  VSTR            S0, [R4,#0x14]
5426DE:  VLDR            S0, [R8,#8]
5426E2:  VNEG.F32        S0, S0
5426E6:  VSTR            S0, [R4,#0x18]
5426EA:  VLDR            S2, [R8,#0x10]
5426EE:  VLDR            S0, [R8,#0xC]
5426F2:  VADD.F32        S4, S2, S2
5426F6:  VCMPE.F32       S0, S4
5426FA:  VMRS            APSR_nzcv, FPSCR
5426FE:  BLE             loc_542720
542700:  VMOV            R0, S16
542704:  VMOV            R1, S18; x
542708:  EOR.W           R0, R0, #0x80000000; y
54270C:  BLX             atan2f
542710:  MOV             R1, R0
542712:  LDR             R0, [R5,#0x14]
542714:  VMOV            S0, R1
542718:  CBNZ            R0, loc_542796
54271A:  B               loc_542754
54271C:  MOVS            R0, #0
54271E:  B               loc_542910
542720:  VADD.F32        S0, S0, S0
542724:  VCMPE.F32       S2, S0
542728:  VMRS            APSR_nzcv, FPSCR
54272C:  BLE             loc_54275A
54272E:  VMOV            R0, S16
542732:  VMOV            R1, S18; x
542736:  EOR.W           R0, R0, #0x80000000; y
54273A:  BLX             atan2f
54273E:  VMOV            S2, R0
542742:  VLDR            S0, =-1.5708
542746:  LDR             R0, [R5,#0x14]
542748:  VADD.F32        S0, S2, S0
54274C:  CBZ             R0, loc_542754
54274E:  VMOV            R1, S0
542752:  B               loc_542796
542754:  VSTR            S0, [R5,#0x10]
542758:  B               loc_54279A
54275A:  LDR             R0, [R5,#0x14]
54275C:  CBNZ            R0, loc_54276E
54275E:  MOV             R0, R5; this
542760:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
542764:  LDR             R1, [R5,#0x14]; CMatrix *
542766:  MOV             R0, R6; this
542768:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
54276C:  LDR             R0, [R5,#0x14]
54276E:  VLDR            S0, =0.9
542772:  VLDR            S2, [R0,#0x28]
542776:  VCMPE.F32       S2, S0
54277A:  VMRS            APSR_nzcv, FPSCR
54277E:  BGE             loc_54279A
542780:  LDR             R0, [R4,#0xC]
542782:  LDR             R5, [R0,#0x14]
542784:  CBZ             R5, loc_54279A
542786:  LDRD.W          R0, R1, [R5,#0x10]; x
54278A:  EOR.W           R0, R0, #0x80000000; y
54278E:  BLX             atan2f
542792:  MOV             R1, R0; x
542794:  MOV             R0, R5; this
542796:  BLX             j__ZN7CMatrix14SetRotateZOnlyEf; CMatrix::SetRotateZOnly(float)
54279A:  LDR             R2, [R4,#0xC]
54279C:  LDRB.W          R0, [R2,#0x3A]
5427A0:  AND.W           R0, R0, #7
5427A4:  CMP             R0, #4
5427A6:  BNE             loc_5427C4
5427A8:  MOVS            R0, #0
5427AA:  STRD.W          R0, R0, [R2,#0x48]
5427AE:  STR             R0, [R2,#0x50]
5427B0:  LDR             R1, [R4,#0xC]
5427B2:  STRD.W          R0, R0, [R1,#0x54]
5427B6:  STR             R0, [R1,#0x5C]
5427B8:  LDR             R0, [R4,#0xC]
5427BA:  LDR             R1, [R0]
5427BC:  LDR             R2, [R1,#0x14]
5427BE:  MOVS            R1, #1
5427C0:  BLX             R2
5427C2:  LDR             R2, [R4,#0xC]
5427C4:  LDR             R0, [R2,#0x18]
5427C6:  CBZ             R0, loc_5427DC
5427C8:  LDR             R1, [R0,#4]
5427CA:  LDR             R0, [R2,#0x14]
5427CC:  ADDS            R1, #0x10
5427CE:  CBZ             R0, loc_5427D6
5427D0:  BLX             j__ZNK7CMatrix14UpdateRwMatrixEP11RwMatrixTag; CMatrix::UpdateRwMatrix(RwMatrixTag *)
5427D4:  B               loc_5427DC
5427D6:  ADDS            R0, R2, #4
5427D8:  BLX             j__ZNK16CSimpleTransform14UpdateRwMatrixEP11RwMatrixTag; CSimpleTransform::UpdateRwMatrix(RwMatrixTag *)
5427DC:  LDR             R6, [R4,#0xC]
5427DE:  LDR             R0, [R6,#0x14]
5427E0:  CBZ             R0, loc_5427E8
5427E2:  MOV             R5, R6
5427E4:  MOV             R1, R0
5427E6:  B               loc_5427FC
5427E8:  MOV             R0, R6; this
5427EA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5427EE:  LDR             R1, [R6,#0x14]; CMatrix *
5427F0:  ADDS            R0, R6, #4; this
5427F2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5427F6:  LDR             R5, [R4,#0xC]
5427F8:  LDR             R1, [R6,#0x14]
5427FA:  LDR             R0, [R5,#0x14]
5427FC:  VLDR            S0, [R1]
542800:  CMP             R0, #0
542802:  VLDR            S2, [R1,#4]
542806:  VMUL.F32        S0, S16, S0
54280A:  VLDR            S4, [R1,#8]
54280E:  VMUL.F32        S2, S18, S2
542812:  VMUL.F32        S4, S20, S4
542816:  VADD.F32        S0, S0, S2
54281A:  VADD.F32        S22, S0, S4
54281E:  BNE             loc_542830
542820:  MOV             R0, R5; this
542822:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
542826:  LDR             R1, [R5,#0x14]; CMatrix *
542828:  ADDS            R0, R5, #4; this
54282A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
54282E:  LDR             R0, [R5,#0x14]
542830:  VLDR            S0, [R0,#0x10]
542834:  VLDR            S2, [R0,#0x14]
542838:  VMUL.F32        S0, S16, S0
54283C:  VLDR            S4, [R0,#0x18]
542840:  VMUL.F32        S2, S18, S2
542844:  VMUL.F32        S4, S20, S4
542848:  VADD.F32        S0, S0, S2
54284C:  VADD.F32        S0, S0, S4
542850:  VABS.F32        S2, S0
542854:  VCMPE.F32       S22, S2
542858:  VMRS            APSR_nzcv, FPSCR
54285C:  BLE             loc_542868
54285E:  VLDR            S0, =0.4
542862:  VLDR            S2, [R8,#0xC]
542866:  B               loc_54287E
542868:  VNEG.F32        S2, S2
54286C:  VCMPE.F32       S22, S2
542870:  VMRS            APSR_nzcv, FPSCR
542874:  BGE             loc_54288C
542876:  VLDR            S0, =-0.4
54287A:  VLDR            S2, [R8]
54287E:  VADD.F32        S2, S2, S0
542882:  VLDR            S0, =0.0
542886:  VSTR            S2, [R4,#0x1C]
54288A:  B               loc_5428B0
54288C:  VCMPE.F32       S0, #0.0
542890:  MOVS            R0, #0
542892:  VMRS            APSR_nzcv, FPSCR
542896:  STR             R0, [R4,#0x1C]
542898:  BLE             loc_5428A4
54289A:  VLDR            S0, =0.4
54289E:  VLDR            S2, [R8,#0x10]
5428A2:  B               loc_5428AC
5428A4:  VLDR            S0, =-0.4
5428A8:  VLDR            S2, [R8,#4]
5428AC:  VADD.F32        S0, S2, S0
5428B0:  VMOV.F32        S2, #1.0
5428B4:  VSTR            S0, [R4,#0x20]
5428B8:  VLDR            S0, [R8,#8]
5428BC:  VADD.F32        S0, S0, S2
5428C0:  VSTR            S0, [R4,#0x24]
5428C4:  LDR             R5, [R4,#0xC]
5428C6:  ADDS            R4, #0x1C
5428C8:  LDR             R1, [R5,#0x14]
5428CA:  CBNZ            R1, loc_5428DC
5428CC:  MOV             R0, R5; this
5428CE:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
5428D2:  LDR             R1, [R5,#0x14]; CMatrix *
5428D4:  ADDS            R0, R5, #4; this
5428D6:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
5428DA:  LDR             R1, [R5,#0x14]
5428DC:  ADD             R0, SP, #0x60+var_50
5428DE:  MOV             R2, R4
5428E0:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
5428E4:  LDR             R0, [SP,#0x60+var_48]
5428E6:  VLDR            D16, [SP,#0x60+var_50]
5428EA:  STR             R0, [SP,#0x60+var_38]
5428EC:  MOVS            R0, #word_28; this
5428EE:  VSTR            D16, [SP,#0x60+var_40]
5428F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5428F6:  MOVS            R2, #0
5428F8:  MOVW            R3, #0xCCCD
5428FC:  STRD.W          R2, R2, [SP,#0x60+var_60]; float
542900:  MOVS            R1, #1
542902:  ADD             R2, SP, #0x60+var_40; CVector *
542904:  STR             R1, [SP,#0x60+var_58]; bool
542906:  MOVT            R3, #0x3E4C; float
54290A:  MOVS            R1, #4; int
54290C:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
542910:  ADD             SP, SP, #0x30 ; '0'
542912:  VPOP            {D8-D11}
542916:  POP.W           {R8}
54291A:  POP             {R4-R7,PC}
