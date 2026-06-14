; =========================================================
; Game Engine Function: _ZN8CVehicle18DoDriveByShootingsEv
; Address            : 0x5E2658 - 0x5E28EC
; =========================================================

5E2658:  PUSH            {R4-R7,LR}
5E265A:  ADD             R7, SP, #0xC
5E265C:  PUSH.W          {R8-R11}
5E2660:  SUB             SP, SP, #0x1C
5E2662:  MOV             R5, R0
5E2664:  LDR.W           R4, [R5,#0x464]
5E2668:  CMP             R4, #0
5E266A:  BEQ.W           loc_5E28E4
5E266E:  MOV             R0, R4; this
5E2670:  BLX.W           j__ZN10CPlayerPed29GetPlayerInfoForThisPlayerPedEv; CPlayerPed::GetPlayerInfoForThisPlayerPed(void)
5E2674:  CMP             R0, #0
5E2676:  ITT NE
5E2678:  LDRBNE.W        R0, [R0,#0x153]
5E267C:  CMPNE           R0, #0
5E267E:  BEQ.W           loc_5E28E4
5E2682:  MOV             R0, R4; this
5E2684:  BLX.W           j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
5E2688:  MOV             R6, R0
5E268A:  CMP             R6, #0
5E268C:  BEQ.W           loc_5E28E4
5E2690:  LDRSB.W         R0, [R4,#0x71C]
5E2694:  MOVS            R1, #1
5E2696:  RSB.W           R0, R0, R0,LSL#3
5E269A:  ADD.W           R10, R4, R0,LSL#2
5E269E:  LDR.W           R0, [R10,#0x5A4]
5E26A2:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5E26A6:  LDR             R0, [R0,#0x14]
5E26A8:  CMP             R0, #4
5E26AA:  BNE.W           loc_5E28E4
5E26AE:  ADDW            R0, R10, #0x5A4
5E26B2:  STR             R0, [SP,#0x38+var_20]
5E26B4:  LDR             R0, [R5]
5E26B6:  LDR.W           R1, [R0,#0xC0]
5E26BA:  MOV             R0, R5
5E26BC:  BLX             R1
5E26BE:  CBZ             R0, loc_5E26E0
5E26C0:  LDR             R0, [R5]
5E26C2:  LDR.W           R1, [R0,#0xC0]
5E26C6:  MOV             R0, R5
5E26C8:  BLX             R1
5E26CA:  MOVS            R1, #0xCC
5E26CC:  MOV.W           R11, #1
5E26D0:  STR             R1, [SP,#0x38+var_2C]
5E26D2:  MOVS            R1, #0xCB
5E26D4:  STR             R1, [SP,#0x38+var_28]
5E26D6:  LDR             R0, [R0]
5E26D8:  STR             R0, [SP,#0x38+var_30]
5E26DA:  MOVS            R0, #0xCA
5E26DC:  STR             R0, [SP,#0x38+var_24]
5E26DE:  B               loc_5E2704
5E26E0:  LDR.W           R0, [R5,#0x42C]
5E26E4:  MOVS            R1, #0x4B ; 'K'
5E26E6:  MOV.W           R11, #0
5E26EA:  UBFX.W          R0, R0, #0xB, #1
5E26EE:  ADD.W           R1, R1, R0,LSL#1
5E26F2:  STR             R1, [SP,#0x38+var_28]
5E26F4:  MOVS            R1, #0x4A ; 'J'
5E26F6:  ADD.W           R0, R1, R0,LSL#1
5E26FA:  STR             R0, [SP,#0x38+var_24]
5E26FC:  MOVS            R0, #0xBF
5E26FE:  STR             R0, [SP,#0x38+var_2C]
5E2700:  MOVS            R0, #0
5E2702:  STR             R0, [SP,#0x38+var_30]
5E2704:  MOV             R0, R6; this
5E2706:  MOV             R1, R11; bool
5E2708:  MOVS            R2, #0; bool
5E270A:  LDR.W           R8, [R5,#0x5A4]
5E270E:  BLX.W           j__ZN4CPad14GetCarGunFiredEbb; CPad::GetCarGunFired(bool,bool)
5E2712:  MOV             R9, R0
5E2714:  LDR             R0, [SP,#0x38+var_20]; this
5E2716:  MOVS            R1, #0; CPed *
5E2718:  BLX.W           j__ZN7CWeapon6UpdateEP4CPed; CWeapon::Update(CPed *)
5E271C:  LDR             R0, =(TheCamera_ptr - 0x5E2728)
5E271E:  CMP.W           R9, #1
5E2722:  MOV             R1, R9
5E2724:  ADD             R0, PC; TheCamera_ptr
5E2726:  IT NE
5E2728:  MOVNE           R1, #0
5E272A:  CMP.W           R9, #0
5E272E:  LDR             R0, [R0]; TheCamera
5E2730:  IT NE
5E2732:  MOVNE.W         R9, #1
5E2736:  CMP.W           R8, #0xA
5E273A:  LDRB.W          R2, [R0,#(byte_951FD5 - 0x951FA8)]
5E273E:  IT EQ
5E2740:  MOVEQ           R9, R1
5E2742:  CBNZ            R2, loc_5E2762
5E2744:  LDR             R1, =(TheCamera_ptr - 0x5E274E)
5E2746:  LDRB.W          R0, [R0,#(byte_951FFF - 0x951FA8)]
5E274A:  ADD             R1, PC; TheCamera_ptr
5E274C:  LDR             R1, [R1]; TheCamera
5E274E:  ADD.W           R0, R0, R0,LSL#5
5E2752:  ADD.W           R1, R1, R0,LSL#4
5E2756:  LDRH.W          R1, [R1,#0x17E]
5E275A:  CMP             R1, #0x31 ; '1'
5E275C:  IT NE
5E275E:  CMPNE           R1, #1
5E2760:  NOP
5E2762:  MOV             R0, R6; this
5E2764:  MOVS            R1, #1; bool
5E2766:  BLX.W           j__ZN4CPad11GetLookLeftEb; CPad::GetLookLeft(bool)
5E276A:  MOV             R8, R0
5E276C:  MOV             R0, R6; this
5E276E:  MOVS            R1, #1; bool
5E2770:  BLX.W           j__ZN4CPad12GetLookRightEb; CPad::GetLookRight(bool)
5E2774:  CMP.W           R11, #0
5E2778:  MOV             R1, R9
5E277A:  IT EQ
5E277C:  ORREQ.W         R1, R8, R0
5E2780:  LDR.W           R2, [R10,#0x5B0]
5E2784:  CMP             R1, #1
5E2786:  BNE             loc_5E279C
5E2788:  CMP             R2, #1
5E278A:  BLT             loc_5E279C
5E278C:  CMP.W           R8, #1
5E2790:  STR             R0, [SP,#0x38+var_34]
5E2792:  BNE             loc_5E27FA
5E2794:  MOV             R6, R4
5E2796:  LDR.W           R11, [SP,#0x38+var_24]
5E279A:  B               loc_5E2804
5E279C:  CBZ             R2, loc_5E27BC
5E279E:  LDR             R0, [SP,#0x38+var_20]
5E27A0:  MOVS            R1, #1
5E27A2:  ADD.W           R5, R10, #0x5B0
5E27A6:  LDR             R0, [R0]
5E27A8:  BLX.W           j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
5E27AC:  LDRSH.W         R0, [R0,#0x20]
5E27B0:  LDR             R1, [R5]
5E27B2:  CMP             R1, R0
5E27B4:  IT CC
5E27B6:  MOVCC           R0, R1
5E27B8:  STR.W           R0, [R10,#0x5AC]
5E27BC:  LDR             R0, [R4,#0x18]
5E27BE:  LDR             R1, [SP,#0x38+var_24]
5E27C0:  BLX.W           j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5E27C4:  CMP             R0, #0
5E27C6:  ITT NE
5E27C8:  MOVNE.W         R1, #0xC1000000
5E27CC:  STRNE           R1, [R0,#0x1C]
5E27CE:  LDR             R0, [R4,#0x18]
5E27D0:  LDR             R1, [SP,#0x38+var_28]
5E27D2:  BLX.W           j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5E27D6:  CMP             R0, #0
5E27D8:  ITT NE
5E27DA:  MOVNE.W         R1, #0xC1000000
5E27DE:  STRNE           R1, [R0,#0x1C]
5E27E0:  CMP.W           R11, #1
5E27E4:  BNE             loc_5E27EE
5E27E6:  LDR             R0, [R4,#0x18]
5E27E8:  LDR             R1, [SP,#0x38+var_2C]
5E27EA:  BLX.W           j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5E27EE:  CMP             R0, #0
5E27F0:  ITT NE
5E27F2:  MOVNE.W         R1, #0xC1000000
5E27F6:  STRNE           R1, [R0,#0x1C]
5E27F8:  B               loc_5E28E4
5E27FA:  CMP             R0, #1
5E27FC:  BNE             loc_5E287A
5E27FE:  MOV             R6, R4
5E2800:  LDR.W           R11, [SP,#0x38+var_28]
5E2804:  LDR.W           R0, [R6,#0x18]!
5E2808:  MOV             R1, R11
5E280A:  BLX.W           j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5E280E:  CBZ             R0, loc_5E281E
5E2810:  VLDR            S0, [R0,#0x1C]
5E2814:  VCMPE.F32       S0, #0.0
5E2818:  VMRS            APSR_nzcv, FPSCR
5E281C:  BGE             loc_5E282E
5E281E:  LDR             R1, [SP,#0x38+var_30]; int
5E2820:  MOV             R2, R11; unsigned int
5E2822:  LDR             R0, [R6]; int
5E2824:  MOV.W           R3, #0x41800000
5E2828:  BLX.W           j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
5E282C:  CBZ             R0, loc_5E28A8
5E282E:  LDRB.W          R1, [R0,#0x2E]
5E2832:  LSLS            R1, R1, #0x1F
5E2834:  BNE             loc_5E28E4
5E2836:  VLDR            S2, [R0,#0x18]
5E283A:  MOVS            R0, #0
5E283C:  VLDR            S0, =0.99
5E2840:  EOR.W           R1, R9, #1
5E2844:  VCMPE.F32       S2, S0
5E2848:  VMRS            APSR_nzcv, FPSCR
5E284C:  IT LE
5E284E:  MOVLE           R0, #1
5E2850:  ORRS            R0, R1
5E2852:  BEQ             loc_5E28AE
5E2854:  B               loc_5E28E4
5E2856:  LDR             R1, =(TheCamera_ptr - 0x5E285C)
5E2858:  ADD             R1, PC; TheCamera_ptr
5E285A:  LDR             R1, [R1]; TheCamera
5E285C:  ADD.W           R0, R1, R0,LSL#4
5E2860:  LDRB.W          R8, [R0,#0x178]
5E2864:  LDRB.W          R0, [R0,#0x179]
5E2868:  CMP             R0, #0
5E286A:  IT NE
5E286C:  MOVNE           R0, #1
5E286E:  CMP.W           R8, #0
5E2872:  IT NE
5E2874:  MOVNE.W         R8, #1
5E2878:  B               loc_5E2774
5E287A:  CMP.W           R11, #1
5E287E:  BNE             loc_5E28A8
5E2880:  MOV             R6, R4
5E2882:  LDR.W           R11, [SP,#0x38+var_2C]
5E2886:  LDR.W           R0, [R6,#0x18]!
5E288A:  MOV             R1, R11
5E288C:  BLX.W           j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
5E2890:  CMP             R0, #0
5E2892:  BEQ             loc_5E281E
5E2894:  VLDR            S0, [R0,#0x1C]
5E2898:  VCMPE.F32       S0, #0.0
5E289C:  VMRS            APSR_nzcv, FPSCR
5E28A0:  BGE             loc_5E282E
5E28A2:  LDR.W           R11, [SP,#0x38+var_2C]
5E28A6:  B               loc_5E281E
5E28A8:  CMP.W           R9, #1
5E28AC:  BNE             loc_5E28E4
5E28AE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E28B8)
5E28B0:  LDR.W           R1, [R10,#0x5B4]
5E28B4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E28B6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5E28B8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5E28BA:  CMP             R0, R1
5E28BC:  BLS             loc_5E28E4
5E28BE:  LDR             R0, [SP,#0x38+var_20]; this
5E28C0:  MOV             R1, R5; CVehicle *
5E28C2:  LDR             R3, [SP,#0x38+var_34]; bool
5E28C4:  MOV             R2, R8; bool
5E28C6:  ADDW            R6, R10, #0x5B4
5E28CA:  BLX.W           j__ZN7CWeapon11FireFromCarEP8CVehiclebb; CWeapon::FireFromCar(CVehicle *,bool,bool)
5E28CE:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5E28D8)
5E28D0:  MOVS            R1, #0xFA; int
5E28D2:  MOVS            R2, #0; bool
5E28D4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5E28D6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5E28D8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5E28DA:  ADDS            R0, #0x46 ; 'F'
5E28DC:  STR             R0, [R6]
5E28DE:  MOV             R0, R4; this
5E28E0:  BLX.W           j__ZN4CPed10DoGunFlashEib; CPed::DoGunFlash(int,bool)
5E28E4:  ADD             SP, SP, #0x1C
5E28E6:  POP.W           {R8-R11}
5E28EA:  POP             {R4-R7,PC}
