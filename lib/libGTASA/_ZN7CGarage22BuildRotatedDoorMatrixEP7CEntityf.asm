; =========================================================
; Game Engine Function: _ZN7CGarage22BuildRotatedDoorMatrixEP7CEntityf
; Address            : 0x31378C - 0x3138CE
; =========================================================

31378C:  PUSH            {R4-R7,LR}
31378E:  ADD             R7, SP, #0xC
313790:  PUSH.W          {R11}
313794:  VPUSH           {D8-D10}
313798:  SUB             SP, SP, #0x18
31379A:  VLDR            S0, =-1.5708
31379E:  VMOV            S2, R1
3137A2:  MOV             R4, R0
3137A4:  VMUL.F32        S0, S2, S0
3137A8:  VMOV            R5, S0
3137AC:  MOV             R0, R5; x
3137AE:  BLX             sinf
3137B2:  MOV             R6, R0
3137B4:  MOV             R0, R5; x
3137B6:  BLX             cosf
3137BA:  VMOV            S16, R0
3137BE:  LDR             R0, [R4,#0x14]
3137C0:  VMOV            S18, R6
3137C4:  CBZ             R0, loc_3137D0
3137C6:  VLDR            S0, [R0,#0x14]
3137CA:  VNMUL.F32       S20, S18, S0
3137CE:  B               loc_3137FE
3137D0:  MOV             R0, R4; this
3137D2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3137D6:  ADDS            R5, R4, #4
3137D8:  LDR             R1, [R4,#0x14]; CMatrix *
3137DA:  MOV             R0, R5; this
3137DC:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3137E0:  LDR             R0, [R4,#0x14]
3137E2:  CMP             R0, #0
3137E4:  VLDR            S0, [R0,#0x14]
3137E8:  VNMUL.F32       S20, S18, S0
3137EC:  BNE             loc_3137FE
3137EE:  MOV             R0, R4; this
3137F0:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3137F4:  LDR             R1, [R4,#0x14]; CMatrix *
3137F6:  MOV             R0, R5; this
3137F8:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3137FC:  LDR             R0, [R4,#0x14]
3137FE:  VLDR            S0, [R0,#0x10]
313802:  CMP             R0, #0
313804:  VSTR            S20, [SP,#0x40+var_34]
313808:  VMUL.F32        S0, S18, S0
31380C:  VSTR            S16, [SP,#0x40+var_2C]
313810:  VSTR            S0, [SP,#0x40+var_30]
313814:  BNE             loc_313826
313816:  MOV             R0, R4; this
313818:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31381C:  LDR             R1, [R4,#0x14]; CMatrix *
31381E:  ADDS            R0, R4, #4; this
313820:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
313824:  LDR             R0, [R4,#0x14]
313826:  ADD.W           R1, R0, #0x10; CVector *
31382A:  ADD             R2, SP, #0x40+var_34
31382C:  MOV             R0, SP; CVector *
31382E:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
313832:  LDR             R0, [R4,#0x14]
313834:  LDR             R5, [SP,#0x40+var_40]
313836:  CBNZ            R0, loc_313848
313838:  MOV             R0, R4; this
31383A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31383E:  LDR             R1, [R4,#0x14]; CMatrix *
313840:  ADDS            R0, R4, #4; this
313842:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
313846:  LDR             R0, [R4,#0x14]
313848:  STR             R5, [R0]
31384A:  LDR             R0, [R4,#0x14]
31384C:  LDR             R5, [SP,#0x40+var_3C]
31384E:  CBNZ            R0, loc_313860
313850:  MOV             R0, R4; this
313852:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
313856:  LDR             R1, [R4,#0x14]; CMatrix *
313858:  ADDS            R0, R4, #4; this
31385A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31385E:  LDR             R0, [R4,#0x14]
313860:  STR             R5, [R0,#4]
313862:  LDR             R0, [R4,#0x14]
313864:  LDR             R5, [SP,#0x40+var_38]
313866:  CBNZ            R0, loc_313878
313868:  MOV             R0, R4; this
31386A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31386E:  LDR             R1, [R4,#0x14]; CMatrix *
313870:  ADDS            R0, R4, #4; this
313872:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
313876:  LDR             R0, [R4,#0x14]
313878:  STR             R5, [R0,#8]
31387A:  LDR             R0, [R4,#0x14]
31387C:  LDR             R5, [SP,#0x40+var_34]
31387E:  CBNZ            R0, loc_313890
313880:  MOV             R0, R4; this
313882:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
313886:  LDR             R1, [R4,#0x14]; CMatrix *
313888:  ADDS            R0, R4, #4; this
31388A:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
31388E:  LDR             R0, [R4,#0x14]
313890:  STR             R5, [R0,#0x20]
313892:  LDR             R0, [R4,#0x14]
313894:  LDR             R5, [SP,#0x40+var_30]
313896:  CBNZ            R0, loc_3138A8
313898:  MOV             R0, R4; this
31389A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
31389E:  LDR             R1, [R4,#0x14]; CMatrix *
3138A0:  ADDS            R0, R4, #4; this
3138A2:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3138A6:  LDR             R0, [R4,#0x14]
3138A8:  STR             R5, [R0,#0x24]
3138AA:  LDR             R0, [R4,#0x14]
3138AC:  LDR             R5, [SP,#0x40+var_2C]
3138AE:  CBNZ            R0, loc_3138C0
3138B0:  MOV             R0, R4; this
3138B2:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3138B6:  LDR             R1, [R4,#0x14]; CMatrix *
3138B8:  ADDS            R0, R4, #4; this
3138BA:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3138BE:  LDR             R0, [R4,#0x14]
3138C0:  STR             R5, [R0,#0x28]
3138C2:  ADD             SP, SP, #0x18
3138C4:  VPOP            {D8-D10}
3138C8:  POP.W           {R11}
3138CC:  POP             {R4-R7,PC}
