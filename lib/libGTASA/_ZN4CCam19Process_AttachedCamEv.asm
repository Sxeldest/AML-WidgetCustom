; =========================================================
; Game Engine Function: _ZN4CCam19Process_AttachedCamEv
; Address            : 0x3CD4D4 - 0x3CD814
; =========================================================

3CD4D4:  PUSH            {R4-R7,LR}
3CD4D6:  ADD             R7, SP, #0xC
3CD4D8:  PUSH.W          {R8,R9,R11}
3CD4DC:  VPUSH           {D8-D9}
3CD4E0:  SUB             SP, SP, #0x38
3CD4E2:  MOV             R4, R0
3CD4E4:  LDR             R0, =(TheCamera_ptr - 0x3CD4F0)
3CD4E6:  MOVS            R1, #0
3CD4E8:  VLDR            S16, =3.1416
3CD4EC:  ADD             R0, PC; TheCamera_ptr
3CD4EE:  MOVT            R1, #0x428C
3CD4F2:  STR.W           R1, [R4,#0x8C]
3CD4F6:  LDR             R0, [R0]; TheCamera
3CD4F8:  ADDW            R1, R0, #0x8D4
3CD4FC:  LDR.W           R5, [R0,#(dword_952888 - 0x951FA8)]
3CD500:  VLDR            S18, [R1]
3CD504:  LDR             R1, [R5,#0x14]
3CD506:  CBNZ            R1, loc_3CD518
3CD508:  MOV             R0, R5; this
3CD50A:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CD50E:  LDR             R1, [R5,#0x14]; CMatrix *
3CD510:  ADDS            R0, R5, #4; this
3CD512:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CD516:  LDR             R1, [R5,#0x14]; CVector *
3CD518:  LDR             R0, =(TheCamera_ptr - 0x3CD526)
3CD51A:  VMUL.F32        S16, S18, S16
3CD51E:  VLDR            S18, =180.0
3CD522:  ADD             R0, PC; TheCamera_ptr
3CD524:  LDR             R5, [R0]; TheCamera
3CD526:  ADD             R0, SP, #0x60+var_38; CMatrix *
3CD528:  ADDW            R2, R5, #0x8BC
3CD52C:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3CD530:  VLDR            D16, [SP,#0x60+var_38]
3CD534:  LDR             R0, [SP,#0x60+var_30]
3CD536:  STR.W           R0, [R4,#0x17C]
3CD53A:  VSTR            D16, [R4,#0x174]
3CD53E:  LDR.W           R0, [R5,#(dword_952888 - 0x951FA8)]
3CD542:  VLDR            S0, [R4,#0x174]
3CD546:  VLDR            S2, [R4,#0x178]
3CD54A:  LDR             R1, [R0,#0x14]
3CD54C:  VLDR            S4, [R4,#0x17C]
3CD550:  ADD.W           R2, R1, #0x30 ; '0'
3CD554:  CMP             R1, #0
3CD556:  IT EQ
3CD558:  ADDEQ           R2, R0, #4
3CD55A:  VLDR            S6, [R2]
3CD55E:  VADD.F32        S0, S6, S0
3CD562:  VSTR            S0, [R4,#0x174]
3CD566:  VLDR            S6, [R2,#4]
3CD56A:  VADD.F32        S2, S6, S2
3CD56E:  VSTR            S2, [R4,#0x178]
3CD572:  VLDR            S6, [R2,#8]
3CD576:  VADD.F32        S4, S6, S4
3CD57A:  VSTR            S4, [R4,#0x17C]
3CD57E:  LDRB.W          R0, [R5,#(byte_951FD2 - 0x951FA8)]
3CD582:  CMP             R0, #0
3CD584:  BEQ             loc_3CD624
3CD586:  LDR             R0, =(TheCamera_ptr - 0x3CD58C)
3CD588:  ADD             R0, PC; TheCamera_ptr
3CD58A:  LDR             R0, [R0]; TheCamera
3CD58C:  LDR.W           R5, [R0,#(dword_952888 - 0x951FA8)]
3CD590:  LDR             R1, [R5,#0x14]
3CD592:  CBNZ            R1, loc_3CD5A4
3CD594:  MOV             R0, R5; this
3CD596:  BLX             j__ZN10CPlaceable14AllocateMatrixEv; CPlaceable::AllocateMatrix(void)
3CD59A:  LDR             R1, [R5,#0x14]; CMatrix *
3CD59C:  ADDS            R0, R5, #4; this
3CD59E:  BLX             j__ZNK16CSimpleTransform12UpdateMatrixEP7CMatrix; CSimpleTransform::UpdateMatrix(CMatrix *)
3CD5A2:  LDR             R1, [R5,#0x14]; CVector *
3CD5A4:  LDR             R0, =(TheCamera_ptr - 0x3CD5AA)
3CD5A6:  ADD             R0, PC; TheCamera_ptr
3CD5A8:  LDR             R5, [R0]; TheCamera
3CD5AA:  ADD             R0, SP, #0x60+var_38; CMatrix *
3CD5AC:  ADDW            R2, R5, #0x8C8
3CD5B0:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3CD5B4:  VLDR            D16, [SP,#0x60+var_38]
3CD5B8:  LDR             R0, [SP,#0x60+var_30]
3CD5BA:  STR.W           R0, [R4,#0x170]
3CD5BE:  VSTR            D16, [R4,#0x168]
3CD5C2:  LDR.W           R0, [R5,#(dword_952888 - 0x951FA8)]
3CD5C6:  VLDR            S0, [R4,#0x168]
3CD5CA:  VLDR            S2, [R4,#0x16C]
3CD5CE:  LDR             R1, [R0,#0x14]
3CD5D0:  VLDR            S4, [R4,#0x170]
3CD5D4:  ADD.W           R2, R1, #0x30 ; '0'
3CD5D8:  CMP             R1, #0
3CD5DA:  VLDR            S6, [R4,#0x174]
3CD5DE:  IT EQ
3CD5E0:  ADDEQ           R2, R0, #4
3CD5E2:  VLDR            S8, [R2]
3CD5E6:  VADD.F32        S0, S8, S0
3CD5EA:  VSTR            S0, [R4,#0x168]
3CD5EE:  VSUB.F32        S0, S0, S6
3CD5F2:  VLDR            S8, [R2,#4]
3CD5F6:  VADD.F32        S2, S8, S2
3CD5FA:  VLDR            S8, [R4,#0x178]
3CD5FE:  VSTR            S2, [R4,#0x16C]
3CD602:  VSUB.F32        S6, S2, S8
3CD606:  VLDR            S2, [R2,#8]
3CD60A:  VADD.F32        S2, S2, S4
3CD60E:  VLDR            S4, [R4,#0x17C]
3CD612:  VSTR            S0, [R4,#0x168]
3CD616:  VSTR            S6, [R4,#0x16C]
3CD61A:  VSUB.F32        S2, S2, S4
3CD61E:  VSTR            S2, [R4,#0x170]
3CD622:  B               loc_3CD65E
3CD624:  LDR             R0, =(TheCamera_ptr - 0x3CD62A)
3CD626:  ADD             R0, PC; TheCamera_ptr
3CD628:  LDR             R0, [R0]; TheCamera
3CD62A:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]
3CD62E:  LDR             R1, [R0,#0x14]
3CD630:  ADD.W           R2, R1, #0x30 ; '0'
3CD634:  CMP             R1, #0
3CD636:  IT EQ
3CD638:  ADDEQ           R2, R0, #4
3CD63A:  VLDR            S6, [R2]
3CD63E:  VLDR            S8, [R2,#4]
3CD642:  VLDR            S10, [R2,#8]
3CD646:  VSUB.F32        S0, S6, S0
3CD64A:  VSUB.F32        S2, S8, S2
3CD64E:  VSUB.F32        S4, S10, S4
3CD652:  VSTR            S0, [R4,#0x168]
3CD656:  VSTR            S2, [R4,#0x16C]
3CD65A:  VSTR            S4, [R4,#0x170]
3CD65E:  ADD.W           R5, R4, #0x168
3CD662:  VDIV.F32        S16, S16, S18
3CD666:  MOV             R0, R5; this
3CD668:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD66C:  MOV.W           R9, #0
3CD670:  ADD.W           R8, SP, #0x60+var_48
3CD674:  MOV.W           R0, #0x3F800000
3CD678:  STRD.W          R9, R9, [SP,#0x60+var_48]
3CD67C:  STR             R0, [SP,#0x60+var_40]
3CD67E:  ADD             R0, SP, #0x60+var_58; CVector *
3CD680:  MOV             R1, R5; CVector *
3CD682:  MOV             R2, R8
3CD684:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CD688:  ADD             R6, SP, #0x60+var_38
3CD68A:  LDR             R0, [SP,#0x60+var_50]
3CD68C:  VLDR            D16, [SP,#0x60+var_58]
3CD690:  STR             R0, [SP,#0x60+var_30]
3CD692:  MOV             R0, R6; this
3CD694:  VSTR            D16, [SP,#0x60+var_38]
3CD698:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD69C:  ADD             R0, SP, #0x60+var_58; CVector *
3CD69E:  MOV             R1, R6; CVector *
3CD6A0:  MOV             R2, R5
3CD6A2:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3CD6A6:  LDR             R0, [SP,#0x60+var_50]
3CD6A8:  VLDR            D16, [SP,#0x60+var_58]
3CD6AC:  STR             R0, [SP,#0x60+var_40]
3CD6AE:  MOV             R0, R8; this
3CD6B0:  VSTR            D16, [SP,#0x60+var_48]
3CD6B4:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
3CD6B8:  ADD.W           R2, R4, #0x174
3CD6BC:  STR.W           R9, [SP,#0x60+var_58]; CVector *
3CD6C0:  MOVS            R3, #(stderr+1)
3CD6C2:  LDM             R2, {R0-R2}; float
3CD6C4:  STRD.W          R3, R9, [SP,#0x60+var_60]; float *
3CD6C8:  ADD             R3, SP, #0x60+var_58; float
3CD6CA:  BLX             j__ZN11CWaterLevel13GetWaterLevelEfffPfbP7CVector; CWaterLevel::GetWaterLevel(float,float,float,float *,bool,CVector *)
3CD6CE:  CMP             R0, #1
3CD6D0:  BNE             loc_3CD79C
3CD6D2:  VLDR            S0, =-0.3
3CD6D6:  VLDR            S2, [SP,#0x60+var_58]
3CD6DA:  VADD.F32        S0, S2, S0
3CD6DE:  VLDR            S2, [R4,#0x17C]
3CD6E2:  VCMPE.F32       S2, S0
3CD6E6:  VMRS            APSR_nzcv, FPSCR
3CD6EA:  BGE             loc_3CD79C
3CD6EC:  LDR             R0, =(_ZN10CTimeCycle16m_CurrentColoursE_ptr - 0x3CD6F2)
3CD6EE:  ADD             R0, PC; _ZN10CTimeCycle16m_CurrentColoursE_ptr
3CD6F0:  LDR             R0, [R0]; CTimeCycle::m_CurrentColours ...
3CD6F2:  VLDR            S4, [R0,#0x68]
3CD6F6:  VLDR            S2, [R0,#0x6C]
3CD6FA:  VMUL.F32        S8, S4, S4
3CD6FE:  VLDR            S0, [R0,#0x70]
3CD702:  VMUL.F32        S6, S2, S2
3CD706:  LDR             R0, =(BOAT_UNDERWATER_CAM_COLORMAG_LIMIT_ptr - 0x3CD710)
3CD708:  VMUL.F32        S10, S0, S0
3CD70C:  ADD             R0, PC; BOAT_UNDERWATER_CAM_COLORMAG_LIMIT_ptr
3CD70E:  LDR             R0, [R0]; BOAT_UNDERWATER_CAM_COLORMAG_LIMIT
3CD710:  VADD.F32        S6, S8, S6
3CD714:  VLDR            S8, [R0]
3CD718:  VADD.F32        S6, S6, S10
3CD71C:  VSQRT.F32       S6, S6
3CD720:  VCMPE.F32       S6, S8
3CD724:  VMRS            APSR_nzcv, FPSCR
3CD728:  BLE             loc_3CD76C
3CD72A:  VDIV.F32        S6, S8, S6
3CD72E:  LDR             R0, =(BOAT_UNDERWATER_CAM_BLUR_ptr - 0x3CD738)
3CD730:  LDR             R1, =(TheCamera_ptr - 0x3CD73A)
3CD732:  MOVS            R2, #2
3CD734:  ADD             R0, PC; BOAT_UNDERWATER_CAM_BLUR_ptr
3CD736:  ADD             R1, PC; TheCamera_ptr
3CD738:  LDR             R0, [R0]; BOAT_UNDERWATER_CAM_BLUR
3CD73A:  LDR             R1, [R1]; TheCamera
3CD73C:  VMUL.F32        S4, S4, S6
3CD740:  VMUL.F32        S2, S2, S6
3CD744:  VMUL.F32        S0, S0, S6
3CD748:  VCVT.S32.F32    S4, S4
3CD74C:  VCVT.S32.F32    S2, S2
3CD750:  VCVT.S32.F32    S0, S0
3CD754:  LDR             R0, [R0]
3CD756:  STR.W           R2, [R1,#(dword_952034 - 0x951FA8)]
3CD75A:  STR.W           R0, [R1,#(dword_952044 - 0x951FA8)]
3CD75E:  VSTR            S0, [R1,#0x80]
3CD762:  VSTR            S2, [R1,#0x84]
3CD766:  VSTR            S4, [R1,#0x88]
3CD76A:  B               loc_3CD79C
3CD76C:  LDR             R0, =(BOAT_UNDERWATER_CAM_BLUR_ptr - 0x3CD780)
3CD76E:  VCVT.S32.F32    S4, S4
3CD772:  LDR             R1, =(TheCamera_ptr - 0x3CD782)
3CD774:  VCVT.S32.F32    S2, S2
3CD778:  VCVT.S32.F32    S0, S0
3CD77C:  ADD             R0, PC; BOAT_UNDERWATER_CAM_BLUR_ptr
3CD77E:  ADD             R1, PC; TheCamera_ptr
3CD780:  MOVS            R2, #2
3CD782:  LDR             R0, [R0]; BOAT_UNDERWATER_CAM_BLUR
3CD784:  LDR             R1, [R1]; TheCamera
3CD786:  LDR             R0, [R0]
3CD788:  STR.W           R2, [R1,#(dword_952034 - 0x951FA8)]
3CD78C:  VSTR            S0, [R1,#0x80]
3CD790:  VSTR            S2, [R1,#0x84]
3CD794:  VSTR            S4, [R1,#0x88]
3CD798:  STR.W           R0, [R1,#(dword_952044 - 0x951FA8)]
3CD79C:  VMOV            R5, S16
3CD7A0:  MOV             R0, R5; x
3CD7A2:  BLX             cosf
3CD7A6:  MOV             R6, R0
3CD7A8:  MOV             R0, R5; x
3CD7AA:  BLX             sinf
3CD7AE:  VMOV            S6, R0
3CD7B2:  VLDR            S0, [SP,#0x60+var_38]
3CD7B6:  VLDR            S2, [SP,#0x60+var_38+4]
3CD7BA:  VMOV            S14, R6
3CD7BE:  VLDR            S4, [SP,#0x60+var_30]
3CD7C2:  VMUL.F32        S0, S6, S0
3CD7C6:  VLDR            S10, [SP,#0x60+var_48+4]
3CD7CA:  VMUL.F32        S2, S6, S2
3CD7CE:  VLDR            S12, [SP,#0x60+var_40]
3CD7D2:  VMUL.F32        S4, S6, S4
3CD7D6:  VLDR            S8, [SP,#0x60+var_48]
3CD7DA:  VMUL.F32        S10, S14, S10
3CD7DE:  VMUL.F32        S12, S14, S12
3CD7E2:  LDR             R0, =(_ZN6CWorld13pIgnoreEntityE_ptr - 0x3CD7EC)
3CD7E4:  VMUL.F32        S6, S14, S8
3CD7E8:  ADD             R0, PC; _ZN6CWorld13pIgnoreEntityE_ptr
3CD7EA:  LDR             R0, [R0]; CWorld::pIgnoreEntity ...
3CD7EC:  VADD.F32        S2, S10, S2
3CD7F0:  VADD.F32        S4, S12, S4
3CD7F4:  VADD.F32        S0, S6, S0
3CD7F8:  VSTR            S0, [R4,#0x18C]
3CD7FC:  VSTR            S2, [R4,#0x190]
3CD800:  VSTR            S4, [R4,#0x194]
3CD804:  STR.W           R9, [R0]; CWorld::pIgnoreEntity
3CD808:  ADD             SP, SP, #0x38 ; '8'
3CD80A:  VPOP            {D8-D9}
3CD80E:  POP.W           {R8,R9,R11}
3CD812:  POP             {R4-R7,PC}
