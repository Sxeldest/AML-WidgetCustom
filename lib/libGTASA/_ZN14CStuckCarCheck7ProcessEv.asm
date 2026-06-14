; =========================================================
; Game Engine Function: _ZN14CStuckCarCheck7ProcessEv
; Address            : 0x328770 - 0x328A92
; =========================================================

328770:  PUSH            {R4-R7,LR}
328772:  ADD             R7, SP, #0xC
328774:  PUSH.W          {R8-R11}
328778:  SUB             SP, SP, #4
32877A:  VPUSH           {D8}
32877E:  SUB             SP, SP, #0x68
328780:  MOV             R4, R0
328782:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x32878E)
328784:  VLDR            S16, =0.3
328788:  MOVS            R5, #0
32878A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
32878C:  MOVS            R6, #0
32878E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
328790:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
328792:  STR             R0, [SP,#0x90+var_58]
328794:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x32879A)
328796:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
328798:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
32879A:  STR             R0, [SP,#0x90+var_50]
32879C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3287A2)
32879E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3287A0:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3287A2:  STR             R0, [SP,#0x90+var_68]
3287A4:  LDR             R0, =(TheCamera_ptr - 0x3287AA)
3287A6:  ADD             R0, PC; TheCamera_ptr
3287A8:  LDR             R0, [R0]; TheCamera
3287AA:  STR             R0, [SP,#0x90+var_6C]
3287AC:  LDR             R0, =(ThePaths_ptr - 0x3287B2)
3287AE:  ADD             R0, PC; ThePaths_ptr
3287B0:  LDR             R0, [R0]; ThePaths
3287B2:  STR             R0, [SP,#0x90+var_70]
3287B4:  LDR             R0, =(ThePaths_ptr - 0x3287BA)
3287B6:  ADD             R0, PC; ThePaths_ptr
3287B8:  LDR             R0, [R0]; ThePaths
3287BA:  STR             R0, [SP,#0x90+var_54]
3287BC:  LDR             R0, =(ThePaths_ptr - 0x3287C2)
3287BE:  ADD             R0, PC; ThePaths_ptr
3287C0:  LDR             R0, [R0]; ThePaths
3287C2:  STR             R0, [SP,#0x90+var_64]
3287C4:  B               loc_32898A
3287C6:  LDR.W           R0, [R8,#0x14]
3287CA:  ADD.W           R1, R0, #0x30 ; '0'
3287CE:  CMP             R0, #0
3287D0:  IT EQ
3287D2:  ADDEQ.W         R1, R8, #4
3287D6:  LDR             R0, [R1,#8]
3287D8:  VLDR            D16, [R1]
3287DC:  STR.W           R0, [R9,#0xC]
3287E0:  LDR             R0, [SP,#0x90+var_58]
3287E2:  STR.W           R0, [R9,#0x10]
3287E6:  VSTR            D16, [R9,#4]
3287EA:  B               loc_328A7C
3287EC:  MOV.W           R10, #0
3287F0:  LDRB.W          R0, [R9,#0x1F]
3287F4:  CBZ             R0, loc_328858
3287F6:  LDR.W           R0, [R8,#0x5A0]
3287FA:  CMP             R0, #9
3287FC:  BEQ             loc_328806
3287FE:  CBNZ            R0, loc_32881A
328800:  MOVW            R0, #0x974
328804:  B               loc_32880A
328806:  MOVW            R0, #0x818
32880A:  LDRB.W          R0, [R8,R0]
32880E:  CMP             R0, #4
328810:  MOV.W           R0, #0
328814:  IT CC
328816:  MOVCC           R0, #1
328818:  B               loc_32881C
32881A:  MOVS            R0, #1
32881C:  LDR.W           R1, [R8,#0x14]
328820:  VLDR            S0, [R1,#0x28]
328824:  MOVS            R1, #0
328826:  VCMPE.F32       S0, S16
32882A:  VMRS            APSR_nzcv, FPSCR
32882E:  VCMPE.F32       S0, #0.0
328832:  IT LT
328834:  MOVLT           R1, #1
328836:  VMRS            APSR_nzcv, FPSCR
32883A:  BLT             loc_328842
32883C:  ANDS            R0, R1
32883E:  CMP             R0, #1
328840:  BNE             loc_328858
328842:  LDR.W           R0, [R8]
328846:  MOVS            R1, #0
328848:  LDR.W           R2, [R0,#0xE8]
32884C:  MOV             R0, R8
32884E:  BLX             R2
328850:  CMP             R0, #0
328852:  IT NE
328854:  MOVNE.W         R10, #1
328858:  LDRB.W          R0, [R9,#0x20]
32885C:  CBZ             R0, loc_328872
32885E:  CMP.W           R10, #0
328862:  BNE             loc_32887A
328864:  LDR.W           R0, [R8,#0x44]
328868:  ANDS.W          R0, R0, #0x100
32886C:  BEQ.W           loc_328A7C
328870:  B               loc_32887A
328872:  CMP.W           R10, #0
328876:  BEQ.W           loc_328A7C
32887A:  ADD.W           R10, SP, #0x90+var_49+1
32887E:  MOV             R1, R8
328880:  MOV             R0, R10; this
328882:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
328886:  LDRSH.W         R0, [R8,#0x26]
32888A:  LDR             R1, [SP,#0x90+var_68]
32888C:  LDR.W           R0, [R1,R0,LSL#2]
328890:  MOV             R1, R10; CVector *
328892:  LDR             R0, [R0,#0x2C]
328894:  LDR             R2, [R0,#0x24]; float
328896:  LDR             R0, [SP,#0x90+var_6C]; this
328898:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
32889C:  CMP             R0, #0
32889E:  BNE.W           loc_328A7C
3288A2:  LDRSB.W         R0, [R9,#0x21]!
3288A6:  CMP             R0, #0
3288A8:  BLT             loc_328950
3288AA:  BEQ.W           loc_328A7C
3288AE:  ADD.W           R0, R8, #0x14
3288B2:  STR             R0, [SP,#0x90+var_60]
3288B4:  MOVS            R0, #0
3288B6:  MOV.W           R11, #0
3288BA:  STR             R4, [SP,#0x90+var_5C]
3288BC:  LDR             R1, [SP,#0x90+var_60]
3288BE:  MOV             R4, #0x497423FE
3288C6:  LDR             R1, [R1]
3288C8:  ADD.W           R3, R1, #0x30 ; '0'
3288CC:  CMP             R1, #0
3288CE:  IT EQ
3288D0:  ADDEQ.W         R3, R8, #4
3288D4:  LDM             R3, {R1-R3}; int
3288D6:  STR             R5, [SP,#0x90+var_90]; int
3288D8:  STRD.W          R4, R5, [SP,#0x90+var_8C]; float
3288DC:  MOVS            R4, #1
3288DE:  STRD.W          R4, R0, [SP,#0x90+var_84]; int
3288E2:  STRD.W          R5, R5, [SP,#0x90+var_7C]; int
3288E6:  STR             R5, [SP,#0x90+var_74]; int
3288E8:  LDR             R5, [SP,#0x90+var_54]
3288EA:  MOV             R0, R5; int
3288EC:  BLX             j__ZN9CPathFind25FindNthNodeClosestToCoorsE7CVectorhfbbibbP12CNodeAddress; CPathFind::FindNthNodeClosestToCoors(CVector,uchar,float,bool,bool,int,bool,bool,CNodeAddress *)
3288F0:  MOV             R10, R0
3288F2:  ADD             R0, SP, #0x90+var_49+1
3288F4:  SUB.W           R3, R7, #-var_49
3288F8:  MOV             R1, R5
3288FA:  MOV             R2, R10
3288FC:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,bool *)
328900:  LDR             R0, [SP,#0x90+var_40]
328902:  STR             R0, [SP,#0x90+var_30]
328904:  LDRB.W          R0, [R7,#var_49]
328908:  VLDR            D16, [SP,#0x90+var_49+1]
32890C:  CMP             R0, #0
32890E:  VSTR            D16, [SP,#0x90+var_38]
328912:  BEQ             loc_328930
328914:  LDR             R0, [SP,#0x90+var_64]
328916:  MOV             R1, R10
328918:  BLX             j__ZN9CPathFind34FindNodeOrientationForCarPlacementE12CNodeAddress; CPathFind::FindNodeOrientationForCarPlacement(CNodeAddress)
32891C:  ADD             R2, SP, #0x90+var_38; CVector *
32891E:  MOV             R1, R8; CVehicle *
328920:  MOV             R3, R0; float
328922:  STR             R0, [SP,#0x90+var_3C]
328924:  BLX             j__ZN14CStuckCarCheck20AttemptToWarpVehicleEP8CVehicleR7CVectorf; CStuckCarCheck::AttemptToWarpVehicle(CVehicle *,CVector &,float)
328928:  EOR.W           R1, R0, #1
32892C:  ADD             R11, R1
32892E:  B               loc_328936
328930:  ADD.W           R11, R11, #1
328934:  MOVS            R0, #0
328936:  LDR             R4, [SP,#0x90+var_5C]
328938:  CMP             R0, #0
32893A:  MOV.W           R5, #0
32893E:  BNE.W           loc_328A7C
328942:  LDRSB.W         R1, [R9]
328946:  UXTB.W          R0, R11
32894A:  CMP             R0, R1
32894C:  BLT             loc_3288BC
32894E:  B               loc_328A7C
328950:  ADD             R0, SP, #0x90+var_3C
328952:  LDR.W           R2, [R8,#0x394]
328956:  LDR.W           R3, [R8,#0x398]
32895A:  STR             R0, [SP,#0x90+var_90]
32895C:  SUB.W           R0, R7, #-var_49
328960:  LDR             R1, [SP,#0x90+var_70]
328962:  STR             R0, [SP,#0x90+var_8C]
328964:  ADD             R0, SP, #0x90+var_49+1
328966:  BLX             j__ZN9CPathFind22FindNodeCoorsForScriptE12CNodeAddressS0_PfPb; CPathFind::FindNodeCoorsForScript(CNodeAddress,CNodeAddress,float *,bool *)
32896A:  LDR             R0, [SP,#0x90+var_40]
32896C:  STR             R0, [SP,#0x90+var_30]
32896E:  LDRB.W          R0, [R7,#var_49]; this
328972:  VLDR            D16, [SP,#0x90+var_49+1]
328976:  CMP             R0, #0
328978:  VSTR            D16, [SP,#0x90+var_38]
32897C:  BEQ             loc_328A7C
32897E:  LDR             R3, [SP,#0x90+var_3C]; float
328980:  ADD             R2, SP, #0x90+var_38; CVector *
328982:  MOV             R1, R8; CVehicle *
328984:  BLX             j__ZN14CStuckCarCheck20AttemptToWarpVehicleEP8CVehicleR7CVectorf; CStuckCarCheck::AttemptToWarpVehicle(CVehicle *,CVector &,float)
328988:  B               loc_328A7C
32898A:  ADD.W           R1, R6, R6,LSL#3
32898E:  LDR.W           R0, [R4,R1,LSL#2]
328992:  CMP             R0, #0
328994:  BLT             loc_328A7C
328996:  ADD.W           R9, R4, R1,LSL#2
32899A:  LDR             R1, [SP,#0x90+var_50]
32899C:  LSRS            R2, R0, #8
32899E:  UXTB            R0, R0
3289A0:  LDR             R1, [R1]
3289A2:  LDR             R3, [R1,#4]
3289A4:  LDRB            R3, [R3,R2]
3289A6:  CMP             R3, R0
3289A8:  BNE             loc_328A58
3289AA:  LDR             R0, [R1]
3289AC:  MOVW            R1, #0xA2C
3289B0:  MLA.W           R8, R2, R1, R0
3289B4:  CMP.W           R8, #0
3289B8:  BEQ             loc_328A58
3289BA:  LDR.W           R0, [R8,#0x464]
3289BE:  CMP             R0, #0
3289C0:  BEQ.W           loc_3287C6
3289C4:  MOV             R0, R9
3289C6:  LDR.W           R1, [R0,#0x10]!
3289CA:  LDR             R2, [R0,#8]
3289CC:  ADD             R1, R2
3289CE:  LDR             R2, [SP,#0x90+var_58]
3289D0:  CMP             R2, R1
3289D2:  BLS             loc_328A38
3289D4:  LDR.W           R1, [R8,#0x14]
3289D8:  VLDR            S0, [R9,#4]
3289DC:  ADD.W           R2, R1, #0x30 ; '0'
3289E0:  CMP             R1, #0
3289E2:  IT EQ
3289E4:  ADDEQ.W         R2, R8, #4
3289E8:  VLDR            D16, [R9,#8]
3289EC:  VLDR            S2, [R2]
3289F0:  MOVS            R1, #0
3289F2:  VLDR            D17, [R2,#4]
3289F6:  VSUB.F32        S0, S2, S0
3289FA:  VSUB.F32        D16, D17, D16
3289FE:  VMUL.F32        D1, D16, D16
328A02:  VMUL.F32        S0, S0, S0
328A06:  VADD.F32        S0, S0, S2
328A0A:  VADD.F32        S0, S0, S3
328A0E:  VLDR            S2, [R9,#0x14]
328A12:  VSQRT.F32       S0, S0
328A16:  VCMPE.F32       S0, S2
328A1A:  VMRS            APSR_nzcv, FPSCR
328A1E:  IT LT
328A20:  MOVLT           R1, #1
328A22:  STRB.W          R1, [R9,#0x1C]
328A26:  VLDR            D16, [R2]
328A2A:  LDR             R1, [R2,#8]
328A2C:  STR.W           R1, [R9,#0xC]
328A30:  VSTR            D16, [R9,#4]
328A34:  LDR             R1, [SP,#0x90+var_58]
328A36:  STR             R1, [R0]
328A38:  LDRB.W          R0, [R9,#0x1D]
328A3C:  CBZ             R0, loc_328A7C
328A3E:  LDRB.W          R0, [R9,#0x1E]
328A42:  CMP             R0, #0
328A44:  BEQ.W           loc_3287EC
328A48:  LDRB.W          R10, [R9,#0x1C]
328A4C:  CMP.W           R10, #0
328A50:  IT NE
328A52:  MOVNE.W         R10, #1
328A56:  B               loc_3287F0
328A58:  MOVW            R1, #0x4000
328A5C:  MOV.W           R0, #0xFFFFFFFF
328A60:  MOVT            R1, #0xC59C
328A64:  STR.W           R0, [R9]
328A68:  STRD.W          R1, R1, [R9,#4]
328A6C:  STR.W           R5, [R9,#0x1E]
328A70:  STR.W           R5, [R9,#0x1A]
328A74:  STRD.W          R5, R5, [R9,#0x14]
328A78:  STRD.W          R1, R0, [R9,#0xC]
328A7C:  ADDS            R6, #1
328A7E:  CMP             R6, #0x10
328A80:  BNE.W           loc_32898A
328A84:  ADD             SP, SP, #0x68 ; 'h'
328A86:  VPOP            {D8}
328A8A:  ADD             SP, SP, #4
328A8C:  POP.W           {R8-R11}
328A90:  POP             {R4-R7,PC}
