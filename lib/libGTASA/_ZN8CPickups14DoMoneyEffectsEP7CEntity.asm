; =========================================================
; Game Engine Function: _ZN8CPickups14DoMoneyEffectsEP7CEntity
; Address            : 0x3206F4 - 0x320820
; =========================================================

3206F4:  PUSH            {R4-R7,LR}
3206F6:  ADD             R7, SP, #0xC
3206F8:  PUSH.W          {R11}
3206FC:  VPUSH           {D8-D9}
320700:  MOV             R4, R0
320702:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x32070C)
320704:  VLDR            S2, =0.0030566
320708:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
32070A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
32070C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
32070E:  BFC.W           R0, #0xB, #0x15
320712:  VMOV            S0, R0
320716:  VCVT.F32.U32    S0, S0
32071A:  VMUL.F32        S0, S0, S2
32071E:  VMOV            R5, S0
320722:  MOV             R0, R5; x
320724:  BLX             cosf
320728:  MOV             R6, R0
32072A:  MOV             R0, R5; x
32072C:  BLX             sinf
320730:  MOV             R5, R0
320732:  LDR             R0, [R4,#0x14]
320734:  VMOV            S16, R6
320738:  CBNZ            R0, loc_32074A
32073A:  MOV             R0, R4; this
32073C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320740:  LDR             R1, [R4,#0x14]; CMatrix *
320742:  ADDS            R0, R4, #4; this
320744:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320748:  LDR             R0, [R4,#0x14]
32074A:  VSTR            S16, [R0]
32074E:  VMOV            S18, R5
320752:  LDR             R0, [R4,#0x14]
320754:  CBNZ            R0, loc_320766
320756:  MOV             R0, R4; this
320758:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
32075C:  LDR             R1, [R4,#0x14]; CMatrix *
32075E:  ADDS            R0, R4, #4; this
320760:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320764:  LDR             R0, [R4,#0x14]
320766:  VSTR            S18, [R0,#4]
32076A:  LDR             R0, [R4,#0x14]
32076C:  CBNZ            R0, loc_32077E
32076E:  MOV             R0, R4; this
320770:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320774:  LDR             R1, [R4,#0x14]; CMatrix *
320776:  ADDS            R0, R4, #4; this
320778:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
32077C:  LDR             R0, [R4,#0x14]
32077E:  VNEG.F32        S18, S18
320782:  MOVS            R1, #0
320784:  STR             R1, [R0,#8]
320786:  LDR             R0, [R4,#0x14]
320788:  CBNZ            R0, loc_32079A
32078A:  MOV             R0, R4; this
32078C:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320790:  LDR             R1, [R4,#0x14]; CMatrix *
320792:  ADDS            R0, R4, #4; this
320794:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
320798:  LDR             R0, [R4,#0x14]
32079A:  VSTR            S18, [R0,#0x10]
32079E:  LDR             R0, [R4,#0x14]
3207A0:  CBNZ            R0, loc_3207B2
3207A2:  MOV             R0, R4; this
3207A4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3207A8:  LDR             R1, [R4,#0x14]; CMatrix *
3207AA:  ADDS            R0, R4, #4; this
3207AC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3207B0:  LDR             R0, [R4,#0x14]
3207B2:  VSTR            S16, [R0,#0x14]
3207B6:  LDR             R0, [R4,#0x14]
3207B8:  CBNZ            R0, loc_3207CA
3207BA:  MOV             R0, R4; this
3207BC:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3207C0:  LDR             R1, [R4,#0x14]; CMatrix *
3207C2:  ADDS            R0, R4, #4; this
3207C4:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3207C8:  LDR             R0, [R4,#0x14]
3207CA:  MOVS            R5, #0
3207CC:  STR             R5, [R0,#0x18]
3207CE:  LDR             R0, [R4,#0x14]
3207D0:  CBNZ            R0, loc_3207E2
3207D2:  MOV             R0, R4; this
3207D4:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3207D8:  LDR             R1, [R4,#0x14]; CMatrix *
3207DA:  ADDS            R0, R4, #4; this
3207DC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3207E0:  LDR             R0, [R4,#0x14]
3207E2:  STR             R5, [R0,#0x20]
3207E4:  LDR             R0, [R4,#0x14]
3207E6:  CBNZ            R0, loc_3207F8
3207E8:  MOV             R0, R4; this
3207EA:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3207EE:  LDR             R1, [R4,#0x14]; CMatrix *
3207F0:  ADDS            R0, R4, #4; this
3207F2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3207F6:  LDR             R0, [R4,#0x14]
3207F8:  MOVS            R1, #0
3207FA:  STR             R1, [R0,#0x24]
3207FC:  LDR             R0, [R4,#0x14]
3207FE:  CBNZ            R0, loc_320810
320800:  MOV             R0, R4; this
320802:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
320806:  LDR             R1, [R4,#0x14]; CMatrix *
320808:  ADDS            R0, R4, #4; this
32080A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
32080E:  LDR             R0, [R4,#0x14]
320810:  MOV.W           R1, #0x3F800000
320814:  STR             R1, [R0,#0x28]
320816:  VPOP            {D8-D9}
32081A:  POP.W           {R11}
32081E:  POP             {R4-R7,PC}
