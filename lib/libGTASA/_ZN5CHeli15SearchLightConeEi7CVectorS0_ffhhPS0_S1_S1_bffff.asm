; =========================================================
; Game Engine Function: _ZN5CHeli15SearchLightConeEi7CVectorS0_ffhhPS0_S1_S1_bffff
; Address            : 0x5736D0 - 0x573E96
; =========================================================

5736D0:  PUSH            {R4-R7,LR}
5736D2:  ADD             R7, SP, #0xC
5736D4:  PUSH.W          {R8-R11}
5736D8:  SUB             SP, SP, #4
5736DA:  VPUSH           {D8-D15}
5736DE:  SUB.W           SP, SP, #0x3E0
5736E2:  VLDR            S16, [R7,#arg_0]
5736E6:  VMOV            S4, R1
5736EA:  VLDR            S18, [R7,#arg_8]
5736EE:  VMOV            S0, R3
5736F2:  VLDR            S20, [R7,#arg_4]
5736F6:  VMOV            S2, R2
5736FA:  VSUB.F32        S4, S16, S4
5736FE:  ADD             R5, SP, #0x440+var_34C
573700:  VSUB.F32        S2, S20, S2
573704:  MOV             R8, R0
573706:  VSUB.F32        S0, S18, S0
57370A:  MOV             R0, R5; this
57370C:  STR             R2, [SP,#0x440+var_6C]
57370E:  STR             R1, [SP,#0x440+var_70]
573710:  STR             R3, [SP,#0x440+var_68]
573712:  VSTR            S2, [SP,#0x440+var_348]
573716:  VSTR            S4, [SP,#0x440+var_34C]
57371A:  VSTR            S0, [SP,#0x440+var_344]
57371E:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
573722:  VMOV.F32        S0, #3.0
573726:  VLDR            S2, [SP,#0x440+var_34C]
57372A:  VLDR            S4, [SP,#0x440+var_348]
57372E:  ADD             R6, SP, #0x440+var_70
573730:  VLDR            S6, [SP,#0x440+var_344]
573734:  MOVS            R0, #0
573736:  MOVS            R4, #1
573738:  ADD             R1, SP, #0x440+var_80
57373A:  ADD             R2, SP, #0x440+var_378
57373C:  ADD             R3, SP, #0x440+var_37C
57373E:  VMUL.F32        S2, S2, S0
573742:  VMUL.F32        S4, S4, S0
573746:  VMUL.F32        S0, S6, S0
57374A:  VADD.F32        S2, S2, S16
57374E:  VADD.F32        S4, S4, S20
573752:  VADD.F32        S0, S0, S18
573756:  VSTR            S2, [SP,#0x440+var_80]
57375A:  VSTR            S4, [SP,#0x440+var_80+4]
57375E:  VSTR            S0, [SP,#0x440+var_78]
573762:  STRD.W          R4, R0, [SP,#0x440+var_440]
573766:  STRD.W          R0, R0, [SP,#0x440+var_438]
57376A:  STRD.W          R0, R0, [SP,#0x440+var_430]
57376E:  STRD.W          R0, R0, [SP,#0x440+var_428]
573772:  MOV             R0, R6
573774:  BLX             j__ZN6CWorld18ProcessLineOfSightERK7CVectorS2_R9CColPointRP7CEntitybbbbbbbb; CWorld::ProcessLineOfSight(CVector const&,CVector const&,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,bool,bool)
573778:  ADDS            R2, R6, #4
57377A:  STR             R2, [SP,#0x440+var_3C8]
57377C:  CMP             R0, #1
57377E:  ADD.W           R1, R5, #4
573782:  ITTTT EQ
573784:  VLDREQ          D16, [SP,#0x440+var_378]
573788:  LDREQ           R0, [SP,#0x440+var_370]
57378A:  STREQ           R0, [SP,#0x440+var_78]
57378C:  VSTREQ          D16, [SP,#0x440+var_80]
573790:  VLDR            S22, [R7,#arg_2C]
573794:  LDR.W           R0, =(TheCamera_ptr - 0x5737A0)
573798:  VLDR            D14, [R1]
57379C:  ADD             R0, PC; TheCamera_ptr
57379E:  LDR             R1, [SP,#0x440+var_3C8]
5737A0:  VLDR            S24, [SP,#0x440+var_34C]
5737A4:  LDR             R0, [R0]; TheCamera
5737A6:  VLDR            D8, [R1]
5737AA:  VLDR            S18, [SP,#0x440+var_70]
5737AE:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
5737B0:  ADD.W           R2, R1, #0x30 ; '0'
5737B4:  CMP             R1, #0
5737B6:  IT EQ
5737B8:  ADDEQ           R2, R0, #4
5737BA:  ADD             R0, SP, #0x440+var_388; this
5737BC:  VLDR            S0, [R2]
5737C0:  VLDR            S2, [R2,#4]
5737C4:  VLDR            S4, [R2,#8]
5737C8:  VSUB.F32        S0, S0, S18
5737CC:  VSUB.F32        S2, S2, S16
5737D0:  VSUB.F32        S4, S4, S17
5737D4:  VSTR            S0, [SP,#0x440+var_388]
5737D8:  VSTR            S2, [SP,#0x440+var_384]
5737DC:  VSTR            S4, [SP,#0x440+var_380]
5737E0:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
5737E4:  VLDR            S0, [SP,#0x440+var_388]
5737E8:  MOV.W           R0, #0x3FC00000
5737EC:  VLDR            S6, [SP,#0x440+var_34C]
5737F0:  MOVS            R1, #0
5737F2:  VLDR            S2, [SP,#0x440+var_384]
5737F6:  MOVT            R1, #0x4170
5737FA:  VLDR            S8, [SP,#0x440+var_348]
5737FE:  VMUL.F32        S6, S6, S0
573802:  VLDR            S4, [SP,#0x440+var_380]
573806:  MOVS            R5, #0
573808:  VMUL.F32        S8, S8, S2
57380C:  VLDR            S10, [SP,#0x440+var_344]
573810:  VLDR            S26, =0.0
573814:  MOVS            R2, #dword_C8; CEntity *
573816:  VMUL.F32        S10, S10, S4
57381A:  VLDR            S12, [SP,#0x440+var_6C]
57381E:  VLDR            S14, [SP,#0x440+var_68]
573822:  MOVS            R3, #0xC8; unsigned __int8
573824:  STR             R0, [SP,#0x440+var_410]; float
573826:  MOVS            R0, #0x42C80000
57382C:  VADD.F32        S6, S6, S8
573830:  VMOV.F32        S8, #15.0
573834:  VADD.F32        S6, S6, S10
573838:  VMUL.F32        S0, S0, S8
57383C:  VMUL.F32        S2, S2, S8
573840:  VMUL.F32        S4, S4, S8
573844:  VLDR            S8, [SP,#0x440+var_70]
573848:  VMAX.F32        D3, D3, D13
57384C:  VADD.F32        S0, S0, S8
573850:  VADD.F32        S2, S2, S12
573854:  VLDR            S12, =255.0
573858:  VADD.F32        S4, S4, S14
57385C:  VMUL.F32        S10, S6, S6
573860:  VSTR            S0, [SP,#0x440+var_394]
573864:  VSTR            S2, [SP,#0x440+var_390]
573868:  VSTR            S4, [SP,#0x440+var_38C]
57386C:  VMUL.F32        S10, S6, S10
573870:  STRD.W          R5, R1, [SP,#0x440+var_40C]; float
573874:  STRD.W          R5, R5, [SP,#0x440+var_404]; float
573878:  MOVS            R1, #0; unsigned int
57387A:  STRD.W          R0, R5, [SP,#0x440+var_430]; float
57387E:  ADD             R0, SP, #0x440+var_394
573880:  STRD.W          R5, R4, [SP,#0x440+var_428]; unsigned __int8
573884:  STRD.W          R5, R5, [SP,#0x440+var_420]; unsigned __int8
573888:  STRD.W          R5, R5, [SP,#0x440+var_418]; float
57388C:  STR             R0, [SP,#0x440+var_438]; float
57388E:  MOVS            R0, #0xFF
573890:  VMUL.F32        S8, S6, S10
573894:  VMOV.F32        S10, #20.0
573898:  VMUL.F32        S0, S6, S8
57389C:  VMUL.F32        S0, S6, S0
5738A0:  VMUL.F32        S2, S0, S12
5738A4:  VMUL.F32        S0, S0, S10
5738A8:  VCVT.U32.F32    S2, S2
5738AC:  STR             R0, [SP,#0x440+var_440]; float
5738AE:  VSTR            S0, [SP,#0x440+var_434]
5738B2:  VMOV            R0, S2
5738B6:  STR             R0, [SP,#0x440+var_43C]; float
5738B8:  MOV             R0, R8; this
5738BA:  BLX             j__ZN8CCoronas14RegisterCoronaEjP7CEntityhhhhRK7CVectorffhhhhhfbfbfbb; CCoronas::RegisterCorona(uint,CEntity *,uchar,uchar,uchar,uchar,CVector const&,float,float,uchar,uchar,uchar,uchar,uchar,float,bool,float,bool,float,bool,bool)
5738BE:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x5738D2)
5738C2:  VDUP.32         D15, D11[0]
5738C6:  LDR.W           R1, =(TempBufferIndicesStored_ptr - 0x5738D8)
5738CA:  ADD.W           R11, SP, #0x440+var_3C4
5738CE:  ADD             R0, PC; TempBufferVerticesStored_ptr
5738D0:  VLDR            S20, =100.0
5738D4:  ADD             R1, PC; TempBufferIndicesStored_ptr
5738D6:  VLDR            D16, =5.27765669e13
5738DA:  LDR             R0, [R0]; TempBufferVerticesStored
5738DC:  VMUL.F32        S0, S24, S20
5738E0:  LDR             R1, [R1]; TempBufferIndicesStored
5738E2:  VMUL.F32        D16, D14, D16
5738E6:  VLDR            S2, [R7,#arg_C]
5738EA:  MOV.W           R10, #0
5738EE:  STR             R5, [R0]
5738F0:  ADD             R0, SP, #0x440+var_B0
5738F2:  STR             R5, [R1]
5738F4:  ADD.W           R1, R0, #0x24 ; '$'
5738F8:  STR             R1, [SP,#0x440+var_3F0]
5738FA:  ADD.W           R1, R0, #0x18
5738FE:  ADDS            R0, #0xC
573900:  STR             R0, [SP,#0x440+var_3F8]
573902:  ADD             R0, SP, #0x440+var_3B8
573904:  ADD             R5, SP, #0x440+var_3AC
573906:  ADDS            R0, #4
573908:  STR             R0, [SP,#0x440+var_3CC]
57390A:  ADDS            R0, R5, #4
57390C:  STR             R0, [SP,#0x440+var_3D0]
57390E:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x573920)
573912:  VADD.F32        S21, S0, S18
573916:  STR             R1, [SP,#0x440+var_3F4]
573918:  VADD.F32        D8, D16, D8
57391C:  ADD             R0, PC; TempBufferVerticesStored_ptr
57391E:  LDR.W           R1, =(TempVertexBuffer_ptr - 0x57392E)
573922:  VDUP.32         D14, D1[0]
573926:  LDR.W           R8, [R0]; TempBufferVerticesStored
57392A:  ADD             R1, PC; TempVertexBuffer_ptr
57392C:  LDR.W           R0, =(_ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr - 0x573934)
573930:  ADD             R0, PC; _ZN25CCustomBuildingDNPipeline17m_fDNBalanceParamE_ptr
573932:  LDR             R0, [R0]; CCustomBuildingDNPipeline::m_fDNBalanceParam ...
573934:  STR             R0, [SP,#0x440+var_3D4]
573936:  LDR             R0, [R1]; TempVertexBuffer
573938:  STR             R0, [SP,#0x440+var_3D8]
57393A:  LDR.W           R0, =(TempBufferVerticesStored_ptr - 0x573946)
57393E:  LDR.W           R1, =(TempBufferRenderIndexList_ptr - 0x573948)
573942:  ADD             R0, PC; TempBufferVerticesStored_ptr
573944:  ADD             R1, PC; TempBufferRenderIndexList_ptr
573946:  LDR             R0, [R0]; TempBufferVerticesStored
573948:  STR             R0, [SP,#0x440+var_3DC]
57394A:  LDR.W           R0, =(TempBufferIndicesStored_ptr - 0x573952)
57394E:  ADD             R0, PC; TempBufferIndicesStored_ptr
573950:  LDR             R0, [R0]; TempBufferIndicesStored
573952:  STR             R0, [SP,#0x440+var_3E0]
573954:  LDR             R0, [R1]; TempBufferRenderIndexList
573956:  STR             R0, [SP,#0x440+var_3E4]
573958:  LDR.W           R0, =(TempBufferRenderIndexList_ptr - 0x573964)
57395C:  LDR.W           R1, =(TempBufferIndicesStored_ptr - 0x573966)
573960:  ADD             R0, PC; TempBufferRenderIndexList_ptr
573962:  ADD             R1, PC; TempBufferIndicesStored_ptr
573964:  LDR             R0, [R0]; TempBufferRenderIndexList
573966:  STR             R0, [SP,#0x440+var_3E8]
573968:  LDR             R0, [R1]; TempBufferIndicesStored
57396A:  STR             R0, [SP,#0x440+var_3EC]
57396C:  ADD             R6, SP, #0x440+var_34C
57396E:  MOV.W           R9, #0
573972:  MOV.W           R0, #0x3F800000
573976:  ADD             R2, SP, #0x440+var_3A0
573978:  STRD.W          R9, R9, [SP,#0x440+var_3A0]
57397C:  MOV             R1, R6; CVector *
57397E:  STR             R0, [SP,#0x440+var_398]
573980:  MOV             R0, R5; CVector *
573982:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
573986:  MOV             R0, R5; this
573988:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
57398C:  ADD             R4, SP, #0x440+var_3B8
57398E:  MOV             R1, R5; CVector *
573990:  MOV             R2, R6
573992:  MOV             R0, R4; CVector *
573994:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
573998:  MOV             R0, R4; this
57399A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
57399E:  VMOV            S0, R10
5739A2:  VLDR            S2, =0.15708
5739A6:  VCVT.F32.S32    S0, S0
5739AA:  VMUL.F32        S0, S0, S2
5739AE:  VMOV            R6, S0
5739B2:  MOV             R0, R6; x
5739B4:  BLX             sinf
5739B8:  MOV             R4, R0
5739BA:  MOV             R0, R6; x
5739BC:  BLX             cosf
5739C0:  LDR             R1, [SP,#0x440+var_3D0]
5739C2:  VMOV            S0, R4
5739C6:  VMOV            S2, R0
5739CA:  LDR             R0, [SP,#0x440+var_3C8]
5739CC:  VLDR            S4, [SP,#0x440+var_3AC]
5739D0:  CMP.W           R10, #0x1E; switch 31 cases
5739D4:  VLDR            D16, [R1]
5739D8:  VMUL.F32        D16, D16, D0[0]
5739DC:  LDR             R1, [SP,#0x440+var_3CC]
5739DE:  VMUL.F32        S4, S0, S4
5739E2:  VLDR            D0, [R0]
5739E6:  VLDR            S6, [SP,#0x440+var_3B8]
5739EA:  VLDR            D17, [R1]
5739EE:  VMUL.F32        D17, D17, D1[0]
5739F2:  VLDR            S24, [R7,#arg_C]
5739F6:  VMUL.F32        D18, D14, D16
5739FA:  VMUL.F32        D16, D15, D16
5739FE:  VMUL.F32        S6, S2, S6
573A02:  VLDR            S2, [SP,#0x440+var_78]
573A06:  VMUL.F32        S8, S4, S22
573A0A:  VMUL.F32        D19, D14, D17
573A0E:  VADD.F32        D18, D8, D18
573A12:  VMUL.F32        D17, D15, D17
573A16:  VADD.F32        D16, D16, D0
573A1A:  VMUL.F32        S4, S4, S24
573A1E:  VADD.F32        D5, D18, D19
573A22:  VMUL.F32        S3, S6, S22
573A26:  VADD.F32        D9, D16, D17
573A2A:  VMUL.F32        S6, S6, S24
573A2E:  VADD.F32        S4, S21, S4
573A32:  VSUB.F32        S14, S19, S2
573A36:  VLDR            S2, [SP,#0x440+var_70]
573A3A:  VSUB.F32        S12, S19, S11
573A3E:  VADD.F32        S8, S8, S2
573A42:  VSUB.F32        D16, D5, D9
573A46:  VADD.F32        S4, S4, S6
573A4A:  VDIV.F32        S12, S14, S12
573A4E:  VADD.F32        S24, S8, S3
573A52:  VMUL.F32        D16, D16, D6[0]
573A56:  VSUB.F32        S4, S4, S24
573A5A:  VMUL.F32        S4, S4, S12
573A5E:  VADD.F32        S6, S24, S4
573A62:  VADD.F32        D2, D9, D16
573A66:  BHI             def_573A6A; jumptable 00573A6A default case, cases 1-9,11-19,21-29
573A68:  ADD             R0, SP, #0x440+var_B0
573A6A:  TBB.W           [PC,R10]; switch jump
573A6E:  DCB 0x2A; jump table for switch statement
573A6F:  DCB 0x38
573A70:  DCB 0x38
573A71:  DCB 0x38
573A72:  DCB 0x38
573A73:  DCB 0x38
573A74:  DCB 0x38
573A75:  DCB 0x38
573A76:  DCB 0x38
573A77:  DCB 0x38
573A78:  DCB 0x10
573A79:  DCB 0x38
573A7A:  DCB 0x38
573A7B:  DCB 0x38
573A7C:  DCB 0x38
573A7D:  DCB 0x38
573A7E:  DCB 0x38
573A7F:  DCB 0x38
573A80:  DCB 0x38
573A81:  DCB 0x38
573A82:  DCB 0x14
573A83:  DCB 0x38
573A84:  DCB 0x38
573A85:  DCB 0x38
573A86:  DCB 0x38
573A87:  DCB 0x38
573A88:  DCB 0x38
573A89:  DCB 0x38
573A8A:  DCB 0x38
573A8B:  DCB 0x38
573A8C:  DCB 0x27
573A8D:  ALIGN 2
573A8E:  MOV.W           R9, #1; jumptable 00573A6A case 10
573A92:  LDR             R0, [SP,#0x440+var_3F8]
573A94:  B               loc_573AC2; jumptable 00573A6A case 0
573A96:  MOV.W           R9, #2; jumptable 00573A6A case 20
573A9A:  LDR             R0, [SP,#0x440+var_3F4]
573A9C:  B               loc_573AC2; jumptable 00573A6A case 0
573A9E:  ALIGN 0x10
573AA0:  DCFS 0.0
573AA4:  DCFS 255.0
573AA8:  DCFS 100.0
573AAC:  ALIGN 0x10
573AB0:  DCFD 5.27765669e13
573AB8:  DCFS 0.15708
573ABC:  LDR             R0, [SP,#0x440+var_3F0]; jumptable 00573A6A case 30
573ABE:  MOV.W           R9, #3
573AC2:  VSTR            S6, [R0]; jumptable 00573A6A case 0
573AC6:  ADD.W           R0, R9, R9,LSL#1
573ACA:  ADD             R1, SP, #0x440+var_B0
573ACC:  ADD.W           R0, R1, R0,LSL#2
573AD0:  ADD.W           R1, R0, #8
573AD4:  ADDS            R0, #4
573AD6:  VST1.32         {D2[1]}, [R1@32]
573ADA:  VST1.32         {D2[0]}, [R0@32]
573ADE:  VSUB.F32        S8, S6, S24; jumptable 00573A6A default case, cases 1-9,11-19,21-29
573AE2:  VSUB.F32        D16, D2, D9
573AE6:  VMUL.F32        D6, D16, D16
573AEA:  VMUL.F32        S10, S8, S8
573AEE:  VADD.F32        S10, S10, S12
573AF2:  VADD.F32        S10, S13, S10
573AF6:  VSQRT.F32       S10, S10
573AFA:  VCMPE.F32       S10, S20
573AFE:  VMRS            APSR_nzcv, FPSCR
573B02:  BLE             loc_573B4E
573B04:  ADD.W           R0, R11, #4
573B08:  VST1.32         {D16[0]}, [R0@32]
573B0C:  ADD.W           R0, R11, #8
573B10:  VST1.32         {D16[1]}, [R0@32]
573B14:  MOV             R0, R11; this
573B16:  VSTR            S8, [SP,#0x440+var_3C4]
573B1A:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
573B1E:  VLDR            S4, [SP,#0x440+var_3BC]
573B22:  VLDR            S0, [SP,#0x440+var_3C4]
573B26:  VLDR            S2, [SP,#0x440+var_3C0]
573B2A:  VMUL.F32        S4, S4, S20
573B2E:  VMUL.F32        S0, S0, S20
573B32:  VMUL.F32        S2, S2, S20
573B36:  VADD.F32        S5, S19, S4
573B3A:  VADD.F32        S6, S24, S0
573B3E:  VLDR            S0, [SP,#0x440+var_6C]
573B42:  VADD.F32        S4, S18, S2
573B46:  VLDR            S2, [SP,#0x440+var_70]
573B4A:  VLDR            S1, [SP,#0x440+var_68]
573B4E:  LDR.W           R0, [R8]
573B52:  VSUB.F32        S8, S19, S1
573B56:  LDR             R1, [SP,#0x440+var_3D8]
573B58:  VSUB.F32        S2, S24, S2
573B5C:  VSUB.F32        S0, S18, S0
573B60:  ADD.W           R0, R0, R0,LSL#3
573B64:  ADD.W           R0, R1, R0,LSL#2
573B68:  VSTR            S6, [R0,#0x24]
573B6C:  VSTR            S4, [R0,#0x28]
573B70:  VSTR            S5, [R0,#0x2C]
573B74:  VSTR            S19, [R0,#8]
573B78:  VSTM            R0!, {S24}
573B7C:  VST1.32         {D9[0]}, [R0@32]
573B80:  LDR             R0, [SP,#0x440+var_3D4]
573B82:  VLDR            S18, [R0]
573B86:  MOV             R0, R11; this
573B88:  VSTR            S0, [SP,#0x440+var_3C0]
573B8C:  VSTR            S2, [SP,#0x440+var_3C4]
573B90:  VSTR            S8, [SP,#0x440+var_3BC]
573B94:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
573B98:  VLDR            S0, [SP,#0x440+var_3C4]
573B9C:  ADD             R1, SP, #0x440+var_1F8
573B9E:  VLDR            S6, [SP,#0x440+var_388]
573BA2:  CMP.W           R10, #0x28 ; '('
573BA6:  VLDR            S2, [SP,#0x440+var_3C0]
573BAA:  MOV             R3, R1
573BAC:  VLDR            S8, [SP,#0x440+var_384]
573BB0:  VMUL.F32        S0, S6, S0
573BB4:  VLDR            S4, [SP,#0x440+var_3BC]
573BB8:  VMUL.F32        S2, S8, S2
573BBC:  VLDR            S10, [SP,#0x440+var_380]
573BC0:  LDR.W           R0, [R8]
573BC4:  VMUL.F32        S4, S10, S4
573BC8:  ADD.W           R2, R0, #1
573BCC:  ADD.W           R1, R3, R0,LSL#2
573BD0:  VADD.F32        S0, S0, S2
573BD4:  VLDR            S2, =0.15
573BD8:  VMUL.F32        S2, S18, S2
573BDC:  VADD.F32        S0, S0, S4
573BE0:  VLDR            S4, =0.1
573BE4:  VADD.F32        S2, S2, S4
573BE8:  VABS.F32        S0, S0
573BEC:  VSTR            S2, [R1]
573BF0:  ADD             R1, SP, #0x440+var_340
573BF2:  MOV             R6, R1
573BF4:  ADD.W           R1, R6, R0,LSL#2
573BF8:  VMUL.F32        S0, S0, S0
573BFC:  VMAX.F32        D13, D0, D13
573C00:  VSTR            S0, [R1]
573C04:  MOV.W           R1, #0
573C08:  STR.W           R1, [R3,R2,LSL#2]
573C0C:  ADD.W           R1, R6, R2,LSL#2
573C10:  VSTR            S0, [R1]
573C14:  BEQ             loc_573C52
573C16:  LDR             R4, [SP,#0x440+var_3E0]
573C18:  VCMPE.F32       S22, #0.0
573C1C:  LDR             R3, [SP,#0x440+var_3E4]
573C1E:  VMRS            APSR_nzcv, FPSCR
573C22:  LDR             R1, [R4]
573C24:  ADD.W           R6, R3, R1,LSL#1
573C28:  STRH.W          R0, [R3,R1,LSL#1]
573C2C:  ADD.W           R3, R0, #3
573C30:  STRH            R3, [R6,#2]
573C32:  STRH            R2, [R6,#4]
573C34:  ADD.W           R2, R1, #3
573C38:  STR             R2, [R4]
573C3A:  BLE             loc_573C52
573C3C:  LDR             R6, [SP,#0x440+var_3E8]
573C3E:  STRH.W          R0, [R6,R2,LSL#1]
573C42:  ADD.W           R2, R6, R1,LSL#1
573C46:  ADDS            R1, #6
573C48:  STRH            R3, [R2,#0xA]
573C4A:  ADDS            R3, R0, #2
573C4C:  STRH            R3, [R2,#8]
573C4E:  LDR             R2, [SP,#0x440+var_3EC]
573C50:  STR             R1, [R2]
573C52:  LDR             R2, [SP,#0x440+var_3DC]
573C54:  ADDS            R1, R0, #2
573C56:  ADD.W           R10, R10, #1
573C5A:  CMP.W           R10, #0x29 ; ')'
573C5E:  STR             R1, [R2]
573C60:  BNE.W           loc_57396C
573C64:  VLDR            S25, =255.0
573C68:  CMP.W           R0, #0xFFFFFFFF
573C6C:  BLT             loc_573CBE
573C6E:  LDR             R0, =(TempVertexBuffer_ptr - 0x573C7C)
573C70:  ADD             R3, SP, #0x440+var_1F8
573C72:  ADD             R6, SP, #0x440+var_340
573C74:  VLDR            S0, =200.0
573C78:  ADD             R0, PC; TempVertexBuffer_ptr
573C7A:  MOVS            R2, #0
573C7C:  LDR             R0, [R0]; TempVertexBuffer
573C7E:  ADDS            R0, #0x18
573C80:  VLDR            S2, [R6]
573C84:  ADDS            R2, #1
573C86:  VLDR            S4, [R3]
573C8A:  ADDS            R6, #4
573C8C:  ADDS            R3, #4
573C8E:  CMP             R2, R1
573C90:  VMUL.F32        S2, S4, S2
573C94:  VDIV.F32        S2, S2, S26
573C98:  VMUL.F32        S4, S2, S0
573C9C:  VMUL.F32        S2, S2, S25
573CA0:  VCVT.U32.F32    S4, S4
573CA4:  VCVT.U32.F32    S2, S2
573CA8:  VMOV            R5, S4
573CAC:  VMOV            R4, S2
573CB0:  ORR.W           R5, R5, R5,LSL#8
573CB4:  ORR.W           R5, R5, R4,LSL#16
573CB8:  STR.W           R5, [R0],#0x24
573CBC:  BLT             loc_573C80
573CBE:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x573CC4)
573CC0:  ADD             R0, PC; TempBufferIndicesStored_ptr
573CC2:  LDR             R0, [R0]; TempBufferIndicesStored
573CC4:  LDR             R0, [R0]
573CC6:  CMP             R0, #0
573CC8:  BLE             loc_573CF2
573CCA:  LDR             R0, =(TempVertexBuffer_ptr - 0x573CD4)
573CCC:  MOVS            R2, #0
573CCE:  MOVS            R3, #0x18
573CD0:  ADD             R0, PC; TempVertexBuffer_ptr
573CD2:  LDR             R0, [R0]; TempVertexBuffer
573CD4:  BLX             j__Z15RwIm3DTransformP18RxObjSpace3DVertexjP11RwMatrixTagj; RwIm3DTransform(RxObjSpace3DVertex *,uint,RwMatrixTag *,uint)
573CD8:  CBZ             R0, loc_573CF2
573CDA:  LDR             R0, =(TempBufferIndicesStored_ptr - 0x573CE2)
573CDC:  LDR             R1, =(TempBufferRenderIndexList_ptr - 0x573CE4)
573CDE:  ADD             R0, PC; TempBufferIndicesStored_ptr
573CE0:  ADD             R1, PC; TempBufferRenderIndexList_ptr
573CE2:  LDR             R0, [R0]; TempBufferIndicesStored
573CE4:  LDR             R1, [R1]; TempBufferRenderIndexList
573CE6:  LDR             R2, [R0]
573CE8:  MOVS            R0, #3
573CEA:  BLX             j__Z28RwIm3DRenderIndexedPrimitive15RwPrimitiveTypePti; RwIm3DRenderIndexedPrimitive(RwPrimitiveType,ushort *,int)
573CEE:  BLX             j__Z9RwIm3DEndv; RwIm3DEnd(void)
573CF2:  LDR             R0, [SP,#0x440+var_78]
573CF4:  VLDR            D16, [SP,#0x440+var_80]
573CF8:  STR             R0, [SP,#0x440+var_398]
573CFA:  VLDR            S2, [SP,#0x440+var_398]
573CFE:  VSTR            D16, [SP,#0x440+var_3A0]
573D02:  VLDR            S6, [SP,#0x440+var_90]
573D06:  VLDR            S4, [SP,#0x440+var_98]
573D0A:  VLDR            S0, [SP,#0x440+var_94]
573D0E:  VSUB.F32        S14, S6, S2
573D12:  VLDR            S10, [SP,#0x440+var_3A0]
573D16:  VLDR            S12, [SP,#0x440+var_3A0+4]
573D1A:  VSUB.F32        S6, S4, S10
573D1E:  VLDR            S8, [SP,#0x440+var_8C]
573D22:  VSUB.F32        S0, S0, S12
573D26:  VLDR            S1, [SP,#0x440+var_88]
573D2A:  VLDR            S3, [SP,#0x440+var_84]
573D2E:  VSUB.F32        S8, S8, S10
573D32:  LDR             R1, [R7,#arg_1C]
573D34:  VSUB.F32        S4, S1, S12
573D38:  VSUB.F32        S10, S3, S2
573D3C:  STR             R0, [R1,#8]
573D3E:  LDR             R0, [R7,#arg_20]
573D40:  VSTR            D16, [R1]
573D44:  VSTR            S6, [R0]
573D48:  VSTR            S0, [R0,#4]
573D4C:  VSTR            S14, [R0,#8]
573D50:  LDR             R0, [R7,#arg_24]
573D52:  VSTR            S8, [R0]
573D56:  VSTR            S4, [R0,#4]
573D5A:  VSTR            S10, [R0,#8]
573D5E:  LDR             R0, [R7,#arg_18]
573D60:  CMP             R0, #0
573D62:  BEQ.W           loc_573E86
573D66:  VLDR            S10, =1.2
573D6A:  VMUL.F32        S0, S0, S10
573D6E:  VMUL.F32        S6, S6, S10
573D72:  VMUL.F32        S12, S0, S0
573D76:  VMUL.F32        S14, S6, S6
573D7A:  VADD.F32        S12, S14, S12
573D7E:  VMOV.F32        S14, #5.0
573D82:  VSQRT.F32       S12, S12
573D86:  VADD.F32        S2, S2, S14
573D8A:  VCMPE.F32       S12, S20
573D8E:  VMRS            APSR_nzcv, FPSCR
573D92:  VSTR            S2, [SP,#0x440+var_398]
573D96:  BGE             loc_573E86
573D98:  VMUL.F32        S4, S4, S10
573D9C:  VMUL.F32        S2, S8, S10
573DA0:  VMUL.F32        S8, S4, S4
573DA4:  VMUL.F32        S10, S2, S2
573DA8:  VADD.F32        S8, S10, S8
573DAC:  VSQRT.F32       S8, S8
573DB0:  VCMPE.F32       S8, S20
573DB4:  VMRS            APSR_nzcv, FPSCR
573DB8:  BGE             loc_573E86
573DBA:  LDR             R0, =(TheCamera_ptr - 0x573DC4)
573DBC:  VLDR            D16, [SP,#0x440+var_80]
573DC0:  ADD             R0, PC; TheCamera_ptr
573DC2:  VLDR            S10, =0.0
573DC6:  LDR             R0, [R0]; TheCamera
573DC8:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
573DCA:  ADD.W           R2, R1, #0x30 ; '0'
573DCE:  CMP             R1, #0
573DD0:  IT EQ
573DD2:  ADDEQ           R2, R0, #4
573DD4:  VLDR            D17, [R2]
573DD8:  VSUB.F32        D16, D16, D17
573DDC:  VMUL.F32        D4, D16, D16
573DE0:  VADD.F32        S8, S8, S9
573DE4:  VADD.F32        S8, S8, S10
573DE8:  VMOV.F32        S10, #25.0
573DEC:  VSQRT.F32       S8, S8
573DF0:  VCMPE.F32       S8, S10
573DF4:  VMRS            APSR_nzcv, FPSCR
573DF8:  BGT             loc_573E86
573DFA:  VLDR            S10, =-0.04
573DFE:  VMOV.F32        S12, #1.0
573E02:  LDR             R0, =(gpShadowExplosionTex_ptr - 0x573E18)
573E04:  VMOV            R3, S6; int
573E08:  VMUL.F32        S8, S8, S10
573E0C:  VLDR            S6, =128.0
573E10:  VMOV.F32        S10, #0.5
573E14:  ADD             R0, PC; gpShadowExplosionTex_ptr
573E16:  MOVS            R2, #0
573E18:  LDR             R0, [R0]; gpShadowExplosionTex
573E1A:  STR             R2, [SP,#0x440+var_414]; int
573E1C:  STR             R2, [SP,#0x440+var_418]; int
573E1E:  ADD             R2, SP, #0x440+var_3A0; int
573E20:  LDR             R1, [R0]; int
573E22:  MOV.W           R0, #0x3F800000
573E26:  VADD.F32        S8, S8, S12
573E2A:  VLDR            S12, [R7,#arg_10]
573E2E:  STR             R0, [SP,#0x440+var_41C]; float
573E30:  MOVS            R0, #1
573E32:  STR             R0, [SP,#0x440+var_420]; int
573E34:  MOVS            R0, #0x41700000
573E3A:  STR             R0, [SP,#0x440+var_424]; float
573E3C:  VSTR            S4, [SP,#0x440+var_438]
573E40:  VSTR            S2, [SP,#0x440+var_43C]
573E44:  VMUL.F32        S8, S8, S12
573E48:  VMUL.F32        S8, S8, S10
573E4C:  VLDR            S10, =200.0
573E50:  VMUL.F32        S6, S8, S6
573E54:  VMUL.F32        S12, S8, S25
573E58:  VMUL.F32        S8, S8, S10
573E5C:  VCVT.S32.F32    S2, S6
573E60:  VSTR            S0, [SP,#0x440+var_440]
573E64:  VCVT.U32.F32    S0, S12
573E68:  VCVT.U32.F32    S4, S8
573E6C:  VMOV            R0, S0
573E70:  STR             R0, [SP,#0x440+var_428]; int
573E72:  VMOV            R0, S4
573E76:  STRD.W          R0, R0, [SP,#0x440+var_430]; int
573E7A:  VMOV            R0, S2
573E7E:  STR             R0, [SP,#0x440+var_434]; int
573E80:  MOVS            R0, #2; int
573E82:  BLX             j__ZN8CShadows23StoreShadowToBeRenderedEhP9RwTextureP7CVectorffffshhhfbfP15CRealTimeShadowb; CShadows::StoreShadowToBeRendered(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,bool,float,CRealTimeShadow *,bool)
573E86:  ADD.W           SP, SP, #0x3E0
573E8A:  VPOP            {D8-D15}
573E8E:  ADD             SP, SP, #4
573E90:  POP.W           {R8-R11}
573E94:  POP             {R4-R7,PC}
