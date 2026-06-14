; =========================================================
; Game Engine Function: _ZN6CRadar16DrawRadarSectionEiii
; Address            : 0x4437B0 - 0x443AF2
; =========================================================

4437B0:  PUSH            {R4-R7,LR}
4437B2:  ADD             R7, SP, #0xC
4437B4:  PUSH.W          {R8-R11}
4437B8:  SUB             SP, SP, #0xEC
4437BA:  MOV             R6, R1
4437BC:  MOV.W           R1, #0x1F4
4437C0:  MOV             R8, R2
4437C2:  MUL.W           R5, R0, R1
4437C6:  RSB.W           R2, R6, #0xB
4437CA:  CMP             R0, #0xB
4437CC:  MOV.W           R11, #0
4437D0:  MUL.W           R1, R2, R1
4437D4:  MOV.W           R9, #0
4437D8:  SUBW            R2, R5, #0x9C4
4437DC:  SUBW            R3, R5, #0xBB8
4437E0:  VMOV            S0, R2
4437E4:  SUBW            R2, R1, #0x9C4
4437E8:  SUBW            R1, R1, #0xBB8
4437EC:  VMOV            S2, R3
4437F0:  VMOV            S4, R2
4437F4:  VMOV            S6, R1
4437F8:  VCVT.F32.S32    S0, S0
4437FC:  VCVT.F32.S32    S2, S2
443800:  VCVT.F32.S32    S4, S4
443804:  VCVT.F32.S32    S6, S6
443808:  IT HI
44380A:  MOVHI.W         R11, #1
44380E:  CMP             R6, #0xB
443810:  BLS             loc_443818
443812:  MOV.W           R11, #1
443816:  B               loc_443848
443818:  MOV.W           R9, #0
44381C:  CMP             R0, #0xB
44381E:  BHI             loc_443848
443820:  LDR             R1, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x443826)
443822:  ADD             R1, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
443824:  LDR             R1, [R1]; CTheScripts::bPlayerIsOffTheMap ...
443826:  LDRB            R1, [R1]; CTheScripts::bPlayerIsOffTheMap
443828:  CBNZ            R1, loc_443848
44382A:  LDR             R1, =(gRadarTextures_ptr - 0x443834)
44382C:  ADD.W           R2, R6, R6,LSL#1
443830:  ADD             R1, PC; gRadarTextures_ptr
443832:  ADD.W           R0, R0, R2,LSL#2
443836:  LDR             R1, [R1]; gRadarTextures
443838:  LDR.W           R9, [R1,R0,LSL#2]
44383C:  CMP.W           R9, #0
443840:  BEQ.W           loc_443AEA
443844:  MOV.W           R11, #0
443848:  LDR             R0, =(_ZN6CRadar12m_radarRangeE_ptr - 0x443856)
44384A:  VMOV.F32        S8, #1.0
44384E:  LDR             R1, =(dword_994EE8 - 0x443858)
443850:  ADD             R4, SP, #0x108+var_7C
443852:  ADD             R0, PC; _ZN6CRadar12m_radarRangeE_ptr
443854:  ADD             R1, PC; dword_994EE8
443856:  LDR             R0, [R0]; CRadar::m_radarRange ...
443858:  VLDR            S10, [R0]
44385C:  LDR             R0, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x443866)
44385E:  VDIV.F32        S8, S8, S10
443862:  ADD             R0, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
443864:  LDR             R0, [R0]; CRadar::vec2DRadarOrigin ...
443866:  VLDR            S10, [R0]
44386A:  VLDR            S12, [R0,#4]
44386E:  VSUB.F32        S2, S2, S10
443872:  LDR             R0, =(dword_994EEC - 0x443880)
443874:  VSUB.F32        S6, S6, S12
443878:  VSUB.F32        S4, S4, S12
44387C:  ADD             R0, PC; dword_994EEC
44387E:  VSUB.F32        S0, S0, S10
443882:  VLDR            S12, [R1]
443886:  VLDR            S10, [R0]
44388A:  ADD             R1, SP, #0x108+var_3C
44388C:  MOV             R0, R4
44388E:  VMUL.F32        S2, S2, S8
443892:  VMUL.F32        S6, S6, S8
443896:  VMUL.F32        S4, S4, S8
44389A:  VMUL.F32        S0, S0, S8
44389E:  VMUL.F32        S14, S12, S2
4438A2:  VMUL.F32        S8, S10, S6
4438A6:  VMUL.F32        S2, S10, S2
4438AA:  VMUL.F32        S6, S12, S6
4438AE:  VMUL.F32        S1, S12, S0
4438B2:  VMUL.F32        S12, S12, S4
4438B6:  VMUL.F32        S0, S10, S0
4438BA:  VMUL.F32        S4, S10, S4
4438BE:  VADD.F32        S10, S14, S8
4438C2:  VSUB.F32        S3, S6, S2
4438C6:  VADD.F32        S8, S1, S8
4438CA:  VSUB.F32        S2, S12, S2
4438CE:  VSUB.F32        S6, S6, S0
4438D2:  VADD.F32        S1, S1, S4
4438D6:  VSUB.F32        S0, S12, S0
4438DA:  VSTR            S10, [SP,#0x108+var_3C]
4438DE:  VADD.F32        S4, S14, S4
4438E2:  VSTR            S3, [SP,#0x108+var_38]
4438E6:  VSTR            S8, [SP,#0x108+var_34]
4438EA:  VSTR            S6, [SP,#0x108+var_30]
4438EE:  VSTR            S0, [SP,#0x108+var_28]
4438F2:  VSTR            S1, [SP,#0x108+var_2C]
4438F6:  VSTR            S2, [SP,#0x108+var_20]
4438FA:  VSTR            S4, [SP,#0x108+var_24]
4438FE:  BLX             j__ZN6CRadar13ClipRadarPolyEP9CVector2DPKS0_; CRadar::ClipRadarPoly(CVector2D *,CVector2D const*)
443902:  MOV             R10, R0
443904:  CMP.W           R10, #0
443908:  BEQ.W           loc_443AEA
44390C:  CMP.W           R10, #1
443910:  BLT.W           loc_443A5C
443914:  RSB.W           R0, R6, #0xC
443918:  MOV.W           R1, #0x1F4
44391C:  LDR             R3, =(dword_994EEC - 0x443930)
44391E:  VMOV            S0, R5
443922:  MULS            R0, R1
443924:  LDR             R6, =(gMobileMenu_ptr - 0x443932)
443926:  LDR             R5, =(_ZN6CRadar12m_radarRangeE_ptr - 0x443934)
443928:  VCVT.F32.S32    S4, S0
44392C:  ADD             R3, PC; dword_994EEC
44392E:  ADD             R6, PC; gMobileMenu_ptr
443930:  ADD             R5, PC; _ZN6CRadar12m_radarRangeE_ptr
443932:  LDR             R2, =(_ZN6CRadar16vec2DRadarOriginE_ptr - 0x443944)
443934:  VMOV.F32        S3, #0.5
443938:  VLDR            S8, =-3000.0
44393C:  VMOV            S0, R0
443940:  ADD             R2, PC; _ZN6CRadar16vec2DRadarOriginE_ptr
443942:  LDR             R1, =(dword_994EE8 - 0x44395A)
443944:  ADD             R0, SP, #0x108+var_BC
443946:  VCVT.F32.S32    S6, S0
44394A:  VLDR            S0, [R3]
44394E:  LDR             R3, [R6]; gMobileMenu
443950:  VADD.F32        S4, S4, S8
443954:  LDR             R6, [R5]; CRadar::m_radarRange ...
443956:  ADD             R1, PC; dword_994EE8
443958:  LDR             R2, [R2]; CRadar::vec2DRadarOrigin ...
44395A:  ADD             R5, SP, #0x108+var_FC
44395C:  VLDR            S2, [R1]
443960:  ADDS            R1, R4, #4
443962:  VLDR            S12, [R6]
443966:  ADDS            R0, #4
443968:  LDR             R6, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x443978)
44396A:  MOV             R4, R10
44396C:  VADD.F32        S6, S6, S8
443970:  VLDR            S8, [R2]
443974:  ADD             R6, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
443976:  VLDR            S10, [R2,#4]
44397A:  LDRB.W          R2, [R3,#(byte_6E00D8 - 0x6E006C)]
44397E:  ADDS            R3, R5, #4
443980:  LDR.W           R12, [R6]; CTouchInterface::m_pWidgets ...
443984:  LDR             R6, =(gMobileMenu_ptr - 0x44398E)
443986:  VLDR            S14, =-0.002
44398A:  ADD             R6, PC; gMobileMenu_ptr
44398C:  VLDR            S1, =0.002
443990:  LDR             R5, [R6]; gMobileMenu
443992:  VLDR            S7, [R1,#-4]
443996:  CMP             R2, #0
443998:  VLDR            S5, [R1]
44399C:  VMUL.F32        S11, S0, S7
4439A0:  VMUL.F32        S9, S2, S5
4439A4:  VMUL.F32        S13, S0, S5
4439A8:  VMUL.F32        S15, S2, S7
4439AC:  VADD.F32        S9, S11, S9
4439B0:  VSUB.F32        S11, S15, S13
4439B4:  VMUL.F32        S9, S12, S9
4439B8:  VMUL.F32        S11, S11, S12
4439BC:  VADD.F32        S9, S9, S10
4439C0:  VADD.F32        S11, S11, S8
4439C4:  VSUB.F32        S9, S9, S6
4439C8:  VSUB.F32        S11, S11, S4
4439CC:  VMUL.F32        S9, S9, S14
4439D0:  VMUL.F32        S11, S11, S1
4439D4:  VSTR            S11, [R0,#-4]
4439D8:  VSTR            S9, [R0]
4439DC:  BEQ             loc_4439FC
4439DE:  VLDR            S9, [R5,#0x58]
4439E2:  VLDR            S11, [R5,#0x5C]
4439E6:  VMUL.F32        S7, S7, S9
4439EA:  VMUL.F32        S5, S5, S9
4439EE:  VADD.F32        S7, S11, S7
4439F2:  VSTR            S7, [R3,#-4]
4439F6:  VLDR            S7, [R5,#0x60]
4439FA:  B               loc_443A4A
4439FC:  LDR.W           R6, [R12,#(dword_6F3A18 - 0x6F3794)]
443A00:  CBZ             R6, loc_443A52
443A02:  VLDR            S9, [R6,#0x20]
443A06:  VLDR            S11, [R6,#0x28]
443A0A:  VSUB.F32        S13, S11, S9
443A0E:  VADD.F32        S9, S9, S11
443A12:  VABS.F32        S13, S13
443A16:  VMUL.F32        S9, S9, S3
443A1A:  VMUL.F32        S7, S7, S13
443A1E:  VMUL.F32        S7, S7, S3
443A22:  VADD.F32        S7, S9, S7
443A26:  VSTR            S7, [R3,#-4]
443A2A:  VLDR            S7, [R6,#0x24]
443A2E:  VLDR            S9, [R6,#0x2C]
443A32:  VSUB.F32        S11, S7, S9
443A36:  VADD.F32        S7, S7, S9
443A3A:  VABS.F32        S11, S11
443A3E:  VMUL.F32        S7, S7, S3
443A42:  VMUL.F32        S5, S5, S11
443A46:  VMUL.F32        S5, S5, S3
443A4A:  VSUB.F32        S5, S7, S5
443A4E:  VSTR            S5, [R3]
443A52:  ADDS            R0, #8
443A54:  ADDS            R1, #8
443A56:  ADDS            R3, #8
443A58:  SUBS            R4, #1
443A5A:  BNE             loc_443992
443A5C:  CMP.W           R11, #0
443A60:  BEQ             loc_443A7C
443A62:  MOVS            R0, #1
443A64:  MOVS            R1, #0
443A66:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
443A6A:  ADD             R4, SP, #0x108+var_100
443A6C:  UXTB.W          R0, R8
443A70:  STR             R0, [SP,#0x108+var_108]
443A72:  MOVS            R1, #0x6F ; 'o'
443A74:  MOV             R0, R4
443A76:  MOVS            R2, #0x89
443A78:  MOVS            R3, #0xAA
443A7A:  B               loc_443ABA
443A7C:  LDR             R0, =(_ZN11CTheScripts18bPlayerIsOffTheMapE_ptr - 0x443A82)
443A7E:  ADD             R0, PC; _ZN11CTheScripts18bPlayerIsOffTheMapE_ptr
443A80:  LDR             R0, [R0]; CTheScripts::bPlayerIsOffTheMap ...
443A82:  LDRB            R0, [R0]; CTheScripts::bPlayerIsOffTheMap
443A84:  CBZ             R0, loc_443AA0
443A86:  MOVS            R0, #1
443A88:  MOVS            R1, #0
443A8A:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
443A8E:  ADD             R4, SP, #0x108+var_100
443A90:  UXTB.W          R0, R8
443A94:  STR             R0, [SP,#0x108+var_108]
443A96:  MOVS            R1, #0xCC
443A98:  MOV             R0, R4
443A9A:  MOVS            R2, #0xCC
443A9C:  MOVS            R3, #0xCC
443A9E:  B               loc_443ABA
443AA0:  LDR.W           R1, [R9]
443AA4:  MOVS            R0, #1
443AA6:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
443AAA:  ADD             R4, SP, #0x108+var_100
443AAC:  UXTB.W          R0, R8
443AB0:  STR             R0, [SP,#0x108+var_108]; CRGBA *
443AB2:  MOVS            R1, #0xFF; unsigned __int8
443AB4:  MOV             R0, R4; this
443AB6:  MOVS            R2, #0xFF; unsigned __int8
443AB8:  MOVS            R3, #0xFF; unsigned __int8
443ABA:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
443ABE:  ADD             R1, SP, #0x108+var_FC; int
443AC0:  ADD             R2, SP, #0x108+var_BC; float *
443AC2:  MOV             R0, R10; this
443AC4:  MOV             R3, R4; float *
443AC6:  BLX             j__ZN9CSprite2d11SetVerticesEiPfS0_RK5CRGBA; CSprite2d::SetVertices(int,float *,float *,CRGBA const&)
443ACA:  CMP.W           R10, #3
443ACE:  BLT             loc_443AEA
443AD0:  LDR             R0, =(_ZN9CSprite2d10maVerticesE_ptr - 0x443ADE)
443AD2:  ADD.W           R1, R10, R10,LSL#1
443AD6:  LDR             R3, =(unk_6AE3CA - 0x443AE2)
443AD8:  SUBS            R1, #6
443ADA:  ADD             R0, PC; _ZN9CSprite2d10maVerticesE_ptr
443ADC:  STR             R1, [SP,#0x108+var_108]
443ADE:  ADD             R3, PC; unk_6AE3CA
443AE0:  MOVS            R2, #8
443AE2:  LDR             R1, [R0]; CSprite2d::maVertices ...
443AE4:  MOVS            R0, #3
443AE6:  BLX             j__Z35RwIm2DRenderIndexedPrimitive_BUGFIX15RwPrimitiveTypeP14RwOpenGLVertexiPti; RwIm2DRenderIndexedPrimitive_BUGFIX(RwPrimitiveType,RwOpenGLVertex *,int,ushort *,int)
443AEA:  ADD             SP, SP, #0xEC
443AEC:  POP.W           {R8-R11}
443AF0:  POP             {R4-R7,PC}
