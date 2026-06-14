; =========================================================
; Game Engine Function: _ZN4Fx_c15AddBulletImpactER7CVectorS1_iif
; Address            : 0x36476C - 0x3649EC
; =========================================================

36476C:  PUSH            {R4-R7,LR}
36476E:  ADD             R7, SP, #0xC
364770:  PUSH.W          {R8-R11}
364774:  SUB             SP, SP, #4
364776:  VPUSH           {D8-D11}
36477A:  SUB             SP, SP, #0x48
36477C:  LDR             R0, =(g_surfaceInfos_ptr - 0x364788)
36477E:  MOV             R9, R1
364780:  MOV             R1, R3; unsigned int
364782:  MOV             R4, R2
364784:  ADD             R0, PC; g_surfaceInfos_ptr
364786:  LDR             R0, [R0]; g_surfaceInfos ; this
364788:  BLX             j__ZN14SurfaceInfos_c11GetBulletFxEj; SurfaceInfos_c::GetBulletFx(uint)
36478C:  MOV             R8, R0
36478E:  LDR             R0, =(TheCamera_ptr - 0x364794)
364790:  ADD             R0, PC; TheCamera_ptr
364792:  LDR             R1, [R0]; TheCamera
364794:  LDR             R2, [R1,#(dword_951FBC - 0x951FA8)]
364796:  ADD.W           R0, R2, #0x30 ; '0'
36479A:  CMP             R2, #0
36479C:  IT EQ
36479E:  ADDEQ           R0, R1, #4
3647A0:  CMP.W           R8, #0
3647A4:  BEQ.W           def_3647F2; jumptable 003647F2 default case
3647A8:  VLDR            S0, [R9]
3647AC:  VLDR            S2, [R0]
3647B0:  VLDR            D16, [R9,#4]
3647B4:  VSUB.F32        S0, S2, S0
3647B8:  VLDR            D17, [R0,#4]
3647BC:  VSUB.F32        D16, D17, D16
3647C0:  VMUL.F32        D1, D16, D16
3647C4:  VMUL.F32        S0, S0, S0
3647C8:  VADD.F32        S0, S0, S2
3647CC:  VADD.F32        S0, S0, S3
3647D0:  VLDR            S2, =22500.0
3647D4:  VCMPE.F32       S0, S2
3647D8:  VMRS            APSR_nzcv, FPSCR
3647DC:  BGT.W           def_3647F2; jumptable 003647F2 default case
3647E0:  SUB.W           R0, R8, #1; switch 4 cases
3647E4:  CMP             R0, #3
3647E6:  BHI.W           def_3647F2; jumptable 003647F2 default case
3647EA:  VLDR            S16, [R7,#arg_4]
3647EE:  LDR.W           R10, [R7,#arg_0]
3647F2:  TBB.W           [PC,R0]; switch jump
3647F6:  DCB 0x38; jump table for switch statement
3647F7:  DCB 2
3647F8:  DCB 0x70
3647F9:  DCB 2
3647FA:  MOVW            R0, #0x999A; jumptable 003647F2 cases 2,4
3647FE:  MOVW            R2, #0xCCCD
364802:  MOVW            R3, #0x999A
364806:  MOVT            R0, #0x3E99
36480A:  MOVS            R1, #0
36480C:  MOVT            R2, #0x3ECC
364810:  MOVT            R3, #0x3E19
364814:  STRD.W          R3, R2, [SP,#0x88+var_88]; float
364818:  MOVW            R2, #0x851F
36481C:  STRD.W          R1, R0, [SP,#0x88+var_80]; float
364820:  MOVW            R1, #0x5C29
364824:  MOVW            R3, #0xEB85
364828:  ADD             R0, SP, #0x88+var_5C; this
36482A:  MOVT            R1, #0x3F4F; float
36482E:  MOVT            R2, #0x3F2B; float
364832:  MOVT            R3, #0x3F11; float
364836:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
36483A:  CMP.W           R8, #4
36483E:  MOV             R8, R0
364840:  ITTTT EQ
364842:  MOVWEQ          R1, #0x999A
364846:  MOVTEQ          R1, #0x3F19
36484A:  STREQ           R1, [SP,#0x88+var_54]
36484C:  STRDEQ.W        R1, R1, [SP,#0x88+var_5C]
364850:  CMP.W           R10, #8
364854:  BLT             loc_3648FE
364856:  VLDR            S0, [SP,#0x88+var_50]
36485A:  MOVS            R5, #2
36485C:  VADD.F32        S0, S0, S0
364860:  VSTR            S0, [SP,#0x88+var_50]
364864:  B               loc_364900
364866:  MOVW            R8, #0xCCCD; jumptable 003647F2 case 1
36486A:  MOVS            R3, #0
36486C:  MOVS            R5, #0
36486E:  MOVT            R8, #0x3ECC
364872:  MOVS            R1, #1
364874:  STRD.W          R10, R5, [SP,#0x88+var_88]
364878:  STRD.W          R5, R5, [SP,#0x88+var_80]
36487C:  MOV.W           R0, #0x3F800000
364880:  STRD.W          R1, R8, [SP,#0x88+var_78]; int
364884:  MOVT            R3, #0x4040
364888:  MOV             R1, R9
36488A:  MOV             R2, R4
36488C:  STR             R0, [SP,#0x88+var_70]
36488E:  BLX             j__ZN4Fx_c9AddSparksER7CVectorS1_fiS0_hff; Fx_c::AddSparks(CVector &,CVector &,float,int,CVector,uchar,float,float)
364892:  MOVW            R0, #0x999A
364896:  MOVW            R1, #0x999A
36489A:  ADD.W           R11, SP, #0x88+var_5C
36489E:  MOVT            R1, #0x3E19
3648A2:  MOVT            R0, #0x3D99
3648A6:  STRD.W          R1, R8, [SP,#0x88+var_88]; float
3648AA:  STRD.W          R5, R0, [SP,#0x88+var_80]; float
3648AE:  MOV             R0, R11; this
3648B0:  MOV.W           R1, #0x3F800000; float
3648B4:  MOV.W           R2, #0x3F800000; float
3648B8:  MOV.W           R3, #0x3F800000; float
3648BC:  BLX             j__ZN11FxPrtMult_cC2Efffffff; FxPrtMult_c::FxPrtMult_c(float,float,float,float,float,float,float)
3648C0:  CMP.W           R10, #8
3648C4:  BLT             loc_364984
3648C6:  VLDR            S0, [SP,#0x88+var_50]
3648CA:  MOVS            R5, #1
3648CC:  VADD.F32        S0, S0, S0
3648D0:  VSTR            S0, [SP,#0x88+var_50]
3648D4:  B               loc_364986
3648D6:  VMOV            S2, R10; jumptable 003647F2 case 3
3648DA:  MOV.W           R0, #0x3F800000; this
3648DE:  VMOV.F32        S0, #0.5
3648E2:  MOV             R1, R9; CVector *
3648E4:  VCVT.F32.S32    S2, S2
3648E8:  MOV             R2, R4; CVector *
3648EA:  VMUL.F32        S0, S2, S0
3648EE:  VCVT.S32.F32    S0, S0
3648F2:  STR             R0, [SP,#0x88+var_88]; float
3648F4:  VMOV            R3, S0; int
3648F8:  BLX             j__ZN4Fx_c7AddWoodER7CVectorS1_if; Fx_c::AddWood(CVector &,CVector &,int,float)
3648FC:  B               def_3647F2; jumptable 003647F2 default case
3648FE:  MOVS            R5, #4
364900:  LDR             R0, =(g_fx_ptr - 0x364912)
364902:  ADD.W           R10, SP, #0x88+var_68
364906:  VLDR            S18, =0.05
36490A:  MOV.W           R11, #0
36490E:  ADD             R0, PC; g_fx_ptr
364910:  VLDR            S20, =0.0
364914:  VLDR            S22, =0.3
364918:  LDR             R6, [R0]; g_fx
36491A:  VMOV            S0, R11
36491E:  MOV             R1, #0x3F19999A
364926:  MOV             R2, R10; int
364928:  VCVT.F32.S32    S0, S0
36492C:  VLDR            S4, [R4,#4]
364930:  VLDR            S2, [R4]
364934:  VLDR            S6, [R4,#8]
364938:  VMUL.F32        S4, S4, S22
36493C:  STR             R1, [SP,#0x88+var_7C]; float
36493E:  MOVS            R1, #0
364940:  STR             R1, [SP,#0x88+var_78]; int
364942:  MOVS            R1, #0
364944:  LDR             R0, [R6,#(dword_820538 - 0x820520)]; int
364946:  MOVT            R1, #0xBF80
36494A:  VSTR            S16, [SP,#0x88+var_80]
36494E:  VMUL.F32        S0, S0, S18
364952:  STR.W           R8, [SP,#0x88+var_88]; int
364956:  STR             R1, [SP,#0x88+var_84]; float
364958:  MOV             R1, R9; int
36495A:  VSTR            S4, [SP,#0x88+var_64]
36495E:  VADD.F32        S0, S0, S20
364962:  VMOV            R3, S0; int
364966:  VMUL.F32        S0, S2, S22
36496A:  VMUL.F32        S2, S6, S22
36496E:  VSTR            S0, [SP,#0x88+var_68]
364972:  VSTR            S2, [SP,#0x88+var_60]
364976:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
36497A:  ADD.W           R11, R11, #1
36497E:  CMP             R11, R5
364980:  BLT             loc_36491A
364982:  B               def_3647F2; jumptable 003647F2 default case
364984:  MOVS            R5, #2
364986:  LDR             R1, =(g_fx_ptr - 0x364998)
364988:  MOV.W           R10, #0
36498C:  VLDR            S18, =0.05
364990:  MOV.W           R8, #0
364994:  ADD             R1, PC; g_fx_ptr
364996:  VLDR            S20, =0.0
36499A:  LDR             R6, [R1]; g_fx
36499C:  VMOV            S0, R8
3649A0:  MOV             R1, #0x3F19999A
3649A8:  MOV             R2, R4; int
3649AA:  VCVT.F32.S32    S0, S0
3649AE:  LDR             R0, [R6,#(dword_820544 - 0x820520)]; int
3649B0:  STRD.W          R1, R10, [SP,#0x88+var_7C]; float
3649B4:  MOVS            R1, #0xBF800000
3649BA:  VSTR            S16, [SP,#0x88+var_80]
3649BE:  STR.W           R11, [SP,#0x88+var_88]; int
3649C2:  STR             R1, [SP,#0x88+var_84]; float
3649C4:  MOV             R1, R9; int
3649C6:  VMUL.F32        S0, S0, S18
3649CA:  VADD.F32        S0, S0, S20
3649CE:  VMOV            R3, S0; int
3649D2:  BLX             j__ZN10FxSystem_c11AddParticleEP5RwV3dS1_fP11FxPrtMult_cfffh; FxSystem_c::AddParticle(RwV3d *,RwV3d *,float,FxPrtMult_c *,float,float,float,uchar)
3649D6:  ADD.W           R8, R8, #1
3649DA:  CMP             R8, R5
3649DC:  BLT             loc_36499C
3649DE:  ADD             SP, SP, #0x48 ; 'H'; jumptable 003647F2 default case
3649E0:  VPOP            {D8-D11}
3649E4:  ADD             SP, SP, #4
3649E6:  POP.W           {R8-R11}
3649EA:  POP             {R4-R7,PC}
