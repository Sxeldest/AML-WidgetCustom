; =========================================================
; Game Engine Function: _ZN8CIdleCam13IsTargetValidEP7CEntity
; Address            : 0x3D3730 - 0x3D3844
; =========================================================

3D3730:  PUSH            {R4-R7,LR}
3D3732:  ADD             R7, SP, #0xC
3D3734:  PUSH.W          {R8}
3D3738:  SUB             SP, SP, #0x28
3D373A:  MOV             R5, R1
3D373C:  MOV             R4, R0
3D373E:  CMP             R5, #0
3D3740:  BEQ             loc_3D37E8
3D3742:  MOV.W           R0, #0xFFFFFFFF; int
3D3746:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3D374A:  CMP             R0, R5
3D374C:  BEQ             loc_3D383A
3D374E:  LDR             R0, [R5,#0x14]
3D3750:  ADD.W           R1, R0, #0x30 ; '0'
3D3754:  CMP             R0, #0
3D3756:  IT EQ
3D3758:  ADDEQ           R1, R5, #4
3D375A:  VLDR            D16, [R1]
3D375E:  LDR             R0, [R1,#8]
3D3760:  STR             R0, [SP,#0x38+var_18]
3D3762:  VSTR            D16, [SP,#0x38+var_20]
3D3766:  LDRB.W          R0, [R5,#0x3A]
3D376A:  AND.W           R0, R0, #7
3D376E:  CMP             R0, #3
3D3770:  BNE             loc_3D379C
3D3772:  LDR.W           R0, [R5,#0x59C]
3D3776:  VMOV.F32        S0, #0.5
3D377A:  VLDR            S2, =0.1
3D377E:  CMP             R0, #5
3D3780:  IT EQ
3D3782:  VMOVEQ.F32      S0, S2
3D3786:  CMP             R0, #0x16
3D3788:  IT EQ
3D378A:  VMOVEQ.F32      S0, S2
3D378E:  VLDR            S2, [SP,#0x38+var_18]
3D3792:  VADD.F32        S0, S2, S0
3D3796:  VSTR            S0, [SP,#0x38+var_18]
3D379A:  B               loc_3D37A0
3D379C:  VLDR            S0, [SP,#0x38+var_18]
3D37A0:  LDR.W           R1, [R4,#0x98]
3D37A4:  VLDR            D16, [SP,#0x38+var_20]
3D37A8:  VLDR            D17, [R1,#0x174]
3D37AC:  VSUB.F32        D16, D17, D16
3D37B0:  VLDR            S2, [R1,#0x17C]
3D37B4:  VSUB.F32        S0, S2, S0
3D37B8:  VMUL.F32        D1, D16, D16
3D37BC:  VMUL.F32        S0, S0, S0
3D37C0:  VADD.F32        S2, S2, S3
3D37C4:  VADD.F32        S0, S2, S0
3D37C8:  VLDR            S2, [R4,#0x44]
3D37CC:  VSQRT.F32       S0, S0
3D37D0:  VCMPE.F32       S0, S2
3D37D4:  VMRS            APSR_nzcv, FPSCR
3D37D8:  BLT             loc_3D37E8
3D37DA:  VLDR            S2, [R4,#0x4C]
3D37DE:  VCMPE.F32       S0, S2
3D37E2:  VMRS            APSR_nzcv, FPSCR
3D37E6:  BLE             loc_3D37EC
3D37E8:  MOVS            R0, #0
3D37EA:  B               loc_3D383C
3D37EC:  VMOV.F32        S0, #1.0
3D37F0:  VLDR            S2, [R4,#0x24]
3D37F4:  MOVS            R0, #1
3D37F6:  VCMPE.F32       S2, S0
3D37FA:  VMRS            APSR_nzcv, FPSCR
3D37FE:  BLT             loc_3D383C
3D3800:  LDR             R2, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3D3808)
3D3802:  MOVS            R3, #0; bool
3D3804:  ADD             R2, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3D3806:  LDR             R6, [R2]; CWorld::pIgnoreEntity ...
3D3808:  MOVS            R2, #0
3D380A:  LDR.W           R8, [R6]; CWorld::pIgnoreEntity
3D380E:  STR             R5, [R6]; CWorld::pIgnoreEntity
3D3810:  STRD.W          R2, R0, [SP,#0x38+var_38]; bool
3D3814:  STRD.W          R2, R2, [SP,#0x38+var_30]; bool
3D3818:  MOVS            R2, #(stderr+1); CVector *
3D381A:  STR             R0, [SP,#0x38+var_28]; bool
3D381C:  ADD.W           R0, R1, #0x174; this
3D3820:  ADD             R1, SP, #0x38+var_20; CVector *
3D3822:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
3D3826:  CMP             R0, #0
3D3828:  STR.W           R8, [R6]; CWorld::pIgnoreEntity
3D382C:  BNE             loc_3D383A
3D382E:  LDRD.W          R0, R1, [R4,#0x50]
3D3832:  ADDS            R2, R1, #1
3D3834:  STR             R2, [R4,#0x54]
3D3836:  CMP             R1, R0
3D3838:  BGT             loc_3D37E8
3D383A:  MOVS            R0, #1
3D383C:  ADD             SP, SP, #0x28 ; '('
3D383E:  POP.W           {R8}
3D3842:  POP             {R4-R7,PC}
